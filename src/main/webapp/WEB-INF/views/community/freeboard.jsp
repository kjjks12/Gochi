<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 	<script src="${pageContext.request.contextPath}/resources/script/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sweetalert.css">
    
	<div id="page-container">
		
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">My Property</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor siscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">My Property</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
				<div class="col-sm-3 col-md-3" id="block-menu-content">
						<ul class="block-menu" data-spy="affix" data-offset-top="500" data-offset-bottom="400">
							<li><a class="faq-button" href="faq"><i class="icon fa fa-check-square-o"></i>월간 베스트</a></li>
							<li><a class="faq-button active" href="pagination?lastNum=1"><i class="icon fa fa-th-list"></i> 자유 게시판</a></li>
							<li><a class="faq-button" href="qapagination?lastNum=1"><i class="icon fa fa-picture-o"></i> Q&A</a></li>
						</ul>
					</div>
				
					<!-- 이미지 사진 및 사이드바 -->
					<div class="col-sm-9 col-md-9" >
						<div class="section-title line-style no-margin">
							<h3 class="title">자유 게시판</h3>
							<div style="text-align: right;">
								<input type="hidden" id="data_email" value="${sessionScope.dto.email}">
								<button type="button" class="btn btn-default" id="insert" name="insert"> 글쓰기 </button>
							</div>
						</div>
						
						<div class="table-responsive property-list">
							<table class="table-striped table-hover" style="margin: auto;">
							  <thead>
								<tr>
									<th>글번호</th>
									<th>제목</th>
									<th class="hidden-xs">작성자</th>
									<th class="hidden-xs hidden-sm">작성일</th>
									<th class="hidden-xs">View</th>
									<th>Status</th>
									<th></th>
								</tr>
							  </thead>
							  <tbody id="plus" name="plus">
								<c:forEach items="${list}" var="i" varStatus="status">
									<tr>
										<td id="boardno" style="text-align: center;" >${i.rnum}</td>
										<td><a href="detail/${i.boardno}">${i.title}</a></td>
										<td class="hidden-xs" id="email">${i.email}</td>
										<td class="hidden-xs hidden-sm">${i.dDay}</td>
										<td class="hidden-xs">${i.hits}</td>
										<td>
										<c:choose>
											<c:when test="${i.sel=='질문'}">
												<span class="label label-success">${i.sel}</span>
											</c:when>
											<c:when test="${i.sel=='메모'}">
												<span class="label label-danger">${i.sel}</span>
											</c:when>
											<c:when test="${i.sel=='여행기'}">
												<span class="label label-info">${i.sel}</span>
											</c:when>
											<c:when test="${i.sel=='리뷰'}">
												<span class="label label-warning">${i.sel}</span>
											</c:when>
											<c:otherwise>
												<span class="label label-primary">${i.sel}</span>
											</c:otherwise>
										</c:choose>
										</td>
										<td id="aa">
												<a href="#" id="defaultA">
													<i id="default_btn" class="icon fa fa-cog" ></i>
												</a>
											<span id="modify_delete_dis" style="width:100%; height:100%; display:none">
												<a href="javascript:;" id="modify_update_a" name="${i.boardno}">
													<i id="modify_btn" class="icon fa fa-wrench"></i>
												</a>
<!-- 아이디 들어오면 권한 비교하는거 해야되 -->	<a href="javascript:;" id="modify_delete_a" name="${i.boardno}">
													<i id="delete_btn" class="icon fa fa-times"></i>
												</a>	
											</span>
											
										</td>
								</tr>
								</c:forEach>
							  </tbody>
							</table>
						</div><!-- /.table-responsive -->
						<div class="pagination-content" id="pagination">
							<ul class="pagination">
							<li><a href="#"><i class="fa fa-chevron-left" id="left"></i></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a class="no-active">...</a></li>
							<li><a href="#"><i class="fa fa-chevron-right" id="right"></i></a></li>
							</ul><!-- /.pagination -->
						</div><!-- /.pagination-content -->
					</div>
				</div>
			</div>
		</section>

		
	</div><!-- /#page-container -->
<!-- footer ë£ì´ì¼ë -->

  

<script type="text/javascript">

