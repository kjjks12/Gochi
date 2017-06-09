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

	<link rel="stylesheet" href="css/vendor/nouislider/nouislider.min.css">         <!-- Slider Price -->
    <link rel="stylesheet" href="css/vendor/easydropdown/easydropdown.css">         <!-- Select form Style -->

    <link rel="stylesheet" href="css/ui-spinner.css">                               <!-- Spinner -->
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
					<div><h1 class="title">Agency detail</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor actetur ats adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Agencies</a></li>
						<li class="active">Agency detail</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="agency" class="agency">

			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-2 agency-logo">
						<div class="logo">
							<img src="http://placehold.it/640/bbbbbb/ffffff" class="img-responsive" alt="logo Agency" />
						</div>
					</div>
					<div class="col-sm-9 col-md-7">
						<h1 class="title">Building Real Estate</h1>
						<div class="description">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque condimentum molestie diam quis congue. Duis rutrum metus vitae lorem ornare, ac ullamcorper sem ullamcorper. Sed vehicula imperdiet egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus volutpat fringilla massa, eget tempus nunc. Ut posuere sodales eros, bibendum luctus nunc facilisis quis. Fusce hendrerit sodales auctor. <br /><br />
						</div>
						<div class="tabs line" id="tab3">
							<ul class="tab-button">
								<li><a href="#" data-target="tab3-a"><i class="fa fa-street-view"></i> Lorem</a></li>
								<li class="active"><a href="#" data-target="tab3-b"><i class="fa fa-cog"></i> Ipsum</a></li>
								<li><a href="#" data-target="tab3-d"><i class="fa fa-cart-plus"></i> Hendrerit</a></li>
							</ul><!-- /.tab-button -->
							<div class="tab-text" data-effect="slide">
								<div id="tab3-a" class="tab">
									<h2>Box Style &amp; Effect</h2>
									<p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac.  pulvinar massa interdum risus ornare mollis.</p>
								</div>
								<div id="tab3-b" class="tab active">
									<h2>Box Style &amp; Effect</h2>
									<p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdietrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
								</div>
								<div id="tab3-d" class="tab">
									<h2>Box Style &amp; Effect</h2>
									<p>Donec pulvinnia! Donec pulvinar massa interdtempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
								</div>
							</div><!-- /.tab-text -->
						</div><!-- /.tabs -->
						<div class="section-title line-style">
							<h3 class="title">Position on Map</h3>
						</div>
						<div id="map-canvas" style="height: 300px"></div>
						<form class="form-large grey-color" action="contact.php" method="post" role="form" data-toggle="validator">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="name">Name</label>
									<input type="text" placeholder="First &amp; Last Name .." name="name" id="name" class="margin-bottom form-control" required>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="email">Email</label>
									<input type="email" placeholder="Email .." name="email" id="email" class="margin-bottom form-control" required>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<textarea name="text-message" id="text-message" rows="4" class="margin-bottom form-control" required></textarea>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<label for="privacy">Privacy</label>
									<textarea id="privacy" name="privacy" rows="1" class="margin-bottom form-control privacy" disabled>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque quam ut fermentum ullamcorper. Pellentesque lobortis, ante vitae egestas venenatis, ante elit consectetur sem, sit amet auctor ex ligula sed mauris. Suspendisse tempor diam et hendrerit ullamcorper. Proin urna orci, pellentesque quis bibendum at, ultrices vulputate tortor. Integer ac ante diam. In et euismod nulla. Donec nibh nisl, egestas nec porta eu, hendrerit et urna.</textarea>
								</div>
								<div class="col-sm-12 col-md-12 col-xs-12 margin-bottom">
									<input class="labelauty" type="checkbox" data-labelauty="Privacy accept" checked>
								</div>
							</div>
							<input type="submit" class="btn btn-default" value="Send mail" name="submit" id="submit">
						</form>
					</div>
					<div class="col-sm-12 col-md-3">
						<div class="row">
							<div class="col-sm-6 col-md-12">
								<!-- . Agent Box -->
								<div class="section-title line-style no-margin">
									<h3 class="title">Best agent</h3>
								</div>
								<div class="agent-box-card grey">
									<div class="image-content">
										<div class="image image-fill">
											<img alt="Image Sample" src="http://placehold.it/512/bbbbbb/ffffff">
										</div>						
									</div>
									<div class="info-agent">
										<span class="name">Betty Bryant</span>
										<div class="text">
											<i class="fa fa-quote-left"></i> Embarrassing hidden in tex the middle of chunks as making necessary, this the first true <i class="fa fa-quote-right"></i>
										</div>
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
							<div class="col-sm-6 col-md-12">
								<!-- 5. Search -->
								<div class="section-title line-style no-margin">
									<h3 class="title">Search Property</h3>
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
	<script	src="script/vendor/noui-slider/nouislider.all.min.js"></script>				<!-- Range Slider -->
    <script	src="http://maps.google.com/maps/api/js?sensor=false"></script>			<!-- Google Map -->

	<script	src="script/custom.js"></script>		<!-- Custom	Script -->

	<script>

		'use strict';

		// TABS PAGE SCRIPT
		$(document).ready(function(){
			var $selector = $('#tab, #tab2, #tab3').selector;
			$($selector).find('a').on('click',function(e){
				var $this   = $(this);
				var $target = $this.data('target');
				var $effect = $('#'+$target).parent().data('effect');
				switch($effect) {
					case 'slide' : $('#'+$target).slideDown(200).siblings().slideUp(200); break;
					case 'fade'  : $('#'+$target).fadeIn(400).siblings().hide(); break;
					default : $('#'+$target).show().siblings().hide();
				}
				$this.parent('li').addClass('active').siblings().removeClass('active');
				e.preventDefault();
				return false;
			});
		});

		// MAPS GOOGLE PAGE SCRIPT
		function initialize() {
		  var mapOptions = {
			zoom: 18,
			scrollwheel: false,
			center: new google.maps.LatLng(-33.890542, 151.274856)
		  }
		  var map = new google.maps.Map(document.getElementById('map-canvas'),
										mapOptions);

		  var image = 'images/maps/pin-maps.png';
		  var myLatLng = new google.maps.LatLng(-33.890542, 151.274856);
		  var beachMarker = new google.maps.Marker({
			  position: myLatLng,
			  map: map,
			  icon: image
		  });
		}
		google.maps.event.addDomListener(window, 'load', initialize);

	</script>

  </body>
</html>