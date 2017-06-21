<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>PROHOME - Responsive Real Estate Template</title>

<jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />
<jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style type="text/css">
.travel_img {
	width: 100%;
	height: auto;
}

.search {
margin-left: 10%;
}

.search_text {
	width: 75%;
	line-height: 30px;
	margin-bottom: 20px;
}


.hotdealBox{
}
.more_info{
margin-top:20px;
margin-bottom:20px;
text-align: right;

}
.address{
height: 100px;
}
</style>
</head>
<body >
	<div id="page-container">

		<section id="recent-list">
			
			<div class="section-detail">
				<h1>
					<span>여행꼬치에서 </span> <span id="spinner-show"> <em
						class="current">당신의 여행 상품을 골라보세요</em> <span class="next"><span></span></span>
					</span>
				</h1>
				<ul id="spinner">
					<li>당신의 여행 상품을 골라보세요</li>
					<li>당신의 소중한 추억을 남겨보세요</li>
					<li>당신의 여행을 만들어보세요</li>
				</ul>
			</div>
			
			<div class="search col-xs-12 col-sm-12 col-md-12 col-lg-12" >
				<form action="${pageContext.request.contextPath}/hotdeal/hotdeal_main" method="post">
						<input type="text" class="search_text" placeholder="나라 검색" name="query">
						<button type="submit" class="btn btn-default" id="country_search_btn">검색</button>
				</form>
			</div>
			
			<div class="container">
			
			
			 <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2" id="block-menu-content">
						<ul class="block-menu affix-top" data-spy="affix" data-offset-top="500" data-offset-bottom="400" style="width: 150px;" >
							<li><a  href="#wemape_div">전체</a></li>
							<li><a href="#wemape_div"> 위메프 투어</a></li>
							<li><a href="#gmarket_div">G마켓 투어</a></li>
							<li><a  href="#coupang">쿠팡 투어</a></li>
						</ul>
					</div> 
			
			
		<div class="col-xs-9 col-sm-9 col-md-10 col-lg-10" id="block-menu-content">
				<div class="list-box-title" id="wemape_div">
					<span><i class="icon fa fa-plus-square"></i>위메프</span>
				</div>
				<div class="row">

					<c:forEach var="hotdealDTO" items="${map['wemepe']}" varStatus="state">
					<%-- 	<c:if test="${state.count % 4==0}">
							<div class="row">
						</c:if> --%>
						<!-- 박스 1개 -->
				<div class="hotdealBox col-xs-3 col-sm-3 col-md-4 col-lg-3 ">
							<div class="box-ads box-home">
								<a class="hover-effect image image-fill"
									href="${hotdealDTO.url}"> <span class="cover"></span> <img
									alt="Sample images" src="${hotdealDTO.imgUrl}"
									class="travel_img">
								</a>
								<!-- /.hover-effect -->
								<span class="price"><strong>${hotdealDTO.price}</strong></span>
								<span class="address">${hotdealDTO.title}</span>
							</div>
							<!-- /.box-home .box-ads -->
						</div>
						<!-- ./col-md-4 -->
			<%-- 			<c:if test="${state.count %4==0}">
				</div>
				</c:if> --%>
				</c:forEach>
				<!-- 
				<div class="more_info" >
					<button type="submit" class="btn btn-default" id="more_info_btn" >더보기...</button>
				</div>
				 -->	
			</div>
			
			<!-- G마켓 투어 -->
			<div class="list-box-title" id="gmarket_div">
				<span><i class="icon fa fa-plus-square"></i>G마켓 투어</span>
			</div>
			<div class="row">

					<c:forEach var="hotdealDTO" items="${map['gmarket']}" varStatus="state">
					<%-- 	<c:if test="${state.count % 4==0}">
							<div class="row">
						</c:if> --%>
						<!-- 박스 1개 -->
					<div class="hotdealBox col-xs-3 col-sm-3 col-md-4 col-lg-3 ">
							<div class="box-ads box-home">
								<a class="hover-effect image image-fill"
									href="${hotdealDTO.url}"> <span class="cover"></span> <img
									alt="Sample images" src="${hotdealDTO.imgUrl}"
									class="travel_img">
								</a>
								<!-- /.hover-effect -->
								<span class="price"><strong>${hotdealDTO.price}</strong></span>
								<span class="address">${hotdealDTO.title}</span>
							</div>
							<!-- /.box-home .box-ads -->
						</div>
						<!-- ./col-md-4 -->
		<%-- 				<c:if test="${state.count %4==0}">
				</div>
				</c:if> --%>
				</c:forEach>
			</div>
			
			<!--쿠팡 -->
			<div class="list-box-title" id="coupang">
				<span><i class="icon fa fa-plus-square"></i>쿠팡</span>
			</div>
			<div class="row">
					<c:forEach var="hotdealDTO" items="${map['coupang']}" varStatus="state">
						<!-- 박스 1개 -->
					<div class="hotdealBox col-xs-3 col-sm-3 col-md-4 col-lg-3 ">
							<div class="box-ads box-home">
								<a class="hover-effect image image-fill"
									href="${hotdealDTO.url}"> <span class="cover"></span> <img
									alt="Sample images" src="${hotdealDTO.imgUrl}"
									class="travel_img">
								</a>
								<!-- /.hover-effect -->
								<span class="price"><strong>${hotdealDTO.price}</strong></span>
								<span class="address">${hotdealDTO.title}</span>
							</div>
							<!-- /.box-home .box-ads -->
						</div>
				</c:forEach>
			</div> 
			
			
	</section>

	

	



