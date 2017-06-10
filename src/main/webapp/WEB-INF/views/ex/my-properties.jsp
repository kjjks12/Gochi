<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">                            <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/font-awesom/css/font-awesome.min.css">  <!-- Font Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/mmenu/jquery.mmenu.all.css" />          <!-- Menu Responsive -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/animate-wow/animate.css">               <!-- Animation WOW -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/labelauty/labelauty.css">               <!-- Checkbox form Style -->

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css">                                     <!-- Include Menu stylesheet -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">                                   <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/media-query.css">                              <!-- Media Query -->

	<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
	<link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-152x152.png" />

   

	<script src="${pageContext.request.contextPath}/resources/script/modernizr.min.js"></script> 
	
	<script	src="${pageContext.request.contextPath}/resources/script/jquery.min.js"></script>		<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->
	<script	src="${pageContext.request.contextPath}/resources/script/jquery-ui.min.js"></script>		<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->
	<script	src="${pageContext.request.contextPath}/resources/script/bootstrap.min.js"></script>		<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script	src="${pageContext.request.contextPath}/resources/script/vendor/mmenu/mmenu.min.all.js"></script>					<!-- Menu Responsive -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/animation-wow/wow.min.js"></script>					<!-- Animate Script	-->
	<script src="${pageContext.request.contextPath}/resources/script/vendor/labelauty/labelauty.min.js"></script>					<!-- Checkbox Script -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/parallax/parallax.min.js"></script>						<!-- Parallax Script -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagesloaded.min.js"></script>			<!-- Loaded	image with ImageFill -->
	<script src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagefill.min.js"></script>					<!-- ImageFill Script -->
	<script	src="${pageContext.request.contextPath}/resources/script/vendor/easydropdown/jquery.easydropdown.min.js"></script>	<!-- Select	list Script	-->

	<script	src="${pageContext.request.contextPath}/resources/script/custom.js"></script>		<!-- Custom	Script -->
	

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
					<div><h2 class="sub-title">LOREM IPSUM DOLOR SISCING ELIT JUSTO</h2></div>
				</div>
			</div>
			
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">마이페이지</a></li>
						<li class="icon fa fa-user user">내가쓴글</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-md-3">
						<ul class="block-menu">
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/goInfo"><i class="icon fa fa-user-secret"></i>프로필</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/mypage/property"><i class="icon fa fa-pencil-square-o"></i>내가쓴글</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>쪽지함</a></li>
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">
						<div class="section-title line-style no-margin">
							<h3 class="title">My Properties</h3>
						</div>
						<div class="table-responsive property-list">
							<table class="table-striped table-hover">
							  <thead>
								<tr>
									<th class="hidden-xs">&nbsp;</th>
									<th>Images</th>
									<th>Title</th>
									<th class="hidden-xs">Type</th>
									<th class="hidden-xs hidden-sm">Added</th>
									<th class="hidden-xs">View</th>
									<th>Status</th>
									<th></th>
								</tr>
							  </thead>
							  <tbody>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">59 Paterson Ave</a> Hoboken, NJ 07030, USA</td>
									<td class="hidden-xs">Apartement</td>
									<td class="hidden-xs hidden-sm">20/05/2014</td>
									<td class="hidden-xs">4723</td>
									<td><span class="label label-success">Active</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">477 Jersey Ave</a>Jersey City, NJ 07302, USA</td>
									<td class="hidden-xs">Apartement</td>
									<td class="hidden-xs hidden-sm">19/05/2014</td>
									<td class="hidden-xs">7278</td>
									<td><span class="label label-success">Active</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">27 W 17th St</a> New York, NY 10011, USA</td>
									<td class="hidden-xs">Apartement</td>
									<td class="hidden-xs hidden-sm">16/05/2014</td>
									<td class="hidden-xs">1370</td>
									<td><span class="label label-success">Active</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">403 Bloomfield St</a> Hoboken, NJ 07030, USA</td>
									<td class="hidden-xs">Cottage</td>
									<td class="hidden-xs hidden-sm">14/05/2014</td>
									<td class="hidden-xs">876</td>
									<td><span class="label label-success">Active</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">339 Broadway</a> New York, NY 10013, USA</td>
									<td class="hidden-xs">Villa</td>
									<td class="hidden-xs hidden-sm">29/04/2014</td>
									<td class="hidden-xs">4578</td>
									<td><span class="label label-danger">Inactive</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">560 Marshall Dr</a> Hoboken, NJ 07056, USA</td>
									<td class="hidden-xs">Apartement</td>
									<td class="hidden-xs hidden-sm">22/04/2014</td>
									<td class="hidden-xs">786</td>
									<td><span class="label label-success">Active</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">223 E 6th St</a> New York, NY 10003, USA</td>
									<td class="hidden-xs">Villa</td>
									<td class="hidden-xs hidden-sm">20/04/2014</td>
									<td class="hidden-xs">4768</td>
									<td><span class="label label-danger">Inactive</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
								<tr>
									<th class="hidden-xs"><input class="labelauty" type="checkbox" data-labelauty=" " checked/></th>
									<td>
										<span class="image image-fill">
											<img src="http://placehold.it/1240x745/bbbbbb/ffffff" alt="Image Sample" class="" style="position: absolute; width: auto; height: 48px; top: 0px; left: -9px;">
										</span>
									</td>
									<td><a href="property-detail.html">435 Newark Ave</a> Jersey City, NJ 07302, USA</td>
									<td class="hidden-xs">Building</td>
									<td class="hidden-xs hidden-sm">19/03/2014</td>
									<td class="hidden-xs">465</td>
									<td><span class="label label-danger">Inactive</span></td>
									<td><a href="#"><i class="icon fa fa-cog"></i></a></td>
								</tr>
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

		

		

		
	</div><!-- /#page-container -->

	

  </body>
</html>