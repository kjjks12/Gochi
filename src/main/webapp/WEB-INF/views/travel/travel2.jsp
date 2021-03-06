<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>

   <jsp:include page="/WEB-INF/views/include/include_top_css.jsp"/>

	<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-152x152.png" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


  </head>
  <body class="fixed-header">

	<!-- 페이지 컨테이너 -->
	<div id="page-container">
	<!-- 머리 부분 section -->
		<section id="header-page" class="header-margin-base">
			
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				
				<!-- 헤더 텍스트 -->
				<div class="container header-text">
					<div><h1 class="title">여행 후기</h1></div>
					<div><h2 class="sub-title">여행을 떠나보아요</h2></div>
				</div>
			</div>
			
			<!-- home->이미지 아이콘 -->
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">여행 후기</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->


		<!--  진짜 내용 -->
		<section id="sidebar">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-9 col-sm-push-4 col-md-push-3">
						<div class=" blog-list post-line">
							<h2 class="title"><a href="blog-detail.html">Lorem ipsum dolor sit amet consectetur </a></h2>
							<div class="social">
								<span class="date">20<span>Apr</span></span>
								<a href="#"><i class="fa fa-heart-o"></i><span>346</span></a>
								<a href="#"><i class="fa fa-eye"></i><span>124635</span></a>
								<a href="#"><i class="fa fa-comments"></i><span>102</span></a>
							</div>
							<div class="image image-fill">
								<!-- <img src="http://placehold.it/1280x850/bbbbbb/ffffff" alt="Image Sample" /> -->
							</div>
							<h3 class="subtitle">libero vitae viverra posuere, ante.</h3>
							<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie in ipsum et tincidunt. Aliquam efficitur accumsan metus non iaculis. Quisque sed mauris lacinia, bibendum turpis et, mattis nisi. Donec vulputate leo id finibus commodo. Quisque accumsan neque in aliquet vestibulum. Proin auctor maximus molestie. Duis sodales tincidunt ipsum a accumsan. Suspendisse pulvinar libero enim, et finibus massa commodo vitae.</div>
							<input type="button" value="Read now" class="btn btn-default button-read" />
						</div><!-- /.blog-list -->
					</div>
					
					
					<!-- 왼쪽 left- menu -->
					<div class="col-sm-4 col-md-3 col-sm-pull-8 col-md-pull-9">

						<a href="faq.html" class="button-sidebar hover-effect">
							<i class="icon fa fa-life-ring"></i>
							Do you need <b>support?</b>
							<span class="cover"></span>
						</a>

						<!-- 5. Search -->
						<div class="section-title line-style">
							<h3 class="title">검색 조건</h3>
						</div>
						<div class="search-box-page">
							<div class="row">
								<div class="col-md-12 space-div">
									<input class="form-control" type="text" name="keywords" id="keywords" placeholder="Keywords" />
								</div>
								<div class="col-md-12 space-div">
									<select class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="">-- All Cities --</option>
										<option value="brixton">Brixton</option>
										<option value="london">London</option>
										<option value="middlesex">Middlesex</option>
										<option value="stratford">Stratford</option>
										<option value="wembley">Wembley</option>
										<option value="west-norwood">West Norwood</option>
										<option value="westminster">Westminster</option>
									</select>
								</div>
								<div class="col-md-12 space-div">
									<select class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="">-- Any Purpose --</option>
										<option value="rent">Rent</option>
										<option value="sell">Sell</option>                        
									</select>
								</div>
								<div class="col-md-12 space-div">
									<select class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="">-- Any Type --</option>
										<option value="apartments">Apartments</option>
										<option value="condos">Condos</option>
										<option value="duplex">Duplex</option>
										<option value="houses">Houses</option>
										<option value="offices">Offices</option>
										<option value="retail">Retail</option>
										<option value="villa">Villa</option>                        
									</select>
								</div>
								<div class="col-md-12 space-div">
									<select class="dropdown">
										<option value="">-- Any Status --</option>
										<option value="Normal">Normal</option>
										<option value="Available">Available</option>
										<option value="Not Available">Not Available</option>
										<option value="Sold">Sold</option>
										<option value="Open House">Open House</option>
									</select>
								</div>
								<div class="col-md-6 space-div">
									<label>Bathroom</label>
									<input class="form-control" type="text" name="bathroom" id="bathroom" value="3" />
								</div>
								<div class="col-md-6 space-div">
									<label>Bedroom</label>
									<input class="form-control" type="text" name="bedroom" id="bedroom" value="2" />
								</div>
								<div class="col-md-12 space-div">
									<label>Price</label>
									<div class="slider" id="price-range"></div>
									<div class="price-slider price">
										<span id="price-value-min"></span> 
										<span class="separator">$</span>
										<span id="price-value-max"></span>					
									</div>
								</div>
								<div class="col-md-12 space-div">
									<button type="button" class="btn btn-default search-button">SEARCH NOW</button>
								</div>
							</div><!-- ./row -->
						</div><!-- ./.search -->



						<!-- 9. Mortage -->
						<div class="section-title line-style">
							<h3 class="title">Mortgage Calculate</h3>
						</div>
						<div class="mortgage-calculator-box">
							<form method="post" role="form">
								<div class="form-group">
									<label>Sale price ($)</label>
									<input type="text" id="mc-price" class="form-control" placeholder="es: 200000" />
								</div>
								<div class="form-group">
									<label>Down payment (%)</label>
									<input type="text" id="mc-down" class="form-control" placeholder="es: 5" />
								</div>
								<div class="form-group">
									<label>Interest Rate (%)</label>
									<input type="text" id="mc-rate" class="form-control" placeholder="es: 6" />
								</div>
								<div class="form-group">
									<label>Term (years)</label>
									<input type="text" id="mc-term" class="form-control" placeholder="es: 20" />
								</div>
								<button id="mortgage-calc" class="btn btn-reverse" type="button">Calculate</button>
							</form>
							<div class="result-calc" id="mc-payment">$ 0,00</div>
						</div><!-- /.mortgage-calculator -->

						<!-- Agent -->
						<div class="hidden-xs">
							<div class="section-title line-style">
								<h3 class="title">Top Agent</h3>
							</div>
							<div class="agent-box-card grey">
								<div class="image-content">
									<div class="image image-fill">
										<img alt="Image Sample" src="http://placehold.it/512/bbbbbb/ffffff">
									</div>						
								</div>
								<div class="info-agent">
									<span class="name">Betty Bryant</span>
									<div class="text">embarrassing hidden in the middle of tex generators on the tend to repeat predefined chunks as necessary, making this the first true </div>
									<ul class="contact">
										<li><a class="icon" href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a class="icon" href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a class="icon" href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a class="icon" href="#"><i class="fa fa-envelope-o"></i></a></li>
										<li><a class="icon" href="agent-detail.html"><i class="fa fa-info-circle"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer id="footer-page" class="section-color">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-3">
						<span class="title with-icon">
							<img class="logo-footer" src="${pageContext.request.contextPath}/resources/images/mini-logo-x1.png" alt="logo" />
							Shortly About Us
						</span>
						<span class="text">
							There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration inble. If you are of going.
						</span>
					</div>
					<div class="col-sm-6 col-md-3">
						<span class="title">CALL US NOW</span>
						<span class="phone"><i class="fa fa-phone"></i> (011)-8800-555</span>
						<span class="address">
						</span>
						339 Broadway Ave, <strong>New York</strong><br />
						<i class="fa fa-map-marker"></i> NY 10013, USA
					</div>
					<div class="hidden-xs hidden-sm col-md-3">
						<span class="title">Extras</span>
						<ul class="link-extra">
							<li><a href="#">ProHome Mobile Apps</a></li>
							<li><a href="#">Market Guide</a></li>
							<li><a href="#">ProHome&reg; Magazine</a></li>
							<li><a href="#">More Resources</a></li>
						</ul>
					</div>
					<div class="col-sm-6 col-md-3">
						<span class="title">Our Newsletter</span>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu condimentum neque.
						<div class="newsletter-box">
						  <input type="text" class="form-control" placeholder="Your email">
						  <button class="btn btn-default send" type="button"><i class="fa fa-envelope-o"></i></button>
						</div><!-- /input-group -->
					</div>
				</div>
			</div>
			<div class="credits">
				<div class="container">
					<div class="row">
						<div class="hidden-xs col-md-6 credits-text">Copyright 2015 <b>ProHome</b> | All Rights Reserved | Designed By AndyLab</div>
						<div class="col-md-6">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>

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
							<h3 class="sub-title">Enter your email address, and weâll email you instructions to reset your password.</h3>
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

		<!-- buttom css -->
  <jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp"/>
  </body>
</html>