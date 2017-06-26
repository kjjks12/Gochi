<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.modal-backdrop {
   display: none !important
}

.datepicker {
   z-index: 11000 !important
}

.travelDate {
   margin-bottom: 20px;
}

#brief_story {
   resize: vertical;
}
</style>
<header class="menu-base" id="header-container-box">
   <div class="info">
      <!-- info -->
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <a href="#mobile-menu" id="mobile-menu-button" class="visible-xs"><i
                  class="fa fa-bars"></i></a> <a href="call:1-800-555-1234"
                  class="hidden-xs"><i class="icon fa fa-phone"></i>
                  (011)-8800-555</a> <a href="#" data-section="modal-contact"
                  data-target="#modal-contact" data-toggle="modal" class="hidden-xs"><i
                  class="icon fa fa-envelope-o"></i> Info</a>
            </div>
				<div id="login-pan" class="col-md-6 hidden-xs">
					<c:if test="${empty sessionScope.dto}">
						<a href="#" data-toggle="modal" data-target=".login-modal" data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i>회원가입</a>
						<a href="#"  id="login_btn" data-toggle="modal" data-target=".login-modal" data-section="login"><i class="icon fa fa-user user"></i> 로그인</a>
					</c:if>
					<c:if test="${not empty sessionScope.dto}">
						<a href="${pageContext.request.contextPath}/member/logout"><i
							class="icon fa fa-user user"></i>로그아웃</a>
						<a href="#" data-toggle="modal" data-target=".user-info-modal"
							data-section="setting"><i class="icon fa fa-pencil-square-o"></i>${sessionScope.dto.email}</a>
						<a
							href="${pageContext.request.contextPath}/mypage/goInfo/${sessionScope.dto.email}"
							class="hidden-xs"><i class="icon fa fa-envelope-o"></i> 마이페이지</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- /.info -->
	<div class="logo hidden-xs">
		<a href="${pageContext.request.contextPath}"><img id="logo-header"
			src="${pageContext.request.contextPath}/resources/images/logo.png"
			alt="Logo" /></a>
	</div>
	<!-- /.logo -->
	<div class="menu-navbar">
		<div class="container" id="menu-nav">
			<nav id="navigation">
				<ul>
					<li class="has_submenu"><a
						href="${pageContext.request.contextPath}">추천 컨텐츠</a></li>
					<li class="has_submenu"><a
						href="${pageContext.request.contextPath}/hotdeal/hotdeal_main">여행
							핫딜</a></li>
					<li class="has_submenu">
					<a href="${pageContext.request.contextPath}/followme/followmeMain">나믿따</a>
					</li>
					<li class="has_submenu">
						<%-- <a href="${pageContext.request.contextPath}/traveladd/travel_add">여행일정</a> --%>
						<a data-toggle="modal" data-target="#myModal">일정만들기</a> <!-- 일정만들기 모달   -->
					</li>
					<li class="has_submenu"><a
						href="${pageContext.request.contextPath}/travelreview/travelreview_main?data=전체">여행후기</a>
					</li> 
					<li class="has_submenu"><a
						href="${pageContext.request.contextPath}/restaurant/restaurant">맛집</a>
					</li>
					<li class="has_submenu"><a
						href="${pageContext.request.contextPath}/community/faq">커뮤니티</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- /.menu -->
	<a href="#" class="fixed-button top"><i class="fa fa-chevron-up"></i></a>
	<a href="#" class="hidden-xs fixed-button email" data-toggle="modal"
		data-target="#modal-contact" data-section="modal-contact"><i
		class="fa fa-envelope-o"></i></a>
</header>


<!--여행일정 모달  Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel" aria-hidden="true" style="z-index: 1000">
   <div class="modal-dialog" style="z-index: 1001;">
      <div class="modal-content" style="background-clip: border-box;">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"
               aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title" id="myModalLabel">여행 일정 기본정보</h3>
         </div>
         <div class="modal-body">
            <!-- Form Start -->
            <form role="form"
               action="${pageContext.request.contextPath}/traveladd/travel_add"
               method="post">
               <div class="form-group">
                  <label for="Title">여행제목</label> <input type="text"
                     class="form-control" placeholder="여행 제목" name="title">
               </div>
               <div class="form-group">
                  <label for="content">간단 여행 이야기</label>
                  <textarea rows="2" class="form-control" name="briefStory"
                     id="brief_story"></textarea>
               </div>
                  <!-- datepicker 시작 -->
                  <div class="travelDate">
                     <table>
                        <tr>
                           <th><span>시작날짜</span> <input
                              class="datepicker form-control" type="text" id="travel_start_day"
                              placeholder="Check-in: YYYY/MM/DD" style="width: 200px"
                              name="travelStartDay" /></th>
                           <th><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;끝 날짜</span> <input
                              class="datepicker form-control" type="text" id="travel_end_day"
                              placeholder="Check-out: YYYY/MM/DD"
                              style="width: 200px; margin-left: 20px" name="travelEndDay" /></th>
                        </tr>
                     </table>
                  </div>
                  <!-- datepicker 끝 -->
                  <span> <select id="capa" name="thema">
                        <option value="thema">-- 테마 --</option>
                        <option value="friend">친구와 함께</option>
                        <option value="alone">나홀로여행</option>
                        <option value="family">가족과 함께</option>
                        <option value="group">단체여행</option>
                        <option value="package">패키지여행</option>
                        <option value="couple">커플</option>
                  </select>
                  </span>

                  <!-- 모달 foot -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">닫기</button>
                     <button type="submit" class="btn btn-primary">저장 후 이동</button>
                  </div>
                  <!-- 모달 foot end-->

            </form>
         </div>

         <!--./form 전송 끝 -->
      </div>
      <!-- 모달 콘텐츠 -->
   </div>
   <!-- 모달 다이얼로그 -->
