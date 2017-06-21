<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<<style>
	#testyarigi {margin-top : 20px;}
</style>

<h2>여기에다가 test 하자</h2>
<div class="container" id="testyarigi">

<table>
<c:forEach var="food" items="${list}">
<tr>
	<th>카테고리  <h6>${food.classification}</h6></th>
	<th>맛집이름  <h6>${food.restaurantName}</h6></th>
	<th>주소위치  <h6>${food.area}</h6></th>
	<th>영업시간  <h6>${food.operatingTime}</h6></th>
	<th>휴 무 일  <h6>${food.holiday}</h6></th>
	<th>연 락 처  <h6>${food.phone}</h6></th>
	<th>추가정보  <h6>${food.explanation}</h6></th>
	
</tr>
</c:forEach>
</table>
</div>	
