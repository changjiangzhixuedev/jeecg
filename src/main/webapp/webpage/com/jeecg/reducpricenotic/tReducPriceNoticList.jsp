<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>降价通知</title>
<meta name="viewport" content="width=device-width" />
<t:base type="bootstrap,bootstrap-table,layer"></t:base>
</head>
<body>
<t:datagrid name="tReducPriceNoticList" component="bootstrap-table"  checkbox="true" sortName="createDate"  sortOrder="desc"  pagination="true" fitColumns="true" title="降价通知" actionUrl="tReducPriceNoticController.do?datagrid" idField="id"  fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属部门"  field="sysOrgCode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属公司"  field="sysCompanyCode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="流程状态"  field="bpmStatus"  hidden="true"  queryMode="single"  dictionary="bpm_status"  width="120"></t:dgCol>
   <t:dgCol title="用户"  field="userId"  queryMode="single"  dictionary="t_user,id,nick_name"  width="120"></t:dgCol>
   <t:dgCol title="意向价格"  field="intentionPrice"  query="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="手机号"  field="phoneNumber"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="tReducPriceNoticController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="tReducPriceNoticController.do?goAdd" funname="add"  width="768"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="tReducPriceNoticController.do?goUpdate" funname="update"  width="768"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tReducPriceNoticController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tReducPriceNoticController.do?goUpdate" funname="detail"  width="768"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  <script type="text/javascript">
	 $(document).ready(function(){
	 });
	 
	   
	 
	//导入
	function ImportXls() {
		openuploadwin('Excel导入', 'tReducPriceNoticController.do?upload', "tReducPriceNoticList");
	}
	
	//导出
	function ExportXls() {
		JeecgExcelExport("tReducPriceNoticController.do?exportXls","tReducPriceNoticList");
	}
	
	//模板下载
	function ExportXlsByT() {
		JeecgExcelExport("tReducPriceNoticController.do?exportXlsByT","tReducPriceNoticList");
	}
	
	 </script>
</body>
</html>