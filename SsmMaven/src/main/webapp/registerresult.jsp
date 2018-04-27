<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册结果</title>
</head>
<body>
<c:if test="${result == 1}">
注册成功啦，激活链接已发送至注册邮箱，请前往邮箱激活账号.
</c:if>
<c:if test="${result == 0}">
注册失败啦，你挺皮啊，赶紧联系管理员.
</c:if>
</body>
</html>