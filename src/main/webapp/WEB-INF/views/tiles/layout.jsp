<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* html, body {
	padding: 0;
	margin: 0;
	height: 100%;
}

#header {
	width: 100%;
	height: 10%;
	background-color: pink;
}

#content {
	width: 100%;
	height: 80%;
	background-color: yellow;
}

#footer {
	width: 100%;
	height: 10%;
	background-color: green;
} */
</style>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>

	<div id="content">
		<tiles:insertAttribute name="content" />
	</div>

	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>


</body>
</html>