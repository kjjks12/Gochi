<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>
    
    <jsp:include page="/WEB-INF/views/include/include_top_css.jsp"/>
    <jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp"/>

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
					<div class="col-sm-3" id="block-menu-content">
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

							<div class="accordion-box">
								<a data-target="#acc-1" href="#" class="title">Donec feugiat magna justo. Sed dignissim at metus vel commodo?</a>
								<div class="text-container" id="acc-1">
								<div style="float: left;">
								<img src="http://placehold.it/512/bbbbbb/ffffff" alt="50" width="110" height="180" style="float: left;"/>
								</div>
								<div style="float: left; width:10px; height: 180px;">&nbsp;</div>
								<div style="float:none; ">
								<p>닉네임 : 노충환 2017/06/09</p>
									<p>Donec feugiat magna justo. Sed dignissim at metus vel commodo. Vivamus vehicula eget urna a mattis. Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris iaculis nec. Mauris tristique massa vel metus sollicitudin, ac porta nisi tempus. Nullam id aliquam urna. Proin a lorem dignissim, sollicitudin tortor nec, accumsan lectus.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzsdasdsdsdzzz</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-2" href="#" class="title active">Curabitur pulvinar luctus tristique?</a>
								<div class="text-container open" id="acc-2">
									<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate. Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-3" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-3">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-4" href="#" class="title">Donec feugiat magna justo. Sed dignissim at metus vel commodo?</a>
								<div class="text-container" id="acc-4">
									<p>Donec feugiat magna justo. Sed dignissim at metus vel commodo. Vivamus vehicula eget urna a mattis. Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris iaculis nec. Mauris tristique massa vel metus sollicitudin, ac porta nisi tempus. Nullam id aliquam urna. Proin a lorem dignissim, sollicitudin tortor nec, accumsan lectus.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-5" href="#" class="title">Curabitur pulvinar luctus tristique?</a>
								<div class="text-container" id="acc-5">
									<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate. Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
						</div>

						<div>
						<div style="float: left;"><h2>자유게시판</h2></div>
						<div style="float: none; text-align: right;"><h4><a href="select">[자세히보기]</a></h4></div>
						</div>
						<div class="faq-container accordion" id="account">
							<div class="accordion-box">
								<a data-target="#acc-6" href="#" class="title">Donec feugiat magna justo. Sed dignissim at metus vel commodo?</a>
								<div class="text-container" id="acc-6">
									<p>Donec feugiat magna justo. Sed dignissim at metus vel commodo. Vivamus vehicula eget urna a mattis. Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris iaculis nec. Mauris tristique massa vel metus sollicitudin, ac porta nisi tempus. Nullam id aliquam urna. Proin a lorem dignissim, sollicitudin tortor nec, accumsan lectus.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-7" href="#" class="title">Curabitur pulvinar luctus tristique?</a>
								<div class="text-container" id="acc-7">
									<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate. Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-8" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-8">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-9" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-9">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-10" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-10">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
						</div>
						
						<div>
						<div style="float: left;"><h2>Q&A</h2></div>
						<div style="float: none; text-align: right;"><h4><a href="#">[자세히보기]</a></h4></div>
						</div>
						<div class="faq-container accordion" id="property">
							<div class="accordion-box">
								<a data-target="#acc-11" href="#" class="title">Donec feugiat magna justo. Sed dignissim at metus vel commodo?</a>
								<div class="text-container" id="acc-11">
									<p>Donec feugiat magna justo. Sed dignissim at metus vel commodo. Vivamus vehicula eget urna a mattis. Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris iaculis nec. Mauris tristique massa vel metus sollicitudin, ac porta nisi tempus. Nullam id aliquam urna. Proin a lorem dignissim, sollicitudin tortor nec, accumsan lectus.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-12" href="#" class="title">Curabitur pulvinar luctus tristique?</a>
								<div class="text-container" id="acc-12">
									<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate. Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integerut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sitamet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo utodio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-13" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-13">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-14" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-14">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
							<div class="accordion-box">
								<a data-target="#acc-15" href="#" class="title">Mauris tristique massa vel metus sollicitudin?</a>
								<div class="text-container" id="acc-15">
									<p>Cras dictum. Pellosuere cubilia Curae; Aenean laciniamauris vel est.</p>
									<p>Donec ac ornare ipsum. Nullam sagittis sem dolor, id lobortis sapien iaculis at. Curabitur risus erat, blandit quis diam ut, pharetra convallis tortor. Curabitur pulvinar luctus tristique. Fusce sagittis ligula ac mattis elementum. Sed at elit ante. Integer odio nunc, ultricies gravida imperdiet ac, viverra iaculis lorem. Donec scelerisque magna mauris, id rutrum mauris.</p>
									<span class="footer">
										Was this answer helpful? 
										<a href="#"><i class="fa fa-thumbs-o-up"></i></a> 
										<a href="#"><i class="fa fa-thumbs-o-down"></i></a>
									</span>
								</div>
							</div>
						</div>
						
						
					</div>
				</div>
			</div>

		</section>

