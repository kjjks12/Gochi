<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>PROHOME - Responsive Real Estate Template</title>

<jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />

<style type="text/css">
#mortgage-calc {
	margin-left: 60px;
	height: 30px;
	width: 70%
} /* 저장 , 취소 버튼 css */
#calendarPageMove {
	margin-left: 100px;
	height: 30px;
	width: 30%;
}
</style>


<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
<link rel="shortcut icon" href="images/favicon/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="images/favicon/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="images/favicon/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="images/favicon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="images/favicon/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="images/favicon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="images/favicon/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="images/favicon/apple-touch-icon-152x152.png" />


</head>
<body class="fixed-header">


	<div id="page-container">

		<div class="info">
			<!-- info -->
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<a href="#mobile-menu" id="mobile-menu-button" class="visible-xs"><i
							class="fa fa-bars"></i></a> <a href="call:1-800-555-1234"
							class="hidden-xs"><i class="icon fa fa-phone"></i>
							(011)-8800-555</a> <a href="#" data-section="modal-contact"
							data-target="#modal-contact" data-toggle="modal"
							class="hidden-xs"><i class="icon fa fa-envelope-o"></i> Info</a>
					</div>
					<div id="login-pan" class="col-md-6 hidden-xs">
						<a href="#" data-toggle="modal" data-target=".login-modal"
							data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i>
							Sign up</a> <a href="#" data-toggle="modal"
							data-target=".login-modal" data-section="login"><i
							class="icon fa fa-user user"></i> Login</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.info -->


		<section id="header-page" class="header-margin-base">

			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8" class="p4 parallax"></div>

				<div class="container header-text">
					<div>
						<h1 class="title">Property Details</h1>
					</div>
					<div>
						<h2 class="sub-title">Lorem ipsum dolor consectetur ats
							adipiscing elit</h2>
					</div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">home</a></li>
						<li class="active">일정추가</li>
					</ol>
				</div>
				<a href="${pageContext.request.contextPath}/traveladd/calendar"
					id="calendarPageMove" class="btn btn-reverse" type="button">일정스케줄링</a>
			</div>

		</section>

		<section id="contact">
			<div class="container">
				<div class="row">

					<div class="container"></div>
					<div
						class="col-sm-8 col-sm-push-4 col-md-9 col-md-push-3 form-container">
						<h3 class="title">Signin in with yout ProHome Account</h3>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
						pharetra diam dui, eget semper dui fermentum non. Ac semper neque
						metus nec diam.
						<form method="post" action="contact.php" class="form-large"
							role="form" data-toggle="validator">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="name">Name</label> <input type="text"
										class="margin-bottom form-control" id="name" name="name"
										placeholder="First &amp; Last Name .." required>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="email">Email</label> <input type="email"
										class="margin-bottom form-control" id="email" name="email"
										placeholder="Email .." required>
								</div>
								<div class="col-md-12">
									<label for="subject">Subject</label> <input type="text"
										class="margin-bottom form-control" id="subject" name="subject"
										placeholder="Subject">
								</div>
								<div class="col-md-12">
									<label for="text-message">Message</label>
									<textarea class="margin-bottom form-control" rows="4"
										name="text-message" id="text-message" required></textarea>
								</div>
								<div class="col-md-12">
									<label for="privacy">Privacy</label>
									<textarea class="margin-bottom form-control privacy" rows="1"
										name="privacy" id="privacy" disabled>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque quam ut fermentum ullamcorper. Pellentesque lobortis, ante vitae egestas venenatis, ante elit consectetur sem, sit amet auctor ex ligula sed mauris. Suspendisse tempor diam et hendrerit ullamcorper. Proin urna orci, pellentesque quis bibendum at, ultrices vulputate tortor. Integer ac ante diam. In et euismod nulla. Donec nibh nisl, egestas nec porta eu, hendrerit et urna.</textarea>
								</div>
								<div class="col-md-12 margin-bottom">
									<input class="labelauty" type="checkbox"
										data-labelauty="Privacy accept" checked />
								</div>
							</div>
							<input id="submit" name="submit" type="submit" value="Send mail"
								class="btn btn-default">
						</form>
					</div>
					<!-- /.form-container -->

					<div
						class="col-sm-4 col-sm-pull-8 col-md-3 col-md-pull-9 hidden-xs">
						<div class="info-container">
							<h1>Contact</h1>

							<button id="mortgage-calc" class="btn btn-reverse" type="button">저
								장</button>
							<button id="mortgage-calc" class="btn btn-reverse" type="button">취
								소</button>
							<ul class="grey-box">

								<li>+123-456-789 <i class="icon fa fa-phone"></i></li>
								<li><a href="#">info@example.com</a><i
									class="icon fa fa-envelope-o"></i></li>
							</ul>
							<h2>
								<a href="#">친구목록</a>
							</h2>
							<ul class="grey-box">
								<li><a href="mailto:info@prohome.com">친구별명</a><i
									class="icon fa fa-envelope-o"></i></li>
								<li><a href="mailto:support@prohome.com">친구별명</a><i
									class="icon fa fa-envelope-o"></i></li>
								<li><a href="mailto:development@prohome.com">친구별명</a><i
									class="icon fa fa-envelope-o"></i></li>
							</ul>
							<h2>
								<button type="button" class="btn btn-reverse"
									data-toggle="modal" data-target="#exampleModal"
									data-whatever="@checkList">체크리스트</button>
							</h2>
							<ul class="grey-box">
								<li>Info: +0123-456-789 <i class="icon fa fa-mobile"></i></li>
								<li>Support: +0123-987-654 <i class="icon fa fa-phone"></i></li>
								<li>Dev: +0123-123-456 <i class="icon fa fa-phone"></i></li>
							</ul>

							<!-- 체크리스트 모달  -->
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog"  >
									<div class="modal-content"  >
										<div class="modal-header" >
											<button type="button" class="close" data-dismiss="modal">
												<span aria-hidden="true">×</span><span class="sr-only">Close</span>
											</button>
											<h4 class="modal-title" id="exampleModalLabel">Check List</h4>
										</div>
										
										<div class="menu-navbar">
				<nav id="navigation">
				
					
						<ul>
								<li class="has_submenu">
								<h5><a href="#"  onclick="checkChange('start')">출발</a></h5>
								</li>
								<li class="has_submenu">
								<h5><a href="#" onclick="checkChange('see')" >해변여행</a></h5>
								</li>
								<li class="has_submenu">
								<h5><a href="#" onclick="checkChange('mt')" >산 여행</a></h5>
								</li>
							    <li class="has_submenu">
								<h5><a href="#" onclick="checkChange('buty')" >미용도구</a></h5>
								</li>
							    <li class="has_submenu">
								<h5><a href="#" onclick="checkChange('119')">구급약</a></h5>
								</li>
								
								
						</ul>
				</nav>
			</div><!-- /.menu -->
								<div class="modal-body" >
									<div class="modal-body-list">히릿</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">취소</button>
									<button type="button" class="btn btn-primary">저장</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 체크리스트 모달 끝 -->

				</div>
				<!-- /.info-container -->
			</div>
			<!-- ./col-sm-4 -->
	</div>
	</div>
	</section>



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
						<h3 class="sub-title">Enter your email address, and we’ll
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

	<!-- buttom css -->
	<jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" />
	<script>
		"use strict";

		// MAPS GOOGLE
		function initialize() {
			var mapOptions = {
				zoom : 18,
				scrollwheel : false,
				center : new google.maps.LatLng(-33.890542, 151.274856)
			}
			var map = new google.maps.Map(
					document.getElementById('map-canvas'), mapOptions);

			var image = 'resources/images/maps/pin-maps.png';
			var myLatLng = new google.maps.LatLng(-33.890542, 151.274856);
			var beachMarker = new google.maps.Marker({
				position : myLatLng,
				map : map,
				icon : image
			});
		}
		/* google.maps.event.addDomListener(window, 'load', initialize); */
	</script>
<script type="text/javascript">
	
/*  체크리스트 리스트 change */
function checkChange(str) {
	var output ="";
	var list = str;
	if(list=="start"){
		 output ="";
		 list = "";
		
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		$("div .modal-body-list").html(output);
		
		return;
	} if(list=="see"){
		 output ="";
		 list = "";

		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		$("div .modal-body-list").html(output);

		return;
	} if(list=="mt"){
		 output ="";
		 list = "";

		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		$("div .modal-body-list").html(output);

		return;
	} if(list=="buty"){
		 output ="";
		 list = "";

		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		$("div .modal-body-list").html(output);

		
		return;
	} if(list=="119"){
		 output ="";
		 list = "";

		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		output +="<input  type='checkbox' value='아이템' >아이템</input>";
		$("div .modal-body-list").html(output);

		return;

	}

 
}

</script>
</body>
</html>