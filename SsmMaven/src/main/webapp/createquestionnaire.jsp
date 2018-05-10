<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>createquestionnaire.html</title>
<link rel="stylesheet" href="css/common.css" type="text/css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body>
<div id="divNotRun" style="height:100px; text-align:center; display:none;"></div>
  <div id="jqContent" style="text-align: left; ">
    <div id="headerCss" style="overflow-x: hidden; overflow-y: hidden; ">
    	<div id="ctl00_header">
     		<div style="display:none;"></div>
    	</div>
   </div>
   <div id="box">
   
    <div id="mainInner">
	    <div id="content"><h10 class="head">创建调查问卷</h10></div>
     <div id="mainCss">
	    	
		<div style="margin:0 auto;width:700px;text-align:center;padding-top:100px;">
			<lable class="lable">调查名称：</lable>
			<input type="text" name="wd" id="text1" class="form-control" onfocus="if(value=='请输入新建的问卷名...'){value='';}" onblur="if(value==''){value='请输入新建的问卷名...'}" value="请输入新建的问卷名..." onkeypress="return searchQ(event);">
			<lable class="lable">调查起始日期：</lable>
			<input type="text" name="wd" id="startDate"> - <input type="text" name="wd" id="endDate">
			<button class="btn-primary" onclick='gocreate()'>创建问卷</button>
		</div>
	 </div>
    </div>
   </div>
 </div>
</body>
<script type="text/javascript">
	function gocreate() {
	window.location.href='create?name='+$("#text1").val()+"&startDate="+$("#startDate").val()+"&endDate="+$("#endDate").val()
	}
</script>
</html>
