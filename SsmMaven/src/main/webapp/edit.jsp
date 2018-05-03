<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head id="ctl00_Head1">
  <title>调查问卷</title>
  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  <meta content="text/html; charset=utf-8" http-equiv="content-type">
  <link rel="stylesheet" href="css/common.css" type="text/css">
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
		var question = '<div><input type="hidden"name="type"value="1"><p class="block">' + i + '.<span contenteditable="true">请在此输入您的问题</span><button name="delete"style="display:none;"onclick="deletequestion(this)">删除</button></p><input type="radio"name="radio"value="答案1"><span contenteditable="true">答案1</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><p class="block"><input type="radio"name="radio"value="答案2"><span contenteditable="true">答案2</span><button name="delete"style="display:none;"onclick="deleteoption(this)">删除</button></p><button onclick="addradiooption(this)">添加选项</button></div>'
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
         <style rel="stylesheet" type="text/css">html{ overflow-x:hidden;overflow-y:auto;}</style>
      <div class="survey" style="margin:0px auto;">
       <div class="surveyhead" id="ctl00_ContentPlaceHolder1_JQ1_divHead" style="border: 0px;">
        <h1 id="ctl00_ContentPlaceHolder1_JQ1_h1Name" style="position:relative;">
         <span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireName">${qqq.qname}</span>
        </h1>
        <div style="clear: both;"></div>
     <div class="surveydescription" id="ctl00_ContentPlaceHolder1_JQ1_divDec"></div>
        <div style="clear: both;"></div>
       </div>
       <div class="elect">
	        <p class="block">点击下边的按钮来添加问题</p></br>
	        <p>
	          <span class="hint" contenteditable="true"><c:if test="${not empty qqq.info}">${qqq.info}</c:if><c:if test="${empty qqq.info}">为了给您提供更好的服务，希望您能抽出几分钟时间，将您的感受和建议告诉我们，我们非常重视每位用户的宝贵意见，期待您的参与！现在我们就马上开始吧！</c:if></span>
	       	</p></br> 
	   <div class="butelect">
		    <button class="btn-primary" onclick="addRadio()">添加单选题</button>
		    <button class="btn-primary" onclick="addCheckBox()">添加多选题</button>
		    <button class="btn-primary" onclick="addQA()">添加填空题</button>
	   </div>
	   <div id='questions'>
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
	        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="97%" color=#987cb9 SIZE=1><!-- 分割线 -->
		</div><!--编辑问卷栏 -->
       <div class="surveycontent" id="ctl00_ContentPlaceHolder1_JQ1_question">
        <div id="ctl00_ContentPlaceHolder1_JQ1_surveyContent">
         <fieldset class="fieldset" id="fieldset1">

             
             <c:forEach items="${qqq.questions}" var="q" varStatus="stat">
             <!-- 单选题 -->
                <c:if test="${q.type==1}">

                 <div class="div_question" >
                  <input type="hidden" name="type" value="${q.type}">
           <div class="div_title_question_all">
            <div class="div_topic_question">${stat.count}.</div>
            <div class="div_title_question" id="divTitle1"><span contenteditable="true">${q.tname}</span>
            <button name="delete" style="display: none;"
              onclick="deletequestion(this)">删除</button><span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
              <c:forEach items="${q.optionstr}" var="option" varStatus="stat1">
             <li style="width:99%;">
              <input id="q3_${stat1.count}" name="q3" type="radio" value="${option}" disabled="disabled">
              <label for="q3_${stat1.count}" contenteditable="true">${option}</label>
              <button name="delete" style="display: none;"
              onclick="deleteoption(this)">删除</button>
             </li>
             </c:forEach>
             <button onclick="addradiooption(this)">添加选项</button>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>

                </c:if>

                <!-- 多选题 -->
                <c:if test="${q.type==2}">


                 <div class="div_question" >
                  <input type="hidden" name="type" value="${q.type}">
           <div class="div_title_question_all">
            <div class="div_topic_question">${stat.count}.</div>
            <div class="div_title_question" id="divTitle2"><span contenteditable="true">${q.tname}</span>
            <button name="delete" style="display: none;"
              onclick="deletequestion(this)">删除</button><span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">

              <c:forEach items="${q.optionstr}" var="option" varStatus="stat1">
             <li style="width:99%;">
              <input id="q3_${stat1.count}" name="q3" type="checkbox" value="${option}" disabled="disabled">
              <label for="q3_${stat1.count}" contenteditable="true">${option}</label>
              <button name="delete" style="display: none;"
              onclick="deleteoption(this)">删除</button>
             </li>

             </c:forEach>
              <button onclick="addcheckboxoption(this)">添加选项</button>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>



                </c:if>


                <!-- 填空题 -->
                <c:if test="${q.type==3}">

                 <div class="div_question" >
           <div class="div_title_question_all">
            <div class="div_topic_question">${stat.count}.</div>
            <div class="div_title_question" id="divTitle2"><span contenteditable="true">${q.tname}</span>
            <button name="delete" style="display: none;"
              onclick="deletequestion(this)">删除</button><span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="text" disabled="disabled">
             </li>
            
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
               </c:if>
                </c:forEach>

         








 


           
        
         
          
         </fieldset>
        </div>
        <div class="shopcart" id="shopcart" style="display:none;"></div>
        <div id="submit_div" style="padding-top: 6px;clear:both; padding-bottom:10px;">
            <div style="background:#ffffff" align="center">
                <input type="submit" value="立即发起调查" onclick="submit()" class="sumitbutton" style="padding:0 300px; height:60px; line-height:60px; margin:5px auto 50px;font-size:20px"/>
            </div>
         <div style="clear:both;"></div>
        </div>
       </div>
     </div>
    </div>
   </div>
   </div>
  </div>
  
</body>
</html>