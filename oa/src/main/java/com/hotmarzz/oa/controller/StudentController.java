package com.hotmarzz.oa.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotmarzz.basic.dao.BaseQuery;
import com.hotmarzz.basic.dao.Expression;
import com.hotmarzz.basic.utils.DateUtils;
import com.hotmarzz.basic.utils.JsonUtils;
import com.hotmarzz.basic.utils.StringUtils;
import com.hotmarzz.oa.anno.FormToken;
import com.hotmarzz.oa.buzz.StudentBuzz;
import com.hotmarzz.oa.exception.StudentLockException;
import com.hotmarzz.oa.exception.StudentRepeatException;
import com.hotmarzz.oa.pojo.Student;
import com.hotmarzz.oa.utils.JSONConstrants;

@Controller
public class StudentController {

	private Logger logger = LoggerFactory.getLogger(StudentController.class);
	
	private StudentBuzz stuBuzz;
	
	public StudentBuzz getStuBuzz() {
		return stuBuzz;
	}

	@Autowired
	public void setStuBuzz(StudentBuzz stuBuzz) {
		this.stuBuzz = stuBuzz;
	}
	
//	@InitBinder
//    public void initBinder (WebDataBinder binder){
//        System.out.println();
//    }
	
	/*
	 * 跳转学生页面
	 */
	@RequestMapping(value = "stus.do", method = RequestMethod.GET)
	public String getStuPage(Model model, BaseQuery bq) {
		model.addAttribute("bq", bq);
		return "studentResource/stus";
	}

	/*
	 * 查询学员信息
	 */
	@RequestMapping(value = "getStuList.do", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public String getStuList(@RequestBody BaseQuery bq) throws Exception {
		
		Map<String, Object> queryParams = bq.getQueryParams();
		if (queryParams.containsKey("stuName")
				&& StringUtils.isNotEmpty((String) queryParams.get("stuName"))) {
			bq.putCondition("stuName", Expression.OP_LIKE,
					"%" + ((String)queryParams.get("stuName")).trim() + "%");
		}
		if (queryParams.containsKey("phone")
				&& StringUtils.isNotEmpty((String) queryParams.get("phone"))) {
			bq.putCondition("phone", Expression.OP_LIKE,
					"%" + ((String)queryParams.get("phone")).trim() + "%");
		}
		if (queryParams.containsKey("entranceTime")
				&& StringUtils.isNotEmpty((String) queryParams.get("entranceTime"))) {
			bq.putCondition("entranceTime", Expression.OP_GT,
					DateUtils.parseSmallTime((String) queryParams.get("entranceTime")));
		}
		if (queryParams.containsKey("createUser")
				&& StringUtils.isNotEmpty((String) queryParams.get("createUser"))) {
			bq.putCondition("createUser", Expression.OP_LIKE,
					"%" + ((String)queryParams.get("createUser")).trim() + "%");
		}
		if (queryParams.containsKey("lockUser")
				&& StringUtils.isNotEmpty((String) queryParams.get("lockUser"))) {
			bq.putCondition("lockUser", Expression.OP_LIKE,
					"%" + ((String)queryParams.get("lockUser")).trim() + "%");
		}
		bq.addOrders("createDate", "desc");
		BaseQuery bqResult = stuBuzz.getList(bq);
		return JsonUtils.bean2Json(bqResult);
	}

	/*
	 * 跳转添加员工页面
	 */
	@FormToken(save=true)
	@RequestMapping(value = "stu.do", method = RequestMethod.GET)
	public String addFilling(Model model) {
		model.addAttribute("stuForm", new Student());
		return "studentResource/stu";
	}

	/*
	 * 添加学员
	 */
	@FormToken(remove=true)
	@RequestMapping(value = "stu.do", produces = "application/json;charset=UTF-8", method = RequestMethod.POST)
	public @ResponseBody String add(@RequestBody @Valid Student stu,
			BindingResult results) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		// 数据校验
		if (results.hasErrors()) {
			result.put("flag", "validation");
			Map<String, Object> validationMsg = new HashMap<String, Object>();
			for (FieldError e : results.getFieldErrors()) {
				logger.error("object:" + e.getObjectName() + ";field: "
						+ e.getField() + ";message:" + e.getDefaultMessage());
				validationMsg.put(e.getField(), e.getDefaultMessage());
			}
			result.put("validationMsg", validationMsg);
			return JsonUtils.bean2Json(result);
		}
		stu.setStuName(stu.getStuName().trim());
		stuBuzz.add(stu);
		result.put("flag", true);
		result.put("msg", "添加成功");
		return JsonUtils.bean2Json(result);
	}

	/*
	 * 删除学员
	 */
	@RequestMapping(value = "stu/{id}.do", method = RequestMethod.DELETE)
	@ResponseBody
	public String delete(@PathVariable("id") Long stuId) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();

		stuBuzz.delete(stuId);

		result.put("flag", true);
		result.put("msg", "success");

		return JsonUtils.bean2Json(result);
	}

	/*
	 * 修改前获取信息并且跳转页面
	 */
	@FormToken(save=true)
	@RequestMapping(value = "stu/{id}.do", method = RequestMethod.GET)
	public String updateFilling(@PathVariable("id") Long id, Model model) throws Exception {
		Student stu = stuBuzz.getById(id);
		model.addAttribute("stuForm", stu);
		return "studentResource/stu";
	}

	/*
	 * 修改学员
	 */
	@FormToken(remove=true)
	@RequestMapping(value = "stu.do", method = RequestMethod.PUT)
	@ResponseBody
	public String update(@RequestBody @Valid Student stu, BindingResult results)
			throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		// 数据校验
		if (results.hasErrors()) {
			result.put("flag", "validation");
			Map<String, Object> validationMsg = new HashMap<String, Object>();
			for (FieldError e : results.getFieldErrors()) {
				logger.error("object:" + e.getObjectName() + ";field: "
						+ e.getField() + ";message:" + e.getDefaultMessage());
				validationMsg.put(e.getField(), e.getDefaultMessage());
			}
			result.put("validationMsg", validationMsg);
			return JsonUtils.bean2Json(result);
		}
		stuBuzz.update(stu);
		result.put("flag", true);
		result.put("msg", "修改成功");
		return JsonUtils.bean2Json(result);
	}

	// 学员重复添加异常
	@ExceptionHandler(StudentRepeatException.class)
	public @ResponseBody String repeatStudentHandler(StudentRepeatException exc) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(JSONConstrants.FLAG, JSONConstrants.FLAG_EXCEPTION);
		result.put(JSONConstrants.FLAG_EXCEPTION_CODE, exc.getCode());
		result.put(JSONConstrants.FLAG_EXCEPTION_MSG, exc.getMsg());
		return JsonUtils.bean2Json(result);
	}

	
	@ExceptionHandler(StudentLockException.class)
	public @ResponseBody String lockStudentHandler(StudentLockException exc){
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(JSONConstrants.FLAG, JSONConstrants.FLAG_EXCEPTION);
		result.put(JSONConstrants.FLAG_EXCEPTION_CODE, exc.getCode());
		result.put(JSONConstrants.FLAG_EXCEPTION_MSG, exc.getMsg());
		return JsonUtils.bean2Json(result);
	}
	
}
