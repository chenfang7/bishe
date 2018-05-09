<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head id="ctl00_Head1">
  <title>调查问卷</title>
  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  <meta content="text/html; charset=utf-8" http-equiv="content-type">
  <link rel="stylesheet" href="css/common.css" type="text/css">
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
         <span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireName">企业员工满意度调查问卷</span>
        </h1>
        <div style="clear: both;"></div>
     <div class="surveydescription" id="ctl00_ContentPlaceHolder1_JQ1_divDec"></div>
        <div style="clear: both;"></div>
       </div>
       <div class="elect">
	        <p class="block">点击下边的按钮来添加问题</p></br>
	        <p>
	          <span class="hint" contenteditable="true">&nbsp; &nbsp;为了给您提供更好的服务，希望您能抽出几分钟时间，将您的感受和建议告诉我们，我们非常重视每位用户的宝贵意见，期待您的参与！现在我们就马上开始吧！</span>
	       	</p></br> 
	   <div class="butelect">
		    <button class="btm-primary" onclick="addRadio()">添加单选题</button>
		    <button class="btm-primary" onclick="addCheckBox()">添加多选题</button>
		    <button class="btm-primary" onclick="addQA()">添加填空题</button>
	   </div>
	        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="97%" color=#987cb9 SIZE=1><!-- 分割线 -->
		</div><!--编辑问卷栏 -->
       <div class="surveycontent" id="ctl00_ContentPlaceHolder1_JQ1_question">
        <div id="ctl00_ContentPlaceHolder1_JQ1_surveyContent">
         <fieldset class="fieldset" id="fieldset1">
             <!-- 大标题 -->
          <div class="div_title_page_question">一：&nbsp;总体满意度</div>
             <!-- 第一问 -->
          <div class="div_question" id="div1">
           <div class="div_title_question_all">
            <div class="div_topic_question">1.</div>
            <div class="div_title_question" id="divTitle1">对企业满意程度<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="radio" value="1" disabled="disabled">
              <label for="q3_1">很满意</label>
             </li>
             <li style="width:99%;">
              <input id="q3_2" name="q3" type="radio" value="2" disabled="disabled">
              <label for="q3_2">较满意</label>
             </li>
             <li style="width:99%;">
              <input id="q3_3" name="q3" type="radio" value="3" disabled="disabled">
              <label for="q3_3">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q3_4" name="q3" type="radio" value="4" disabled="disabled">
              <label for="q3_4">不满意</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第二问 -->
          <div class="div_question" id="div2">
           <div class="div_title_question_all">
            <div class="div_topic_question">2.</div>
            <div class="div_title_question" id="divTitle2">对岗位满意度<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="radio" value="1" disabled="disabled">
              <label for="q3_1">很满意</label>
             </li>
             <li style="width:99%;">
              <input id="q3_2" name="q3" type="radio" value="2" disabled="disabled">
              <label for="q3_2">较满意</label>
             </li>
             <li style="width:99%;">
              <input id="q3_3" name="q3" type="radio" value="3" disabled="disabled">
              <label for="q3_3">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q3_4" name="q3" type="radio" value="4" disabled="disabled">
              <label for="q3_4">不满意</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第三问 -->
          <div class="div_question" id="div3">
           <div class="div_title_question_all">
            <div class="div_topic_question">3.</div>
            <div class="div_title_question" id="divTitle3">对公司的归属感<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="radio" value="1" disabled="disabled">
              <label for="q3_1">很高</label>
             </li>
             <li style="width:99%;">
              <input id="q3_2" name="q3" type="radio" value="2" disabled="disabled">
              <label for="q3_2">较高</label>
             </li>
             <li style="width:99%;">
              <input id="q3_3" name="q3" type="radio" value="3" disabled="disabled">
              <label for="q3_3">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q3_4" name="q3" type="radio" value="4" disabled="disabled">
              <label for="q3_4">很少</label>
             </li>
             <li style="width:99%;">
              <input id="q3_5" name="q3" type="radio" value="5" disabled="disabled">
              <label for="q3_5">没有</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
          <div id="divCut1">
              <!-- 大标题 -->
           <div class="div_title_cut_question"><strong>二：岗位满意度</strong></div>
          </div>
             <!-- 第四问 -->
          <div class="div_question" id="div4">
           <div class="div_title_question_all">
            <div class="div_topic_question">4.</div>
            <div class="div_title_question" id="divTitle4">在工作中你的成就欲望<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="radio" value="1" disabled="disabled">
              <label for="q3_1">很高</label>
             </li>
             <li style="width:99%;">
              <input id="q3_2" name="q3" type="radio" value="2" disabled="disabled">
              <label for="q3_2">较高</label>
             </li>
             <li style="width:99%;">
              <input id="q3_3" name="q3" type="radio" value="3" disabled="disabled">
              <label for="q3_3">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q3_4" name="q3" type="radio" value="4" disabled="disabled">
              <label for="q3_4">较低</label>
             </li>
             <li style="width:99%;">
              <input id="q3_5" name="q3" type="radio" value="5" disabled="disabled">
              <label for="q3_5">没有</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第5问 -->
          <div class="div_question" id="div5">
           <div class="div_title_question_all">
            <div class="div_topic_question">5.</div>
            <div class="div_title_question" id="divTitle5">一天的工作量<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion5">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q5_1" name="q5" type="radio" value="1" disabled="disabled">
              <label for="q5_1">超负荷</label>
             </li>
             <li style="width:99%;">
              <input id="q5_2" name="q5" type="radio" value="2" disabled="disabled">
              <label for="q5_2">满意</label>
             </li>
             <li style="width:99%;">
              <input id="q5_3" name="q5" type="radio" value="3" disabled="disabled">
              <label for="q5_3">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q5_4" name="q5" type="radio" value="4" disabled="disabled">
              <label for="q5_4">很低</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第6问 -->
          <div class="div_question" id="div6">
           <div class="div_title_question_all">
            <div class="div_topic_question">6.</div>
            <div class="div_title_question" id="divTitle6">你对自己岗位的工作<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion6">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q6_1" name="q6" type="radio" value="1" disabled="disabled">
              <label for="q6_1">很有兴趣</label>
             </li>
             <li style="width:99%;">
              <input id="q6_2" name="q6" type="radio" value="2" disabled="disabled">
              <label for="q6_2">兴趣不浓</label>
             </li>
             <li style="width:99%;">
              <input id="q6_3" name="q6" type="radio" value="3" disabled="disabled">
              <label for="q6_3">没有兴趣</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第7问 -->
          <div class="div_question" id="div7">
           <div class="div_title_question_all">
            <div class="div_topic_question">7.</div>
            <div class="div_title_question" id="divTitle7">在工作中学习新技能的机会<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion7">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q7_1" name="q7" type="radio" value="1" disabled="disabled">
              <label for="q7_1">很多</label>
             </li>
             <li style="width:99%;">
              <input id="q7_2" name="q7" type="radio" value="2" disabled="disabled">
              <label for="q7_2">有时</label>
             </li>
             <li style="width:99%;">
              <input id="q7_3" name="q7" type="radio" value="3" disabled="disabled">
              <label for="q7_3">视情况而定</label>
             </li>
             <li style="width:99%;">
              <input id="q7_4" name="q7" type="radio" value="4" disabled="disabled">
              <label for="q7_4">几乎没有</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第8问 -->
          <div class="div_question" id="div8">
           <div class="div_title_question_all">
            <div class="div_topic_question">8.</div>
            <div class="div_title_question" id="divTitle8">在工作中的发挥<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion8">
            <div class="div_table_clear_top">
            </div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q8_1" name="q8" type="radio" value="1" disabled="disabled">
              <label for="q8_1">充分发挥</label>
             </li>
             <li style="width:99%;">
              <input id="q8_2" name="q8" type="radio" value="2" disabled="disabled">
              <label for="q8_2">大部分发挥</label>
             </li>
             <li style="width:99%;">
              <input id="q8_3" name="q8" type="radio" value="3" disabled="disabled">
              <label for="q8_3">部分发挥</label>
             </li>
             <li style="width:99%;">
              <input id="q8_4" name="q8" type="radio" value="4" disabled="disabled">
              <label for="q8_4">基本没发挥</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第9问 -->
          <div class="div_question" id="div9">
           <div class="div_title_question_all">
            <div class="div_topic_question">9.</div>
            <div class="div_title_question" id="divTitle9">自己奋斗的目标<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion9">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q9_1" name="q9" type="radio" value="1" disabled="disabled">
              <label for="q9_1">清楚</label>
             </li>
             <li style="width:99%;">
              <input id="q9_2" name="q9" type="radio" value="2" disabled="disabled">
              <label for="q9_2">较为清楚</label>
             </li>
             <li style="width:99%;">
              <input id="q9_3" name="q9" type="radio" value="3" disabled="disabled">
              <label for="q9_3">不太清楚</label>
             </li>
             <li style="width:99%;">
              <input id="q9_4" name="q9" type="radio" value="4" disabled="disabled">
              <label for="q9_4">不清楚</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第10问 -->
          <div class="div_question" id="div10">
           <div class="div_title_question_all">
            <div class="div_topic_question">10.</div>
            <div class="div_title_question" id="divTitle10">你对自己的工作权限<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion10">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q10_1" name="q10" type="radio" value="1" disabled="disabled">
              <label for="q10_1">明确</label>
             </li>
             <li style="width:99%;">
              <input id="q10_2" name="q10" type="radio" value="2" disabled="disabled">
              <label for="q10_2">较为明确</label>
             </li>
             <li style="width:99%;">
              <input id="q10_3" name="q10" type="radio" value="3" disabled="disabled">
              <label for="q10_3">不太明确</label>
             </li>
             <li style="width:99%;">
              <input id="q10_4" name="q10" type="radio" value="4" disabled="disabled">
              <label for="q10_4">不明确</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第11问 -->
          <div class="div_question" id="div11">
           <div class="div_title_question_all">
            <div class="div_topic_question">11.</div>
            <div class="div_title_question" id="divTitle11">付出的努力和实际收到的报酬相匹配<span style="color:red;">&nbsp;*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion11">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q11_1" name="q11" type="radio" value="1" disabled="disabled">
              <label for="q11_1">非常匹配</label>
             </li>
             <li style="width:99%;">
              <input id="q11_2" name="q11" type="radio" value="2" disabled="disabled">
              <label for="q11_2">较为匹配</label>
             </li>
             <li style="width:99%;">
              <input id="q11_3" name="q11" type="radio" value="3" disabled="disabled">
              <label for="q11_3">较不匹配</label>
             </li>
             <li style="width:99%;">
              <input id="q11_4" name="q11" type="radio" value="4" disabled="disabled">
              <label for="q11_4">很不匹配</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 大标题 -->
          <div id="divCut2">
           <div class="div_title_cut_question"><strong>三：&nbsp;对上司的满意度</strong></div>
          </div>
             <!-- 第12问 -->
          <div class="div_question" id="div12">
           <div class="div_title_question_all">
            <div class="div_topic_question">12.</div>
            <div class="div_title_question" id="divTitle12">你部门的组长能力<span style="color:red;">*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion3">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q3_1" name="q3" type="radio" value="1" disabled="disabled">
              <label for="q3_1">很高</label>
             </li>
             <li style="width:99%;">
              <input id="q3_2" name="q3" type="radio" value="2" disabled="disabled">
              <label for="q3_2">较高</label>
             </li>
             <li style="width:99%;">
              <input id="q3_3" name="q3" type="radio" value="3" disabled="disabled">
              <label for="q3_3">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q3_4" name="q3" type="radio" value="4" disabled="disabled">
              <label for="q3_4">查</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第13问 -->
          <div class="div_question" id="div13">
           <div class="div_title_question_all">
            <div class="div_topic_question">13.</div>
            <div class="div_title_question" id="divTitle13">组长能够用人所长，扬长避短<span style="color:red;">*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion13">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q13_1" name="q13" type="radio" value="1" disabled="disabled">
              <label for="q13_1">总是</label>
             </li>
             <li style="width:99%;">
              <input id="q13_2" name="q13" type="radio" value="2" disabled="disabled">
              <label for="q13_2">有时</label>
             </li>
             <li style="width:99%;">
              <input id="q13_3" name="q13" type="radio" value="3" disabled="disabled">
              <label for="q13_3">很少</label>
             </li>
             <li style="width:99%;">
              <input id="q13_4" name="q13" type="radio" value="4" disabled="disabled">
              <label for="q13_4">没有</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第14问 -->
          <div class="div_question" id="div14">
           <div class="div_title_question_all">
            <div class="div_topic_question">14.</div>
            <div class="div_title_question" id="divTitle14">组长听取员工意见次数<span style="color:red;">*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion14">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q14_1" name="q14" type="radio" value="1" disabled="disabled">
              <label for="q14_1">经常</label>
             </li>
             <li style="width:99%;">
              <input id="q14_2" name="q14" type="radio" value="2" disabled="disabled">
              <label for="q14_2">偶尔</label>
             </li>
             <li style="width:99%;">
              <input id="q14_3" name="q14" type="radio" value="3" disabled="disabled">
              <label for="q14_3">几乎不</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
             <!-- 第15问 -->
          <div class="div_question" id="div15">
           <div class="div_title_question_all">
            <div class="div_topic_question">15.</div>
            <div class="div_title_question" id="divTitle15">组长与员工的关系<span style="color:red;">*</span></div>
            <div style="clear:both;"></div>
           </div>
           <div class="div_table_radio_question" id="divquestion15">
            <div class="div_table_clear_top"></div>
            <ul class="ulradiocheck">
             <li style="width:99%;">
              <input id="q15_1" name="q15" type="checkbox" value="1">
              <label for="q15_1">很好</label>
             </li>
             <li style="width:99%;">
              <input id="q15_2" name="q15" type="checkbox" value="2">
              <label for="q15_2">一般</label>
             </li>
             <li style="width:99%;">
              <input id="q15_3" name="q15" type="checkbox" value="3">
              <label for="q15_3">不好</label>
             </li>
             <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
            <div class="div_table_clear_bottom"></div>
           </div>
           <div class="errorMessage"></div>
          </div>
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
<script>
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
}//编辑问卷
</script>
</html>