<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
</style>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>员工管理 - 东方黑玛oa系统</title>

<meta name="description" content="Static &amp; Dynamic Tables" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
<link rel="stylesheet"
	href="assets/css/bootstrap-datetimepicker.min.css" />


<script src="assets/js/custom/date-utils.js"></script>
<link rel="stylesheet" href="assets/css/custom/table-custom.css" />
</head>

<body class="skin-1">
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">东方黑玛oa系统</a>
					</li>
					<li><a href="#">财务管理</a></li>
					<li class="active">校区流水</li>
				</ul>
			</div>

			<div class="page-content">
				<div class="ace-settings-container" id="ace-settings-container">
				</div>
				<div class="page-header">
					<h1>
						财务管理 <small> <i class="ace-icon fa fa-angle-double-right"></i>
							校区流水
						</small>
					</h1>
				</div>

				<div id="alertDiv" class="alert alert-warning hidden">
					<a class="close" href="#"> <i class="ace-icon fa fa-times"></i>
					</a>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="widget-box">
							<div class="widget-header widget-header-flat widget-header-small">
								<h5 class="widget-title">
									<i class="ace-icon fa fa-search"></i> 校区流水
								</h5>

								<div class="widget-toolbar no-border">
									<div class="btn-toolbar">
										<div class="btn-group">
											<button id="addButton" value="water.do"
												class="btn btn-sm btn-success btn-white btn-round">
												<i class="ace-icon fa fa-plus bigger-110 green"></i> 添加
											</button>
										</div>
										<div class="btn-group">
											<button id="exportButton"
												class="btn btn-sm btn-success btn-white btn-round">
												<i class="ace-icon fa fa-mail-forward bigger-110 green"></i>
												导出
											</button>
										</div>
										<div class="btn-group">
											<button id="searchButton"
												class="btn btn-sm btn-success btn-white btn-round"
												value="fin.do">
												<i class="ace-icon fa fa-search bigger-110 green"></i> 流水查询
											</button>
										</div>
									</div>
								</div>
							</div>

							<div class="widget-body">
								<div class="widget-main" style="height: 200px; width: 1100px">
									<form:form id="searchForm" modelAttribute="cw" method="post"
										cssClass="form-horizontal" role="form">
										<div class="form-group">
											<div
												style="float: left; width: 200px; height: 30px; margin-left: 20px; margin-top: 5px">
												<span>类型：</span>
												<form:radiobutton path="waterType" value="0" />
												<label for="waterType1">支出</label>
												<form:radiobutton path="waterType" value="1" />
												<label for="waterType2">收入</label>
											</div>
											<div
												style="float: left; width: 200px; height: 30px; margin-left: 20px">
												<span>开始日期：</span>
												<form:input path="startDate" cssClass="datepicker"
													cssStyle="width:100px" />
											</div>
											<div
												style="float: left; width: 200px; height: 30px; margin-left: 20px">
												<span>结束日期：</span>
												<form:input path="endDate" cssClass="datepicker"
													cssStyle="width:100px" />
											</div>
											<div
												style="float: left; width: 200px; height: 30px; margin-left: 20px">
												<span>科目：</span>
												<form:select path="subId" onchange="change_sub()">
													<form:option value="0" label="全部"></form:option>
													<form:options items="${subs}" itemLabel="subjectName"
														itemValue="subjectId" />
												</form:select>
											</div>
											<div
												style="float: left; width: 200px; height: 30px; margin-left: 20px">
												<span>明细科目：</span>
												<form:select path="subDetailId">
													<form:option value="0" label="全部"></form:option>
													<form:options items="${subDetails}"
														itemLabel="subjectDetailName" itemValue="subjectDetailId" />
												</form:select>
											</div>
											<div style="height: 60px;"></div>
											<div style="width: 1100px; height: 30px; margin-left: 20px;">
												<span class="sp1 well">本月收入：￥</span><span class="sp1 well">${fin.sumIncome }</span>
												<span class="sp1 well">本月支出：￥</span><span class="sp1 well">${fin.sumExpenditure }</span>
												<span class="sp1 well">本月结余：￥</span><span class="sp1 well"
													style="color: green; font-weight: bold">${fin.curCount }</span>
												<span class="sp1 well">上月结余：￥</span><span class="sp1 well">${fin.preCount }</span>
												<br> <br> <br> <br> <span
													class="sp1 well">总结余：￥</span><span class="sp1 well"
													style="color: green; font-weight: bold;">${fin.sumCount }</span>
											</div>

											<form:hidden id="current_page" path="pag.current_page" />
											<form:hidden id="total_page" path="pag.total_page" />
										</div>
									</form:form>
								</div>
								<!-- /.widget-main -->
							</div>
							<!-- /.widget-body -->
						</div>
						<!-- /.widget-box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="widget-box">
							<div class="widget-header widget-header-flat widget-header-small">
								<h5 class="widget-title">
									<i class="ace-icon fa fa-database"></i> 流水信息
								</h5>
								<div class="widget-toolbar">
									<div class="btn-toolbar">
										<div class="btn-group">
											<div class="tableTools-container"></div>
										</div>
									</div>

								</div>
							</div>

							<div class="widget-body">
								<div class="widget-main">
									<table id="main-table"
										class="table table-striped table-bordered table-hover">
									</table>
								</div>
								<!-- /.widget-main -->
							</div>
							<!-- /.widget-body -->
						</div>
						<!-- /.widget-box -->
					</div>
					<!-- /.col -->
				</div>

			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- 尝试票据 -->
	<form id="fm_reset">
	<input type="file" id="myBlogImage" name="myfiles"
		style="display: none" />
	</form>
	<input type="text" id="file_id" style="display: none">
	<!-- 尝试票据end -->

	<!--[if !IE]> -->
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<!-- <![endif]-->
	<%
		String path = request.getContextPath();
	%>
	<script src="<%=path%>/assets/js/tools/jquery.serializejson.min.js"></script>
	<script src="<%=path%>/assets/js/custom/array-utils.js"></script>
	<script src="<%=path%>/assets/js/ajaxfileupload.js"></script>
	<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<!-- page specific plugin scripts -->
	<script src="assets/js/jquery.dataTables.min.js"></script>
	<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
	<script src="assets/js/dataTables.buttons.min.js"></script>
	<script src="assets/js/buttons.flash.min.js"></script>
	<script src="assets/js/buttons.html5.min.js"></script>
	<script src="assets/js/buttons.print.min.js"></script>
	<script src="assets/js/buttons.colVis.min.js"></script>
	<script src="assets/js/dataTables.select.min.js"></script>
	<script type="text/javascript">
		var input = document.getElementById("myBlogImage");
		if (typeof FileReader === 'undefined') {
			alert("您的浏览器不支持此功能，请更换为chrome浏览器")
		} else {
			input.addEventListener('change', readFile, false);
		}
		function readFile() {
			var file = this.files[0];
			if (!/image\/\w+/.test(file.type)) {
				alert("文件必须为图片！");
				return false;
			}
			var idd = $("#file_id").val();
			$.ajaxFileUpload({
				url : 'myfileupload/' + idd + '.do',
				secureuri : false, 
				fileElementId : 'myBlogImage', //文件选择框的id属性
				dataType : 'text', 
				success : function(msg) { 
					if ("ok" == msg) {
						//重新加载条件查询
						$("#searchButton").click();
						//每次重新绑定才有效
						var input = document.getElementById("myBlogImage");
						input.addEventListener('change', readFile, false);
					} else {
						alert(msg)
					}
				},
				error : function(data, status, e) { 
					alert('图片上传失败，请稍后重试！！');
				}
			});
		}

		function addBill(idd) {
			$("#file_id").attr("value", idd);
			$("#myBlogImage").click();
		}

		function change_sub() {
			var subid = $("#subId").val();
			$.ajax({
				"url" : "getSubDetailsList/" + subid + ".do",
				"type" : "post",
				"contentType" : "application/json;charset=UTF-8",
				"cache" : false,
				"dataType" : "json",
				"success" : function(result) {
					var subDe = document.getElementById("subDetailId");
					subDe.innerHTML = ""
					if (result == null || result.length == 0) {
						var newOP = document.createElement("option");
						newOP.innerHTML = "全部";
						newOP.value = 0;
						subDe.appendChild(newOP);
					}
					for (var i = 0; i < result.length; i++) {
						var newOP = document.createElement("option");
						newOP.innerHTML = result[i].subjectDetailName;
						newOP.value = result[i].subjectDetailId;
						subDe.appendChild(newOP);
					}
				},
				"error" : function() {
					alert("服务器响应失败！")
				}
			})
		}
		jQuery(function($) {
			$("#alertDiv a").click(function() {
				var alertDiv = $("#alertDiv");
				alertDiv.addClass("hidden");
				alertDiv.find("a").next("span").remove();
			})

			var bq = {
				'pag' : {
					'current_page' : '1',
					'page_size' : '10'
				},
				'queryParams' : {}
			};

			var lang = {
				"sProcessing" : "处理中...",
				"sLengthMenu" : "每页 _MENU_ 项",
				"sZeroRecords" : "没有匹配结果",
				"sInfo" : "当前显示第 _START_ 至 _END_ 项，共 _TOTAL_ 项。",
				"sInfoEmpty" : "当前显示第 0 至 0 项，共 0 项",
				"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
				"sInfoPostFix" : "",
				"sSearch" : "搜索:",
				"sUrl" : "",
				"sEmptyTable" : "表中数据为空",
				"sLoadingRecords" : "载入中...",
				"sInfoThousands" : ",",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上页",
					"sNext" : "下页",
					"sLast" : "末页",
					"sJump" : "跳转"
				},
				"oAria" : {
					"sSortAscending" : ": 以升序排列此列",
					"sSortDescending" : ": 以降序排列此列"
				}
			};

			var preParams = function() {
				var current_page = $(":input[name='pag.current_page']").val();
				if (current_page != undefined && current_page != null
						&& current_page < 1) {
					bq.pag.current_page = 1;
				} else {
					bq.pag.current_page = current_page;
				}
				bq.pag.page_size = $("select[name='main-table_length']").val();
				//添加收支类型
				bq.queryParams.waterType = $('input:radio:checked').val();
				//开始时间
				if ($(":input[name='startDate']") != null
						&& $(":input[name='startDate']") != undefined) {
					bq.queryParams.startDate = $(":input[name='startDate']")
							.val();
				}
				//结束时间
				if ($(":input[name='endDate']") != null
						&& $(":input[name='endDate']") != undefined) {
					bq.queryParams.endDate = $(":input[name='endDate']").val();
				}
				//科目
				bq.queryParams.subId = $("#subId").val();
				//科目明细
				bq.queryParams.subDetailId = $("#subDetailId").val();

				return JSON.stringify(bq);
			}

			var writeParams = function(result) {

				$(":input[name='pag.current_page']").val(
						result.pag.current_page);
				$(":input[name='pag.total_page']").val(result.pag.total_page);
			}

			var tableColumn = [
					{
						data : "schoolId.schoolName",
						title : "校区"
					},
					{
						data : "subId.subjectName",
						title : "科目"
					},
					{
						data : "subDetailId.subjectDetailName",
						title : "科目明细"
					},
					{
						data : "waterType",
						title : "收支类型",
						render : function(data, type, full, meta) {
							if ("0" == data) {
								return "支出";
							} else {
								return "收入";
							}
						}
					},
					{
						data : "waterBanch",
						title : "批次"
					},
					{
						data : "waterSum",
						title : "金额"
					},
					{
						data : "remark",
						title : "备注"
					},
					{
						title : "票据",
						data : function(data1, type, val, meta) {
							var idd = data1['waterId'];
							var billpath = data1['billPath'];
							if (billpath == null || billpath.trim() == "") {
								return "<button onclick='addBill("
										+ idd
										+ ")' style='width:75px;height:25px'>票据添加</button>";
							} else {
								var str = data1['billPath'];
								var arr = str.split(";");

								var re = "<button onclick='addBill("
										+ idd
										+ ")' style='width:75px;height:25px'>票据添加</button>";
								for (var i = 0; i < arr.length; i++) {
									re = "<img style='width:40px;height:30px' src='"+encodeURI(encodeURI("upload/" + arr[i]))+"'>"
											+ re;
								}
								return re;
							}
						}
					},
					{
						data : "brokerage",
						title : "经手人"
					},
					{
						data : "waterDate",
						title : "时间",
						render : function(data, type, full, meta) {
							return (new Date(data)).Format("yyyy-MM-dd");
						}
					},
					{
						title : "操作",
						data : function(row, type, val, meta) {
							var id = row['waterId'];
							var str = "<a class='update blue' href='fin/"+id+".do' data-toggle='modal'>修改</a>"
									+ "&nbsp;&nbsp;"
									+ "<a class='dele red' href='fin/"+id+".do' data-toggle='modal'>删除</a>";
							return str;
						}
					} ];

			var mainTable = $("#main-table")
					.dataTable(
							{
								oLanguage : lang,
								bPaginate : true,
								pageLength : 10,
								pagingType : "full_numbers",
								searching : false,
								columnDefs : [
								//targets定义哪一列，可以是数组，0代表左起第一列，_all代表所有
								{
									"targets" : "_all",
									"className" : "centerCell"
								} ],
								//必须加这句话，fnDraw()时才会重新加载数据
								"bServerSide" : true,
								ajax : {
									"url" : "getFinList.do",
									"type" : "post",
									"contentType" : "application/json;charset=UTF-8",
									"cache" : false,
									"data" : function(e) {
										if (typeof (preParams) != "undefined"
												&& typeof (preParams) == "function") {
											return preParams();
										} else {
											return JSON.stringify(bq);
										}
									},
									"dataType" : "json",
									//改成datatables期望的格式
									"dataFilter" : function(result, settings) {
										var json = jQuery.parseJSON(result);
										if (typeof (writeParams) != "undefined"
												&& writeParams
												&& typeof (writeParams) == "function") {
											writeParams(json);
										}
										json.recordsTotal = json.pag.total_count;
										json.recordsFiltered = json.pag.total_count;
										json.data = json.pag.pageList;
										return JSON.stringify(json);
									}
								},
								//监听datatables buttons事件
								"drawCallback" : function(settings, json) {
									//修改
									$(".update").on("click", function(e) {
										e.preventDefault();
										var updateUrl = $(this).prop("href");
										//在当前页面刷新新的页面
										$("#main").load(updateUrl, initMain);
									});
									//删除----------
									$(".dele")
											.on(
													"click",
													function(e) {
														e.preventDefault();
														var del = window
																.confirm("你真的要删除吗？");
														if (del) {
															var url = $(this)
																	.prop(
																			"href");
															var user_id = $(
																	this)
																	.closest(
																			"tr")
																	.children(
																			"td")
																	.first()
																	.html();
															console.log(url);
															$
																	.ajax({
																		"url" : url,
																		"method" : "delete",
																		"dataType" : "json",
																		"contentType" : "application/json;charset=UTF-8",
																		"success" : function(
																				result) {
																			if (result.msg == 'success') {
																				var href = "fins.do";
																				$(
																						"#main")
																						.load(
																								href,
																								function() {
																									initMain();
																									var alertDiv = $("#alertDiv");
																									alertDiv
																											.removeClass("hidden");
																									alertDiv
																											.removeClass("alert-warning");
																									alertDiv
																											.removeClass("alert-danger");
																									alertDiv
																											.addClass("alert-info");
																									alertDiv
																											.find(
																													"a")
																											.next(
																													"span")
																											.remove();
																									alertDiv
																											.find(
																													"a")
																											.after(
																													"<span>删除成功<i class='ace-icon glyphicon glyphicon-ok'></i></span>");
																								});
																			}
																			if (result.msg === 'error') {
																				var alertDiv = $("#alertDiv");
																				alertDiv
																						.removeClass("hidden");
																				if (result.errorCode == '503') {
																					alertDiv
																							.removeClass("alert-warning");
																					alertDiv
																							.removeClass("alert-info");
																					alertDiv
																							.addClass("alert-danger");
																				}
																				alertDiv
																						.find(
																								"a")
																						.next(
																								"span")
																						.remove();
																				alertDiv
																						.find(
																								"a")
																						.after(
																								"<span>"
																										+ result.errorMsg
																										+ "</span>");
																			}
																		}
																	})
														}
													});
									//删除结束----------
									$(".pagination .paginate_button")
											.on(
													"mousedown",
													function(e) {
														var cp = $(":input[name='pag.current_page']");
														if (cp == null
																|| cp == undefined) {
															return;
														}
														var currentPage = cp
																.val();
														var firstPage = 1;
														var total_page = $(
																":input[name='pag.total_page']")
																.val();
														var pageInfo = '';
														//点击了那一个按钮
														if ($(this).hasClass(
																"first")) {
															cp.val(firstPage);
															pageInfo = "first";
														} else if ($(this)
																.hasClass(
																		"last")) {
															cp.val(total_page);
															pageInfo = "last";
														} else if ($(this)
																.hasClass(
																		"previous")) {

															if (parseInt(currentPage) - 1 <= 1) {
																cp
																		.val(firstPage);
																pageInfo = "previous";
															} else {
																cp
																		.val(parseInt(currentPage) - 1);
																pageInfo = "previous";
															}

														} else if ($(this)
																.hasClass(
																		"next")) {
															if (parseInt(currentPage) + 1 >= total_page) {
																cp
																		.val(total_page);
																pageInfo = "next";
															} else {
																cp
																		.val(parseInt(currentPage) + 1);
																pageInfo = "next";
															}

														} else {
															cp
																	.val($(this)
																			.children(
																					"a")
																			.html());
															pageInfo = $(this)
																	.children(
																			"a")
																	.html();
														}
													})
									redraw();
								},
								columns : tableColumn
							});

			//重新画分页按钮的css
			function redraw() {
				var currentPage = $(":input[name='pag.current_page']").val();
				var totalPage = $(":input[name='pag.total_page']").val();
				$(".pagination .paginate_button").filter(".active")
						.removeClass("active");
				$(".pagination .paginate_button").filter(function() {
					return $(this).children("a").html() == currentPage;
				}).addClass("active");
				$(".pagination .paginate_button").filter(
						".first,.previous,.last,.next").removeClass("disabled");
				if (currentPage == 1) {
					$(".pagination .paginate_button")
							.filter(".first,.previous").addClass("disabled");
				}
				if (currentPage == totalPage) {
					$(".pagination .paginate_button").filter(".last,.next")
							.addClass("disabled");
				}
			}

			$("#searchButton").on("mousedown", function() {
				$(":input[name='pag.current_page']").val(1);
			})
			$("#searchButton").on("click", function() {
				//重新画
				mainTable.fnDraw();
			})

			$("#exportButton").on("click", function() {
				$.ajax({
					type : "get",
					url : "exp.do",
					contentType : "application/json;charset=UTF-8",
					cache : false,
					dataType : "json",
					success : function(result) {
						if (result.flag == true) {
							alert(result.msg)
						} else {
							alert("导出失败")
						}
					}
				})
			})

			$(".datepicker").datepicker({
				autoclose : true,//选中之后自动隐藏日期选择框
				clearBtn : true,//清除按钮
				todayBtn : true,//今日按钮
				format : "yyyy-mm-dd"
			});

			$("#addButton").on("click", function() {
				var addUrl = $(this).val();
				$("#main").load(addUrl, initMain);
			});

		})
	</script>
	<script src="assets/js/custom/table-datatables.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<script src="assets/js/moment.min.js"></script>
	<script src="assets/js/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

</body>
</html>