</div>
<!-- 모달 전체 윈도우 -->

<!-- 로그인/회원가입 모달!!!!!!!!!!!!!!!!! -->
<div class="modal fade login-modal" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">
			<i class="fa fa-close"></i>
		</button>
		<div class="login-button-container">
			<a href="#" data-section="login"><i class="fa fa-user"></i></a> <a
				href="#" data-section="sign-in"><i class="fa fa-pencil-square-o"></i></a>
			<a href="#" data-section="recovery"><i class="fa fa-lock"></i></a> <a
				href="#" data-section="setting"><i class="fa fa-cog"></i></a>
		</div>
		<!-- ./login-button-container -->

		<div class="form-container">
			<!-- 로그인 Form 입니다. -->
			<form action="${pageContext.request.contextPath}/member/Login"
				method="post" name="loginForm">
				<div id="login" class="box">
					<h2 class="title">Login in to your account</h2>
					<h3 class="sub-title">come to KkoChi World~!</h3>
					<div class="field">
						<input type="hidden" name="locationPath" value=""
							id="locationPath"> <input id="loginEmail" name="user-log"
							class="form-control" type="email" placeholder="Email"> <i
							class="fa fa-user user"></i>
					</div>
					<div class="field">
						<input id="loginPassword" name="password-log" class="form-control"
							type="password" placeholder="Password"> <i
							class="fa fa-ellipsis-h"></i>
					</div>
					<div class="field footer-form text-right">
						<!-- 네이버 로그인 API 적용. -->
						<button class="btn btn-reverse button-form"
							style="background-color: #ffffff; border: none"
							onClick=" $('.login-modal').hide();">
							<div id="naver_id_login"></div>
						</button>
						<script type="text/javascript">
                                var naver_id_login = new naver_id_login("qkQPxecKnvS2x7Gphr25", "http://localhost:8000/controller/login/callback");
                                var state = naver_id_login.getUniqState();
                                naver_id_login.setButton("green", 2,40);
                                naver_id_login.setDomain("http://localhost:8000/controller/");
                                naver_id_login.setState(state);
                                naver_id_login.setPopup();
                                naver_id_login.init_naver_id_login();
                        </script>
						<button type="reset" class="btn btn-reverse button-form">Reset</button>
						<button type="button" class="btn btn-default button-form"
							id="loginBun" onclick="loginCheck()">Login</button>
					</div>
				</div>
				<!-- ./login -->
			</form>

			<!-- SignIn Form 시작 입니다. -->
			<form method="post"
				action="${pageContext.request.contextPath}/member/SignIn"
				name="signInForm" id="signForm">
				<div id="sign-in" class="box">
					<h2 class="title">Sign In</h2>
					<h3 class="sub-title">Welcome to Gochi World~!</h3>

					<div class="field">
						<input id="nickname" name="nickname" class="form-control"
							type="text" placeholder="NickName"> <i
							class="fa fa-user user"></i>
					</div>
					<div class="form-group">
						<input id="email-sign" class="form-control" type="email"
							name="email-sign" placeholder="Email"> <i
							class="fa fa-envelope-o"></i>
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
						<button type="button" class="btn btn-default button-form"
							id="signIn" onclick="SignInCheck()">Sign in</button>
					</div>
				</div>
				<!-- ./sign-in -->
			</form>
			<!-- ./form-container -->
		</div>
	</div>
</div>

