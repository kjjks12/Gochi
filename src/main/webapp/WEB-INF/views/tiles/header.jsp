<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

<jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />
<jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" />

<style>
.modal-backdrop {
	display: none !important
}

.datepicker {
	z-index: 1100 !important
}

.travelDate{
	margin-bottom: 20px;
}
#brief_story{
resize: vertical;
}
</style>
</head>

<body>
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
							data-target="#modal-contact" data-toggle="modal"
							class="hidden-xs"><i class="icon fa fa-envelope-o"></i> Info</a>

						<a href="${pageContext.request.contextPath}/mypage/goInfo"
							class="hidden-xs"><i class="icon fa fa-envelope-o"></i>
							myPageUpdate TEST</a>
					</div>

					<div id="login-pan" class="col-md-6 hidden-xs">
						<a href="#" data-toggle="modal" data-target=".login-modal"
							data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i>
							회원가입</a> <a href="#" data-toggle="modal" data-target=".login-modal"
							data-section="login"><i class="icon fa fa-user user"></i> 로그인</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.info -->
		<div class="logo hidden-xs">
			<a href="${pageContext.request.contextPath}"><img
				id="logo-header"
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
						<li class="has_submenu"><a href="${pageContext.request.contextPath}/hotdeal/hotdeal">여행 핫딜</a></li>
						<li class="has_submenu"><a href="#">나믿따</a></li>
						<li class="has_submenu">
							<%-- <a href="${pageContext.request.contextPath}/traveladd/travel_add">여행일정</a> --%>
							<a data-toggle="modal" data-target="#myModal">일정만들기</a> <!-- 일정만들기 모달   -->
						</li>
						<li class="has_submenu"><a
							href="${pageContext.request.contextPath}/travel_review/review">여행후기</a>
						</li>
						<li class="has_submenu"><a
							href="${pageContext.request.contextPath}/restaurant/restaurant">맛집</a>
						</li>
						<li class="has_submenu"><a
							href="${pageContext.request.contextPath}/community/faq">커뮤니티</a>
						</li>
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
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="z-index: 1000">
		<div class="modal-dialog" style="z-index: 1001;">
			<div class="modal-content" style="background-clip: border-box;">
				<div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="myModalLabel">여행 일정 기본정보</h3>
				</div>
				<div class="modal-body">
					<!-- Form Start -->
					<form role="form"
						action="${pageContext.request.contextPath}/traveladd/travel_add" method="post">
						<div class="form-group">
							<label for="Title">여행제목</label> 
							<input type="text" class="form-control" placeholder="여행 제목" name="title">
						</div>
						<div class="form-group">
							<label for="content">간단 여행 이야기</label>
							<textarea rows="2" class="form-control" name="briefStory" id="brief_story"></textarea>
						</div>

						<!-- datepicker 시작 -->
						<div class="travelDate">
							<table>
								<tr>
									<th>
									<span>시작날짜</span> 
									<input
										class="datepicker form-control" type="text" id="indate"
										placeholder="Check-in: YYYY/MM/DD" style="width: 200px" 
										name="travelStartDay"
										/></th>
									<th><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;끝 날짜</span> 
									
									<input
										class="datepicker form-control" type="text" id="outdate"
										placeholder="Check-out: YYYY/MM/DD"
										style="width: 200px; margin-left: 20px" 
										name="travelEndDay"
										/></th>
								</tr>
							</table>
						</div>
						<!-- datepicker 끝 -->
						<span> 
						<select id="capa" name="thema">
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


	<!-- datepicker script -->
	<script type="text/javascript">
	 $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true,
	        yearSuffix: '년'
	    });

	  $('.datepicker').datepicker({
		 }); 
	   
	</script>

	<!-- datepicker script  end-->



</body>

</html>