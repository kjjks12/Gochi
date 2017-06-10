<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>
    
<jsp:include page="/WEB-INF/views/include/include_top_css.jsp"/>
 
 	<!-- 이미지 및 아이콘 관련 -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/images/favicon/apple-touch-icon-152x152.png" />

   

	<script src="${pageContext.request.contextPath}/resources/script/modernizr.min.js"/> <!-- Modernizr -->

	<!-- 제이쿼리 및 부트스트랩,자바스크립트 관련 -->
	<script	src="${pageContext.request.contextPath}/resources/script/jquery.min.js"></script>		
	<script	src="${pageContext.request.contextPath}/resources/script/jquery-ui.min.js"/></script>			
	<script	src="${pageContext.request.contextPath}/resources/script/bootstrap.min.js"/></script>			

	<script	src="${pageContext.request.contextPath}/resources/script/vendor/mmenu/mmenu.min.all.js"></script>					<!-- Menu Responsive -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/animation-wow/wow.min.js"></script>					<!-- Animate Script	-->
	<script src="${pageContext.request.contextPath}/resources/script/vendor/labelauty/labelauty.min.js"></script>					<!-- Checkbox Script -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/parallax/parallax.min.js"></script>						<!-- Parallax Script -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagesloaded.min.js"></script>			<!-- Loaded	image with ImageFill -->
	<script src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagefill.min.js"></script>					<!-- ImageFill Script -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/easydropdown/jquery.easydropdown.min.js"></script>	<!-- Select	list Script	-->

	<script	src="${pageContext.request.contextPath}/resources/script/custom.js"></script>		<!-- Custom	Script -->
	
  </head>
 
  <body class="fixed-header">
 
		
		<section id="header-page" class="header-margin-base">
		
		<!-- 프로필 백그라운드 사진이 들어가야함 -->
		
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Profile</h1></div>
				</div>
			</div>
			
			<!-- 경로 보여주는 부분 -->
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">마이페이지</a></li>
						<li class="active">프로필</li>
					</ol>
				</div>
			</div><!-- 경로 끝 -->
			
			<span class="cover"></span>
		</section><!-- 해더 끝 -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-md-3">
						<ul class="block-menu">
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/mypage/goInfo"><i class="icon fa fa-user-secret"></i>프로필</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/property"><i class="icon fa fa-pencil-square-o"></i>내가쓴글</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>쪽지함</a></li>
						
						</ul>
					</div>
					
					<div class="col-sm-8 col-md-9">
						<div class="row">
							<div class="col-md-7">
								<div class="section-title line-style no-margin">
									<h3 class="title">Member Info</h3>
									
								</div>
								<ul class="profile">
									<li class="disabled">
										<span>Email</span> ${sessionScope.MYPAGEDTO.email }
									</li>
									<li>
										<span>닉네임</span> ${sessionScope.MYPAGEDTO.nickName }
										
									</li>
								</ul>
								<ul class="profile">
									<li>
										<span>핸드폰번호</span> 
										${sessionScope.MYPAGEDTO.phoneNumber }
									</li>
									<li>
										<span>자기소개</span> 
										${sessionScope.MYPAGEDTO.selfContent }
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	
		
		

	

	</body>
</html>