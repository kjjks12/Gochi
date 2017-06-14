<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<script>
	$(document).ready(function() {


		// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
		var floatPosition = parseInt($("#floatMenu").offset().top);
		// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

		$(window).scroll(function() {
			// 현재 스크롤 위치를 가져온다.
			var scrollTop = $(window).scrollTop();
			console.log('float :' + floatPosition);
			console.log('scrollTop :' + scrollTop);


			//처음 시작 위치보다 스크롤 위치가 커지면 이동시작
			if (scrollTop > floatPosition) {

				var newPosition = scrollTop + "px";
			}





			/* 애니메이션 없이 바로 따라감
			 $("#floatMenu").css('top', newPosition);
			 */

			$("#floatMenu").stop().animate({
				"top" : newPosition
			}, 500);

		}).scroll();


	}); //jQuery 끝
</script>


</head>
<body class="review-body">

	<div id="page-container">
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<span class="cover"> <img alt="detail_back_cover"
					id="review_detail_back_cover_img"
					src="${pageContext.request.contextPath}/resources/review_img/review_detail_back_img.jpg"></span>
				<div class="container header-text">
					<div>
						<h1 align="center">도른자와 함꼐하는 오키나와 뚜벅이 여행</h1>
					</div>
					<div>
						<p class="tit-desc" align="center">
							<span class="cities plan-tit-middle">한국</span> <span
								class="maxday plan-tit-middle"> <span>1</span> <span>일</span>
							</span>
						</p>
					</div>
				</div>
			</div>
		</section>
		<!-- /#header -->


		<!-- 내용 시작 -->
		<section class="shortcode-box" id="blog">
			<div class="container-fluid">

				<div class="row">
					<!-- 전체 화면 한줄(왼쪽 프로필 + 내용) -->
					<div class="col-xs-12 col-sm-12 col-md-12  col-lg-12">

						<!-- 왼쪽 메뉴 -->
						<div class="col-xs-3 col-sm-3 col-md-3  col-lg-2" >

							<div class="user-info-box">

								<div class="author-box">
									<div class="author-img">
										<a target="_blank"
											href="../myPage/user/0cf608b29ae518684037.html?active=myPlan">
											<img id="profile-img"
											src="${pageContext.request.contextPath}/resources/review_img/review_detail_profile_img.jpg">
										</a>
									</div>
									<div class="author-name">
										<h3>지구본</h3>
									</div>
								</div>
								<!-- author-box -->

								<div class="author-ment">지구 ㅅr랑ㅎri........♠</div>

								<div class="follower-btns">
									<button class="following-btn" data-id="0cf608b29ae51868">팔로우</button>
									<button class="following follower-btn hide"
										data-id="0cf608b29ae51868">팔로잉</button>
								</div>


								<div class="author-page-links">
									<ul>
										<li><a target="_self" href="#"> <span>포스트</span> <!-- 나의 포스트  -->
												<span class="count">(264)</span>
										</a></li>
										<li><a target="_self" href="#"> <span>여행일정</span> <!-- 나의 일정 -->
												<span class="count">(27)</span>
										</a></li>
										<li><a target="_self" href="#"> <span>팔로워</span> <!-- 팔로워 -->
												<span class="count">(1)</span>
										</a></li>
										<li><a target="_self" href="#"> <span>팔로잉</span> <!-- 팔로잉 -->
												<span class="count ">(0)</span>
										</a></li>
									</ul>
								</div>
								<!-- author-page-links -->
								<div class="author-page-links"></div>
								<!-- author-page-links -->

							</div>

							<span class="left-menu-add">추천</span>
							<span class="left-menu-add">북마크</span>	
							<ul class="block-menu">
								<li><a class="faq-button active" href="#basic"><i
										class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;방문&nbsp;명소</a></li>
								<li><a class="faq-button" href="#summary"><i
										class="fa fa-krw" aria-hidden="true"></i>&nbsp;여행가계부</a></li>
								<li><a class="faq-button" href="#images"><i
										class="fa fa-check-square-o" aria-hidden="true"></i>
										&nbsp;체크리스트</a></li>
							</ul>


						</div>
						<!-- 왼쪽 메뉴 끝-->



						<!--  오른쪽 내용 (블로그 본문+오른쪽 날짜) -->
						<div class="col-xs-9 col-sm-9 col-md-9  col-lg-10">

							<!-- 여행에 대한 간단한 소개 -->
							<div class="plan-info-top">
								<h2>흰자와 도른자 오키나와</h2>
								<div>여권정보를 입력하다가 너와 나의 생일이 같았다는 사실을 다시한번 깨닫고 소름.</div>
							</div>


							<!-- 스토리 / 지도 /일정표 -->
							<div class="plan-view-tab">
								<h3 align="center">
									<a href="#"> <i class="icon fa fa-th-list">스토리</i>
									</a> &nbsp;&nbsp;&nbsp; <a href="#"> <i
										class="icon fa fa-th-list">지도/일정표</i></a>
								</h3>

							</div>


							<!-- 여행 내용 -->
							<div class="col-xs-11 col-sm-11 col-md-11  col-lg-11">


								<div class="day-box">
									<h2>1일차</h2>
									<!-- 방문한 장소 + 내용 들어갈 곳  1개-->
									<div class="spot-note-box">
										<!-- 1.방문 장소 -->
										<div class="spot_location">
											<h4>
												<span class="ct"></span><span><i class="fa fa-camera"
													aria-hidden="true"></i>인천공항 (Incheon International Airport,
													ICN)</span>
											</h4>
										</div>
										<!-- 2.방문 내용 -->
										<div class="spot-contents">
											<div id="note_panel">

												<!-- conts-tit-bar -->
												<div class="conts-txt-area">
													<p>제주항공 7C1802편 13시30분 출발</p>
													<p>
														<br>
													</p>
													<p>-----</p>
													<p>
														<br>
													</p>
													<p>↓ 스카이패스로밍에서 포켓와이파이 대여!</p>
													<p>
														<a
															href="http://www.skypassroaming.co.kr/shop/main/index.php"
															target="_blank"><span
															data-href="http://www.skypassroaming.co.kr/shop/main/index.php"
															data-auto-link="true">http://www.skypassroaming.co.kr/shop/main/index.php</span></a>
													</p>
													<p>4일 사용에 28,400원!</p>
													<p>쿠폰 2,000원 할인이 즉시 되는데 모르고 그냥 결제... 뚀르르...</p>
													<div class="medium-insert-images ui-sortable"
														contenteditable="false">
														<figure class="editor-insert-image">
															<a class="editor-img-cnl hide"><img
																src="/images/btn-editor-img-cnl.png" alt=""></a>
															<img
																src="https://thumb.wishbeen.com/AOE-7EP0r4vSmbsmOvNleGwNewM=/880x/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1474818306372_KakaoTalk_20160922_002744044.jpg"
																style="height: 1200.7667731629394px;">
														</figure>
													</div>
													<p>↑머릿결 애도</p>
													<p>
														<br>
													</p>
													<p>공항도착하고 나서 환전한 돈을 집에 두고온지 깨닫..ㅎ</p>
													<p>진짜 정신머리 나갔ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>
													<p>급히 퀵서비스시켜서 기다리는 한시간동안 얼마나 마음 졸였는지..ㅜ</p>
													<p>
														<br>
													</p>
													<p>내쌩돈 7만원...ㅂㄷㅂㄷ</p>
													<p>
														<br>
													</p>
													<div class="medium-insert-images ui-sortable"
														contenteditable="false">
														<figure class="editor-insert-image">
															<a class="editor-img-cnl hide"><img
																src="/images/btn-editor-img-cnl.png" alt=""></a>
															<img
																src="https://thumb.wishbeen.com/KLUjIXTUfDir9ijiquhxdJgI-Rs=/880x/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1474818319923_KakaoTalk_20160922_002745166.jpg"
																style="height: 652.5px;">
														</figure>
													</div>
													<p>갑작스레 우리둘의 여행에 끼어들게된 사촌언니랑 사촌동생 ㅋㅋ</p>
													<p>도른자가 낯도안가리고 겁나 활발한애라 다행이지 아니었으면 서로 어색할뻔..ㅎ</p>
													<div class="medium-insert-images ui-sortable"
														contenteditable="false">
														<figure class="editor-insert-image">
															<a class="editor-img-cnl hide"><img
																src="/images/btn-editor-img-cnl.png" alt=""></a>
															<img
																src="https://thumb.wishbeen.com/aEh9uD6j3rshPDcViwLk1bgbN80=/880x/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1474818382568_KakaoTalk_20160922_013431848.jpg"
																style="height: 1160px;">
														</figure>
													</div>
													<p>언제 어느여행이던 설레게 하는 하늘사진 ♡3♡</p>
													<p>
														<br>
													</p>
													<div class="medium-insert-images ui-sortable"
														contenteditable="false">
														<figure class="editor-insert-image">
															<a class="editor-img-cnl hide"><img
																src="/images/btn-editor-img-cnl.png" alt=""></a>
															<img
																src="https://thumb.wishbeen.com/svENDflEpJ3O8ViyzMns8ijDevE=/880x/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1474818344112_KakaoTalk_20160922_002748853.jpg"
																style="height: 950.9583333333334px;">
														</figure>
													</div>
													<p>
														제주항공말고 딴것좀 타보고싶다..ㅎ ㅜ<br>
													</p>
												</div>
												<!-- conts-txt-area -->
												<div class="spot-note-info">
													<div class="note-info-inner-box cost">
														<p class="note-list type">항공료</p>
														<p class="note-list">제주항공 왕복 / 1인</p>
														<p class="note-list">KRW 208,900</p>
													</div>
													<div class="note-info-inner-box cost">
														<p class="note-list type">기타</p>
														<p class="note-list">포켓와이파이 28,400 / 2 = 14,200</p>
														<p class="note-list">KRW 14,200</p>
													</div>
												</div>
												<div class="author-info">
													<div class="tit-bar">
														<a target="_blank"
															href="/myPage/user/4e6647aada65d963?active=myPlan"
															onclick="WebTrackingSendEvent('/plan', 'postAuthor', '4e6647aada65d963');"><span
															class="user-name">Jieun Lee</span></a><span class="time">2016/08/15
															11:04</span>
													</div>
													<div class="conts-label">
														<div class="spot-like-count">
															<a class="">좋아요<span>0</span></a>
														</div>
														<div class="spot-commont-count">
															<a class="show-comments-of-note">댓글<span>0</span></a>
														</div>
													</div>
												</div>
											</div>
											<div id="note-comment-area"></div>
											<div id="comment-more-btn-area" class="pagination hide">
												<a id="comment-more-btn" class="btn-more">더보기</a>
											</div>
										</div>
									</div>
								</div>

							</div>


							<!-- 왼쪽 날짜 보여줄 부분 -->
							<div class="col-xs-1 col-sm-1 col-md-1  col-lg-1" id="floatMenu">
								<ul>
									<li class="story-view-nav-li"><a
										class="btn-top nav-btn-top story-view-nav-btn" data-id="top">Top</a></li>
									<li class="story-view-nav-li"><a
										class="story-view-nav-btn" data-id="0"><span>Day</span><span>1</span></a></li>
									<li class="story-view-nav-li"><a
										class="story-view-nav-btn" data-id="1"><span>Day</span><span>2</span></a></li>
									<li class="story-view-nav-li"><a
										class="story-view-nav-btn" data-id="2"><span>Day</span><span>3</span></a></li>
									<li class="story-view-nav-li"><a
										class="story-view-nav-btn" data-id="3"><span>Day</span><span>4</span></a></li>
								</ul>
							</div>

						</div>
						<!--  ./오른쪽 내용 (블로그 본문+오른쪽 날짜) 끝-->

					</div>
					<!-- /.전체 12개 컬럼  -->
				</div>
				<!-- ./row 끝 -->





				<!-- comment 시작 -->
				<div id="comments">
					<h2 class="title-comment">
						Comments <span class="total-comment">4</span>
					</h2>
					<div class="medialist">
						<div class="media">
							<div class="media-left">
								<a href="#"> <img class="media-object"
									src="http://placehold.it/512/bbbbbb/ffffff" alt="Image sample" />
								</a>
							</div>
							<div class="media-body">
								<div class="comment-line">
									<h4 class="media-heading">
										Manuel Lawrence <span class="date-comment">1 February
											at 22:03</span>
										<button class="reply">
											<i class="fa fa-share-square-o"></i>
										</button>
									</h4>
									<b>Lorem ipsum dolor sit amet, consectetur adipiscing elit</b>
									Aliquam at maximus nibh. Nunc odio dolor, cursus rutrum lorem
									vel, rutrum faucibus risus. Duis id imperdiet mauris, eget
									lobortis urna. Donec efficitur, tellus sed dapibus consequat,
									nulla sapien accumsan ligula, sollicitudin congue est magna non
									dui. Sed malesuada convallis est, et laoreet sem accumsan at.
									Ut vestibulum eleifend urna, nec sodales lorem rhoncus quis.
									Nulla imperdiet mattis nisl sit amet cursus. Nullam malesuada,
									lorem ac commodo finibus, ipsum eros fermentumet euismod
									ultricies.
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"> <img class="media-object"
									src="http://placehold.it/512/bbbbbb/ffffff" alt="Image sample" />
								</a>
							</div>
							<div class="media-body">
								<div class="comment-line">
									<h4 class="media-heading">
										Ruth Stone <span class="date-comment">2 February at
											22:36</span>
										<button class="reply">
											<i class="fa fa-share-square-o"></i>
										</button>
									</h4>
									<b>Morbi mattis neque eu justo fringilla</b> Scelerisque ut
									facilisis risus. Proin imperdiet erat tellus, non viverra dui
									condimentum eget. Nullam at enim id elit semper scelerisque.
									Etiam lorem ex, semper sed magna sed, molestie interdum ante.
									Donec blandit nisl mauris, nec placerat ante sodales quis.
								</div>
								<div class="media">
									<div class="media-left">
										<a href="#"><img class="media-object"
											src="http://placehold.it/512/bbbbbb/ffffff"
											alt="Image sample" /></a>
									</div>
									<div class="media-body nested">
										<div class="comment-line">
											<h4 class="media-heading">
												Jean Medina <span class="date-comment">8 February at
													22:40</span>
											</h4>
											Mauris eu ipsum porta, rhoncus mi eget, vehicula est. Nulla
											condimentum condimentum dapibus. Nullam at enim id elit
											semper scelerisque. Etiam lorem ex, semper sed magna sed,
											molestie interdum ante. Donec blandit nisl mauris, nec
											placerat ante sodales quis.
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"> <img class="media-object"
									src="http://placehold.it/512/bbbbbb/ffffff" alt="Image sample" />
								</a>
							</div>
							<div class="media-body">
								<div class="comment-line">
									<h4 class="media-heading">
										Margaret Smith <span class="date-comment">4 February at
											16:52</span>
										<button class="reply">
											<i class="fa fa-share-square-o"></i>
										</button>
									</h4>
									Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
									scelerisque ante sollicitudin commodo. Cras purus odio,
									vestibulum in vulputate at, tempus viverra turpis.
								</div>
							</div>
						</div>
					</div>
					<h3 class="title-form">
						<i class="icon fa fa-comment"></i> Leave a Comment
					</h3>
					<form class="form-large grey-color" action="#" method="post">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<label for="name">Name</label> <input type="text"
									placeholder="Name .." name="name" id="name"
									class="margin-bottom form-control">
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<label for="email">Email</label> <input type="text"
									placeholder="Email .." name="email" id="email"
									class="margin-bottom form-control">
							</div>
							<div class="col-md-12">
								<label for="text-message">Message</label>
								<textarea name="text-message" id="text-message" rows="4"
									class="margin-bottom form-control"></textarea>
							</div>
						</div>
						<input type="submit" class="btn btn-default" value="Send Comment">
					</form>
				</div>
				<!-- /. end-comment -->
			</div>
			<!-- /.container끝 -->
		</section>
		<!-- /.section 끝 -->

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



</body>
</html>