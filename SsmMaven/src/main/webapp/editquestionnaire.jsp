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
		$("li").on("blur", "label", function() {
			if ($(this).children("label").is("label")) {
				$(this).children("input").prop("value", $(this).children("label").text());
			}

		})
		//鼠标悬停显示删除
/*		$("div").on("mouseover", "p", function() {
			$(this).children("button").css("display", "inline");
		})

		//鼠标离开
		$("div").on("mouseleave", "p", function() {
			$(this).children("[name='delete']").css("display", "none");
		})*/


//title 的显示删除和隐藏
    //鼠标悬停显示删除
    $(".div_title_question").on("mouseover", "span", function() {
      $(this).find("button").css("display", "inline");
    })

    //鼠标离开
    $(".div_title_question").on("mouseleave", "span", function() {
      $(this).find("button").css("display", "none");
    })



	});
	var i = 1;
  if('${qqq.questions}'!=""){
    <c:forEach items="${qqq.questions}" var="q" varStatus="stat">
         i=${stat.count}
    </c:forEach>
    i++
  }else{
    i=1;
  }
	//添加单选
	function addRadio() {
		var question = '<div class="div_question"><input type="hidden" name="type" value="1"><div class="div_title_question_all"><div class="div_topic_question">'+i+'.</div><div class="div_title_question" id="divTitle1"><span contenteditable="true">题目</span> <button name="delete" style="display:inline" onclick="deletequestion(this)">删除</button><span style="color:red">&nbsp;*</span></div><div style="clear:both"></div></div><div class="div_table_radio_question" id="divquestion3"><div class="div_table_clear_top"></div><ul class="ulradiocheck"><li style="width:99%"><input id="q3_${stat1.count}" name="q3" type="radio" value="${option}" disabled><label for="q3_${stat1.count}" contenteditable="true">答案</label><button name="delete" style="display:inline" onclick="deleteoption(this)">删除</button></li><li style="width:99%"><input id="q3_${stat1.count}" name="q3" type="radio" value="${option}" disabled><label for="q3_${stat1.count}" contenteditable="true">答案</label><button name="delete" style="display:inline" onclick="deleteoption(this)">删除</button></li><li style="width:99%"><input id="q3_${stat1.count}" name="q3" type="radio" value="${option}" disabled><label for="q3_${stat1.count}" contenteditable="true">答案</label><button name="delete" style="display:inline" onclick="deleteoption(this)">删除</button></li><button onclick="addradiooption(this)">添加选项</button><div style="clear:both"></div></ul><div style="clear:both"></div><div class="div_table_clear_bottom"></div></div></div>'
		$("fieldset").append(question);
		i++;

	}
	//添加多选
	function addCheckBox() {
		var question = '<div class="div_question"><input type="hidden" name="type" value="2"><div class="div_title_question_all"><div class="div_topic_question">'+i+'.</div><div class="div_title_question" id="divTitle2"><span contenteditable="true">问题</span> <button name="delete" style="display:none" onclick="deletequestion(this)">删除</button> <span style="color:red">&nbsp;*</span></div><div style="clear:both"></div></div><div class="div_table_radio_question" id="divquestion3"><div class="div_table_clear_top"></div><ul class="ulradiocheck"><li style="width:99%"><input id="q3_${stat1.count}" name="q3" type="checkbox" value="" disabled><label for="q3_${stat1.count}" contenteditable="true">答案</label><button name="delete" style="display:inline" onclick="deleteoption(this)">删除</button></li><li style="width:99%"><input id="q3_${stat1.count}" name="q3" type="checkbox" value="" disabled><label for="q3_${stat1.count}" contenteditable="true">答案</label><button name="delete" style="display:inline" onclick="deleteoption(this)">删除</button></li><button onclick="addcheckboxoption(this)">添加选项</button><div style="clear:both"></div></ul><div style="clear:both"></div><div class="div_table_clear_bottom"></div></div></div>'
		$("fieldset").append(question);
		i++;

	}
	//添加问答题
	function addQA() {
		var question = '<div class="div_question"><input type="hidden" name="type" value="3"><div class="div_title_question_all"><div class="div_topic_question">'+i+'.</div><div class="div_title_question" id="divTitle2"><span contenteditable="true">问题</span> <button name="delete" style="display:inline" onclick="deletequestion(this)">删除</button><span style="color:red">&nbsp;*</span></div><div style="clear:both"></div></div><div class="div_table_radio_question" id="divquestion3"><div class="div_table_clear_top"></div><ul class="ulradiocheck"><li style="width:99%"><input id="q3_1" name="q3" type="text" disabled><label>ssss</label></li><div style="clear:both"></div></ul><div style="clear:both"></div><div class="div_table_clear_bottom"></div></div></div>'
		$("fieldset").append(question);
		i++;
	}
	//添加单选选项
	function addradiooption(add) {
		$(add).before('<li style="width:99%;"><input  name="q3" type="radio" value="答案" disabled="disabled"> <label  contenteditable="true">答案</label><button name="delete" style="display: inline;" onclick="deleteoption(this)">删除</button></li>')
	}
	//添加多选选项
	function addcheckboxoption(add) {
		$(add).before('<li style="width:99%;"><input  name="q3" type="checkbox" value="答案" disabled="disabled"><label  contenteditable="true">答案</label><button name="delete" style="display: inline;" onclick="deleteoption(this)">删除</button> </li>')
	}
	//删除选项
	function deleteoption(me) {
		$(me).parent().remove();
	}
	//删除问题
	function deletequestion(me) {
		$(me).parent().parent().parent().remove()
		i--;
	}
	function submit() {
	//qid有问题
		var qid = $("#qid").val()
		var qname = $("#ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireName").text()
		var info = $(".hint").text()
		var questions = new Array();
		var Questionnaire
		$(".fieldset > .div_question").each(function() {
			var i = 1;
			var title=$(this).find(".div_title_question > span:first").text()
    
			var arr = new Array();
			var type = $(this).find("input[name='type']").val()
      if(type!=3){
        $(this).find("label").each(function() {


          arr.push($(this).text())
        i++
      })
      }
			
			
			var question = '{"tname":"' + title + '","qid":' + qid + ',"type":' + type + ',"optionstr":' + JSON.stringify(arr) + '}'
			questions.push(question)
		})
		
		Questionnaire = '{"qid":' + qid + ',"qname":"' + qname + '","info":"' + info + '","questions":[' + questions + ']}'
		
		//编辑会重复提交 之前的问题  (bug)
		$.ajax({
                url : "${pageContext.request.contextPath}/updatequestionnaire",
                type : "POST",
                async : false,
                contentType : "application/json;charset=UTF-8",
                data : Questionnaire,
                dataType : 'json', 
                success : function(data) {
                	if(data.code=="登陆成功！"){
                	
                	 location.href="list";
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
        <input id="qid" type="hidden" value="${qqq.qid}">
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
            <button name="delete" style="display: inline;"
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
              <button name="delete" style="display: inline;"
              onclick="deleteoption(this)">删除</button>
              </li>
             </c:forEach>
             <button onclick="addradiooption(this)">添加选项</button>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
          <!--  <div class="errorMessage"></div> -->
          </div>
                </c:if>

                <!-- 多选题 -->
                <c:if test="${q.type==2}">


                 <div class="div_question" >
                  <input type="hidden" name="type" value="${q.type}">
           <div class="div_title_question_all">
            <div class="div_topic_question">${stat.count}.</div>
													<div class="div_title_question" id="divTitle2">
														<span contenteditable="true">${q.tname}</span>
														<button name="delete" style="display: none;"
															onclick="deletequestion(this)">删除</button>
														<span style="color:red;">&nbsp;*</span>
													</div>
													<div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">

              <c:forEach items="${q.optionstr}" var="option" varStatus="stat1">
             <li style="width:99%;">
              <input id="q3_${stat1.count}" name="q3" type="checkbox" value="${option}" disabled="disabled">
              <label for="q3_${stat1.count}" contenteditable="true">${option}</label>
              <button name="delete" style="display: inline;"
              onclick="deleteoption(this)">删除</button>
             </li>








             </c:forEach>
              <button onclick="addcheckboxoption(this)">添加选项</button>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <!-- <div class="errorMessage"></div> -->
          </div>



                </c:if>


                <!-- 填空题 -->
                <c:if test="${q.type==3}">

                 <div class="div_question" >
                  <input type="hidden" name="type" value="${q.type}">
           <div class="div_title_question_all">
            <div class="div_topic_question">${stat.count}.</div>
            <div class="div_title_question" id="divTitle2"><span contenteditable="true">${q.tname}</span>
            <button name="delete" style="display: inline;"
              onclick="deletequestion(this)">删除</button><span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="text" disabled="disabled">
              <label >ssss</label>
             </li>
            
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <!-- <div class="errorMessage"></div> -->
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