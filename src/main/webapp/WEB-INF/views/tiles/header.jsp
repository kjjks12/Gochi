<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


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
							
							<a href="${pageContext.request.contextPath}/mypage/goInfo" class="hidden-xs"><i class="icon fa fa-envelope-o"></i> myPageUpdate TEST</a>
						</div>
						
						<div id="login-pan" class="col-md-6 hidden-xs">
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i> 회원가입</a>
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="login"><i class="icon fa fa-user user"></i> 로그인</a>
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
								<%-- <a href="${pageContext.request.contextPath}/traveladd/travel_add">여행일정</a> --%>
								<a data-toggle="modal" data-target="#myModal">여행일정</a>
								</li>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}/travel_review/review">여행후기</a>
								</li>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}/restaurant/restaurant">맛집</a>
								</li>
								<li class="has_submenu">
								<a href="${pageContext.request.contextPath}/community/faq">커뮤니티</a>
								</li>
						</ul>
					</nav>
				</div>
			</div><!-- /.menu -->
			<a href="#" class="fixed-button top"><i class="fa fa-chevron-up"></i></a>
			<a href="#" class="hidden-xs fixed-button email" data-toggle="modal" data-target="#modal-contact" data-section="modal-contact"><i class="fa fa-envelope-o"></i></a>
	
		</header>

		
<!--여행일정 모달  Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="z-index: 10">
    <div class="modal-content">
      <div class="modal-header"><h3>여행일정 계획 기본정보 입력</h3>
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"> </h4>
      </div>
      <div class="modal-body">
      <!-- Form Start -->
      <form role="form" action="${pageContext.request.contextPath}/traveladd/travel_add">  
    	<div class="form-group">   
        	<label for="Title">일정등록</label>
       	 	<input type="text" class="form-control" placeholder="여행 제목"> 
    	</div>       
    	<div class="form-group">  
        	<label for="content">간단 여행 이야기</label>
        	<textarea  rows="3" class="form-control"></textarea> 
    	</div>
  		<div class="form-group">  
        	 <fieldset>
    <legend>여행태마</legend>
    <label for="radio-1">혼자</label>
    <input type="radio" name="radio-1" id="radio-1">
    <label for="radio-2">커플</label>
    <input type="radio" name="radio-1" id="radio-2">
    <label for="radio-3">가족</label>
    <input type="radio" name="radio-1" id="radio-3">
    <label for="radio-3">친구와</label>
    <input type="radio" name="radio-1" id="radio-3">
  </fieldset>
            
        <span>
             <select class="form-control" id="capa" name="capa">
                     <option value="0">-- 인원 --</option>
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5+</option>
                  </select>
             </span>   
         </div> 
        
        <div class="btn-group">
         <button type="button" class="btn btn-default btn-danger"> 버튼2 </button> 
          <button type="button" class="btn btn-default btn-danger dropdown-toggle" data-toggle="dropdown">
          <span class="caret"></span>
         </button>
       <ul class="dropdown-menu" role="menu">
        <li><a href="#">메뉴 1</a></li>
        <li><a href="#">메뉴 2</a></li>
        <li><a href="#">메뉴 3</a></li>
        <li class="divider"></li>
        <li><a href="#">다른 메뉴 </a></li>
      </ul>
    </div>    
         
      
         
     
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary" >저장 후 이동</button>
      </div>
    </form>
			<!--./form 전송 끝 -->    
    </div> <!-- 모달 콘텐츠 -->
  </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->
</div>


		
</body>

</html>
