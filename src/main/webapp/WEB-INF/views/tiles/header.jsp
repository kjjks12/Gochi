<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
<header class="menu-base" id="header-container-box">
			<div class="info"><!-- info -->
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<a href="#mobile-menu" id="mobile-menu-button" class="visible-xs"><i class="fa fa-bars"></i></a>
							<a href="call:1-800-555-1234" class="hidden-xs"><i class="icon fa fa-phone"></i> (011)-8800-555</a>
							<a href="#" data-section="modal-contact" data-target="#modal-contact" data-toggle="modal" class="hidden-xs"><i class="icon fa fa-envelope-o"></i> Info</a>
						</div>
						<div id="login-pan" class="col-md-6 hidden-xs">
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i> Sign up</a>
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="login"><i class="icon fa fa-user user"></i> Login</a>
						</div>
					</div>
				</div>			
			</div><!-- /.info -->
			<div class="logo hidden-xs">
				<a href="${pageContext.request.contextPath}"><img id="logo-header" src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Logo" /></a>
			</div><!-- /.logo -->
			<div class="menu-navbar">
				<div class="container" id="menu-nav">
					<nav id="navigation">
						<ul>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}">추천 컨텐츠</a>
								</li>
								<li class="has_submenu">
								<a href="#">여행 핫딜</a>
								</li>
								<li class="has_submenu">
								<a href="#">나믿따</a>
								</li>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}/travel/travel">여행일정</a>
								</li>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}/travel/travel2">여행후기</a>
								</li>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}/restaurant/restaurant">맛집</a>
								</li>
								<li class="has_submenu">
								<a href="#">커뮤니티</a>
								</li>
						</ul>
					</nav>
				</div>
			</div><!-- /.menu -->
			<a href="#" class="fixed-button top"><i class="fa fa-chevron-up"></i></a>
			<a href="#" class="hidden-xs fixed-button email" data-toggle="modal" data-target="#modal-contact" data-section="modal-contact"><i class="fa fa-envelope-o"></i></a>
		</header>
</body>
</html>