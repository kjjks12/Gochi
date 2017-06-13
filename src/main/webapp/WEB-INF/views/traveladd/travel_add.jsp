<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

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
<style type='text/css'>
body {
	text-align: center;
	font-size: 14px;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
		background: #f2f2f2;
}
#wrap {
	width: 1100px;
	margin: 0 auto;
}

#external-events {
	float: left;
	width: 150px;
	padding: 0 10px;
	border: 1px solid #ccc;
	background: #eee;
	text-align: left;
	margin-left: 20px;
	margin-top: 30px;
}

#external-events h4 {
	font-size: 16px;
	margin-top: 0;
	padding-top: 1em;
}

.external-event { /* try to mimick the look of a real event */
	margin: 10px 0;
	padding: 2px 4px;
	background: #3366CC;
	color: #fff;
	font-size: .85em;
	cursor: pointer;
}

#external-events p {
	margin: 1.5em 0;
	font-size: 11px;
	color: #666;
}

#external-events p input {
	margin: 0;
	vertical-align: middle;
}

#calendar {
	float: right;
	width: 900px;
	margin-right: 100px;
	margin-top: 30px;
}

#title {
	text-align: center;
}

.buttonWrap {
	position: relative;
	float: left;
	overflow: hidden;
	cursor: pointer;
	background-image:
		url('${pageContext.request.contextPath}/resources/custom_icon/user_back_icon.png');
	width: 52px;
	height: 40px;
}

#customer_back_img {position：absolute;
	margin-left: -10px;
	filter: alpha(opacity = 0);
	opacity: 0;
	-moz-opacity: 0;
	cursor: pointer;
	width: 74px;
	height: 20px;
}

#user_back_icon {
	width: 60px;
	height: 60px;
}

/*user back cover file 태그 숨기기*/
#user_backcover_filebtn {
	display: none;
}

.profile_title_div {
	padding-top: 40px;
}

.profile_cover_div {
	padding-top: 50px;
}

#travel_title_span {
	font-weight: bold;
}

.plan-view-tab {
	text-align: center; height : 50px;
	background: #fff;
	background-image: initial;
	background-position-x: initial;
	background-position-y: initial;
	background-size: initial;
	background-repeat-x: initial;
	background-repeat-y: initial;
	background-attachment: initial;
	background-origin: initial;
	background-clip: initial;
	background-color: rgb(255, 255, 255);
	border-radius: 4px;
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	border-bottom-left-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	box-shadow: 0 1px 1px rgba(125, 125, 125, .2);
	-webkit-box-shadow: 0 1px 1px rgba(125, 125, 125, .2);
	-moz-box-shadow: 0 1px 1px rgba(125, 125, 125, .2);
	height: 50px;
}

#plan-select-tab{
  border-width:1px 0;
  list-style:none;
  margin:0;
  padding:0;
  text-align:center;
}
#plan-select-tab li{
  margin-right:50px;
  display:inline;
    font-size: 20px;
}
#plan-select-tab li a i{
  display:inline-block;
  padding:10px;

}

#planMessage{
margin-bottom: 10px;
}

</style>


<!-- Jquery Script Start-->
<script>
	$(document).ready(function() {

		//여행 타이틀 수정하기 아이콘을 눌렀을때
		$("#user_back_icon").click(function() {
			//alert($("#travel_title").text());
			//수정 입력폼 보여주기
			$("#travel_title_text").show();
			$("#travel_title_save_btn").show();

			//수정폼 text에 기존 값 보여주기
			$("#travel_title_text").val($("#travel_title").text());

			//기존 보여주는 양식 숨기기
			$("#travel_title").hide();
			$("#travel_title_change_btn").hide();
		});

		//여행 타이틀 수정 완료 버튼 눌렀을때
		$("#travel_title_save_btn").click(function() {
			//원래 여행 타이틀 div에 입력받은 text값 넣음
			//alert($("#travel_title_text").val());
			$("#travel_title").text($("#travel_title_text").val());

			//수정 입력폼 숨기기
			$("#travel_title_text").hide();
			$("#travel_title_save_btn").hide();

			//기존 보여주는 양식 보여주기
			$("#travel_title").show();
			$("#travel_title_change_btn").show();
		})


		$("#user_backcover_changebtn").click(function() {

			$("#user_backcover_filebtn").trigger('click');
		})


		//이미지 변경 됬으면
		$("#user_backcover_filebtn").change(function() {
			var file = this.files[0];
			var reader = new FileReader();
			reader.onloadend = function() {
				$('#user_backcover_div').css('background-image', 'url("' + reader.result + '")');

				$("#default_back_div1").hide();
				$("#default_back_div2").hide();
				$("#default_back_div3").hide();
				$("#default_back_div4").hide();

				//글씨 색 바꾸기
				$("#travel_title_span").css('color', 'white');
			}
			if (file) {
				reader.readAsDataURL(file);
			} else {
			}

		});


	}); //jQuery 끝
