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
					<div><h1 class="title">Blog list v2</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor sit ats adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">Blog list v2</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="blog">

			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-9">
						<div class=" blog-list post-line">
							<h2 class="title"><a href="blog-detail.html">Lorem ipsum dolor sit amet consectetur </a></h2>
							<div class="social">
								<span class="date">20<span>Apr</span></span>
								<a href="#"><i class="fa fa-heart-o"></i><span>346</span></a>
								<a href="#"><i class="fa fa-eye"></i><span>124635</span></a>
								<a href="#"><i class="fa fa-comments"></i><span>102</span></a>
							</div>
							<div class="image image-fill">
								<img src="http://placehold.it/1280x850/bbbbbb/ffffff" alt="Image Sample" />
							</div>
							<h3 class="subtitle">libero vitae viverra posuere, ante.</h3>
							<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie in ipsum et tincidunt. Aliquam efficitur accumsan metus non iaculis. Quisque sed mauris lacinia, bibendum turpis et, mattis nisi. Donec vulputate leo id finibus commodo. Quisque accumsan neque in aliquet vestibulum. Proin auctor maximus molestie. Duis sodales tincidunt ipsum a accumsan. Suspendisse pulvinar libero enim, et finibus massa commodo vitae.</div>
							<input type="button" value="Read now" class="btn btn-default button-read" />
						</div><!-- /.blog-list -->

						<div class="blog-list post-line">
							<h2 class="title"><a href="blog-detail.html">Nam at posuere quam, in accumsan nulla</a></h2>
							<div class="social">
								<span class="date">12<span>Mar</span></span>
								<a href="#"><i class="fa fa-heart-o"></i><span>365</span></a>
								<a href="#"><i class="fa fa-eye"></i><span>36495</span></a>
								<a href="#"><i class="fa fa-comments"></i><span>23</span></a>
							</div>
							<div class="image image-fill">
								<img src="http://placehold.it/1280x850/bbbbbb/ffffff" alt="Image Sample" />
							</div>
							<h3 class="subtitle">Internet tend to repeat predefined chunks as necessary, making</h3>
							<div class="text">Vivamus dignissim enim ut tortor lacinia, eu consequat augue facilisis. Fusce vel nisl tempor, fringilla magna vitae, egestas est. Nam fermentum laoreet arcu, et laoreet sapien tempus a. Ut tempor diam orci, vel dignissim mi hendrerit at. Pellentesque eleifend mauris nisl, eu porttitor ante congue eu. Aenean non lobortis ligula. Etiam sollicitudin dui lectus. Ut fringilla cursus rutrum. Maecenas non ultrices mauris. Donec feugiat vel metus nec interdum. Donec nec elit sed tortor aliquet auctor at ut ipsum.</div>
							<input type="button" value="Read now" class="btn btn-default button-read" />
						</div><!-- /.blog-list -->

						<div class="blog-list post-line">
							<h2 class="title"><a href="blog-detail.html">Quisque quis sapien eget urna pellentesque </a></h2>
							<div class="social">
								<span class="date">7<span>Mar</span></span>
								<a href="#"><i class="fa fa-heart-o"></i><span>649</span></a>
								<a href="#"><i class="fa fa-eye"></i><span>203465</span></a>
								<a href="#"><i class="fa fa-comments"></i><span>236</span></a>
							</div>
							<div class="image image-fill">
								<img src="http://placehold.it/1280x850/bbbbbb/ffffff" alt="Image Sample" />
							</div>
							<h3 class="subtitle">Internet tend to repeat predefined chunks as necessary, making</h3>
							<div class="text">Cras urna orci, tincidunt in viverra porta, pulvinar non justo. Sed ultrices arcu nec lacus scelerisque gravida. Donec semper, sem vel aliquet rutrum, sapien dui convallis sem, ac feugiat massa nisl eu mi. Cras finibus sodales ex, nec imperdiet orci porttitor in. Nulla nec tortor eros. Nullam vel lectus sit amet lorem faucibus ultricies. In odio odio, molestie vitae nunc at, ullamcorper condimentum tortor.</div>
							<input type="button" value="Read now" class="btn btn-default button-read" />
						</div><!-- /.blog-list -->

						<div class="blog-list post-line">
							<h2 class="title"><a href="blog-detail.html">Curabitur metus elit, faucibus ac malesuada </a></h2>
							<div class="social">
								<span class="date">20<span>Feb</span></span>
								<a href="#"><i class="fa fa-heart-o"></i><span>465</span></a>
								<a href="#"><i class="fa fa-eye"></i><span>16435</span></a>
								<a href="#"><i class="fa fa-comments"></i><span>84</span></a>
							</div>
							<div class="image image-fill">
								<img src="http://placehold.it/1280x850/bbbbbb/ffffff" alt="Image Sample" />
							</div>
							<h3 class="subtitle">Internet tend to repeat predefined chunks as necessary, making</h3>
							<div class="text">Sed id scelerisque nulla. Vivamus eu leo ultrices, tempus felis a, malesuada justo. Etiam commodo lacinia felis, vel faucibus nibh ultrices eu. Aliquam quis tempus justo. Aliquam et velit viverra, mattis risus congue, porta nisl. Sed viverra hendrerit quam at scelerisque. Donec libero erat, porttitor a nisl in, euismod sollicitudin est. Integer a dapibus tellus. Integer tristique bibendum ligula. Mauris luctus, lacus nec efficitur lobortis, leo lacus laoreet enim, congue suscipit sapien libero a magna. Nulla at diam in enim condimentum tempor eget eget.</div>
							<input type="button" value="Read now" class="btn btn-default button-read" />
						</div><!-- /.blog-list -->

					</div><!-- /.col-md-9 -->
					<div class="col-sm-4 col-md-3">
						<div class="section-title line-style no-margin">
							<h3 class="title">Search Post</h3>
						</div>
						<div class="blog-search">
							<input type="text" placeholder="Keywords" class="form-control">
							<button class="button-search" type="submit"><i class="fa fa-search"></i></button>
						</div>
						<div class="section-title line-style">
							<h3 class="title">Blog Categories</h3>
						</div>
						<ul class="category-list">
							<li><a href="#">April 2015</a></li>
							<li class="active"><a href="#">March 2015</a></li>
							<li><a href="#">February 2015</a></li>
							<li><a href="#">November 2014</a></li>
							<li><a href="#">October 2014</a></li>
							<li><a href="#">September 2014</a></li>
							<li><a href="#">August 2014</a></li>
							<li class="has-submenu">
								<a href="#">2013</a>
								<ul class="category-list">
									<li><a href="#">December 2013</a></li>
									<li><a href="#">November 2013</a></li>
									<li><a href="#">October 2013</a></li>
								</ul>
							</li>
						</ul><!-- /.category-list -->

						<div class="section-title line-style">
							<h3 class="title">Post Archive</h3>
						</div>
						<ul class="category-list">
							<li><a href="#">Architecture</a></li>
							<li><a href="#">Apartments</a></li>
							<li><a href="#">Design</a></li>
							<li class="has-submenu">
								<a href="#">Do it yourself</a>
								<ul class="category-list">
									<li><a href="#">Housing</a></li>
									<li><a href="#">Agency</a></li>
									<li><a href="#">Apartements</a></li>
								</ul>
							</li>
							<li><a href="#">Interior</a></li>
							<li><a href="#">Trends</a></li>
						</ul><!-- /.category-list -->

						<div class="section-title line-style">
							<h3 class="title">Popular Post</h3>
						</div>

						<div class="recent-post">
							<a class="image image-fill" href="blog-detail.html">
								<img alt="Image Sample" src="http://placehold.it/1280x680/bbbbbb/ffffff">
							</a><!-- /.image -->
							<div class="body">
								<span class="title">Cras varius elementum</span>
								<span class="date">March 22, 2015 - 5 Comments</span>
								<div class="text">
									<p>Lorem ipsum dolor amet donec, collentesque ullamcorper.</p>
								</div><!-- /.text -->
								<input type="submit" class="button-read button-read btn btn-default" value="Read now" name="submit" id="submit">	
							</div><!-- /.body -->
						</div><!-- recent-post -->

						<div class="recent-post">
							<a class="image image-fill" href="blog-detail.html">
								<img alt="Image Sample" src="http://placehold.it/1280x840/bbbbbb/ffffff">
							</a><!-- /.image -->
							<div class="body">
								<span class="title">Ante egestas venenatis</span>
								<span class="date">March 19, 2015 - 2 Comments</span>
								<div class="text">
									<p>Consectetur adipiscing. Quam pellentesque ut fermentum.</p>
								</div><!-- /.text -->
								<input type="submit" class="button-read button-read btn btn-default" value="Read now">	
							</div><!-- /.body -->
						</div><!-- recent-post -->

						<div class="section-title line-style">
							<h3 class="title">Tags</h3>
						</div>
						<div id="filter-box">
							<a href="#" class="filter">Music <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Recipes <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Landscape <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Graphic Design <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Photography <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Videos <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Wild Life <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Scenery <i class="fa fa-times"></i></a>
							<a href="#" class="filter">News <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Web Design <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Models <i class="fa fa-times"></i></a>
						</div><!-- /.filter-box -->

					</div><!-- /.col-md-3 -->
				</div>
			</div>
			<!-- pagination -->	
			<div class="container" id="pagination">
				<div class="row">
					<div class="col-md-9 text-center">
						<ul class="pagination">
							<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a class="no-active">...</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
						</ul>
					</div>
				</div>
			</div><!-- ./container -->
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

	<script	src="script/custom.js"></script>		<!-- Custom	Script -->

  </body>
</html>