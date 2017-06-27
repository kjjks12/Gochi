<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<script
   src='${pageContext.request.contextPath}/resources/fullcalendar/moment.min.js'></script>

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
					src="${pageContext.request.contextPath}/resources/img/travel/travelCover/${sessionScope.travelInfo.travelNo}/${sessionScope.travelInfo.email}/${sessionScope.travelInfo.travelCoverImg}"></span>
				<div class="container header-text">
					<div>
						<h1 align="center">${sessionScope.travelInfo.title}</h1>
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
											src="${pageContext.request.contextPath}/resources/img/member/profile/${sessionScope.writer.email}/${sessionScope.writer.profileImg}">
										</a>
									</div>
									<div class="author-name">
										<h3>${sessionScope.writer.nickname}</h3>
									</div>
								</div>
								<!-- author-box -->

								<div class="author-ment">${sessionScope.writer.selfContent}</div>

								<div class="follower-btns">
									<button class="following-btn" data-id="0cf608b29ae51868">팔로우</button>
									<button class="following follower-btn hide"
										data-id="0cf608b29ae51868">팔로잉</button>
								</div>


							
								<!-- author-page-links -->
								<div class="author-page-links"></div>
								<!-- author-page-links -->

							</div>

							<p>
							<p>
							<p>
							<ul class="block-menu">
								<li><a class="faq-button" href="#basic"><i
										class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;방문&nbsp;명소</a></li>
								<li><a class="faq-button" href="#summary"><i
										class="fa fa-krw" aria-hidden="true"></i>&nbsp;여행가계부</a></li>
								<li><a data-toggle="modal" data-target="#checkList" class="faq-button active">
								<i class="fa fa-check-square-o" aria-hidden="true"></i>체크리스트</a></li>
							</ul>


						</div>
						<!-- 왼쪽 메뉴 끝-->



						<!--  오른쪽 내용 (블로그 본문+오른쪽 날짜) -->
						<div class="col-xs-9 col-sm-9 col-md-9  col-lg-10">

							<!-- 여행에 대한 간단한 소개 -->
							<div class="plan-info-top">
								<h2>${sessionScope.travelInfo.title}</h2>
								<div>${sessionScope.travelInfo.briefStory}</div>
							</div>

							<!-- 여행 내용 -->
							<div class="col-xs-11 col-sm-11 col-md-11  col-lg-11">


								<div class="day-box">
									<c:if test="${not empty sessionScope.travelDetailInfo}">
										<c:forEach items="${sessionScope.travelDetailInfo}" var="detailInfo">
											
											<!-- 방문한 장소 + 내용 들어갈 곳  1개-->
											<div class="spot-note-box">
												<!-- 1.방문 장소 -->
												<div class="spot_location">				
														<h1><span class="ct"></span><span><i class="fa fa-camera" aria-hidden="true"></i>${detailInfo.travelItinearyTitle} ( ${detailInfo.startTime} ~ ${detailInfo.endTime} )</span></h1>			
												</div>
												<!-- 2.방문 내용 -->
												<div class="spot-contents">
													<div id="note_panel">${detailInfo.story}</div>
													<div id="note-comment-area"></div>
												</div>
											</div>
											${detailInfo.money}
										</c:forEach>
										
									</c:if>
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

<!--여행일정 모달  Modal -->
<div class="modal fade" id="checkList" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel" aria-hidden="true" style="z-index: 1000">
   <div class="modal-dialog" style="z-index: 1001;">
      <div class="modal-content" style="background-clip: border-box;">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"
               aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title" id="myModalLabel"><i class="fa fa-hand-o-right"></i>잊지말고 챙겨가세요!</h3>
         </div>
         <div class="modal-body">
         <h4>${sessionScope.writer.nickname} 님이 직접 선별한 준비물 입니다!</h4><p>
         <h4>깜빡하기 전에 지금 챙겨보는건 어떨까요?</h4><p>
         <div class="form-group">
        	
          <c:if test="${not empty sessionScope.checkList}">
          	<c:forEach items="${sessionScope.checkList}" var="check" varStatus="state">
          	  ${state.index} ) ${check.item} <br> 
              </c:forEach>
		</c:if>
		</div>
                  <!-- 모달 foot -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">닫기</button>
                  </div>
                  <!-- 모달 foot end-->
         </div>

         <!--./form 전송 끝 -->
      </div>
      <!-- 모달 콘텐츠 -->
   </div>
   <!-- 모달 다이얼로그 -->
</div>
<!-- 모달 전체 윈도우 -->
</body>
</html>