<%@ page contentType="text/html; charset=EUC_KR" %>
<%
  String tempCode     = request.getParameter("tempCode");
  String location = request.getParameter("location") ;
  String sabun    = request.getParameter("sabun") ;
%>
<html>
<head>
</head>
<body><center>
<table border="1">
<tr>
<td>
<applet code="ChatApplet.class" width="720" height="375"> 
   <param name="tempCode" value="<%= tempCode %>">
   <param name="location" value="<%= location %>">
   <param name="sabun" value="<%= sabun %>">
</applet>
</td>
</tr>
</table></center>
</body>
</html>
