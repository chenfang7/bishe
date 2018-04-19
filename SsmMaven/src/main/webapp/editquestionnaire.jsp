<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML >
<html>
<head>
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>

<title>编辑问卷</title>
<style type="text/css">
p.block {
	display: block;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("p").blur(function() {
			$(this).children("input").prop("value", $(this).text());
		});
	});
	var i = 1;
	function addRadio() {
		var question = '<div><input type="hidden"  value="1" ><p class="block" contenteditable="true">' + i + '.请在此输入您的问题</p><p class="block" contenteditable="true"><input type="radio" name="radio" value="答案1">答案1</p><p class="block" contenteditable="true"><input type="radio" name="radio" value="答案2">答案2</p></div>'
		$("#questions").append(question);
		i++;
	}
	function addCheckBox() {
		var question = '<div><input type="hidden"  value="2" ><p class="block" contenteditable="true">' + i + '.请在此输入您的问题</p><p class="block" contenteditable="true"><input type="checkbox" name="radio" value="答案1">答案1</p><p class="block" contenteditable="true"><input type="checkbox" name="radio" value="答案2">答案2</p><p class="block"><input type="checkbox" name="radio" value="答案3">答案3</p></div>'
		$("#questions").append(question);
		i++;
	}
	function addQA() {
		var question = '<div><input type="hidden"  value="3" ><p class="block" contenteditable="true">' + i + '.请在此输入您的问题</p><p class="block" contenteditable="true"><input type="text" name="text" ></p></div>'
		$("#questions").append(question);
		i++;
	}
</script>

</head>

<body>
	<p class="block">点击下边的按钮来添加问题</p>
	<button onclick="addRadio()">添加单选题</button>
	<button onclick="addCheckBox()">添加多选题</button>
	<button onclick="addQA()">添加填空题</button>
	<div id='questions'>
		<h1>${qqq.qname}标题</h1>
		<p>介绍</p>
		<div>
		<input type="hidden"  value="1" >
			<p class="block">1.问题1</p>
			<p class="block" contenteditable="true" >
				<input type="radio" name="radio">答案1
			</p>
			<p class="block">
				<input type="radio" name="radio" value="2">答案2
			</p>

		</div>
		<div>
			<p class="block">1.问题1</p>
			<p class="block" contenteditable="true">
				<input type="checkbox" name="text1">答案1
			</p>
			<p class="block" contenteditable="true">
				<input type="checkbox" name="text2">答案2
			</p>

		</div>

		<div>
			<p class="block" contenteditable="true">1.问题1</p>
			<p class="block">
				<input type="text" name="text">
			</p>
		</div>
	</div>
</body>

</html>