"use strict";
// ACCORDION
$(document).ready(function() {
	var login_id = $("#data_email").val();
	var $title, $content;
	var $selector = $('.accordion').selector;
	var $title    = $($selector + ' .title');
	var $content  = $($selector + ' .text-container');
	var $close = function(){
		$title.removeClass('active');
		$content.slideUp(500).removeClass('open');			
	}
	$($selector).find('.title').on('click', function(e) {
		var $idTarget = $(this).data('target');
		var currentAttrValue = $(this).attr('href');
		if($(e.target).is('.active')) {
			$($idTarget).css({'display':'block'});
			$close();
		}else {
			$($idTarget).css({'display':'none'});
			$close();
			$(this).addClass('active');
			$($idTarget).slideDown(400).addClass('open'); 
		}
		e.preventDefault();
	});
	
	$(document).on("mouseenter" , "#default_btn", function(){
		$(this).hide();
		$(this).parent().next().css("display","block");
		/* $(this).parent().next().show(); */
		//버퍼링 방식 이벤트 전이 안되게 prevent 문제 event 처리 막기
	}).on("mouseleave","#modify_delete_dis",function(){
		$(this).hide();
		$(this).parent().parent().children().children().children().css("display","block");
		
	});
	
 	$("#insert").click(function(){
 		if(login_id==""){
 			swal({
 				title:"로그인이 필요합니다.",
 				imageUrl: "${pageContext.request.contextPath}/resources/images/thumbs-up.jpg",
 				showLoaderOnConfirm: true,
 			},
 			function(){
 				  setTimeout(function(){
 					 $('#login_btn').trigger('click');
 				  });
 			});
 			
 		}else{
 			location.href="insert_freeboard/editor";
 		}
	});
 	
 	 $("#pagination ul li a").click(function(){
		alert($(this).text()); 	//해당 번호로 넘어온다
		var num = $(this).text();
		var boo=$(this).hasClass("active");
		alert(boo);
		$(this).attr("class","active");
		location.href="pagination?lastNum="+num;
 	});
 	
 	/* $(document).on("click","#page", function(){
 		 var num=$(this).text();
 		location.href="pagination?lastNum="+num;
 		  $.ajax({
 			url:"pagination",
 			type:"post",
 			dataType:"josn",
 			data: "lastnum="+$(this).text(),
 			success:function(result){
 				
 			}
 		})
 	}) */
 	
 	
 	$(document).on("click","#modify_update_a", function(){
 		$.ajax({
 			url: "confirm",//서버요청 이름(주소
 			type: "post",
 			dataType:"json",
 			data: "updateIcon="+$(this).attr("name"),
 			/* data:"updateIcon=${sessionScope.dto.email}", */
 			success: function(result){
 				if(result.confirm=="false"){
 					swal({
 						  title: "권한이 없습니다.",
 						  type: "warning",
 						  text: "I will close in 1 seconds.",
 						  timer: 1000,
 						  showConfirmButton: false
 						});
 				}else{
 					location.href="modify_freeboard?modifyNum="+result.updateIcon;
 				}
 				/* alert(result.updateIcon);
 				alert(result.confirm); */
 				
 			},
 			error: function(err){
 				alert("오류발생 : "+ err);
 			}
 		})
 	})// 수정 버튼 end
 	
 	$(document).on("click","#modify_delete_a", function(){
 		$.ajax({
 			url: "confirm",//서버요청 이름(주소
 			type: "post",
 			dataType:"json",
 			data: "updateIcon="+$(this).attr("name"),
 			/* data:"updateIcon=${sessionScope.dto.email}", */
 			success: function(result){
 				if(result.confirm=="false"){
 					swal({
 						  title: "권한이 없습니다.",
 						  type: "warning",
 						  text: "I will close in 1 seconds.",
 						  timer: 1000,
 						  showConfirmButton: false
 						});
 				}else{
 					location.href="delete/"+result.updateIcon;
 				}
 				/* alert(result.updateIcon);
 				alert(result.confirm); */
 				
 			},
 			error: function(err){
 				alert("오류발생 : "+ err);
 			}
 		})
 	})// 삭제 버튼 end
 	
 	
});//jQuery end

 
</script>
