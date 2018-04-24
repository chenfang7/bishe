<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML >
<html>
  <head>   
    <title>问卷调查</title>
    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        //用于生成uuid
    function S4() {
        return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
    }
    function guid() {
        return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4());
    }
    	function submit(){
    	var qid= $("#qid").val()
    	var uuid = guid();
		var qs=new Array()
    		$("#questions").children("div").each(function(){
    		
    			var tid= $(this).children("[name='tid']").val()
    			var aresult =new Array()
    			//传入后端的值
    			var aresultjson
    			if($(this).children("[name='type']").val()==1){
    			/* 单选 */
    			var result
    				 if($(this).find(':radio:checked').val()==null){
    					result="";
    				}else{ 
    					result=$(this).find(':radio:checked').val()
    				 } 
    				
    				aresult.push(result)
    				
    				aresultjson=JSON.stringify(aresult)
    				
    			}
    			if($(this).children("[name='type']").val()==2){
 					/* 多选 */
 					
 					$(this).find(':checkbox:checked').each(function(){
 						aresult.push($(this).val())
 					})
 					aresultjson=JSON.stringify(aresult)
 					
    			}
    			if($(this).children("[name='type']").val()==3){
    				/* 填空 */
    				aresult.push($(this).find("[name='text']").val())
    				aresultjson=JSON.stringify(aresult)
    				
    			}
    			var question='{"qid":'+qid+',"aresultarray":'+aresultjson+',"tid":'+tid+',"randomuserid":"'+uuid+'"}'
    			qs.push(question)
    		})
    		qs='['+qs+']'
    		alert(qs)
    		$.ajax({
                url : "addanswers",
                type : "POST",
                async : false,
                contentType : "application/json;charset=UTF-8",
                data : qs,
                dataType : 'json', 
                success : function(data) {
                	if(data.code=="提交成功！"){
                	
                	alert("提交成功")
                	}else{
                		alert("提交失败")
                	}
                   
                }
            });
    	}
    	
    </script>
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
		
			<c:if test="${q.type==1}">
			<!-- 单选题 -->
				<div>
					<input type="hidden" name="tid" value="${q.tid}">
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span >${q.tname}</span>
						
					</p>
					<c:forEach items="${q.optionstr}" var="option">
					<p class="block">
						<input type="radio" name="radio${stat.count}" value="${option}"><span
							>${option}</span>
						
					</p>
					</c:forEach>
					
					
					
				</div>
			</c:if>
			
			<c:if test="${q.type==2}">
			<!-- 多选题 -->
				<div>
				<input type="hidden" name="tid" value="${q.tid}">
					<input type="hidden" name="type" value="${q.type}">
					<p class="block">
						${stat.count}.<span >${q.tname}</span>
						
					</p>
					<c:forEach items="${q.optionstr}" var="option">
					<p class="block">
						<input type="checkbox" name="checkbox${stat.count}" value="${option}"><span
							>${option}</span>
						
					</p>
					</c:forEach>
					
					
				</div>
			</c:if>
			
			
			<c:if test="${q.type==3}">
			<!-- 填空题 -->
				<div>
				<input type="hidden" name="tid" value="${q.tid}">
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
