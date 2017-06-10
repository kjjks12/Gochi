<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>PROHOME - Responsive Real Estate Template</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/font-awesom/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/mmenu/jquery.mmenu.all.css" />
<!-- Menu Responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/animate-wow/animate.css">
<!-- Animation WOW -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/labelauty/labelauty.css">
<!-- Checkbox form Style -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<!-- Include Menu stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/media-query.css">
<!-- Media Query -->

<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
<link rel="shortcut icon" href="images/favicon/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-152x152.png" />



<script
	src="${pageContext.request.contextPath}/resources/script/modernizr.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/script/jquery.min.js"></script>
<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->
<script
	src="${pageContext.request.contextPath}/resources/script/jquery-ui.min.js"></script>
<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->
<script
	src="${pageContext.request.contextPath}/resources/script/bootstrap.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script
	src="${pageContext.request.contextPath}/resources/script/vendor/mmenu/mmenu.min.all.js"></script>
<!-- Menu Responsive -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/animation-wow/wow.min.js"></script>
<!-- Animate Script	-->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/labelauty/labelauty.min.js"></script>
<!-- Checkbox Script -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/parallax/parallax.min.js"></script>
<!-- Parallax Script -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagesloaded.min.js"></script>
<!-- Loaded	image with ImageFill -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagefill.min.js"></script>
<!-- ImageFill Script -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/easydropdown/jquery.easydropdown.min.js"></script>
<!-- Select	list Script	-->

<script
	src="${pageContext.request.contextPath}/resources/script/custom.js"></script>
<!-- Custom	Script -->


</head>
<body class="fixed-header">

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
						<h1 class="title">My Property</h1>
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
						<li class="icon fa fa-user user">쪽지함</li>
					</ol>
				</div>
			</div>
			<!-- /#breadcrumb -->
			<span class="cover"></span>
		</section>
		<!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-md-3">
						<ul class="block-menu">
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/goInfo"><i class="icon fa fa-user-secret"></i>프로필</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/property"><i class="icon fa fa-pencil-square-o"></i>내가쓴글</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>쪽지함</a></li>
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">
						<div class="section-title line-style no-margin">
							<h3 class="title">My Messages</h3>
						</div>
						<div class="table-responsive property-list">
							<table class="table-striped table-hover">
								<thead>
									<tr>
										<th>보낸사람</th>
										<th>닉네임</th>
										<th>제목</th>
										<th>작성시간</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${senderDTO==null }">
										<tr>
											<td>받은 쪽지가 없습니다.</td>
										</tr>
									</c:if>
									<c:forEach items="${senderDTO}" var="i">
										<tr>
											<td>${i.email }</td>
										    <td>${i.nickName }</td>
										    <td></td>
										    <td></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- /#page-container -->
</body>
</html>