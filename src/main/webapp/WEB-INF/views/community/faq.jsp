<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
	<div id="page-container">
		
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Faq</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolats adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">Faq</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="faq">

			<div class="container">
				<div class="row">
					<div class="col-xs-3 col-md-2 col-lg-2" id="block-menu-content">
						<div class="section-title line-style no-margin">
							<h3 class="title">Menu Faq list</h3>
						</div>
						<ul class="block-menu" data-spy="affix" data-offset-top="500" data-offset-bottom="400">
							<li><a class="faq-button active" href="#basic"><i class="icon fa fa-life-ring"></i>월간 베스트</a></li><!-- href에 해당#+id값하면 그 페이지로 보여주기 작동 -->
							<li><a class="faq-button" href="#account"><i class="icon fa fa-child"></i>자유게시판</a></li>
							<li><a class="faq-button" href="#property"><i class="icon fa fa-home"></i>Q&A</a></li>
						</ul>
					</div>
					<div class="col-sm-9" style="height: 1500px;">

						<h2>월간 베스트</h2>
						<div class="faq-container accordion" id="basic">
							<c:forEach items="${list}" var="i" varStatus="status">
								<div class="accordion-box">
									<a data-target="#acc-${status.count}" href="#" class="title">${i.qaTitle}</a>
									<div class="text-container" id="acc-${status.count}">
										<!-- <div style="float: left;">
										<img src="http://placehold.it/512/bbbbbb/ffffff" alt="50" width="110" height="180" style="float: left;"/>
										</div> -->
										<div style="float: left; width:10px; height: 180px;">&nbsp;</div>
										<div style="float:none; ">
										<p>${sessionScope.dto.nickname} ${i.qaDate}</p>
											<p>${i.qaContent}</p>
											<span class="footer">
												Was this answer helpful? 
												<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
												<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
											</span>
										</div>
									</div>
								</div>
							
							</c:forEach>
							</div>
						<div>
						<div style="float: left;"><h2>자유게시판</h2></div>
						<div style="float: none; text-align: right;"><h4><a href="pagination?lastNum=1">[자세히보기]</a></h4></div>
						</div>
						<div class="faq-container accordion" id="account">
						
						<c:forEach var="i" items="${blist}" varStatus="status">
								<div class="accordion-box">
									<a data-target="#acc-${status.index+6}" href="#" class="title">${i.title}</a>
									<div class="text-container" id="acc-${status.index+6}">
										<!-- <div style="float: left;">
										<img src="http://placehold.it/512/bbbbbb/ffffff" alt="50" width="110" height="180" style="float: left;"/>
										</div> -->
										<div style="float: left; width:10px; height: 180px;">&nbsp;</div>
										<div style="float:none; ">
										<p>${sessionScope.dto.nickname} ${i.dDay}</p>
											<p>${i.content}</p>
											<span class="footer">
												Was this answer helpful? 
												<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
												<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
											</span>
										</div>
									</div>
								</div>
							
							</c:forEach>
							</div>
						
						<div>
						<div style="float: left;"><h2>Q&A</h2></div>
						<div style="float: none; text-align: right;"><h4><a href="qapagination?lastNum=1">[자세히보기]</a></h4></div>
						</div>
						<div class="faq-container accordion" id="property">
						
						<c:forEach var="i" items="${qlist}" varStatus="status">
								<div class="accordion-box">
									<a data-target="#acc-${status.index+11}" href="#" class="title">${i.qaTitle}</a>
									<div class="text-container" id="acc-${status.index+11}">
										<!-- <div style="float: left;">
										<img src="http://placehold.it/512/bbbbbb/ffffff" alt="50" width="110" height="180" style="float: left;"/>
										</div> -->
										<div style="float: left; width:10px; height: 180px;">&nbsp;</div>
										<div style="float:none; ">
										<p>${sessionScope.dto.nickname} ${i.qaDate}</p>
											<p>${i.qaContent}</p>
											<span class="footer">
												Was this answer helpful? 
												<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
												<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
											</span>
										</div>
									</div>
								</div>
							
							</c:forEach>
							
						
							</div>
						
						
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
	<!--  추가된 부분 -->
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
		});

	</script>
