<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>



<!-- 달력 링크 , 부트스트랩 *준* -->
   <link href="${pageContext.request.contextPath}/resources/fullcalendar/bootstrap.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/fullcalendar/bootstrap-datepicker.css" rel="stylesheet" />  
	<script src="${pageContext.request.contextPath}/resources/fullcalendar/bootstrap.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/fullcalendar/bootstrap-datepicker.js"></script>

<style>
.modal-backdrop {
	display :none !important
	
	
}
	.datepicker {
		z-index: 1000 !important
	}
</style>
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
								<a data-toggle="modal" data-target="#myModal">일정만들기</a> <!-- 일정만들기 모달   -->
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index: 1000" >
  <div class="modal-dialog" style="z-index: 1001;">
    <div class="modal-content" style="background-clip: border-box;">
      <div class="modal-header"><h3>여행일정 계획 기본정보 입력</h3>
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"> </h4>
      </div>
      <div class="modal-body">
      <!-- Form Start -->
      <form role="form" action="${pageContext.request.contextPath}/traveladd/travel_add">  
    	<div class="form-group">   
        	<label for="Title">여행제목</label>
       	 	<input type="text" class="form-control" placeholder="여행 제목"> 
    	</div>       
    	<div class="form-group">  
        	<label for="content">간단 여행 이야기</label>
        	<textarea  rows="2" class="form-control"></textarea> 
    	</div>
  		
  		<!-- datepicker 시작 -->
  		<div class="controls">
  		<table>
  			<tr>
  				<th>
  				<span>시작날짜</span>
        		<input class="datepicker form-control" type="text" id="indate"  placeholder="Check-in: YYYY/MM/DD" style="width: 200px"/>
				</th>
				<th>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;끝 날짜</span>
       			<input class="datepicker form-control" type="text" id="outdate" placeholder="Check-out: YYYY/MM/DD" style="width: 200px; margin-left: 20px"/>
       		    </th>
  			</tr>
  		</table> 
         </div>  
       <!-- datepicker 끝 -->
   		
   <fieldset><br>
   <table>
    	<tr>
    		<th colspan="4"  align="center">	
    		<span>누구와 함께</span>
    		</th>
    	</tr>
    	<tr>
    		<th>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="labelauty" type="radio" name="radio-1" id="radio-1" data-labelauty="나혼자" checked="checked"/>
    		</th>
    		<th>
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="labelauty" type="radio" name="radio-1" id="radio-2" data-labelauty="나혼자2"  />
    		</th>
    		<th>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="labelauty" type="radio" name="radio-1" id="radio-3" data-labelauty="나혼자3"  />
    		</th>
    		<th>
  			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="labelauty" type="radio" name="radio-1" id="radio-4"  data-labelauty="나혼자4" />
    		</th>
    	</tr>
    </table>
  </fieldset>
          
        <span>
        <select id="capa" name="capa" >
                     <option value="0">-- 인원 --</option>
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5+</option>
         </select>
         </span>
       
       <!-- 모달 foot -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary" >저장 후 이동</button>
      </div>
        <!-- 모달 foot end-->
      
       
    </form>
    </div>

			<!--./form 전송 끝 -->    
    </div> <!-- 모달 콘텐츠 -->
  </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->


<!-- datepicker script -->
<script type="text/javascript">
	
		 $('.datepicker').datepicker({
	    	 weekStart:1,
	    	 color: 'red'
			
		 });
</script>   

<!-- datepicker script  end-->


		
</body>

</html>
