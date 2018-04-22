<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML >
<html>
  <head>   
    <title>问卷调查</title>
    <script type="text/javascript"></script>
  </head>
  
  <body>
   	<input id="qid" type="hidden" value="${qqq.qid}">
	<div id='questions'>
		<h1>
			<span >${qqq.qname}</span>
		</h1>
		<p>
			<span ><c:if test="${not empty qqq.info}">${qqq.info}</c:if></span>
		</p>
		<c:forEach items="${qqq.questions}" var="q" varStatus="stat">
		<!-- 单选题 -->
			<c:if test="${q.type==1}">
				<div>
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span >${q.tname}</span>
						
					</p>
					<c:forEach items="${q.optionstr}" var="option">
					<p class="block">
						<input type="radio" name="radio" value="${option}"><span
							>${option}</span>
						
					</p>
					</c:forEach>
					
					
					
				</div>
			</c:if>
			<!-- 多选题 -->
			<c:if test="${q.type==2}">
				<div>
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span >${q.tname}</span>
						
					</p>
					<c:forEach items="${q.optionstr}" var="option">
					<p class="block">
						<input type="checkbox" value="${option}"><span
							>${option}</span>
						
					</p>
					</c:forEach>
					
					
				</div>
			</c:if>
			
			<!-- 填空题 -->
			<c:if test="${q.type==3}">
				<div>
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span >${q.tname}</span>
						
					</p>
					<p class="block">
						<input type="text" name="text">
					</p>
				</div>
			</c:if>
		</c:forEach>
	</div>
	<button onclick="submit()">提交</button>
  </body>
</html>
