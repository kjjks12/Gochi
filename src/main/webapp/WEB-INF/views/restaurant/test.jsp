<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<<style>
	#testyarigi {margin-top : 20px;}
</style>

<h2>���⿡�ٰ� test ����</h2>
<div class="container" id="testyarigi">

<table>
<c:forEach var="food" items="${list}">
<tr>
	<th>ī�װ�  <h6>${food.classification}</h6></th>
	<th>�����̸�  <h6>${food.restaurantName}</h6></th>
	<th>�ּ���ġ  <h6>${food.area}</h6></th>
	<th>�����ð�  <h6>${food.operatingTime}</h6></th>
	<th>�� �� ��  <h6>${food.holiday}</h6></th>
	<th>�� �� ó  <h6>${food.phone}</h6></th>
	<th>�߰�����  <h6>${food.explanation}</h6></th>
	
</tr>
</c:forEach>
</table>
</div>	
