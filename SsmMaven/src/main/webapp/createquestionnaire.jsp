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
   <div id="mainCss">
    <div id="mainInner">
     <div id="box">
		<div>
			<input class="form-control" type="text" id="text1">
			<button class="btn-primary" onclick='gocreate()'>创建问卷</button>
		</div>
	 </div>
    </div>
   </div>
 </div>
</body>
<script type="text/javascript">
	function gocreate() {
	window.location.href='create?name='+$("#text1").val()
	}
</script>
</html>