<!-- 사용자정보 모달!!!!!!!!!!!!!!!!!!!! -->
<div class="modal fade user-info-modal" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
            <div class="login-button-container">
               <a href="#" data-section="recovery"><i class="fa fa-lock"></i></a>
               <a href="#" data-section="setting"><i class="fa fa-cog"></i></a>
            </div><!-- ./login-button-container -->
            <div class="form-container">
                  <div id="setting" class="box">
                     <h2 class="title">Setting profile</h2>
                     <h3 class="sub-title">Please note: You won't be able to change your name within the next 60 days. Make sure that you don't add any unusual capitalisation, punctuation, characters or random words. <a href="#">Learn more</a>.</h3>
                     <div class="field">
                        <input id="username-block" class="form-control" type="text" name="username-block" value="${sessionScope.dto.nickname}" disabled>
                        <i class="fa fa-user user"></i>
                     </div>
                     <div class="field">
                        <input id="email-setting" class="form-control" type="text" name="email-setting" value="${sessionScope.dto.email}" disabled>
                        <i class="fa fa-envelope-o"></i>
                     </div>
                     <div class="field">
                        <input id="update-pass" class="form-control" type="password" name="update-pass" placeholder="New password">
                        <i class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field">
                        <input id="update-repass" class="form-control" type="password" name="update-repass" placeholder="Repeat password">
                        <i class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <button type="button" class="btn btn-reverse button-form">Cancel</button>
                        <button type="button" class="btn btn-default button-form">Update</button>
                     </div>
                  </div><!-- ./recovery -->
                  <form>
                  <div id="recovery" class="box">
                     <h2 class="title">Need a new password?</h2>
                     <h3 class="sub-title">Enter your email address, and weâ  ll email you instructions to reset your password.</h3>
                     <div class="field">
                        <input id="recovery-email" class="form-control" type="text" name="recovery-email" placeholder="Your email">
                        <i class="fa fa-envelope-o"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <button type="button" class="btn btn-default button-form">Recovery</button>
                     </div>
                  </div><!-- ./recovery -->
               </form><!-- ./form-container -->
            </div><!-- ./login-button-container -->
         </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
<div class="modal fade user-info-modal" tabindex="-1" role="dialog"
   aria-hidden="true">
   <div class="modal-dialog">
      <button type="button" class="close" data-dismiss="modal"
         aria-hidden="true">
         <i class="fa fa-close"></i>
      </button>
      <div class="login-button-container">
         <a href="#" data-section="recovery"><i class="fa fa-lock"></i></a> <a
            href="#" data-section="setting"><i class="fa fa-cog"></i></a>
      </div>
      <!-- ./login-button-container -->
      <div class="form-container">
         <div id="setting" class="box">
            <h2 class="title">Setting profile</h2>
            <h3 class="sub-title">
               Please note: You won't be able to change your name within the next
               60 days. Make sure that you don't add any unusual capitalisation,
               punctuation, characters or random words. <a href="#">Learn more</a>.
            </h3>
            <div class="field">
               <input id="username-block" class="form-control" type="text"
                  name="username-block" value="${sessionScope.dto.nickname}"
                  disabled> <i class="fa fa-user user"></i>
            </div>
            <div class="field">
               <input id="email-setting" class="form-control" type="text"
                  name="email-setting" value="${sessionScope.dto.email}" disabled>
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
         <form>
            <div id="recovery" class="box">
               <h2 class="title">Need a new password?</h2>
               <h3 class="sub-title">Enter your email address, and weâ ll
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




	<!-- datepicker script -->
	<script type="text/javascript">
	 $( function() {
		    $( "#travel_start_day" ).datepicker({ dateFormat: 'yy-mm-dd' });
		    $( "#travel_end_day" ).datepicker({ 
		    	dateFormat: 'yy-mm-dd', 
		    	beforeShowDay: noBefore
		    });
	
	  });
	// 이전 날짜들은 선택막기 
	 function noBefore(date){ 
	    if (date < $("#travel_start_day").datepicker( "getDate" )) 
	        return [false]; 
	    return [true]; 
	 }
	</script>
	<!-- datepicker script  end-->

	<script type="text/javascript">
function SignInCheck(){
	
	if(document.getElementById("nickname").value==""){
		alert("닉네임을 입력해 주세요!");
	}else if(document.getElementById("email-sign").value==""){
		alert("email을 입력해 주세요!");
	}else if(document.getElementById("password-sign").value==""){
		alert("비밀번호를 입력해 주세요!");
	}else if(document.getElementById("re-password-sign").value==""){
		alert("비밀번호를 다시한번 입력해 주세요!");
	}else if(document.getElementById("password-sign").value!=document.getElementById("re-password-sign").value){
		alert("비밀번호가 서로 일치하지 않아요!");
	}else{
		document.signInForm.submit();
	}
	
}

function loginCheck(){
	if(document.getElementById("loginEmail").value==""){
		alert("이메일을 입력해 주세요.");
	}else if(document.getElementById("loginPassword").value==""){
		alert("패스워드를 입력해 주세요.");
	}else{
		var path = window.location.pathname;
		document.getElementById("locationPath").value=path;
		document.loginForm.submit();
	}
}
</script>
