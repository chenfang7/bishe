<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html >
<head id="ctl01_Head1">
<title>我的问卷</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<meta id="ctl01_keywords" name="keywords" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link id="ctl01_cssdefault" rel="stylesheet" type="text/css"
	href="css/default.css" />
<link id="ctl01_quetsioncss" rel="stylesheet" type="text/css"
	href="css/myquestionnaires.css" />
<link id="ctl01_cssmaster" rel="stylesheet" type="text/css"
	href="css/wjxmaster.css" />
<link id="ctl01_cssdefault" rel="stylesheet" type="text/css"
	href="css/buttons.css" />
<link rel="stylesheet" href="css/common.css" type="text/css">
<!-- 	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	

<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="js/zhezhao.js" type="text/javascript"></script>
<script type="text/javascript">
function searchwd(){
	window.location.href="searchlist?wd="+document.getElementById('search_new').value
}
</script>

</head>
<body>

	<div id="BS">
		<div class="header">
			<div class="my-container clearfix">
				<div id="ctl01_divFreePro" class="logo pull-left">
					<a href="/" id="ctl01_hrefLogo" class="hover logohover"
						target="_blank">问卷调查系统</a>
				</div>


				<div class="user-wrapper pull-right" id="userbutton">
					<!-- <dl class="my-question pull-left">
						<dt class="box user-info">
							<a class="user-name" href="/newwjx/manage/myquestionnaires.aspx"><i
								class="icon questions-icon"><em></em></i><span
								id="ctl01_spanMyq">我的问卷</span></a>
						</dt>
						<dd class="line"></dd>
					</dl> -->
					<dl class="user-info pull-left">
						<!-- <dt class="icon user-icon">
							
						</dt> -->
						<dd class="spinner-list">
							<a href="javascript:void(0)" class="user-name"><span
								id="ctl01_lblUserName" style="text-align:center">${qu.uname}</span></a>
							
						</dd>
					</dl>
					 <dl class="user-info pull-left">
						<a class="user-name" href="list">
							<dt id="ctl01_spanMessage" class="icon info-icon"></dt>
							<dd class="spinner-list">
								<span>我的问卷</span>
							</dd>
						</a>
					</dl> 


					<dl id="ctl01_hrefWjxout" class="user-info pull-left IE-8">
						<a class="user-name" href="/loginout.aspx">
							<dt class="icon out-icon"></dt>
							<dd class="spinner-list">
								<span>退出</span>
							</dd>
						</a>
					</dl>
				</div>
			</div>
		</div>
		<div id="ctl01_ContentPlaceHolder1_surveyfolder" class="survey__folder" style="    width: 1250px;
    left: 83px;"></div>
		<div class="BS-box" style="text-align:left;">


			<link rel="stylesheet" type="text/css" href="css/folder-set.css" />
	

			<form name="aspnetForm" method="post"
				action="/searchlist" id="aspnetForm">
				<div>
					<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
						value="/wEPDwULLTE3MzA4NjQzMjYPZBYCZg9kFg5mD2QWAgIGDxYEHgRocmVmBSUvbmV3d2p4L2Nzcy9teXF1ZXN0aW9ubmFpcmVzLmNzcz92PTEwHgdWaXNpYmxlZ2QCAw8WAh8BaGQCBg8PFgIeBFRleHQFCzE1NjMzNzA2NjEyZGQCBw8WAh8BaGQCCQ8WAh8BaGQCEA9kFgJmD2QWCGYPFgQeCWlubmVyaHRtbAWdAzxkaXYgY2xhc3M9ImNvbnRhaW5lciI+PGRpdiBjbGFzcz0icHJvbXB0LWJveCI+PGRpdiBjbGFzcz0icHJvbXB0LXdyYXBwZXIgY2xlYXJmaXgiPumHjeimgeaPkOmGku+8muivtzxhIGhyZWY9J2phdmFzY3JpcHQ6dm9pZCgwKTsnIG9uY2xpY2s9InZhciBkPW5ldyBEYXRlKCk7dmFyIHVybD0nL3dqeC9tYW5hZ2UvZ3VhbnpodS5hc3B4P3Q9JytkLnZhbHVlT2YoKTtQREZfbGF1bmNoKHVybCwyOTUsMzE1KTsiIHN0eWxlPSdmb250LXNpemU6MTRweDsnIGNsYXNzPSdidG4gYnRuLWRlZmF1bHQgYnRuLXhzJz7nu5Hlrprlvq7kv6HotKblj7c8L2E+77yM57uR5a6a5ZCO5Y+v6YCa6L+H5b6u5L+h566h55CG6Zeu5Y2344CB6I635b6X5paw562U5Y235o+Q6YaS5Lul5Y+K5om+5Zue5a+G56CB77yBPC9kaXY+PC9kaXY+PC9kaXY+HwFnZAIBD2QWBmYPZBYCAgQPFgIfAWdkAgUPFgIfAwW/PjxkbCBjbGFzcz0nc3VydmV5LWl0ZW1zJyBzdHlsZT0nei1pbmRleDoxMDA7cG9zaXRpb246cmVsYXRpdmUnPjxkdCBjbGFzcz0naXRlbS10b3AnPjxkaXYgY2xhc3M9J3B1bGwtbGVmdCc+PGEgaHJlZj0naHR0cHM6Ly93d3cud2p4LmNuL3BxLzIxMjc1MjEzLmFzcHg/dD02MzY1ODM4NjExNjc3NzU5MzcnIHRhcmdldD0nX2JsYW5rJyBjbGFzcz0ncHVsbC1sZWZ0IGl0ZW0tdGl0JyB0aXRsZT0n5Li6MzQnPuS4ujM0PC9hPjxkaXYgY2xhc3M9J3B1bGwtbGVmdCBpdGVtLWlkJz5JRDoyMTI3NTIxMzwvZGl2PjwvZGl2PjxkaXYgY2xhc3M9J3B1bGwtcmlnaHQnPjxkaXYgY2xhc3M9J3B1bGwtbGVmdCBpdGVtLWRyYWZ0Jz7il48mbmJzcDvojYnnqL88L2Rpdj48ZGl2IGNsYXNzPSdwdWxsLWxlZnQgaXRlbS1zaGVldCc+562U5Y2377yaPGEgaHJlZj0namF2YXNjcmlwdDp2b2lkKDApOycgY2xhc3M9J3J1bmluZy1udW0nPjA8L2E+PC9kaXY+PGRpdiBjbGFzcz0ncHVsbC1sZWZ0IGl0ZW0tZGF0YSc+M+aciDEx5pelPC9kaXY+PGRpdiBjbGFzcz0ncHVsbC1sZWZ0IGl0ZW0tdGltZSc+MDk6NDk8L2Rpdj48L2Rpdj4gPC9kdD48ZGQgY2xhc3M9J2l0ZW0tYm90Jz48ZGl2IGNsYXNzPSdwcm9jZXNzLWJveCBwdWxsLWxlZnQnPjxkbCBjbGFzcz0ncHJvY2Vzcy0xIHB1bGwtbGVmdCc+PGRkIGNsYXNzPSdzcGlubmVyLWxpc3QnPjxhIGhyZWY9Jy93angvZGVzaWduL2Rlc2lnbnN0YXJ0LmFzcHg/YWN0aXZpdHk9MjEyNzUyMTMnPjxpIGNsYXNzPSdpY29uIGRlc2lnbi1pY29uJz48L2k+6K6+6K6h6Zeu5Y23PHNwYW4gY2xhc3M9J2NhcmV0Jz48L3NwYW4+PC9hPjx1bD48c3BhbiBjbGFzcz0nY2FyZXQtaW52ZXJ0ZWQnPjwvc3Bhbj48bGk+PGEgaHJlZj0nL3dqeC9kZXNpZ24vZGVzaWduc3RhcnQuYXNweD9hY3Rpdml0eT0yMTI3NTIxMycgdGl0bGU9J+iuvuiuoeWQkeWvvCc+6K6+6K6h5ZCR5a+8PC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy9uZXd3angvZGVzaWduL2VkaXRxdWVzdGlvbm5haXJlLmFzcHg/YWN0aXZpdHk9MjEyNzUyMTMnIHRpdGxlPSfnvJbovpHpl67ljbcnPue8lui+kemXruWNtzwvYT48L2xpPjxsaT48YSBocmVmPScvd2p4L2Rlc2lnbi9xdWVzdGlvbm5haXJlc2V0dGluZ3MuYXNweD9hY3Rpdml0eT0yMTI3NTIxMycgdGl0bGU9J+mXruWNt+iuvue9ric+6Zeu5Y236K6+572uPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy9uZXd3angvam9pbi9qcW5ldy5hc3B4P3E9MjEyNzUyMTMmd2c9MSZ0PTYzNjU4Mzg2MTE2Nzc3NTkzNycgdGl0bGU9J+mXruWNt+Wkluingic+6Zeu5Y235aSW6KeCPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy93angvZGVzaWduL3NldGhiYXdhcmQuYXNweD9hY3Rpdml0eT0yMTI3NTIxMyc+57qi5YyFJuWlluWTgTwvYT48L2xpPjwvdWw+PC9kZD48L2RsPjxkbCBjbGFzcz0ncHJvY2Vzcy0yIHB1bGwtbGVmdCc+PGRkIGNsYXNzPSdzcGlubmVyLWxpc3QnPjxhIGhyZWY9Jy9uZXd3angvZGVzaWduL3NlbmRxc3RhcnQuYXNweD9hY3Rpdml0eT0yMTI3NTIxMyc+PGkgY2xhc3M9J2ljb24gcmVjb3ZlcnktaWNvbic+PC9pPuWPkemAgemXruWNtzxzcGFuIGNsYXNzPSdjYXJldCc+PC9zcGFuPjwvYT48dWw+PHNwYW4gY2xhc3M9J2NhcmV0LWludmVydGVkJz48L3NwYW4+PGxpPjxhIGhyZWY9Jy9uZXd3angvZGVzaWduL3NlbmRxc3RhcnQuYXNweD9hY3Rpdml0eT0yMTI3NTIxMycgdGl0bGU9J+mAmui/h1FR44CBTVNO44CBRW1haWzlj5HpgIHnu5nlj5forr/ogIUnPumTvuaOpSbkuoznu7TnoIE8L2E+PC9saT48bGk+PGEgaHJlZj0nL3dqeC9wcm9tb3RlL3NlbmR3ZWl4aW4uYXNweD9hY3Rpdml0eWlkPTIxMjc1MjEzJyAgdGl0bGU9J+W+ruS/oeWPkemAgSc+5b6u5L+h5Y+R6YCBPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy9zYW1wbGUvZGVtYW5kLmFzcHg/YWN0aXZpdHlpZD0yMTI3NTIxMyZsc3Q9MSZucHViPTEnICB0aXRsZT0n5biu5oKo5Lul5pyA5L2O5oiQ5pys6YeH6ZuG5Yiw6ZyA6KaB55qE5pWw5o2uJz7moLfmnKzmnI3liqE8L2E+PC9saT48bGk+PGEgaHJlZj0nL3dqeC9wcm9tb3RlL2pvaW5iYWNrbGlzdC5hc3B4P2FjdGl2aXR5aWQ9MjEyNzUyMTMnICB0aXRsZT0n5aGr5YaZ5YW25LuW55So5oi355qE6Zeu5Y2377yM5bm26YKA6K+35LuW5Lus5Zue5aGrJz7kupLloavpl67ljbc8L2E+PC9saT48bGk+PGEgaHJlZj0nL3dqeC9wcm9tb3RlL3Byb21vdGVhcHBseS5hc3B4P2FjdGl2aXR5aWQ9MjEyNzUyMTMnICB0aXRsZT0n6YCa6L+H6K6+572u56ev5YiG5aWW5Yqx5p2l5Zue5pS2MTAwMOS7veS7peWGheeahOetlOWNtyc+55Sz6K+35o6o6I2QPC9hPjwvbGk+PC91bD48L2RkPjwvZGw+PGRsIGNsYXNzPSdwcm9jZXNzLTMgcHVsbC1sZWZ0Jz48ZGQgY2xhc3M9J3NwaW5uZXItbGlzdCc+PGEgaHJlZj0nL3JlcG9ydC8yMTI3NTIxMy5hc3B4JyB0aXRsZT0n562U5Y2357uf6K6h5YiG5p6QJz48aSBjbGFzcz0naWNvbiBkb3dubG9hZC1pY29uJz48L2k+5YiG5p6QJuS4i+i9vTxzcGFuIGNsYXNzPSdjYXJldCc+PC9zcGFuPjwvYT48dWw+IDxzcGFuIGNsYXNzPSdjYXJldC1pbnZlcnRlZCc+PC9zcGFuPjxsaT48YSBocmVmPScvcmVwb3J0LzIxMjc1MjEzLmFzcHgnIHRpdGxlID0n5p+l55yL5YyF5ZCr57uf6K6h5YiG5p6Q5pWw5o2u55qE5oql5ZGK77yM5bm25Y+v5Lul5LiL6L295YiwV09SROOAgVBERiAnPue7n+iuoSbliIbmnpA8L2E+PC9saT48bGk+PGEgaHJlZj0nL3dqeC9hY3Rpdml0eXN0YXQvdmlld3N0YXRzdW1tYXJ5LmFzcHg/YWN0aXZpdHk9MjEyNzUyMTMnIHRpdGxlPSfku6VFeGNlbOOAgUNTVuagvOW8j+S4i+i9veetlOWNt+aVsOaNru+8iOWPr+S7peWvvOWFpeWIsFNQU1PliIbmnpAnPuafpeeci+S4i+i9veetlOWNtzwvYT48L2xpPjxsaT48YSBocmVmPScvd2p4L2FjdGl2aXR5c3RhdC92aWV3dXJsLmFzcHg/YWN0aXZpdHk9MjEyNzUyMTMnIHRpdGxlPSfljIXmi6zmnaXmupDmuKDpgZPliIbmnpDvvIzml7bpl7TmrrXliIbmnpDku6Xlj4rlnLDnkIbkvY3nva7liIbmnpAnPuadpea6kOWIhuaekDwvYT48L2xpPjwvdWw+PC9kZD48L2RsPjwvZGl2PjxkaXYgY2xhc3M9J29wZXJhdGlvbi1ib3ggcHVsbC1yaWdodCc+PGEgaHJlZj0namF2YXNjcmlwdDp2b2lkKDApOycgY2xhc3M9J3B1bGwtbGVmdCByZWxlYXNlLWl0ZW1zJyB0aXRsZT0n5q2k6Zeu5Y2354q25oCB5piv6I2J56i/77yM54K55Ye75Y+R5biD6Zeu5Y23JyBvbmNsaWNrPSdyZXR1cm4gc3RhdHVzQ2hhbmdlKDIxMjc1MjEzLCIiLC0xKTsnPjxpIGNsYXNzPSdpY29uIHJlbGVhc2UtaWNvbic+PC9pPuWPkeW4gzwvYT48YSBocmVmPSdqYXZhc2NyaXB0OnZvaWQoMCknIG9uY2xpY2s9J3JldHVybiBjb3B5Q2xpY2soMjEyNzUyMTMpOycgY2xhc3M9J3B1bGwtbGVmdCBjb3B5LWl0ZW1zJz48aSBjbGFzcz0naWNvbiBjb3B5LWljb24nPjwvaT7lpI3liLY8L2E+PGEgaHJlZj0namF2YXNjcmlwdDp2b2lkKDApJyBjbGFzcz0ncHVsbC1sZWZ0IGN1dG91dC1pdGVtcycgdGl0bGU9J+WIoOmZpOatpOmXruWNtycgb25jbGljaz0nZGVsZXRlQ2xpY2soMjEyNzUyMTMpOyc+PGkgY2xhc3M9J2ljb24gY3V0b3V0LWljb24nPjwvaT7liKDpmaQgPC9hPiA8YSBocmVmPSdqYXZhc2NyaXB0OnZvaWQoMCknIGNsYXNzPSdwdWxsLWxlZnQgZm9sZGVyLWl0ZW1zJyAgb25jbGljaz0nYWxlcnQoIuW+iOaKseatie+8jOatpOWKn+iDveS7heWvueS8geS4mueJiOWuouaIt+aPkOS+m++8jOivt+WNh+e6p++8gSIpOyc+IDxpIGNsYXNzPSdpY29uIGZvbGRlci1pY29uJz48L2k+5paH5Lu25aS5PC9hPjxhIGNsYXNzPSdwdWxsLWxlZnQgaXRlbS1yZW1pbmQnIGhyZWY9J2phdmFzY3JpcHQ6dm9pZCgwKScgb25jbGljaz0nUERGX2xhdW5jaCgiL3dqeC9ub3RpZnkvbm90aWZ5LmFzcHg/YWN0aXZpdHlpZD0yMTI3NTIxMyIsNzUyLDM4Nik7JyA+PGkgY2xhc3M9J2ljb24gcmVtaW5kLWljb24nPjwvaT7mj5DphpI8L2E+PC9kaXY+PC9kZD48L2RsPjxkbCBjbGFzcz0nc3VydmV5LWl0ZW1zJyBzdHlsZT0nei1pbmRleDo5OTtwb3NpdGlvbjpyZWxhdGl2ZSc+PGR0IGNsYXNzPSdpdGVtLXRvcCc+PGRpdiBjbGFzcz0ncHVsbC1sZWZ0Jz48YSBocmVmPSdodHRwczovL3d3dy53anguY24vcHEvMjEwNzU5MTkuYXNweD90PTYzNjU4Mzg2MTE2Nzc3NTkzNycgdGFyZ2V0PSdfYmxhbmsnIGNsYXNzPSdwdWxsLWxlZnQgaXRlbS10aXQnIHRpdGxlPSfmuLjmiI/osIPmn6UnPua4uOaIj+iwg+afpTwvYT48ZGl2IGNsYXNzPSdwdWxsLWxlZnQgaXRlbS1pZCc+SUQ6MjEwNzU5MTk8L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSdwdWxsLXJpZ2h0Jz48ZGl2IGNsYXNzPSdwdWxsLWxlZnQgaXRlbS1kcmFmdCc+4pePJm5ic3A76I2J56i/PC9kaXY+PGRpdiBjbGFzcz0ncHVsbC1sZWZ0IGl0ZW0tc2hlZXQnPuetlOWNt++8mjxhIGhyZWY9J2phdmFzY3JpcHQ6dm9pZCgwKTsnIGNsYXNzPSdydW5pbmctbnVtJz4wPC9hPjwvZGl2PjxkaXYgY2xhc3M9J3B1bGwtbGVmdCBpdGVtLWRhdGEnPjPmnIgwM+aXpTwvZGl2PjxkaXYgY2xhc3M9J3B1bGwtbGVmdCBpdGVtLXRpbWUnPjIwOjU1PC9kaXY+PC9kaXY+IDwvZHQ+PGRkIGNsYXNzPSdpdGVtLWJvdCc+PGRpdiBjbGFzcz0ncHJvY2Vzcy1ib3ggcHVsbC1sZWZ0Jz48ZGwgY2xhc3M9J3Byb2Nlc3MtMSBwdWxsLWxlZnQnPjxkZCBjbGFzcz0nc3Bpbm5lci1saXN0Jz48YSBocmVmPScvd2p4L2Rlc2lnbi9kZXNpZ25zdGFydC5hc3B4P2FjdGl2aXR5PTIxMDc1OTE5Jz48aSBjbGFzcz0naWNvbiBkZXNpZ24taWNvbic+PC9pPuiuvuiuoemXruWNtzxzcGFuIGNsYXNzPSdjYXJldCc+PC9zcGFuPjwvYT48dWw+PHNwYW4gY2xhc3M9J2NhcmV0LWludmVydGVkJz48L3NwYW4+PGxpPjxhIGhyZWY9Jy93angvZGVzaWduL2Rlc2lnbnN0YXJ0LmFzcHg/YWN0aXZpdHk9MjEwNzU5MTknIHRpdGxlPSforr7orqHlkJHlr7wnPuiuvuiuoeWQkeWvvDwvYT48L2xpPjxsaT48YSBocmVmPScvbmV3d2p4L2Rlc2lnbi9lZGl0cXVlc3Rpb25uYWlyZS5hc3B4P2FjdGl2aXR5PTIxMDc1OTE5JyB0aXRsZT0n57yW6L6R6Zeu5Y23Jz7nvJbovpHpl67ljbc8L2E+PC9saT48bGk+PGEgaHJlZj0nL3dqeC9kZXNpZ24vcXVlc3Rpb25uYWlyZXNldHRpbmdzLmFzcHg/YWN0aXZpdHk9MjEwNzU5MTknIHRpdGxlPSfpl67ljbforr7nva4nPumXruWNt+iuvue9rjwvYT48L2xpPjxsaT48YSBocmVmPScvbmV3d2p4L2pvaW4vanFuZXcuYXNweD9xPTIxMDc1OTE5JndnPTEmdD02MzY1ODM4NjExNjc3NzU5MzcnIHRpdGxlPSfpl67ljbflpJbop4InPumXruWNt+WkluingjwvYT48L2xpPjxsaT48YSBocmVmPScvd2p4L2Rlc2lnbi9zZXRoYmF3YXJkLmFzcHg/YWN0aXZpdHk9MjEwNzU5MTknPue6ouWMhSblpZblk4E8L2E+PC9saT48L3VsPjwvZGQ+PC9kbD48ZGwgY2xhc3M9J3Byb2Nlc3MtMiBwdWxsLWxlZnQnPjxkZCBjbGFzcz0nc3Bpbm5lci1saXN0Jz48YSBocmVmPScvbmV3d2p4L2Rlc2lnbi9zZW5kcXN0YXJ0LmFzcHg/YWN0aXZpdHk9MjEwNzU5MTknPjxpIGNsYXNzPSdpY29uIHJlY292ZXJ5LWljb24nPjwvaT7lj5HpgIHpl67ljbc8c3BhbiBjbGFzcz0nY2FyZXQnPjwvc3Bhbj48L2E+PHVsPjxzcGFuIGNsYXNzPSdjYXJldC1pbnZlcnRlZCc+PC9zcGFuPjxsaT48YSBocmVmPScvbmV3d2p4L2Rlc2lnbi9zZW5kcXN0YXJ0LmFzcHg/YWN0aXZpdHk9MjEwNzU5MTknIHRpdGxlPSfpgJrov4dRUeOAgU1TTuOAgUVtYWls5Y+R6YCB57uZ5Y+X6K6/6ICFJz7pk77mjqUm5LqM57u056CBPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy93angvcHJvbW90ZS9zZW5kd2VpeGluLmFzcHg/YWN0aXZpdHlpZD0yMTA3NTkxOScgIHRpdGxlPSflvq7kv6Hlj5HpgIEnPuW+ruS/oeWPkemAgTwvYT48L2xpPjxsaT48YSBocmVmPScvc2FtcGxlL2RlbWFuZC5hc3B4P2FjdGl2aXR5aWQ9MjEwNzU5MTkmbHN0PTEmbnB1Yj0xJyAgdGl0bGU9J+W4ruaCqOS7peacgOS9juaIkOacrOmHh+mbhuWIsOmcgOimgeeahOaVsOaNric+5qC35pys5pyN5YqhPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy93angvcHJvbW90ZS9qb2luYmFja2xpc3QuYXNweD9hY3Rpdml0eWlkPTIxMDc1OTE5JyAgdGl0bGU9J+Whq+WGmeWFtuS7lueUqOaIt+eahOmXruWNt++8jOW5tumCgOivt+S7luS7rOWbnuWhqyc+5LqS5aGr6Zeu5Y23PC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy93angvcHJvbW90ZS9wcm9tb3RlYXBwbHkuYXNweD9hY3Rpdml0eWlkPTIxMDc1OTE5JyAgdGl0bGU9J+mAmui/h+iuvue9ruenr+WIhuWlluWKseadpeWbnuaUtjEwMDDku73ku6XlhoXnmoTnrZTljbcnPueUs+ivt+aOqOiNkDwvYT48L2xpPjwvdWw+PC9kZD48L2RsPjxkbCBjbGFzcz0ncHJvY2Vzcy0zIHB1bGwtbGVmdCc+PGRkIGNsYXNzPSdzcGlubmVyLWxpc3QnPjxhIGhyZWY9Jy9yZXBvcnQvMjEwNzU5MTkuYXNweCcgdGl0bGU9J+etlOWNt+e7n+iuoeWIhuaekCc+PGkgY2xhc3M9J2ljb24gZG93bmxvYWQtaWNvbic+PC9pPuWIhuaekCbkuIvovb08c3BhbiBjbGFzcz0nY2FyZXQnPjwvc3Bhbj48L2E+PHVsPiA8c3BhbiBjbGFzcz0nY2FyZXQtaW52ZXJ0ZWQnPjwvc3Bhbj48bGk+PGEgaHJlZj0nL3JlcG9ydC8yMTA3NTkxOS5hc3B4JyB0aXRsZSA9J+afpeeci+WMheWQq+e7n+iuoeWIhuaekOaVsOaNrueahOaKpeWRiu+8jOW5tuWPr+S7peS4i+i9veWIsFdPUkTjgIFQREYgJz7nu5/orqEm5YiG5p6QPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy93angvYWN0aXZpdHlzdGF0L3ZpZXdzdGF0c3VtbWFyeS5hc3B4P2FjdGl2aXR5PTIxMDc1OTE5JyB0aXRsZT0n5LulRXhjZWzjgIFDU1bmoLzlvI/kuIvovb3nrZTljbfmlbDmja7vvIjlj6/ku6Xlr7zlhaXliLBTUFNT5YiG5p6QJz7mn6XnnIvkuIvovb3nrZTljbc8L2E+PC9saT48bGk+PGEgaHJlZj0nL3dqeC9hY3Rpdml0eXN0YXQvdmlld3VybC5hc3B4P2FjdGl2aXR5PTIxMDc1OTE5JyB0aXRsZT0n5YyF5ous5p2l5rqQ5rig6YGT5YiG5p6Q77yM5pe26Ze05q615YiG5p6Q5Lul5Y+K5Zyw55CG5L2N572u5YiG5p6QJz7mnaXmupDliIbmnpA8L2E+PC9saT48L3VsPjwvZGQ+PC9kbD48L2Rpdj48ZGl2IGNsYXNzPSdvcGVyYXRpb24tYm94IHB1bGwtcmlnaHQnPjxhIGhyZWY9J2phdmFzY3JpcHQ6dm9pZCgwKTsnIGNsYXNzPSdwdWxsLWxlZnQgcmVsZWFzZS1pdGVtcycgdGl0bGU9J+atpOmXruWNt+eKtuaAgeaYr+iNieeov++8jOeCueWHu+WPkeW4g+mXruWNtycgb25jbGljaz0ncmV0dXJuIHN0YXR1c0NoYW5nZSgyMTA3NTkxOSwiIiwtMSk7Jz48aSBjbGFzcz0naWNvbiByZWxlYXNlLWljb24nPjwvaT7lj5HluIM8L2E+PGEgaHJlZj0namF2YXNjcmlwdDp2b2lkKDApJyBvbmNsaWNrPSdyZXR1cm4gY29weUNsaWNrKDIxMDc1OTE5KTsnIGNsYXNzPSdwdWxsLWxlZnQgY29weS1pdGVtcyc+PGkgY2xhc3M9J2ljb24gY29weS1pY29uJz48L2k+5aSN5Yi2PC9hPjxhIGhyZWY9J2phdmFzY3JpcHQ6dm9pZCgwKScgY2xhc3M9J3B1bGwtbGVmdCBjdXRvdXQtaXRlbXMnIHRpdGxlPSfliKDpmaTmraTpl67ljbcnIG9uY2xpY2s9J2RlbGV0ZUNsaWNrKDIxMDc1OTE5KTsnPjxpIGNsYXNzPSdpY29uIGN1dG91dC1pY29uJz48L2k+5Yig6ZmkIDwvYT4gPGEgaHJlZj0namF2YXNjcmlwdDp2b2lkKDApJyBjbGFzcz0ncHVsbC1sZWZ0IGZvbGRlci1pdGVtcycgIG9uY2xpY2s9J2FsZXJ0KCLlvojmirHmrYnvvIzmraTlip/og73ku4Xlr7nkvIHkuJrniYjlrqLmiLfmj5DkvpvvvIzor7fljYfnuqfvvIEiKTsnPiA8aSBjbGFzcz0naWNvbiBmb2xkZXItaWNvbic+PC9pPuaWh+S7tuWkuTwvYT48YSBjbGFzcz0ncHVsbC1sZWZ0IGl0ZW0tcmVtaW5kJyBocmVmPSdqYXZhc2NyaXB0OnZvaWQoMCknIG9uY2xpY2s9J1BERl9sYXVuY2goIi93angvbm90aWZ5L25vdGlmeS5hc3B4P2FjdGl2aXR5aWQ9MjEwNzU5MTkiLDc1MiwzODYpOycgPjxpIGNsYXNzPSdpY29uIHJlbWluZC1pY29uJz48L2k+5o+Q6YaSPC9hPjwvZGl2PjwvZGQ+PC9kbD5kAgcPZBYEZg8WAh8DBekCPGEgaHJlZj0namF2YXNjcmlwdDogdm9pZCgwKTsnIG9uY2xpY2s9J1BERl9sYXVuY2goIi93angvbWFuYWdlL29ubGluZXN1cHBvcnQuYXNweCIsIDYyMCwgNDAwKTsgJyAgY2xhc3M9J2J0biBidG4tZGVmYXVsdCBidG4tc20gYnRuLXNtLWFwcGx5ICc+55Sz6K+35Y2P5YqpPC9hPjxici8+PGRpdiBjbGFzcz0nZnJlZXByb21vdGV0eHQnPjxiPuaPkOekuu+8mjwvYj7ljYfnuqfliLDkvIHkuJrniYjlj6/kuqvlj5flnKjnur/lkqjor6Llj4rnlLXor53mlK/mjIHvvIw8YSBocmVmPScgL3JlZ2lzdGVyL3VwZ3JhZGV2aXAuYXNweD91cGdyYWRlUmVhc29uPTE3JyAgY2xhc3M9J3RpdGxlbG5rJz7kuobop6Por6bmg4U8L2E+PC9zcGFuPmQCAw8WAh8DBekCPGEgaHJlZj0namF2YXNjcmlwdDogdm9pZCgwKTsnIG9uY2xpY2s9J1BERl9sYXVuY2goIi93angvbWFuYWdlL29ubGluZXN1cHBvcnQuYXNweCIsIDYyMCwgNDAwKTsgJyAgY2xhc3M9J2J0biBidG4tZGVmYXVsdCBidG4tc20gYnRuLXNtLWFwcGx5ICc+55Sz6K+35Y2P5YqpPC9hPjxici8+PGRpdiBjbGFzcz0nZnJlZXByb21vdGV0eHQnPjxiPuaPkOekuu+8mjwvYj7ljYfnuqfliLDkvIHkuJrniYjlj6/kuqvlj5flnKjnur/lkqjor6Llj4rnlLXor53mlK/mjIHvvIw8YSBocmVmPScgL3JlZ2lzdGVyL3VwZ3JhZGV2aXAuYXNweD91cGdyYWRlUmVhc29uPTE3JyAgY2xhc3M9J3RpdGxlbG5rJz7kuobop6Por6bmg4U8L2E+PC9zcGFuPmQCCQ8WAh8BZxYEAgEPFgIfA2VkAgMPZBYCAgEPEGRkFgFmZAILDxYEHgNzcmMFwwEvL3NvanVtcC5jbi1oYW5nemhvdS5sb2cuYWxpeXVuY3MuY29tL2xvZ3N0b3Jlcy91c2VybG9naW4vdHJhY2suZ2lmP0FQSVZlcnNpb249MC42LjAmdXNlcm5hbWU9cXElMjQlZTYlOTYlYjklZTclODklODc3JmxvZ2luZGF0ZT0yMDE4LTQtMyZvcGVyYXRpb249UEMlZTclOTklYmIlZTUlYmQlOTUmcG9ydD0xNTc5JmlwPTExNy4xMDAuMzMuNTQfAWdkAhEPFgIfAWdkZPM8ZxGO68a+NT4v1HLg2NXJMPrm" />
				</div>

				<div>

					<input type="hidden" name="__VIEWSTATEGENERATOR"
						id="__VIEWSTATEGENERATOR" value="011AC131" />
				</div>
				
				<div class="main-wrapper">
					<div id="ctl01_ContentPlaceHolder1_divhasques" class="my-container">
						<div class="survey-wrapper clearfix">
							<div class="survey-left pull-left" style="">
								<div id="ctl01_ContentPlaceHolder1_searchPapaer"
									class="survey-create clearfix">
									<div class="create-add pull-left">

										<a
											href='createqqq'
											title="创建新问卷"
											class="btn btn-default btn-lg pull-left create-btn"> <i
											class="icon create-icon"></i>创建问卷
										</a>
										<div id="ctl01_ContentPlaceHolder1_divInfo"
											class="create-search pull-right">
											<input id="search_new" type="text" name="wd"
												id="ctl01_ContentPlaceHolder1_txtName" class="serarchbox"
												onfocus="if(value==&#39;请输入问卷名进行搜索...&#39;){value=&#39;&#39;;}"
												onblur="if(value==&#39;&#39;){value=&#39;请输入问卷名进行搜索...&#39;}"
												value="请输入问卷名进行搜索..." onkeypress="return searchQ(event);" />
											<!-- <input type="submit" name="ctl01$ContentPlaceHolder1$btnSub"
												value="" id="ctl01_ContentPlaceHolder1_btnSub"
												class="icon search-icon buttonboder" /> -->
												<a   class=" btn btn-default btn-lg button button-highlight button-pill" onclick="searchwd()" >搜索</a>
												
										</div>
									</div>





									<input type="hidden"
										name="ctl01$ContentPlaceHolder1$hfCompanyUsers"
										id="ctl01_ContentPlaceHolder1_hfCompanyUsers" value="null" />

									<a href="${pageContext.request.contextPath}/recyclebin?id=${sessionScope.user.uid}"
										id="ctl01_ContentPlaceHolder1_hrefDelete"
										class="btn btn-default btn-lg pull-right refuse-btn"
										style="margin-left:10px;">回收站
									</a> <input type="hidden" name="ctl01$ContentPlaceHolder1$hfFolder"
										id="ctl01_ContentPlaceHolder1_hfFolder" value="null" />


								</div>






								<!-- 新修改文件夹功能 START -->
							
								<!-- 新修改文件夹功能 END -->


								<div id="ctl01_ContentPlaceHolder1_qls" class="survey-list">
								<c:forEach var="q" items="${qlist}" >
								<dl class='survey-items' style='z-index:100;position:relative'>
										<dt class='item-top'>
											<div class='pull-left'>
												<a
													href='https://www.wjx.cn/pq/21275213.aspx?t=636583861167775937'
													target='_blank' class='pull-left item-tit' >${q.qname}</a>
												<div class='pull-left item-id'>ID:${q.qid}</div>
											</div>
											<div class='pull-right'>
												<div class='pull-left item-sheet'>
													答卷：<a href='javascript:void(0);' class='runing-num'>${q.sum}</a>
												</div>
												<!-- <div class='pull-left item-data'>3月11日</div>
												<div class='pull-left item-time'>09:49</div> -->
											</div>
										</dt>
										<dd class='item-bot'>
											<div class='process-box pull-left'>
												<dl class='process-1 pull-left'>
													<dd class='spinner-list'>
														<a href='editqe?qid=${q.qid}'><i
															class='icon design-icon'></i>编辑问卷</a>
													</dd>
												</dl>
												<dl class='process-2 pull-left'>
													<dd class='spinner-list'>
														<a href='getqrandurl?qid=${q.qid}'><i
															class='icon recovery-icon'></i>链接&二维码</a>
														
													</dd>
												</dl>
												<dl class='process-3 pull-left'>
													<dd class='spinner-list'>
														<a href='goanalysis?qid=${q.qid}' title='答卷统计分析'><i
															class='icon download-icon'></i>分析&下载</a>
														
													</dd>
												</dl>
											</div>
											<div class='operation-box pull-right'>
												<a href='javascript:void(0);'
													class='pull-left release-items' title='此问卷状态是草稿，点击发布问卷'
													onclick='return statusChange(21275213,"",-1);'><i
													class='icon release-icon'></i>发布</a><a
													href='javascript:void(0)'
													onclick='return copyClick(${q.qid});'
													class='pull-left copy-items'><i class='icon copy-icon'></i>复制</a><a
													href='javascript:void(0)' class='pull-left cutout-items'
													title='删除此问卷' onclick='deleteClick(${q.qid});'><i
													class='icon cutout-icon'></i>删除 </a> 
											</div>
										</dd>
									</dl>
								</c:forEach>
									
									
								</div>




							</div>
							<div id="ctl01_ContentPlaceHolder1_divRoll"
								class="survey-right pull-right">
								
								<div class="article-plus">
									<dl class="article-service">

										
										<dd id="ctl01_ContentPlaceHolder1_divServicenew">
											<a href='javascript: void(0);'
												onclick='PDF_launch("/wjx/manage/onlinesupport.aspx", 620, 400); '
												class='btn btn-default btn-sm btn-sm-apply '>申请协助</a><br />
											<div class='freepromotetxt'>
												<b>提示：</b>升级到企业版可享受在线咨询及电话支持，<a
													href=' /register/upgradevip.aspx?upgradeReason=17'
													class='titlelnk'>了解详情</a></span>
										</dd>


									</dl>
									<dl class="article-wechat article-slide">
										<dt class="head weixinlogo" style="cursor: pointer;">
											<em class="icon"></em> 微信绑定
										</dt>
										<dd>
											<div id="imgWx">加载中...</div>
											<div id="divWxName">打开微信扫描绑定</div>
										</dd>
									</dl>

									<dl class="article-help article-slide">
										<a href="/help/help.aspx" title="查看与搜索帮助文档" class="head">
											<em class="icon"></em> 帮助中心
										</a>

										<dd>
											<ul>
												<li><a href="/help/help.aspx?helpid=195&h=0"><i
														class="a-icona icon "></i>免费版和企业版的区别</a></li>
												<li><a href="/help/help.aspx?helpid=251"><i
														class="a-icona icon "></i>创建考试问卷入门</a></li>
												<li><a href="/help/help.aspx?helpid=246"><i
														class="a-icona icon "></i>创建360度评估入门</a></li>
												<li><a href="/help/help.aspx?helpid=154"><i
														class="a-icona icon "></i>设置问卷抽奖</a></li>
												<li><a href="/help/help.aspx?helpid=233"><i
														class="a-icona icon "></i>问卷红包设置</a></li>
											</ul>
										</dd>
									</dl>

									<dl class="article-feedback">
										
									</dl>

								</div>
							</div>
						</div>
					</div>

					<input type="hidden" name="ctl01$ContentPlaceHolder1$hfActivity"
						id="ctl01_ContentPlaceHolder1_hfActivity" /> <input type="hidden"
						name="ctl01$ContentPlaceHolder1$hfStatus"
						id="ctl01_ContentPlaceHolder1_hfStatus" /> <input type="hidden"
						name="ctl01$ContentPlaceHolder1$hfFolderName"
						id="ctl01_ContentPlaceHolder1_hfFolderName" /> <input
						type="submit" name="ctl01$ContentPlaceHolder1$btnStatusChange"
						value="发布" id="ctl01_ContentPlaceHolder1_btnStatusChange"
						style="display: none;" /> <input type="submit"
						name="ctl01$ContentPlaceHolder1$btnDelete" value="删除"
						id="ctl01_ContentPlaceHolder1_btnDelete" style="display: none;" />
					<input type="submit" name="ctl01$ContentPlaceHolder1$btnSetFolder"
						value="设置文件夹" id="ctl01_ContentPlaceHolder1_btnSetFolder"
						style="display: none;" /> <input type="submit"
						name="ctl01$ContentPlaceHolder1$btnDeleteFolder" value="删除文件夹"
						id="ctl01_ContentPlaceHolder1_btnDeleteFolder"
						style="display: none;" />

					<script>
						var pageIndex = 1;
						function searchQ(evt) {
							evt = window.event || evt;
							if (evt.keyCode == 13) {
								var btnSub = document.getElementById("ctl01_ContentPlaceHolder1_btnSub");
								evt.returnValue = false;
								btnSub.click();
								return false;
							}
							return true;
						}
						function statusChange(id, msg, status) {
							if (msg && !confirm(msg))
								return false;
							document.getElementById("ctl01_ContentPlaceHolder1_hfActivity").value = id;
							document.getElementById("ctl01_ContentPlaceHolder1_hfStatus").value = status;
							document.getElementById("ctl01_ContentPlaceHolder1_btnStatusChange").click();
							return false;
						}
						function deleteClick(id) {
							if (!confirm("您确认要删除此问卷吗？"))
								return false;
							window.location.href='deletequestionnaire?qid='+id
						
						}
						function copyClick(id) {
							window.location.href='copyQuestionnaire?qid='+id
							return false;
						}
					
						function setFolderName(id, name) {
							document.getElementById("ctl01_ContentPlaceHolder1_hfActivity").value = id;
							document.getElementById("ctl01_ContentPlaceHolder1_hfFolderName").value = name;
							document.getElementById("ctl01_ContentPlaceHolder1_btnSetFolder").click();
							stopPropagation();
						}
					
						function deleteFolder(name) {
							document.getElementById("ctl01_ContentPlaceHolder1_hfFolderName").value = name;
							document.getElementById("ctl01_ContentPlaceHolder1_btnDeleteFolder").click();
							stopPropagation();
						}
					
						function stopPropagation(e) {
							e = window.event || e;
							if (document.all) {
								e.cancelBubble = true;
								e.returnValue = false;
							} else {
								e.stopPropagation();
							}
							return false;
						}
					</script>
					<div id="ctl01_ContentPlaceHolder1_lmlpage" class="my-container">
						<div class="page-box page-box-myquestion"
							style="color: #808080; font-size: 14px">
							<div id="ctl01_ContentPlaceHolder1_pagehttml"
								class="page-list pager-linkpage"></div>


						</div>
					</div>


					<script type="text/javascript">
						var hasUpdate = 0;
						var curSetFolder = null;
						function setFolder(newFolder) {
							// alert(newFolder);
							var ddlFolder = document.getElementById("spanDdlFolder");
							if (!ddlFolder) {
								window.location.href = window.location.href;
								return;
							}
							var folderStr = ddlFolder.innerHTML;
							folderStr += "<li value=\"" + newFolder + "\"><a href=\"javascript:void(0)\">" + newFolder + "</a></li>";
							ddlFolder.InnerHtml = folderStr;
					
						}
						function setActivityFolder(newFolder) {
							if (curSetFolder) {
								if (newFolder.length > 5) {
									curSetFolder.title = newFolder;
									newFolder = newFolder.substring(0, 5) + "...";
								}
								curSetFolder.innerHTML = newFolder || "文件夹";
							}
						}
						var lblToolTip = document.getElementById("ctl01_ContentPlaceHolder1_lblToolTip");
					
						var isVip = 0;
						window.onload = function() {
							if (hasUpdate) {
								PDF_launch("/wjx/manage/lastupdate.aspx", 620, 400, null, "最新动态");
							}
							setTimeout(function() {
								if (lblToolTip)
									lblToolTip.style.display = "none";
							}, 20000);
							if (window._czc) {
								var vptype = "免费版";
								if (isVip)
									vptype = "企业版";
								_czc.push([ "_setCustomVar", "用户版本", vptype, 1 ]);
							}
					
					
						}
						var spanUser = document.getElementById("ctl01_ContentPlaceHolder1_spanUser");
						var spanFolder = document.getElementById("ctl01_ContentPlaceHolder1_spanFolder");
						var hfFolder = document.getElementById("ctl01_ContentPlaceHolder1_hfFolder");
						var hfCompanyUsers = document.getElementById("ctl01_ContentPlaceHolder1_hfCompanyUsers");
						var btnSub = document.getElementById("ctl01_ContentPlaceHolder1_btnSub");
						var cbbutton = document.getElementById("ctl01_ContentPlaceHolder1_cbbutton");
						var txtName = document.getElementById("ctl01_ContentPlaceHolder1_txtName");
						var pagehttml = document.getElementById("ctl01_ContentPlaceHolder1_pagehttml");
					
					
						var surveyfolder = document.getElementById("ctl01_ContentPlaceHolder1_surveyfolder");
					
						var fapiaoHash = new Object();
						function generateEInvoice(fid) {
							if (fapiaoHash[fid]) {
								alert("提示：已经提交生成任务，生成成功后会发送系统消息给您！");
								return;
							}
							fapiaoHash[fid] = 1;
							var url = "/handler/downloadInvoice.ashx?invoiceId=" + fid;
							$.get(url, function() {
								alert("提示：已经提交生成任务，生成成功后会发送系统消息给您！");
							});
							return true;
						}
					
						$(function() {
							$(surveyfolder).on('click', '.folderThing', function() {
								if ($(this).attr("alt") != "null") {
									hfFolder.value = $(this).attr("alt");
								} else {
									hfFolder.value = "全部";
								}
								btnSub.click();
								//$(spanDdlFolder).find("li").eq($(this).index()-1).click();
								return false;
							});
					
							if ($(".survey__folder-body").height() <= 40) {
								$(".survey__folder-switch").hide();
							} else {
								$(".survey__folder-switch").show();
								$(".survey__folder-switch").on("click", function() {
									$(".survey__folder-body").toggleClass("status");
									var obj = $(".survey__folder-switch").find("span");
									var text = $(obj).html();
									$(obj).html(text === "展开" ? "收起" : "展开");
								}).click();
							}
					
						});
					</script>
					<script type="text/javascript">
						$(window).resize(function() {
							var Width = $(window).width();
						})
					</script>
					<div style="display: none;">
						<img
							src="//sojump.cn-hangzhou.log.aliyuncs.com/logstores/userlogin/track.gif?APIVersion=0.6.0&username=qq%24%e6%96%b9%e7%89%877&logindate=2018-4-3&operation=PC%e7%99%bb%e5%bd%95&port=1579&ip=117.100.33.54"
							id="ctl01_ContentPlaceHolder1_imgLogin" />
					</div>
				</div>



			</form>

		</div>

	</div>
	<!-- <div id="ctl01_footlink" class="my-footer MP-footer">

		<div id="ctl01_divWjxFooter">
			<a href="/"><i class="logo-box"> <img
					src="/images/newimg/pic-1/logo-small.png"
					alt="问卷星_领先的网络调查平台，问卷调查，报名表、考试测验" />
			</i></a> <i class="line"></i> <i class="log-dec">不止问卷调查/在线考试</i>
			问卷星底部
		</div>
	</div> -->


	<div style="display:none;">
		<script src="https://s6.cnzz.com/z_stat.php?id=4478442&web_id=4478442"
			language="JavaScript"></script>
		<script>var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "https://hm.baidu.com/hm.js?21be24c80829bd7a683b2c536fcf520b";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
	</div>

	<script type="text/javascript">
	
		var $user_infos = $(".user-info"); //用户栏
	
		hover_tooluserinfo($user_infos);
		function hover_tooluserinfo(obj) {
			obj.hover(function() {
				$(this).addClass("hover");
			}, function() {
				$(this).removeClass("hover");
			});
		}
		var spanMessage = document.getElementById("ctl01_spanMessage");
		spanMessage.onclick = function() {
			window.location = "/newwjx/manage/myask.aspx";
		}
		var isYks = 0;
		var hrefPGoBack = $("#hrefPGoBack")[0];
		var curHref = window.location.href.toLowerCase();
		var isTemplate = curHref.indexOf("/newselecttemplete.aspx") > -1 || curHref.indexOf("selecttemplatelogin.aspx") > -1;
		if (isTemplate && !isYks)
			hrefPGoBack.href = "/newwjx/mysojump/choosetype.aspx?t=" + new Date().valueOf();
	</script>

</body>



