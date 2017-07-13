package com.hotmarzz.oa.buzz;

import java.util.List;

import com.hotmarzz.oa.pojo.CampusWater;
import com.hotmarzz.oa.pojo.CampusWaterDto;
import com.hotmarzz.oa.pojo.Subject;
import com.hotmarzz.oa.pojo.SubjectDetail;

public interface FinanceBuzz {

	/**
	 * 获取所有科目
	 * @return
	 * @throws Exception
	 */
	List<Subject> getSubsList() throws Exception;
	
	/**
	 * 获取对应的明细科目
	 * @return
	 * @throws Exception
	 */
	List<SubjectDetail> getSubDetailsList(Long subId) throws Exception;
	/**
	 * 获取总收入
	 * @return
	 * @throws Exception
	 */
	Double getSumIncome(String formatDate) throws Exception;
	/**
	 * 获取总支出
	 * @return
	 * @throws Exception
	 */
	Double getSumExpenditure(String formatDate) throws Exception;
	/**
	 * 分页获取校区流水信息
	 * @param cw
	 * @return
	 * @throws Exception
	 */
	CampusWater getList(CampusWater cw) throws Exception;
	/**
	 * 删除流水信息
	 * @param fid
	 * @throws Exception
	 */
	void delete(Long fid) throws Exception;
	/**
	 * 流水添加
	 * @param cw
	 * @throws Exception
	 */
	void add(CampusWaterDto cw) throws Exception;
	/**
	 * 根据ID获取流水信息
	 * @param wid
	 * @return
	 * @throws Exception
	 */
	CampusWater getById(Long wid) throws Exception;
	/**
	 * 修改流水信息
	 * @param cwd
	 * @throws Exception
	 */
	void update(CampusWaterDto cwd) throws Exception;
}