</script>
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

			<div class="skyline" id="user_backcover_div">

				<div data-offset="50" class="p1 parallax" id="default_back_div1"></div>
				<div data-offset="25" class="p2 parallax" id="default_back_div2"></div>
				<div data-offset="15" class="p3 parallax" id="default_back_div3"></div>
				<div data-offset="8" class="p4 parallax" id="default_back_div4"></div>


				<!-- 여행 타이틀 부분 -->
				<div class="container header-text">
					<div class="profile_title_div">
						<h1 align="center">
							<span id="travel_title_span"> <span id="travel_title">도른자와 함꼐하는 오키나와 뚜벅이 여행</span>
							</span> <span id="travel_title_change_btn"> <a href="#"
								id="user_back_icon"> <i class="fa fa-pencil-square-o"
									aria-hidden="true"></i></a>
							</span>
						</h1>

						<h2>
							<input type="text" id="travel_title_text" size="30"
								maxlength="30" hidden> <input type="button"
								id="travel_title_save_btn" value="저장" hidden>
						</h2>
					</div>
					<div class="profile_cover_div">
						<button type="button" class="btn btn-default btn-sm"
							id="user_backcover_changebtn">커버 바꾸기</button>
						<input type="file" id="user_backcover_filebtn"
							onchange="previewImage(this,'user_backcover_div')" />
					</div>

				</div>
			</div>




		</section>

		<section id="contact">

			<div class="container">
				<div class="row">

	<!-- 여행 들어갈 내용 -->
					<div
						class="col-sm-8 col-sm-push-4 col-md-9 col-md-push-3 form-container">

						
						<!-- 스토리 / 지도 /일정표 end -->
						<!-- 스토리 영역  -->
						<div id="story" style="visibility: inherit;">
							<form method="post" action="contact.php" class="form-large"
								role="form" data-toggle="validator">

								<input type="text" id="planMessage"
									class="form-control plan-brief"
									placeholder="어떤 여행인지 간단히 설명해 주세요 " maxlength="300" value="" />
								<textarea class="form-control" id="planDetailMessage"
									placeholder="당신의 여행 스토리를 남겨보세요!" maxlength="10000"></textarea>


					<!-- 스토리 / 지도 /일정표 -->
						<div class="plan-view-tab">
								<ul id="plan-select-tab">
									<li><a href="/"><i class="fa fa-comment-o" aria-hidden="true"></i>스토리</a></li>
									<li><a href="/"><i class="fa fa-calendar" aria-hidden="true"></i> 지도 / 일정표</a></li>
								</ul>
						</div>

								<!-- 지도/일정영역 -->
								<div>
									<a href="${pageContext.request.contextPath}/traveladd/calendar"
										id="calendarPageMove" class="btn btn-reverse" type="button">일정스케줄링</a>

								</div>
								<!-- 지도/일정영역 end-->
							</form>
						</div>
					</div>
					<!-- 스토리 영역 end  -->



					<!-- 왼쪽 정보  -->
					<div
						class="col-sm-4 col-sm-pull-8 col-md-3 col-md-pull-9 hidden-xs">
						<div class="info-container">
							<h1>Contact</h1>

							<!-- 왼쪾 내정보  -->
							<div class="author-box">
								<div class="author-img">
									<a target="_blank"
										href="../myPage/user/0cf608b29ae518684037.html?active=myPlan">
										<img id="profile-img"
										src="${pageContext.request.contextPath}/resources/review_img/review_detail_profile_img.jpg">
									</a>
								</div>
								<div class="author-name">
									<h3>김 준</h3>
								</div>
							</div>
							<div class="author-ment">내상태 메세지</div>
							<!-- 왼쪽 내정보  end -->

							<!-- 왼쪽 정보칸 -->
							<button id="mortgage-calc" class="btn btn-reverse" type="button">저장</button>
							<button id="mortgage-calc" class="btn btn-reverse" type="button">취소</button>
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
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">
												<span aria-hidden="true">×</span><span class="sr-only">Close</span>
											</button>
											<h4 class="modal-title" id="exampleModalLabel">Check
												List</h4>
										</div>

										<div class="menu-navbar">
											<nav id="navigation">


												<ul>
													<li class="has_submenu">
														<h5>
															<a href="#" onclick="checkChange('start')">출발</a>
														</h5>
													</li>
													<li class="has_submenu">
														<h5>
															<a href="#" onclick="checkChange('see')">해변여행</a>
														</h5>
													</li>
													<li class="has_submenu">
														<h5>
															<a href="#" onclick="checkChange('mt')">산 여행</a>
														</h5>
													</li>
													<li class="has_submenu">
														<h5>
															<a href="#" onclick="checkChange('buty')">미용도구</a>
														</h5>
													</li>
													<li class="has_submenu">
														<h5>
															<a href="#" onclick="checkChange('119')">구급약</a>
														</h5>
													</li>


												</ul>
											</nav>
										</div>
										<!-- /.menu -->
										<div class="modal-body">
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
					<!-- 왼쪽 정보칸 end -->

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
								<input id="password-log" name="password-log"
									class="form-control" type="password" placeholder="Password">
								<i class="fa fa-ellipsis-h"></i>
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
								<input id="re-password-sign" class="form-control"
									type="password" name="re-password-sign"
									placeholder="Repeat password"> <i
									class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								<span class="remember"><input class="labelauty"
									type="checkbox"
									data-labelauty="I have read the privacy policy." checked /></span>
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
							<h3 class="sub-title">Please send us your thoughts by
								filling out the below form. Comments are solely for internal
								use. Your address will not be shared with outside parties or
								used for any other purpose than to respond to your comments.</h3>
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
			var output = "";
			var list = str;
			if (list == "start") {
				output = "";
				list = "";
	
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				$("div .modal-body-list").html(output);
	
				return;
			}
			if (list == "see") {
				output = "";
				list = "";
	
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				$("div .modal-body-list").html(output);
	
				return;
			}
			if (list == "mt") {
				output = "";
				list = "";
	
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				$("div .modal-body-list").html(output);
	
				return;
			}
			if (list == "buty") {
				output = "";
				list = "";
	
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				$("div .modal-body-list").html(output);
	
				return;
			}
			if (list == "119") {
				output = "";
				list = "";
	
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				output += "<input  type='checkbox' value='아이템' >아이템</input>";
				$("div .modal-body-list").html(output);
	
				return;
	
			}
	
		}
	</script>

</body>
</html>