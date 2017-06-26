<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
.travel_img {
	width: 100%;
	height: 100%;
}

.search {
	margin-left: 10%;
}

.search_text {
	width: 75%;
	line-height: 30px;
	margin-bottom: 20px;
}

.hotdealBox {
	
}

.more_info {
	margin-top: 20px;
	margin-bottom: 20px;
	text-align: right;
}

.address {
	height: 100px;
}
.title_custom{
	font-size: 0.9em;
	text-align: center;
	font-weight: bold;
}
</style>

<div id="page-container">

	<section id="recent-list">

		<div class="section-detail">
			<h1>
				<span>여행꼬치에서</span> <span id="spinner-show"> <em
					class="current">당신의 여행을 만들어보세요</em> <span class="next"><span></span></span>
				</span>
			</h1>
			<ul id="spinner">
				<li>소중한 추억을 만들어보세요</li>
				<li>당신의 여행을 만들어보세요</li>
				<li>여행패키지를 만들어보세요</li>
			</ul>
		</div>

		<div class="search col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<form
				action="${pageContext.request.contextPath}/hotdeal/hotdeal_main"
				method="post">
				<input type="text" class="search_text" placeholder="검색 조건"
					name="query">
				<button type="submit" class="btn btn-default"
					id="country_search_btn">검색</button>
			</form>
		</div>



		<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2"
			id="block-menu-content">
			<ul class="block-menu affix-top" data-spy="affix"
				data-offset-top="500" data-offset-bottom="400" style="width: 150px;">
				<li><a href="#wemape_div">전체</a></li>
				<li><a href="#wemape_div"> 위메프</a></li>
				<li><a href="#gmarket_div">G마켓</a></li>
				<li><a href="#coupang">쿠팡</a></li>
			</ul>
		</div>


		<div class="col-xs-9 col-sm-9 col-md-10 col-lg-10"
			id="block-menu-content">
			<div class="list-box-title" id="wemape_div">
				<span><i class="icon fa fa-plus-square"></i>위메프</span>
			</div>
			<div class="row">

				<c:forEach var="hotdealDTO" items="${map['wemepe']}"
					varStatus="state">
					<div class="hotdealBox col-xs-3 col-sm-3 col-md-4 col-lg-3 ">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="${hotdealDTO.url}">
								<span class="cover"></span> 
								<img alt="Sample images" src="${hotdealDTO.imgUrl}" class="travel_img">
							</a>
							<!-- /.hover-effect -->
							<span class="price"><strong>${hotdealDTO.price}</strong></span> 
							<span class="address"><span class="title_custom">${hotdealDTO.title}</span></span>
						</div>
						<!-- /.box-home .box-ads -->
					</div>
					<!-- ./col-md-4 -->
				</c:forEach>
			</div>

			<!-- G留덉폆 ?ъ뼱 -->
			<div class="list-box-title" id="gmarket_div">
				<span><i class="icon fa fa-plus-square"></i>G마켓</span>
			</div>
			<div class="row">

				<c:forEach var="hotdealDTO" items="${map['gmarket']}"
					varStatus="state">
					<%-- 	<c:if test="${state.count % 4==0}">
							<div class="row">
						</c:if> --%>
					<!-- 諛뺤뒪 1媛?-->
					<div class="hotdealBox col-xs-3 col-sm-3 col-md-4 col-lg-3 ">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="${hotdealDTO.url}">
								<span class="cover"></span> <img alt="Sample images"
								src="${hotdealDTO.imgUrl}" class="travel_img">
							</a>
							<!-- /.hover-effect -->
							<span class="price"><strong>${hotdealDTO.price}</strong></span> 
							<span class="address"><span class="title_custom">${hotdealDTO.title}</span></span>
						</div>
						<!-- /.box-home .box-ads -->
					</div>
					<!-- ./col-md-4 -->
				</c:forEach>
			</div>

			<!--荑좏뙜 -->
			<div class="list-box-title" id="coupang">
				<span><i class="icon fa fa-plus-square"></i>쿠팡</span>
			</div>
			<div class="row">
				<c:forEach var="hotdealDTO" items="${map['coupang']}"
					varStatus="state">
					<!-- Coupang-->
					<div class="hotdealBox col-xs-3 col-sm-3 col-md-4 col-lg-3 ">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="${hotdealDTO.url}">
								<span class="cover"></span> <img alt="Sample images"
								src="${hotdealDTO.imgUrl}" class="travel_img">
							</a>
							<!-- /.hover-effect -->
							<span class="price"><strong><span class="price_custom">${hotdealDTO.price}</span></strong></span>
							 <span class="address"><span class="title_custom">${hotdealDTO.title}</span></span>
						</div>
						<!-- /.box-home .box-ads -->
					</div>
				</c:forEach>
			</div>
		</div>
	</section>







</div>



