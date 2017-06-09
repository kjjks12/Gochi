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
	<link rel="stylesheet" href="css/vendor/nouislider/nouislider.min.css">         <!-- Slider Price -->
    <link rel="stylesheet" href="css/vendor/easydropdown/easydropdown.css">         <!-- Select form Style -->
    <link rel="stylesheet" href="css/ui-spinner.css">                               <!-- Spinner -->

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

		<section id="home-slide" class="header-margin-base">
			<div class="home-slider" data-navigation=".home-slider-nav">
				<div class="crsl-wrap">
					<figure class="crsl-item" data-image="http://placehold.it/1920x1080/bbbbbb/ffffff">
						<div class="slider-box property-carousel-box">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<h1 class="title">403 Bloomfield St</h1>
											<h2 class="address">
												<i class="fa fa-map-marker"></i>
												Hoboken, NJ 07030, USA
											</h2>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-12">
											<h3 class="price"><span>$</span> 2.560.200,00</h3>
										</div>
										<div class="col-xs-12 col-sm-4 visible-xs visible-sm text-right">
											<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
										</div>
									</div>
								</div>
							</div>
							<div class="container hidden-xs hidden-sm">
								<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
							</div>
						</div>
					</figure>
					<figure class="crsl-item" data-image="http://placehold.it/1920x1080/bbbbbb/ffffff">
						<div class="slider-box property-carousel-box">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<h1 class="title">477 Jersey Ave</h1>
											<h2 class="address">
												<i class="fa fa-map-marker"></i>
												New York, NY 10003, USA
											</h2>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-12">
											<h3 class="price"><span>$</span> 980.000,00</h3>
										</div>
										<div class="col-xs-12 col-sm-4 visible-xs visible-sm text-right">
											<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
										</div>
									</div>
								</div>
							</div>
							<div class="container hidden-xs hidden-sm">
								<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
							</div>
						</div>
					</figure>
					<figure class="crsl-item" data-image="http://placehold.it/1920x1080/bbbbbb/ffffff">
						<div class="slider-box property-carousel-box">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<h1 class="title">59 Paterson Ave</h1>
											<h2 class="address">
												<i class="fa fa-map-marker"></i>
												Jersey City, NJ 07302, USA
											</h2>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-12">
											<h3 class="price"><span>$</span> 663.500,00</h3>
										</div>
										<div class="col-xs-12 col-sm-4 visible-xs visible-sm text-right">
											<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
										</div>
									</div>
								</div>
							</div>
							<div class="container hidden-xs hidden-sm">
								<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
							</div>
						</div>
					</figure>
					<figure class="crsl-item" data-image="http://placehold.it/1920x1080/bbbbbb/ffffff">
						<div class="slider-box property-carousel-box">
							<div class="content">
								<div class="container">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<h1 class="title">560 Marshall Dr</h1>
											<h2 class="address">
												<i class="fa fa-map-marker"></i>
												New York, NY 10012, USA
											</h2>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-12">
											<h3 class="price"><span>$</span> 456.000,00</h3>
										</div>
										<div class="col-xs-12 col-sm-4 visible-xs visible-sm text-right">
											<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
										</div>
									</div>
								</div>
							</div>
							<div class="container hidden-xs hidden-sm">
								<a href="property-detail.html" class="btn btn-default button-read"><i class="fa fa-search"></i> Read All</a>
							</div>
						</div>
					</figure>
				</div>
				<p class="home-slider-nav previus">
					<a href="#" class="previous">previous</a>
				</p>
				<p class="home-slider-nav next">
					<a href="#" class="next">next</a>
				</p>
			</div>
		</section>

		<section id="recent-list">
			<div class="section-detail">
				<h1>
				  <span>Prohome </span>
				  <span id="spinner-show">
					  <em class="current">Real Estate</em>
					  <span class="next"><span></span></span>
				  </span>
				  <span>Featured Homes</span>
				</h1>
				<ul id="spinner">
					 <li>Clients</li>
					 <li>Stellar Service</li>
					 <li>Simple Question</li>
					 <li>Home Valutation</li>
					 <li>Rentals</li>
				</ul>
				<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.</h2>		
			</div>
			<div class="container">
				<div class="list-box-title">
					<span><i class="icon fa fa-plus-square"></i>Recent Listed</span>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">59 Paterson Ave</h3>
							</a><!-- /.hover-effect -->
							<span class="price">$ 536.500,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> Hoboken, NJ 07030</span>
							<span class="description">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>Sale</span></dd>
								<dt class="area">Area:</dt><dd><span>860m2</span></dd>
								<dt class="bed">Beds:</dt><dd><span>3</span></dd>
								<dt class="bath">Baths:</dt><dd><span>2</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">560 Marshall Dr</h3>
							</a><!-- /.hover-effect -->
							<span class="price">$ 709.000,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> Hoboken, NJ 07056</span>
							<span class="description">Lorem Ipsum available, but the majority have suffered There are many variations of passages by injected humour.</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>Sale</span></dd>
								<dt class="area">Area:</dt><dd><span>420m2</span></dd>
								<dt class="bed">Beds:</dt><dd><span>4</span></dd>
								<dt class="bath">Baths:</dt><dd><span>1</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">477 Jersey Ave</h3>
							</a><!-- /.hover-effect -->
							<span class="price">$ 663.500,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> Jersey City, NJ 07302</span>
							<span class="description">Nulla condimentum neque nulla. Sed at ornare lacus, id euismod felis. Aliquam et vulputate tortor. Nunc gravida nunc sed mi bibendum accumsan.</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>Sale</span></dd>
								<dt class="area">Area:</dt><dd><span>333m2</span></dd>
								<dt class="bed">Beds:</dt><dd><span>6</span></dd>
								<dt class="bath">Baths:</dt><dd><span>2</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
				</div>
				<div class="list-box-title">
					<span><i class="icon fa fa-plus-square"></i>Featured Properties</span>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">403 Bloomfield St</h3>
							</a><!-- /.hover-effect -->
							<span class="price">$ 772.000,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> Hoboken, NJ 07030</span>
							<span class="description">Nunc gravida nunc sed mi bibendum accumsan, condimentum neque nulla. Sed at ornare lacus. Aliquam et vulputate tortor id euismod felis.</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>Sale</span></dd>
								<dt class="area">Area:</dt><dd><span>165m2</span></dd>
								<dt class="bed">Beds:</dt><dd><span>2</span></dd>
								<dt class="bath">Baths:</dt><dd><span>1</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">339 Broadway</h3>
							</a><!-- /.hover-effect -->
							<span class="price">$ 988.000,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> New York, NY 10013</span>
							<span class="description">Proin egestas vitae mi eget commodo. Proin purus dignissim porttitous vel accumsan odio. Pulvinarut id . Proin dapibus mollis purus ac luctus.</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>Sale</span></dd>
								<dt class="area">Area:</dt><dd><span>369m2</span></dd>
								<dt class="bed">Beds:</dt><dd><span>4</span></dd>
								<dt class="bath">Baths:</dt><dd><span>2</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">435 Newark Ave</h3>
							</a><!-- /.hover-effect -->
							<span class="price">$ 631.000,00</span>
							<span class="address"><i class="fa fa-map-marker"></i> Jersey City, NJ 07302</span>
							<span class="description">Mut the majority have suffered alteration in. There are many variations of passages of Lorem Ipsum available, some form, by injected humour.</span>
							<dl class="detail">
								<dt class="status">Status:</dt><dd><span>Sale</span></dd>
								<dt class="area">Area:</dt><dd><span>658m2</span></dd>
								<dt class="bed">Beds:</dt><dd><span>4</span></dd>
								<dt class="bath">Baths:</dt><dd><span>5</span></dd>
							</dl><!-- /.detail -->
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
				</div>
			</div>
		</section>

		<section id="service" class="section-color">
			<div class="section-detail">
				<h1>Services</h1>
				<h2>Pellentesque vitae dolor eu lacus lacinia viverra in sed urna. Donec vitae ipsum eu nibh convallis rutrum.</h2>		
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="content-box">
							<i class="icon-box fa fa-street-view"></i>
							<h3>
								<i class="icon-quote fa fa-quote-left"></i>
								Donec dolor
								<i class="icon-quote fa fa-quote-right"></i>
							</h3>
							<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.</h4>					
						</div>
					</div>
					<div class="col-md-4">
						<div class="content-box">
							<i class="icon-box fa fa-bug"></i>
							<h3>
								<i class="icon-quote fa fa-quote-left"></i>
								Elementum dignissim
								<i class="icon-quote fa fa-quote-right"></i>
							</h3>
							<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.</h4>					
						</div>
					</div>
					<div class="col-md-4">
						<div class="content-box">
							<i class="icon-box fa fa-key"></i>
							<h3>
								<i class="icon-quote fa fa-quote-left"></i>
								Dolor sit amet
								<i class="icon-quote fa fa-quote-right"></i>
							</h3>
							<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.</h4>					
						</div>
					</div>
				</div>
			</div>
		</section>


		<section id="recent-listed" data-parallax-speed="-0.3" class="hidden-xs">
			<div class="section-detail">
				<h1>Recent Listed</h1>
				<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.</h2>		
			</div>
			<div class="margin-box">
				<div class="property-slide" data-navigation="#property-slide-nav">
					<div class="crsl-wrap">
						<figure class="crsl-item">
							<div class="box-property-slide">
								<div class="left-block">
									<span class="title">59 Paterson Ave</span>
									<span class="description">Mauris ullamcorper magna a dui viverra pulvinar. Phasellus gravida risus eros, eget porta risus auctor at. Vivamus elementum odio nunc, non scelerisque nisi pulvinar vitae. Quisque in sagittis nulla. Aenean tristique purus ut ipsum suscipit laoreet.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="area">Area:</dt><dd><span>560m2</span></dd>
										<dt class="bed">Beds:</dt><dd><span>5</span></dd>
										<dt class="bath">Baths:</dt><dd><span>7</span></dd>
									</dl>
									<span class="price">$ 1.890.000,00</span>
									<a href="property-detail.html" class="btn btn-reverse button"><i class="fa fa-search"></i> View</a>
								</div>
								<a href="property-detail.html" class="right-block hover-effect image-fill">
									<img alt="img sample" src="http://placehold.it/1240x745/bbbbbb/ffffff">
									<span class="cover"></span>
									<span class="cover-title">59 Paterson Ave</span>
								</a>
							</div>
						</figure>
						<figure class="crsl-item">
							<div class="box-property-slide">
								<div class="left-block">
									<span class="title">560 Marshall Dr</span>
									<span class="description">Proin fermentum, erat tempus ullamcorper vehicula, lacus quam tempor nisi, gravida rutrum arcu justo sed quam. Sed sollicitudin, ligula et rhoncus interdum, odio ex maximus lectus, laoreet mollis velit lectus quis nisl. Sed erat lacus.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="area">Area:</dt><dd><span>330m2</span></dd>
										<dt class="bed">Beds:</dt><dd><span>9</span></dd>
										<dt class="bath">Baths:</dt><dd><span>2</span></dd>
									</dl>
									<span class="price">$ 1.268.500,00</span>
									<a href="property-detail.html" class="btn btn-reverse button"><i class="fa fa-search"></i> View</a>
								</div>
								<a href="property-detail.html" class="right-block hover-effect image-fill">
									<img alt="img sample" src="http://placehold.it/1240x745/bbbbbb/ffffff">
									<span class="cover"></span>
									<span class="cover-title">560 Marshall Dr</span>
								</a>
							</div>
						</figure>
						<figure class="crsl-item">
							<div class="box-property-slide">
								<div class="left-block">
									<span class="title">477 Jersey Ave</span>
									<span class="description">Morbi molestie mi eu metus gravida, eu sollicitudin neque fermentum. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum tellus orci, dictum eget fringilla at, mollis nec lorem.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="area">Area:</dt><dd><span>210m2</span></dd>
										<dt class="bed">Beds:</dt><dd><span>6</span></dd>
										<dt class="bath">Baths:</dt><dd><span>1</span></dd>
									</dl>
									<span class="price">$ 758.200,00</span>
									<a href="property-detail.html" class="btn btn-reverse button"><i class="fa fa-search"></i> View</a>
								</div>
								<a href="property-detail.html" class="right-block hover-effect image-fill">
									<img alt="img sample" src="http://placehold.it/1240x745/bbbbbb/ffffff">
									<span class="cover"></span>
									<span class="cover-title">477 Jersey Ave</span>
								</a>
							</div>
						</figure>
						<figure class="crsl-item">
							<div class="box-property-slide">
								<div class="left-block">
									<span class="title">403 Bloomfield St</span>
									<span class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate, nulla ac suscipit blandit, risus nisl vulputate purus, at pharetra lacus odio ut est. Donec nisi est, rutrum in sapien eu, tristique dapibus orci. Duis sagittis faucibus quam ac.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="area">Area:</dt><dd><span>260m2</span></dd>
										<dt class="bed">Beds:</dt><dd><span>5</span></dd>
										<dt class="bath">Baths:</dt><dd><span>2</span></dd>
									</dl>
									<span class="price">$ 926.949,99</span>
									<a href="property-detail.html" class="btn btn-reverse button"><i class="fa fa-search"></i> View</a>
								</div>
								<a href="property-detail.html" class="right-block hover-effect image-fill">
									<img alt="img sample" src="http://placehold.it/1240x745/bbbbbb/ffffff">
									<span class="cover"></span>
									<span class="cover-title">403 Bloomfield St</span>
								</a>
							</div>
						</figure>
					</div>
				</div><!-- ./property-slide -->	
				<div id="property-slide-nav" class="nav-box">
					<a href="#" class="previous"></a>
					<a href="#" class="next"></a>
				</div>	
			</div><!-- ./margin-box -->
		</section>

		<section id="recent-news">
			<div class="section-detail">
				<h1>Recent News</h1>
				<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.</h2>		
			</div>
			<div class="container" id="blog">
				<div class="row">
					<div class="col-md-4">
						<div class="blog-list masonry-post">
							<h2 class="title"><a href="blog-detail.html">Praesent moleti ipsum</a></h2>
							<div class="image">
								<img class="img-responsive" alt="Image Sample" src="http://placehold.it/1280x850/bbbbbb/ffffff">
								<div class="social">
									<span class="date">2<span>Apr</span></span>
									<a href="#"><i class="fa fa-heart-o"></i><span>654</span></a>
									<a href="#"><i class="fa fa-eye"></i><span>92435</span></a>
									<a href="#"><i class="fa fa-comments"></i><span>69</span></a>
								</div>
							</div>
							<div class="text">
								<h3 class="subtitle">Internet tend to repeat prunks.</h3>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie in ippulvinar libero enim, et finibus massa commodo vitae.
							</div>
							<a href="blog-detail.html" class="btn btn-default button-read">Read now</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-list masonry-post">
							<h2 class="title"><a href="blog-detail.html">Dolor sit amet</a></h2>
							<div class="image">
								<img class="img-responsive" alt="Image Sample" src="http://placehold.it/1280x850/bbbbbb/ffffff">
								<div class="social">
									<span class="date">18<span>Mar</span></span>
									<a href="#"><i class="fa fa-heart-o"></i><span>654</span></a>
									<a href="#"><i class="fa fa-eye"></i><span>92435</span></a>
									<a href="#"><i class="fa fa-comments"></i><span>69</span></a>
								</div>
							</div>
							<div class="text">
								<h3 class="subtitle">Internet tend to redefined chunks.</h3>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie in ippulvinar libero enim, et finibus massa commodo vitae.
							</div>
							<a href="blog-detail-full.html" class="btn btn-default button-read">Read now</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-list masonry-post">
							<h2 class="title"><a href="blog-detail.html">Pepeat predefined chunks</a></h2>
							<div class="image">
								<img class="img-responsive" alt="Image Sample" src="http://placehold.it/1280x850/bbbbbb/ffffff">
								<div class="social">
									<span class="date">15<span>Mar</span></span>
									<a href="#"><i class="fa fa-heart-o"></i><span>654</span></a>
									<a href="#"><i class="fa fa-eye"></i><span>92435</span></a>
									<a href="#"><i class="fa fa-comments"></i><span>69</span></a>
								</div>
							</div>
							<div class="text">
								<h3 class="subtitle">Interno repeat predefined chunks.</h3>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie in ippulvinar libero enim, et finibus massa commodo vitae.
							</div>
							<a href="blog-detail.html" class="btn btn-default button-read">Read now</a>
						</div>
					</div>
				</div>
			</div>
		</section>



		<section id="submit-property" data-parallax-speed="0">
			<span class="overlay"></span>
			<div class="container">
				<div class="section-detail">
					<h1>Submit Property</h1>
					<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor, sagittis sed elementum dignissim, lobortis.<br />Dolor nunc vule putateulr ips dol consec.Donec semp ertet.</h2>	
				</div>
				<div class="row text-center">
					<a href="new-property.html" class="btn btn-reverse button-large">Submit Property</a>
				</div>
			</div>
		</section>


		<section id="testimonial">
			<div class="section-detail hidden-xs">
				<h1>Client Testimonials</h1>
			</div>
			<div class="container hidden-xs">
				<div class="row">
					<div class="col-md-12">
						<div class="row feedback-margin">
							<div class="feedback-container" data-navigation="#feedback-nav">
								<div class="crsl-wrap">
									<figure class="crsl-item">
										<div class="feeddback-user">
											<div class="info-user">
												<span class="avatar">
													<img src="http://placehold.it/512/bbbbbb/ffffff" alt="Image Sample" class="img-responsive" />
												</span>
												<b>Robert Phelps</b>
												<span>broadway (NY)</span>
												<span>Age 26 Year</span>
											</div>
											<div class="message">
												<div class="content">
													<h3 class="title">
														<i class="icon-quote fa fa-quote-left"></i>
														Iaculis pharetra velit torquent pellentesque euismod
														<i class="icon-quote fa fa-quote-right"></i>
													</h3>
													<span class="rating">
														<span>Rating:</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</span>
													<p class="text-container">
														Aenean nisique purus vulputate suspendisse felis aliquet eu commodo aliquam ut ultricies facilisi eu metus cum<br /><br />Facilisi aenean in penatiblus convallis montes taciti cras sollicitudin semper iniam vestibulum orci convallis malesuada orci pellentesque nascetur massa amet parturient
													</p>							
												</div>
											</div>
										</div>
									</figure>
									<figure class="crsl-item">
										<div class="feeddback-user">
											<div class="info-user">
												<span class="avatar">
													<img src="http://placehold.it/512/bbbbbb/ffffff" alt="Image Sample" class="img-responsive" />
												</span>
												<b>Shawn Mcdonald</b>
												<span>Boston</span>
												<span>Age 32 Year</span>
											</div>
											<div class="message">
												<div class="content">
													<h3 class="title">
														<i class="icon-quote fa fa-quote-left"></i>
														Iaculis pharetra velit torquent pellentesque euismod
														<i class="icon-quote fa fa-quote-right"></i>
													</h3>
													<span class="rating">
														<span>Rating:</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</span>
													<p class="text-container">
														Aenean nisique purus vulputate suspendisse felis aliquet eu commodo aliquam ut ultricies facilisi eu metus cum<br /><br />Facilisi aenean in penatiblus convallis montes taciti cras sollicitudin semper iniam vestibulum orci convallis malesuada orci pellentesque nascetur massa amet parturient
													</p>								
												</div>
											</div>
										</div>
									</figure>
									<figure class="crsl-item">
										<div class="feeddback-user">
											<div class="info-user">
												<span class="avatar">
													<img src="http://placehold.it/512/bbbbbb/ffffff" alt="Image Sample" class="img-responsive" />
												</span>
												<b>Andrew Waters</b>
												<span>Paris (FR)</span>
												<span>Age 26 Year</span>
											</div>
											<div class="message">
												<div class="content">
													<h3 class="title">
														<i class="icon-quote fa fa-quote-left"></i>
														Iaculis pharetra velit torquent pellentesque euismod
														<i class="icon-quote fa fa-quote-right"></i>
													</h3>
													<span class="rating">
														<span>Rating:</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</span>
													<p class="text-container">
														Aenean nisique purus vulputate suspendisse felis aliquet eu commodo aliquam ut ultricies facilisi eu metus cum<br /><br />Facilisi aenean in penatiblus convallis montes taciti cras sollicitudin semper iniam vestibulum orci convallis malesuada orci pellentesque nascetur massa amet parturient
													</p>							
												</div>
											</div>
										</div>
									</figure>
									<figure class="crsl-item">
										<div class="feeddback-user">
											<div class="info-user">
												<span class="avatar">
													<img src="http://placehold.it/512/bbbbbb/ffffff" alt="Image Sample" class="img-responsive" />
												</span>
												<b>Diane Hayes</b>
												<span>Bloomfield (NY)</span>
												<span>Age 29 Year</span>
											</div>
											<div class="message">
												<div class="content">
													<h3 class="title">
														<i class="icon-quote fa fa-quote-left"></i>
														Iaculis pharetra velit torquent pellentesque euismod
														<i class="icon-quote fa fa-quote-right"></i>
													</h3>
													<span class="rating">
														<span>Rating:</span>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</span>
													<p class="text-container">
														Aenean nisique purus vulputate suspendisse felis aliquet eu commodo aliquam ut ultricies facilisi eu metus cum<br /><br />Facilisi aenean in penatiblus convallis montes taciti cras sollicitudin semper iniam vestibulum orci convallis malesuada orci pellentesque nascetur massa amet parturient
													</p>								
												</div>
											</div>
										</div>
									</figure>
								</div>
								<div id="feedback-nav" class="nav-box">
									<a href="#" class="previous"></a>
									<a href="#" class="next"></a>
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
	<script	src="script/vendor/carousel/responsiveCarousel.min.js"></script>		<!-- Carousel Script -->

	<script	src="script/custom.js"></script>		<!-- Custom	Script -->

  </body>
</html>