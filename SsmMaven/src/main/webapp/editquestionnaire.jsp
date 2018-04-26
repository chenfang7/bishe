<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML >
<html>
<head>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<title>编辑问卷</title>
<style type="text/css">
p.block {
	display: block;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		//修改input中的value值
		$("div").on("blur", "p", function() {
			if ($(this).children("span").is("span")) {
				$(this).children("input").prop("value", $(this).children("span").text());
			}

		})
		//鼠标悬停显示删除
		$("div").on("mouseover", "p", function() {
			$(this).children("button").css("display", "inline");
		})

		//鼠标离开
		$("div").on("mouseleave", "p", function() {
			$(this).children("[name='delete']").css("display", "none");
		})



	});
	var i = 1;
	//添加单选
	function addRadio() {
		var question = '<div><input type="hidden"name="type"value="1"><p class="block">' + i + '.<span contenteditable="true">请在此输入您的问题</span><button name="delete"style="display:none;"onclick="deletequestion(this)">删除</button></p><p class="block"><input type="radio"name="radio"value="答案1"><span contenteditable="true">答案1</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><p class="block"><input type="radio"name="radio"value="答案2"><span contenteditable="true">答案2</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><button onclick="addradiooption(this)">添加选项</button></div>'
		$("#questions").append(question);
		i++;

	}
	//添加多选
	function addCheckBox() {
		var question = '<div><input type="hidden"name="type"value="2"><p class="block">' + i + '.<span contenteditable="true">请在此输入您的问题</span><button name="delete"style="display:none;"onclick="deletequestion(this)">删除</button></p><p class="block"><input type="checkbox"value="答案1"><span contenteditable="true">答案1</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><p class="block"><input type="checkbox"value="答案2"><span contenteditable="true">答案2</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><p class="block"><input type="checkbox"value="答案3"><span contenteditable="true">答案3</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><button onclick="addcheckboxoption(this)">添加选项</button></div>'
		$("#questions").append(question);
		i++;

	}
	//添加问答题
	function addQA() {
		var question = '<div><input type="hidden" name="type"  value="3" ><p class="block" >' + i + '.<span contenteditable="true">请在此输入您的问题</span><button name="delete" style="display:none;" onclick="deletequestion(this)">删除</button></p><p class="block" ><input type="text" name="text" ></p></div>'
		$("#questions").append(question);
		i++;
	}
	//添加单选选项
	function addradiooption(add) {
		$(add).before('<p class="block"><input type="radio"name="radio"value="答案"><span contenteditable="true">答案</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p>')
	}
	//添加多选选项
	function addcheckboxoption(add) {
		$(add).before('<p class="block"><input type="checkbox"value="答案"><span contenteditable="true">答案</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p>')
	}
	//删除选项
	function deleteoption(me) {
		$(me).parent().remove();
	}
	//删除问题
	function deletequestion(me) {
		$(me).parent().parent().remove()
		i--;
	}
	function submit() {
		var qid = $("#qid").val()
		var qname = $("#questions > h1 > span").text()
		var info = $("#questions > p > span").text()
		var questions = new Array();
		var Questionnaire
		$("#questions > div").each(function() {
			var i = 1;
			var title
			var arr = new Array();
			var type = $(this).children("input[name='type']").val()
			$(this).children("p").each(function() {

				if (i == 1) {
					title = $(this).children("span").text()
				} else {
					arr.push($(this).children("input").val())
				}
				i++
			})
			
			var question = '{"tname":"' + title + '","qid":' + qid + ',"type":' + type + ',"optionstr":' + JSON.stringify(arr) + '}'
			questions.push(question)
		})
		
		Questionnaire = '{"qid":' + qid + ',"qname":"' + qname + '","info":"' + info + '","questions":[' + questions + ']}'
		alert(Questionnaire)
		$.ajax({
                url : "updatequestionnaire",
                type : "POST",
                async : false,
                contentType : "application/json;charset=UTF-8",
                data : Questionnaire,
                dataType : 'json', 
                success : function(data) {
                	if(data.code=="登陆成功！"){
                	
                	 location.href="/list";
                	}else{
                		
                	}
                   
                }
            });
	}
</script>

</head>

<body>
	<p class="block">点击下边的按钮来添加问题</p>
	<button onclick="addRadio()">添加单选题</button>
	<button onclick="addCheckBox()">添加多选题</button>
	<button onclick="addQA()">添加填空题</button>
	<input id="qid" type="hidden" value="${qqq.qid}">
	<div id='questions'>
		<h1>
			<span contenteditable="true">${qqq.qname}</span>
		</h1>
		<p>
			<span contenteditable="true"><c:if test="${not empty qqq.info}">${qqq.info}</c:if><c:if test="${empty qqq.info}">为了给您提供更好的服务，希望您能抽出几分钟时间，将您的感受和建议告诉我们，我们非常重视每位用户的宝贵意见，期待您的参与！现在我们就马上开始吧！</c:if></span>
		</p>
		<c:forEach items="${qqq.questions}" var="q" varStatus="stat">
		<!-- 单选题 -->
			<c:if test="${q.type==1}">
				<div>
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span contenteditable="true">${q.tname}</span>
						<button name="delete" style="display: none;"
							onclick="deletequestion(this)">删除</button>
					</p>
					<c:forEach items="${q.optionstr}" var="option">
					<p class="block">
						<input type="radio" name="radio" value="${option}"><span
							contenteditable="true">${option}</span>
						<button name="delete" style="display: none;"
							onclick="deleteoption(this)">删除</button>
					</p>
					</c:forEach>
					
					
					<button onclick="addradiooption(this)">添加选项</button>
				</div>
			</c:if>
			<!-- 多选题 -->
			<c:if test="${q.type==2}">
				<div>
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span contenteditable="true">${q.tname}</span>
						<button name="delete" style="display: none;"
							onclick="deletequestion(this)">删除</button>
					</p>
					<c:forEach items="${q.optionstr}" var="option">
					<p class="block">
						<input type="checkbox" value="${option}"><span
							contenteditable="true">${option}</span>
						<button name="delete" style="display: none;"
							onclick="deleteoption(this)">删除</button>
					</p>
					</c:forEach>
					
					<button onclick="addcheckboxoption(this)">添加选项</button>
				</div>
			</c:if>
			
			<!-- 填空题 -->
			<c:if test="${q.type==3}">
				<div>
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span contenteditable="true">${q.tname}</span>
						<button name="delete" style="display: none;"
							onclick="deletequestion(this)">删除</button>
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