<!-- 로그인시 작동 되는 모달 -->
		<div class="modal fade login-modal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
				<div class="login-button-container">
					<a href="#" data-section="login"><i class="fa fa-user"></i></a>
					<a href="#" data-section="sign-in"><i class="fa fa-pencil-square-o"></i></a>
					<a href="#" data-section="recovery"><i class="fa fa-lock"></i></a>
					<a href="#" data-section="setting"><i class="fa fa-cog"></i></a>
				</div><!-- ./login-button-container -->
				<div class="form-container">
					<form method="post" action="#">
						<div id="login" class="box">
							<h2 class="title">Login in to your account</h2>
							<h3 class="sub-title">It is a breach of our terms and conditions to provide username and password details to unauthorised third parties. Unauthorised use may lead to suspension or termination.</h3>
							<div class="field">
								<input id="user-log" name="user-log" class="form-control" type="text" placeholder="Username or email">
								<i class="fa fa-user user"></i>
							</div>
							<div class="field">
								<input id="password-log" name="password-log" class="form-control" type="password" placeholder="Password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								<span class="remember"><input class="labelauty" type="checkbox" data-labelauty="Keep me signed in" checked /></span>
								<button type="button" class="btn btn-reverse button-form">Reset</button>
								<button type="button" class="btn btn-default button-form">Login</button>
							</div>
						</div> <!-- ./login -->
						<div id="sign-in" class="box">
							<h2 class="title">Sign In</h2>
							<h3 class="sub-title">Create a Free account and discover how you can centralize all communication around a transaction, connect with clients, market your listings, and more. </h3>
							<div class="form-inline">
								<div class="form-group">
									<input id="user-sign" name="user-sign" class="form-control input-inline margin-right" type="text" placeholder="Username">
									<i class="fa fa-user user"></i>
								</div>
								<div class="form-group">
									<input id="email-sign" class="form-control input-inline" type="text" name="email-sign" placeholder="Email">
									<i class="fa fa-envelope-o"></i>
								</div>
							</div>
							<div class="field">
								<input id="password-sign" class="form-control" type="password" name="password-sign" placeholder="Password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field">
								<input id="re-password-sign" class="form-control" type="password" name="re-password-sign" placeholder="Repeat password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								<span class="remember"><input class="labelauty" type="checkbox" data-labelauty="I have read the privacy policy." checked /></span>
								<button type="button" class="btn btn-default button-form">Sign in</button>
							</div>
						</div><!-- ./sign-in -->
						<div id="setting" class="box">
							<h2 class="title">Setting profile</h2>
							<h3 class="sub-title">Please note: You won't be able to change your name within the next 60 days. Make sure that you don't add any unusual capitalisation, punctuation, characters or random words. <a href="#">Learn more</a>.</h3>
							<div class="field">
								<input id="username-block" class="form-control" type="text" name="username-block" value="John Doe" disabled>
								<i class="fa fa-user user"></i>
							</div>
							<div class="field">
								<input id="email-setting" class="form-control" type="text" name="email-setting" value="administrator@prohome.com">
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
						<div id="recovery" class="box">
							<h2 class="title">Need a new password?</h2>
							<h3 class="sub-title">Enter your email address, and we’ll email you instructions to reset your password.</h3>
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
	 </body>

</html>