<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">                            <!-- Bootstrap -->
    <link rel="stylesheet" href="css/vendor/font-awesom/css/font-awesome.min.css">  <!-- Font Awesome -->
	<link rel="stylesheet" href="css/vendor/mmenu/jquery.mmenu.all.css" />          <!-- Menu Responsive -->
	<link rel="stylesheet" href="css/vendor/animate-wow/animate.css">               <!-- Animation WOW -->

	<link rel="stylesheet" href="css/vendor/labelauty/labelauty.css">               <!-- Checkbox form Style -->
	<link rel="stylesheet" href="css/menu.css">                                     <!-- Include Menu stylesheet -->
	<link rel="stylesheet" href="css/custom.css">                                   <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/media-query.css">                              <!-- Media Query -->

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

	<script src="script/modernizr.min.js"></script> <!-- Modernizr -->

  </head>
  <body class="fixed-header">
	<div id="page-container">
		<header class="menu-base" id="header-container-box">
			<div class="info"><!-- info -->
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<a href="#mobile-menu" id="mobile-menu-button" class="visible-xs"><i class="fa fa-bars"></i></a>
							<a href="call:1-800-555-1234" class="hidden-xs"><i class="icon fa fa-phone"></i> (011)-8800-555</a>
							<a href="#" data-section="modal-contact" data-target="#modal-contact" data-toggle="modal" class="hidden-xs"><i class="icon fa fa-envelope-o"></i> Info</a>
						</div>
						<div id="login-pan" class="col-md-6 hidden-xs">
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i> Sign up</a>
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="login"><i class="icon fa fa-user user"></i> Login</a>
						</div>
					</div>
				</div>			
			</div><!-- /.info -->
			<div class="logo hidden-xs">
				<a href="#"><img id="logo-header" src="images/logo.png" alt="Logo" /></a>
			</div><!-- /.logo -->
			<div class="menu-navbar">
				<div class="container" id="menu-nav">
					<nav id="navigation">
						<ul>
							<li class="has_submenu">
								<a href="#">Home</a>
								<ul>
									<li><a href="index-property-slide.html">carousel Property</a></li>
									<li class="has_submenu">
										<a href="#">carousel</a>
										<ul>
											<li><a href="index-carousel.html">Menu Base</a></li>
											<li><a href="index-carousel-v2.html">Menu V2</a></li>
											<li><a href="index-carousel-v3.html">Menu V3</a></li>
											<li><a href="index-carousel-v4.html">Menu V4</a></li>
											<li><a href="index-carousel-v5.html">Menu V5 + FullHeight</a></li>
										</ul>
									</li>
									<li class="has_submenu">
										<a href="#">Interactive Map</a>
										<ul>
											<li><a href="index-map.html">Menu Base</a></li>
											<li><a href="index-map-v2.html">Menu V2</a></li>
											<li><a href="index-map-v3.html">Menu V3</a></li>
											<li><a href="index-map-v4.html">Menu V4</a></li>
											<li><a href="index-map-v5.html">Menu V5 + FullHeight</a></li>
										</ul>
									</li>
									<li class="has_submenu">
										<a href="#">carousel + Search</a>
										<ul>
											<li><a href="index-search.html">Menu Base</a></li>
											<li><a href="index-search-v2.html">Menu V2</a></li>
											<li><a href="index-search-v3.html">Menu V3</a></li>
											<li><a href="index-search-v4.html">Menu V4</a></li>
											<li><a href="index-search-v5.html">Menu V5 + FullHeight</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="has_submenu">
								<a href="#">Properties</a>
								<ul>
									<li><a href="new-property.html">Create new Property</a></li>
									<li><a href="property-detail.html">Property Detail</a></li>
									<li class="has_submenu">
										<a href="#">Masonry Listing</a>
										<ul>
											<li><a href="properties-listing-2c.html">Listing 2 column</a></li>
											<li><a href="properties-listing.html">Listing 3 Column</a></li>
										</ul>
									</li>
									<li class="has_submenu">
										<a href="properties-listing-grid.html">Grid Listing</a>
										<ul>
											<li><a href="properties-listing-grid-rc.html">Listing Right column</a></li>
											<li><a href="properties-listing-grid-lc.html">Listing Left Column</a></li>
										</ul>
									</li>
									<li class="has_submenu">
										<a href="#">Lines Listing</a>
										<ul>
											<li><a href="properties-listing-lines-rc.html">Listing Right column</a></li>
											<li><a href="properties-listing-lines-lc.html">Listing Left Column</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="has_submenu"><a href="#">Pages</a>
								<ul>
									<li class="has_submenu">
										<a href="#">Gallery</a>
										<ul>
											<li><a href="gallery.html">Isotope</a></li>
											<li><a href="gallery-v2.html">Masonry</a></li>
											<li><a href="gallery-v3.html">Masonry + Isotope</a></li>
										</ul>
									</li>
									<li class="has_submenu">
										<a href="#">Contact</a>
										<ul>
											<li><a href="contact.html">Contact V1</a></li>
											<li><a href="contact-v2.html">Contact V2</a></li>
											<li><a href="contact-v3.html">Contact V3</a></li>
										</ul>
									</li>
									<li><a href="faq.html">FAQ</a></li>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="shortcodes.html">Shortcodes</a></li>
									<li class="has_submenu">
										<a href="#">Timeline</a>
										<ul>
											<li><a href="timeline.html">Timeline</a></li>
											<li><a href="timeline-v2.html">Parallax Timeline</a></li>
										</ul>
									</li>
									<li class="has_submenu">
										<a href="#">Pricing Plans</a>
										<ul>
											<li><a href="pricing.html">Pricing</a></li>
											<li><a href="pricing-v2.html">Pricing V2</a></li>
										</ul>
									</li>
									<li><a href="terms-conditions.html">Terms &amp; Conditions</a></li>
									<li><a href="comingsoon.html">Coming Soon</a></li>
									<li class="has_submenu">
										<a href="#">Error Pages</a>
										<ul>
											<li><a href="401.html">401</a></li>
											<li><a href="403.html">403</a></li>
											<li><a href="404.html">404</a></li>
											<li><a href="500.html">500</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="has_submenu">
								<a href="#">Agents</a>
								<ul>
									<li><a href="create-agency.html">Create Agency</a></li>
									<li class="has_submenu">
										<a href="#">Agents Listing</a>
										<ul>
											<li><a href="agents-listing.html">Agents Listing</a></li>
											<li><a href="agents-listing-v2.html">Agents Listing V2</a></li>
											<li><a href="agents-listing-v3.html">Agents Listing V3</a></li>
										</ul>
									</li>
									<li><a href="agent-detail.html">Agent Detail</a></li>
									<li><a href="agencies-listing.html">Agencies Listing</a></li>
									<li><a href="agency-detail.html">Agency Detail</a></li>
								</ul>
							</li>
							<li class="has_submenu">
								<a href="#">User Pages</a>
								<ul>
									<li><a href="invoice-print.html">Invoice</a></li>
									<li><a href="profile.html">Profile</a></li>
									<li><a href="my-properties.html">My Properties</a></li>
									<li><a href="bookmarked.html">Bookmarked Properties</a></li>
									<li><a href="create-account.html">Create Account</a></li>
									<li><a href="sign-in.html">Sign In</a></li>
									<li><a href="login.html">Login page</a></li>
								</ul>
							</li>
							<li class="current-menu-item has_submenu"><a href="#">About</a>
								<ul>
									<li><a href="about.html">About Version 1</a></li>
									<li><a href="about-v2.html">About Version 2</a></li>
								</ul>
							</li>
							<li class="has_submenu"><a href="#">Blog</a>
								<ul>
									<li><a href="blog.html">blog V1</a></li>
									<li><a href="blog-v2.html">blog V2</a></li>
									<li><a href="blog-v3.html">blog V3</a></li>
									<li><a href="blog-detail.html">blog Details</a></li>
									<li><a href="blog-detail-full.html">blog Details V2</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- /.menu -->
			<a href="#" class="fixed-button top"><i class="fa fa-chevron-up"></i></a>
			<a href="#" class="hidden-xs fixed-button email" data-toggle="modal" data-target="#modal-contact" data-section="modal-contact"><i class="fa fa-envelope-o"></i></a>
		</header>
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Create Agency</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor sit justocing</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Agency</a></li>
						<li class="active">Create Agency</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="create-agency">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-2" id="edit-image">
						<!-- avatar -->
						<a href="#" class="avatar image-fill">
							<img src="images/default-user-image.png" alt="Image Sample" />
						</a>
					</div>
					<div class="col-sm-9 col-md-6">
						<div class="section-title line-style no-margin">
							<h3 class="title">General Info</h3>
						</div>
						<ul class="profile create">
							<li>
								<span>Agency Name</span>
								<input type="text" id="username" name="username" class="form-control">
							</li>
							<li>
								<span>Description</span> 
								<textarea class="form-control" id="about" name="about"></textarea>
							</li>
						</ul>

						<div class="section-title line-style">
							<h3 class="title">Position info</h3>
						</div>
						<ul class="profile create">
							<li>
								<span>Address Line 1</span> 
								<input type="email" id="email-user" name="email-user" class="form-control">
							</li>
							<li>
								<span>Address Line 2</span>
								<input type="text" id="name" name="name" class="form-control">
							</li>
							<li>
								<span>City</span>
								<input type="text" id="city" name="city" class="form-control">
							</li>
							<li>
								<span>Zip</span>
								<input type="text" id="zip" name="zip" class="form-control">
							</li>
						</ul>

						<div class="section-title line-style">
							<h3 class="title">Select a Package</h3>
						</div>

						<div id="pricing-box" class="row">
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="pricing hover-effect no-select">
									<span class="header">
										<span class="title">FREE</span>
										<span class="sub-title">Fusce aliquet</span>
										<span class="cover"></span>
									</span>
									<div class="price">$ 0,00</div>
									<button class="btn btn-default select-button" type="button"><i class="icon fa fa-cart-arrow-down"></i></button>
								</div><!-- /.pricing -->
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="pricing hover-effect no-select">
									<span class="header">
										<span class="title">Basic</span>
										<span class="sub-title">Fusce aliquet</span>
										<span class="cover"></span>
									</span>
									<div class="price">$ 99,99</div>
									<button class="btn btn-default select-button" type="button"><i class="icon fa fa-cart-arrow-down"></i></button>
								</div><!-- /.pricing -->
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="pricing hover-effect select">
									<span class="header">
										<span class="title">Classic</span>
										<span class="sub-title">Fusce lobortis</span>
										<span class="cover"></span>
									</span>
									<div class="price">$ 209,99</div>
									<button class="btn btn-default select-button" type="button"><i class="icon fa fa-check"></i></button>
								</div><!-- /.pricing -->
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="pricing hover-effect no-select">
									<span class="header">
										<span class="title">Premium</span>
										<span class="sub-title">Fusce aliquet</span>
										<span class="cover"></span>
									</span>
									<div class="price">$ 399,99</div>
									<button class="btn btn-default select-button" type="button"><i class="icon fa fa-cart-arrow-down"></i></button>
								</div><!-- /.pricing -->
							</div>
						</div>

						<div class="section-title line-style">
							<h3 class="title">Term & Condition</h3>
						</div>
						<div class="terms"><strong>Lorem ipsum dolor sit amet</strong>, consectetur adipiscing elit. Cras non turpis ut nunc malesuada sollicitudin et eu ipsum. Quisque in ultrices ante. Vivamus molestie enim vitae tortor auctor ultricies. Mauris fringilla rutrum neque, sodales cursus arcu. Duis ac lectus rutrum, condimentum elit ut, suscipit tortor. Nulla elementum, elit sed tincidunt rutrum, orci lorem dapibus sem, eget aliquam enim nisl porttitor quam. Ut eu porta velit, a iaculis mi.
						<br /><br />
						Donec quis vestibulum lectus, id scelerisque ipsum. Sed tristique facilisis ante sit amet eleifend. Suspendisse luctus aliquet vehicula. Quisque venenatis in neque vitae imperdiet. Vivamus interdum scelerisque erat ut vehicula. Donec malesuada hendrerit tempor. Fusce eros felis, mattis eu pharetra quis, iaculis at diam. Praesent quam tortor, pellentesque a mi a, elementum commodo nisl. In dapibus nisi eu turpis porttitor scelerisque. Etiam mattis consequat lectus malesuada eleifend.
						<br /><br />
						Phasellus tincidunt fermentum elit, quis vulputate nulla placerat non. Praesent tristique purus sapien, ac efficitur urna porttitor et. Nam eu justo mi. Sed sit amet eros pretium nunc dignissim mattis ut id erat. Vivamus bibendum nulla sed mauris tincidunt porttitor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam ut iaculis erat. Sed ultricies augue augue, a scelerisque massa efficitur a.
						<br /><br />
						Nullam a lectus iaculis, luctus leo eget, ultricies purus. Ut ipsum felis, semper ut ultrices et, sollicitudin id lorem. Proin sed ligula eros. Nulla eu erat quis lectus posuere pellentesque non eget ex. Aliquam eget fringilla odio. Curabitur vitae semper est. Phasellus odio nisi, ultricies sed lacinia non, pulvinar nec neque. Pellentesque eget mi ipsum. In sodales dictum lacus ut sagittis. Sed magna nunc, condimentum ut mauris eu, laoreet mollis mi. Integer eu elit id quam ultrices sagittis vel sed neque. 
						<br /><br />
						Sed ultrices lectus dui, id consectetur felis congue in. Cras imperdiet nisl et aliquet efficitur. Curabitur venenatis et metus ac faucibus. Nunc sit amet consequat ex, porttitor porta orci. Mauris ante ligula, consectetur ac rhoncus vitae, tristique ac augue. Donec in diam non diam euismod luctus. Maecenas ut est sit amet tellus rutrum volutpat. Vivamus pellentesque odio non mi rutrum, eu placerat urna congue. Ut arcu nibh, consequat eu cursus et, sodales vitae felis. Nam molestie a risus in volutpat. In interdum ac nisi non sagittis. Duis volutpat nunc sapien, nec lacinia nibh semper et. Mauris tincidunt ante neque, eget placerat arcu congue dapibus. Suspendisse potenti. Donec vitae nulla et elit auctor consequat a sit amet diam. Morbi at tellus nec arcu gravida laoreet blandit sit amet neque.</div>
					</div>

					<div class="col-sm-12 col-md-4">
						<div class="section-title line-style no-margin">
							<h3 class="title">Contact Information</h3>
						</div>
						<ul class="profile create">
							<li>
								<span>Phone</span>
								<input type="text" id="Phone" name="Phone" class="form-control">
							</li>
							<li>
								<span>Web site</span>
								<input type="text" id="site" name="site" class="form-control">
							</li>
							<li>
								<span>Email</span>
								<input type="text" id="email" name="email" class="form-control">
							</li>
						</ul>
						<div class="section-title line-style">
							<h3 class="title">Position on Map</h3>
						</div>
						<div class="map-box">
							<div id="map-canvas" style="height: 500px"></div>
							<span><i class="fa fa-map-marker"></i> Drag the pin to the location on the map</span>
						</div>
					</div><!-- /.col-md-4 -->
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-8 text-right">
						<button class="btn btn-default signin-button" type="button"><i class="fa fa-sign-in"></i> Create Agency</button>
					</div>
				</div>
			</div>
		</section>

		<footer id="footer-page" class="section-color">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-3">
						<span class="title with-icon">
							<img class="logo-footer" src="images/mini-logo-x1.png" alt="logo" />
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

	<script	src="script/jquery.min.js"></script>		<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->
	<script	src="script/jquery-ui.min.js"></script>		<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->
	<script	src="script/bootstrap.min.js"></script>		<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script	src="script/vendor/mmenu/mmenu.min.all.js"></script>					<!-- Menu Responsive -->
	<script	src="script/vendor/animation-wow/wow.min.js"></script>					<!-- Animate Script	-->
	<script src="script/vendor/labelauty/labelauty.min.js"></script>					<!-- Checkbox Script -->
	<script	src="script/vendor/parallax/parallax.min.js"></script>						<!-- Parallax Script -->
	<script	src="script/vendor/images-fill/imagesloaded.min.js"></script>			<!-- Loaded	image with ImageFill -->
	<script src="script/vendor/images-fill/imagefill.min.js"></script>					<!-- ImageFill Script -->
	<script	src="script/vendor/easydropdown/jquery.easydropdown.min.js"></script>	<!-- Select	list Script	-->
	<script	src="http://maps.google.com/maps/api/js?sensor=false"></script>			<!-- Google Map -->

	<script	src="script/custom.js"></script>										<!-- Custom	Script -->

	<script>

		"use strict";

		// MAPS GOOGLE
		function initialize() {
		  var mapOptions = {
			zoom: 18,
			scrollwheel: false,
			center: new google.maps.LatLng(-33.890542, 151.274856)
		  }
		  var map = new google.maps.Map(document.getElementById('map-canvas'),
										mapOptions);

		  var image = 'images/maps/pin-drag.png';
		  var myLatLng = new google.maps.LatLng(-33.890542, 151.274856);
		  var Marker = new google.maps.Marker({
			  position: myLatLng,
			  draggable: true,
			  map: map,
			  icon: image
		  });
		}
		google.maps.event.addDomListener(window, 'load', initialize);

	</script>

  </body>
</html>