</div>




	<div class="modal fade login-modal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">
				<i class="fa fa-close"></i>
			</button>
			<div class="login-button-container">
				<a href="#" data-section="login"><i class="fa fa-user"></i></a> <a
					href="#" data-section="sign-in"><i
					class="fa fa-pencil-square-o"></i></a> <a href="#"
					data-section="recovery"><i class="fa fa-lock"></i></a> <a href="#"
					data-section="setting"><i class="fa fa-cog"></i></a>
			</div>
			<!-- ./login-button-container -->
			<div class="form-container">
				<form method="post" action="#">
					<div id="login" class="box">
						<h2 class="title">Login in to your account</h2>
						<h3 class="sub-title">It is a breach of our terms and
							conditions to provide username and password details to
							unauthorised third parties. Unauthorised use may lead to
							suspension or termination.</h3>
						<div class="field">
							<input id="user-log" name="user-log" class="form-control"
								type="text" placeholder="Username or email"> <i
								class="fa fa-user user"></i>
						</div>
						<div class="field">
							<input id="password-log" name="password-log" class="form-control"
								type="password" placeholder="Password"> <i
								class="fa fa-ellipsis-h"></i>
						</div>
						<div class="field footer-form text-right">
							<span class="remember"><input class="labelauty"
								type="checkbox" data-labelauty="Keep me signed in" checked /></span>
							<button type="button" class="btn btn-reverse button-form">Reset</button>
							<button type="button" class="btn btn-default button-form">Login</button>
						</div>
					</div>
					<!-- ./login -->
					<div id="sign-in" class="box">
						<h2 class="title">Sign In</h2>
						<h3 class="sub-title">Create a Free account and discover how
							you can centralize all communication around a transaction,
							connect with clients, market your listings, and more.</h3>
						<div class="form-inline">
							<div class="form-group">
								<input id="user-sign" name="user-sign"
									class="form-control input-inline margin-right" type="text"
									placeholder="Username"> <i class="fa fa-user user"></i>
							</div>
							<div class="form-group">
								<input id="email-sign" class="form-control input-inline"
									type="text" name="email-sign" placeholder="Email"> <i
									class="fa fa-envelope-o"></i>
							</div>
						</div>
						<div class="field">
							<input id="password-sign" class="form-control" type="password"
								name="password-sign" placeholder="Password"> <i
								class="fa fa-ellipsis-h"></i>
						</div>
						<div class="field">
							<input id="re-password-sign" class="form-control" type="password"
								name="re-password-sign" placeholder="Repeat password"> <i
								class="fa fa-ellipsis-h"></i>
						</div>
						<div class="field footer-form text-right">
							<span class="remember"><input class="labelauty"
								type="checkbox" data-labelauty="I have read the privacy policy."
								checked /></span>
							<button type="button" class="btn btn-default button-form">Sign
								in</button>
						</div>
					</div>
					<!-- ./sign-in -->
					<div id="setting" class="box">
						<h2 class="title">Setting profile</h2>
						<h3 class="sub-title">
							Please note: You won't be able to change your name within the
							next 60 days. Make sure that you don't add any unusual
							capitalisation, punctuation, characters or random words. <a
								href="#">Learn more</a>.
						</h3>
						<div class="field">
							<input id="username-block" class="form-control" type="text"
								name="username-block" value="John Doe" disabled> <i
								class="fa fa-user user"></i>
						</div>
						<div class="field">
							<input id="email-setting" class="form-control" type="text"
								name="email-setting" value="administrator@prohome.com">
							<i class="fa fa-envelope-o"></i>
						</div>
						<div class="field">
							<input id="update-pass" class="form-control" type="password"
								name="update-pass" placeholder="New password"> <i
								class="fa fa-ellipsis-h"></i>
						</div>
						<div class="field">
							<input id="update-repass" class="form-control" type="password"
								name="update-repass" placeholder="Repeat password"> <i
								class="fa fa-ellipsis-h"></i>
						</div>
						<div class="field footer-form text-right">
							<button type="button" class="btn btn-reverse button-form">Cancel</button>
							<button type="button" class="btn btn-default button-form">Update</button>
						</div>
					</div>
					<!-- ./recovery -->
					<div id="recovery" class="box">
						<h2 class="title">Need a new password?</h2>
						<h3 class="sub-title">Enter your email address, and weâll
							email you instructions to reset your password.</h3>
						<div class="field">
							<input id="recovery-email" class="form-control" type="text"
								name="recovery-email" placeholder="Your email"> <i
								class="fa fa-envelope-o"></i>
						</div>
						<div class="field footer-form text-right">
							<button type="button" class="btn btn-default button-form">Recovery</button>
						</div>
					</div>
					<!-- ./recovery -->
				</form>
				<!-- ./form-container -->
			</div>
			<!-- ./login-button-container -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<div class="modal fade" id="modal-contact" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">
				<i class="fa fa-close"></i>
			</button>

			<div class="form-container full-fixed">
				<form method="post" action="#">
					<div id="form-modal-contact" class="box active modal-contact">
						<h2 class="title">How can we help?</h2>
						<h3 class="sub-title">Please send us your thoughts by filling
							out the below form. Comments are solely for internal use. Your
							address will not be shared with outside parties or used for any
							other purpose than to respond to your comments.</h3>
						<ul class="object-contact">
							<li><a href="#"><i class="fa fa-code"></i>Suggestion</a></li>
							<li><a href="#"><i class="fa fa-question"></i>Question</a></li>
							<li><a href="#" class="active"><i class="fa fa-bug"></i>Problems</a></li>
							<li><a href="#"><i class="fa fa-comment-o"></i>Feedback</a></li>
						</ul>
						<div class="field">
							<textarea class="form-control" name="message" id="message"
								placeholder="Your message"></textarea>
						</div>
						<div class="field">
							<input id="short-summary" class="form-control" type="text"
								name="short-summary" placeholder="Short summary"> <i
								class="fa fa-tag"></i>
						</div>
						<div class="field">
							<input id="email-help" class="form-control" type="text"
								name="email-help" placeholder="Your email"> <i
								class="fa fa-envelope-o"></i>
						</div>
						<div class="field footer-form text-right">
							<button type="button" class="btn btn-reverse button-form">Cancel</button>
							<button type="button" class="btn btn-default button-form">Send</button>
						</div>

					</div>
				</form>
			</div>


		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	</div>
	<!-- /#page-container -->

</body>
</html>