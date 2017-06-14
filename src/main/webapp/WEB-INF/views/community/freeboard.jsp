<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>
    
    
    <jsp:include page="/WEB-INF/views/include/include_top_css.jsp"/>
    
	<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
	<link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-touch-icon-152x152.png" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


  </head>
  
  
  <body class="fixed-header">

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
							<li><a class="faq-button active" href="select"><i class="icon fa fa-th-list"></i> 자유 게시판</a></li>
							<li><a class="faq-button" href=""><i class="icon fa fa-picture-o"></i> Q&A</a></li>
						</ul>
					</div>
				
					<!-- 이미지 사진 및 사이드바 -->
					<div class="col-sm-9 col-md-9" >
					
						<div class="section-title line-style no-margin">
							<h3 class="title">자유 게시판</h3>
							<div style="text-align: right;">
								<button type="button" class="btn btn-default" id="insert" name="insert" onclick="location.href='insert_freeboard'">글쓰기</button>
							</div>
						</div>
						
						<div class="table-responsive property-list">
							<table class="table-striped table-hover" style="margin: auto;">
							  <thead>
								<tr>
									<th>글번호</th>
									<th>제목</th>
									<th class="hidden-xs">Type</th>
									<th class="hidden-xs hidden-sm">작성일</th>
									<th class="hidden-xs">View</th>
									<th>Status</th>
									<th></th>
								</tr>
							  </thead>
							  <tbody id="plus" name="plus">
								<c:forEach items="${list}" var="i">
									<tr>
										<td style="text-align: center;">${i.boardno}</td>
										<td><a href="detail/${i.boardno}">${i.title}</a></td>
										<td class="hidden-xs">Apartement</td>
										<td class="hidden-xs hidden-sm">${i.dDay}</td>
										<td class="hidden-xs">${i.hits}</td>
										<td><span class="label label-success">Active</span></td>
										<td id="aa">
												<a href="#" id="defaultA">
													<i id="default_btn" class="icon fa fa-cog" ></i>
												</a>
											<span id="modify_delete_dis" style="width:100%; height:100%; display: none">
												<a href="modify_freeboard/${i.boardno}">
													<i id="modify_btn" class="icon fa fa-wrench"></i>
<!-- 아이디 들어오면 권한 비교하는거 해야되 -->	</a>
												<a href="delete/${i.boardno}">
													<i id="delete_btn" class="icon fa fa-times"></i>
												</a>	
											</span>
											
										</td>
								</tr>
								</c:forEach>
						
								
							  </tbody>
							</table>
						</div><!-- /.table-responsive -->
						<div class="pagination-content">
							<ul class="pagination">
							<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a class="no-active">...</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
							</ul><!-- /.pagination -->
						</div><!-- /.pagination-content -->
					</div>
				</div>
			</div>
		</section>


		<div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>

				<div class="form-container full-fixed">
					<form method="post" action="#">
						<div id="form-modal-contact" class="box active modal-contact">
							<h2 class="title">How can we help?</h2>
							<h3 class="sub-title">Please send us your thoughts by filling out the below form. Comments are solely for internal use. Your address will not be shared with outside parties or used for any other purpose than to respond to your comments.</h3>
							<ul class="object-contact">
								<li><a href="#"><i class="fa fa-code"></i>Suggestion</a></li>
								<li><a href="#"><i class="fa fa-question"></i>Question</a></li>
								<li><a href="#" class="active"><i class="fa fa-bug"></i>Problems</a></li>
								<li><a href="#"><i class="fa fa-comment-o"></i>Feedback</a></li>
							</ul>
							<div class="field">
								<textarea class="form-control" name="message" id="message" placeholder="Your message"></textarea>
							</div>
							<div class="field">
								<input id="short-summary" class="form-control" type="text" name="short-summary" placeholder="Short summary">
								<i class="fa fa-tag"></i>
							</div>
							<div class="field">
								<input id="email-help" class="form-control" type="text" name="email-help" placeholder="Your email">
								<i class="fa fa-envelope-o"></i>
							</div>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-reverse button-form">Cancel</button>
								<button type="button" class="btn btn-default button-form">Send</button>
							</div>

						</div>
					</form>
				</div>


			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</div><!-- /#page-container -->
<!-- footer ë£ì´ì¼ë -->

  </body>
  <jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp"/>

<script type="text/javascript">

"use strict";
// ACCORDION
$(document).ready(function() {
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
	
	
	 /* $(document).on("mouseover","#default_btn", function(){
		//$(this).show();
		//$(this).parent().next().css("display","none");
		//$(this).parent().next().hide();
		
		$(this).show();
		$(this).parent().next().css("display","none");
	}) */
	
	/* on("mouseleave","#modify_delete_dis",function(){
		alert(1);
		$(this).hide();
		/* $(this).children().next().css("display","none");
		$("#default_btn").css("display","block");
	}); */
		
});

</script>


</html>