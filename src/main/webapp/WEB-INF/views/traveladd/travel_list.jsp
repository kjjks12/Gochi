<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	
</script>
<style>
table {
	text-align: center;
}
</style>
<div id="page-container">
	<section id="header-page" class="header-margin-base">
		<div class="skyline">
			<div data-offset="50" class="p1 parallax"></div>
			<div data-offset="25" class="p2 parallax"></div>
			<div data-offset="15" class="p3 parallax"></div>
			<div data-offset="8" class="p4 parallax"></div>
			<span class="cover"></span>
			<div class="container header-text">
				<div>
					<h1 class="title">My Travel</h1>
				</div>
				<div>
					<h2 class="sub-title">LOREM IPSUM DOLOR SISCING ELIT JUSTO</h2>
				</div>
			</div>
		</div>

		<div id="breadcrumb">
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
					<li><a href="#">마이페이지</a></li>
					<li class="icon fa fa-user user">나의일정</li>
				</ol>
			</div>
		</div>
		<!-- /#breadcrumb -->
		<span class="cover"></span>
	</section>

	<section id="user-profile">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-md-3">
					<ul class="block-menu">
						<li><a class="faq-button"
							href="${pageContext.request.contextPath}/mypage/goInfo/${sessionScope.myEmail}"><i
								class="icon fa fa-user-secret"></i>프로필</a></li>
						<li><a class="faq-button"
							href="${pageContext.request.contextPath}/friends"><i
								class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
						<li><a class="faq-button"
							href="${pageContext.request.contextPath}/note"><i
								class="icon fa fa-envelope-o"></i>받은쪽지함</a></li>
						<li><a class="faq-button active"
							href="${pageContext.request.contextPath}/selectMyTravelList/${MYEMAIL}"><i
								class="icon fa fa-calendar" aria-hidden="true"></i>나의 일정</a></li>

					</ul>
				</div>
	
<!-- /#header================================================= -->
<c:forEach items="${travelDTO}" var="i">
		<div class="col-sm-6 col-md-4">
		
			<div class="agent-box-card grey">
				<div class="image-content">
			
					<div class="image image-fill" style="overflow: hidden; position: relative;">
						
						<form id="${i.travelNo }" action="${pageContext.request.contextPath}/traveladd/travel_add" method="post">
							<input type="hidden" name="email" value="${i.email }">
							<input type="hidden" name="title" value="${i.title }">
							<input type="hidden" name="briefStory" value="${i.briefStory }">
							<input type="hidden" name="travelStartDay" value="${i.travelStartDay }">
							<input type="hidden" name="travelEndDay" value="${i.travelEndDay }">
							<input type="hidden" name="thema" value="${i.thema }">
						</form>
										
						
					<a href="#" onclick="javascript:goUpdate(${i.travelNo});">
						<script>
							function goUpdate(th){
								alert(th);
								var no = th;
								$('#'+no).submit();
								//$("form[name=${i.travelNo}]").submit();
								//$("#updateTravel").submit();
							}
						</script>
					
						<img src="${pageContext.request.contextPath}/resources/img/travel/travelCover/${i.travelNo}/${i.email}/${i.travelCoverImg}"
							class="img-responsive loading" style="width: 700px; height: auto; top: auto; position: absolute;">
						</a>
					</div>
				</div>
				
							<div class="box-ads box-home">
								<span class="cover"></span>
							
							<h3 class="title">${i.title }</h3>
						
							<span class="price">$ 536.500,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> Hoboken, NJ 07030</span>
							<span class="description">${i.briefStory }</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>${i.briefStory }</span></dd>
								<dt class="area">Area:</dt><dd><span>${i.title }</span></dd>
								<dt class="bed">Thema:</dt><dd><span>${i.thema }</span></dd>
								<dt class="bath">Date:</dt><dd><span>${i.travelStartDay } ~ ${i.travelEndDay }</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
				</div>
			</div>
</c:forEach>
		</div>
		</div>
	</section>
</div>

