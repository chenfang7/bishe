<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>createquestionnaire.html</title>



<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
</head>

<body>
	<input type="text" id="text1">
	<button onclick='gocreate()'>创建问卷</button>
	
</body>
<script type="text/javascript">
	function gocreate() {
	window.location.href='/create?name='+$("#text1").val()

	}
</script>
</html>