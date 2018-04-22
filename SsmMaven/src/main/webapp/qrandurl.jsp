<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>二维码&链接</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript"
	src="http://static.runoob.com/assets/qrcode/qrcode.min.js"></script>
	<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var qrcode = new QRCode(document.getElementById("qrcode"), {
		text: "http://127.0.0.1:8080/questionnaire?qid="+${qid},
			width : 100,
			height : 100
		});
		qrcode.makeCode();
	});
	
</script>
</head>

<body>
<div id="qrcode" style="width:100px; height:100px; margin-top:15px;"></div>
<div><a href="http://127.0.0.1:8080/questionnaire?qid=${qid}">打开问卷</a></div>
</body>
</html>
