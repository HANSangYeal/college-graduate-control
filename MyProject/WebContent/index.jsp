<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String pagefile = request.getParameter("page");
    	if(pagefile == null){
    		pagefile = "info";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#bottom {
		position: absolute;
		top: 600px;
		position: fixed;
		background-color: green;
		color: white;
		width: 700px;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체적인 학사관리 프로젝트</title>
</head>
<body>
	
	<jsp:include page="top.jsp"/>
	<jsp:include page="left.jsp"/>
	<jsp:include page='<%=pagefile + ".jsp"%>'/>
	<div id="bottom">
		<jsp:include page="bottom.jsp"/>
	</div>
</body>
</html>