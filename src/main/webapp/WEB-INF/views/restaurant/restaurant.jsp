<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>PROHOME - Responsive Real Estate Template</title>

<jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />


<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->

<link rel="shortcut icon" href="images/favicon/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="images/favicon/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="images/favicon/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="images/favicon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="images/favicon/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="images/favicon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="images/favicon/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="images/favicon/apple-touch-icon-152x152.png" />


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- <script src="script/modernizr.min.js"></script> -->
<!-- Modernizr -->

</head>

<body class="fixed-header">

	<div id="page-container">


		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8" class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div>
						<h1 class="title">순댓국 이야기</h1>
					</div>
					<div>
						<h2 class="sub-title">맛있는 순댓국을 찾아 나서자!</h2>
					</div>
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
			</div>
			<!-- /#breadcrumb -->
			<span class="cover"></span>
		</section>
		<!-- /#header -->

		<section id="blog">
			<div class="container">
				<div class="row">
					<div class="col-md-9" id="blog-list">
						<div class="item">
							<div class="blog-list masonry-post">
								<h2 class="title">
									<a href="blog-detail.html">Fusce luctus vulputate nisl
										vitae auctor</a>
								</h2>
								<div class="image">
									<img src="http://placehold.it/1280x850/bbbbbb/ffffff"
										alt="Image Sample" class="img-responsive" />
									<div class="social">
										<span class="date">22<span>Apr</span></span> <a href="#"><i
											class="fa fa-heart-o"></i><span>654</span></a> <a href="#"><i
											class="fa fa-eye"></i><span>92435</span></a> <a href="#"><i
											class="fa fa-comments"></i><span>69</span></a>
									</div>
								</div>
								<div class="text">
									<h3 class="subtitle">Internet tend to repeat predefined
										chunks.</h3>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Praesent molestie in ippulvinar libero enim, et finibus massa
									commodo vitae.
								</div>
								<input type="button" value="Read now"
									class="btn btn-default button-read" />
							</div>
						</div>
						<!-- /.item -->

						<div class="item">
							<div class="blog-list masonry-post">
								<h2 class="title">
									<a href="blog-detail.html">Mauris sed lobortis dui</a>
								</h2>
								<div class="image">
									<img src="http://placehold.it/670x960/bbbbbb/ffffff"
										alt="Image Sample" class="img-responsive" />
									<div class="social">
										<span class="date">4<span>Apr</span></span> <a href="#"><i
											class="fa fa-heart-o"></i><span>1653</span></a> <a href="#"><i
											class="fa fa-eye"></i><span>564972</span></a> <a href="#"><i
											class="fa fa-comments"></i><span>136</span></a>
									</div>
								</div>
								<div class="text">
									<h3 class="subtitle">Internet tend to repeat predefined
										chunks.</h3>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Praesent molestie in ipsumolestie. Suspendisse pulvinar libero
									enim, et finibus massa commodo vitae.
								</div>
								<input type="button" value="Read now"
									class="btn btn-default button-read" />
							</div>
						</div>
						<!-- /.item -->

						<div class="item">
							<div class="blog-list masonry-post">
								<h2 class="title">
									<a href="blog-detail.html">Pellentesque placerat neque
										maximus interdum lobortis</a>
								</h2>
								<div class="image">
									<img src="http://placehold.it/700x900/bbbbbb/ffffff"
										alt="Image Sample" class="img-responsive" />
									<div class="social">
										<span class="date">22<span>Mar</span></span> <a href="#"><i
											class="fa fa-heart-o"></i><span>698</span></a> <a href="#"><i
											class="fa fa-eye"></i><span>346597</span></a> <a href="#"><i
											class="fa fa-comments"></i><span>45</span></a>
									</div>
								</div>
								<div class="text">
									<h3 class="subtitle">Finibus massa commodo vitae</h3>
									Lorem ipsum dolor sit amet, consectetur adipiscing elitie. Duis
									sodales tinvinar libero enim, et finibus massa commodo vitae.
								</div>
								<input type="button" value="Read now"
									class="btn btn-default button-read" />
							</div>
						</div>
						<!-- /.item -->

						<div class="item">
							<div class="blog-list masonry-post">
								<h2 class="title">
									<a href="blog-detail.html">Pellentesque in elit vel lacus</a>
								</h2>
								<div class="image">
									<img src="http://placehold.it/1280x850/bbbbbb/ffffff"
										alt="Image Sample" class="img-responsive" />
									<div class="social">
										<span class="date">18<span>Mar</span></span> <a href="#"><i
											class="fa fa-heart-o"></i><span>453</span></a> <a href="#"><i
											class="fa fa-eye"></i><span>65900</span></a> <a href="#"><i
											class="fa fa-comments"></i><span>35</span></a>
									</div>
								</div>
								<div class="text">
									<h3 class="subtitle">Internet tend to repeat predefined
										chunks.</h3>
									Lorem ipsum dolor sit amet, consectetur adstibulum. Proin
									aulvinar libero enim, et finibus massa commodo vitae.
								</div>
								<input type="button" value="Read now"
									class="btn btn-default button-read" />
							</div>
						</div>
						<!-- /.item -->

						<div class="item">
							<div class="blog-list masonry-post">
								<h2 class="title">
									<a href="blog-detail.html">Suspendisse tempus quam eu dui </a>
								</h2>
								<div class="image">
									<img src="http://placehold.it/670x960/bbbbbb/ffffff"
										alt="Image Sample" class="img-responsive" />
									<div class="social">
										<span class="date">7<span>Mar</span></span> <a href="#"><i
											class="fa fa-heart-o"></i><span>356</span></a> <a href="#"><i
											class="fa fa-eye"></i><span>643795</span></a> <a href="#"><i
											class="fa fa-comments"></i><span>65</span></a>
									</div>
								</div>
								<div class="text">
									<h3 class="subtitle">Internet tend to repeat predefined
										chunks.</h3>
									Lorem ipsum dolor sit amet, consectetur adstibulum. Proin
									aulvinar libero enim, et finibus massa commodo vitae.
								</div>
								<input type="button" value="Read now"
									class="btn btn-default button-read" />
							</div>
						</div>
						<!-- /.item -->

						<div class="item">
							<div class="blog-list masonry-post">
								<h2 class="title">
									<a href="blog-detail.html">Donec a orci fermentum</a>
								</h2>
								<div class="image">
									<img src="http://placehold.it/700x900/bbbbbb/ffffff"
										alt="Image Sample" class="img-responsive" />
									<div class="social">
										<span class="date">29<span>Feb</span></span> <a href="#"><i
											class="fa fa-heart-o"></i><span>642</span></a> <a href="#"><i
											class="fa fa-eye"></i><span>102798</span></a> <a href="#"><i
											class="fa fa-comments"></i><span>45</span></a>
									</div>
								</div>
								<div class="text">
									<h3 class="subtitle">Internet tend to repeat predefined
										chunks.</h3>
									Lorem ipsum dolor sit amet, consectetur adstibulum. Proin
									aulvinar libero enim, et finibus massa commodo vitae.
								</div>
								<input type="button" value="Read now"
									class="btn btn-default button-read" />
							</div>
						</div>
						<!-- /.item -->

					</div>
					<!-- /.col-md-9 -->
					<div class="col-md-3">
						<div class="section-title line-style no-margin">
							<h3 class="title">
								<a href="#" id="modal-opener" data-target="#modal-contact2" data-toggle="modal"
									class="hidden-xs"><i class="fa fa-cutlery"
									aria-hidden="true"></i> 맛집 등록</a>
							</h3>

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
							<li class="has-submenu"><a href="#">2013</a>
								<ul class="category-list">
									<li><a href="#">December 2013</a></li>
									<li><a href="#">November 2013</a></li>
									<li><a href="#">October 2013</a></li>
								</ul></li>
						</ul>
						<!-- /.category-list -->
						<div class="section-title line-style">
							<h3 class="title">Post Archive</h3>
						</div>
						<ul class="category-list">
							<li><a href="#">Architecture</a></li>
							<li><a href="#">Apartments</a></li>
							<li><a href="#">Design</a></li>
							<li class="has-submenu"><a href="#">Do it yourself</a>
								<ul class="category-list">
									<li><a href="#">Housing</a></li>
									<li><a href="#">Agency</a></li>
									<li><a href="#">Apartements</a></li>
								</ul></li>
							<li><a href="#">Interior</a></li>
							<li><a href="#">Trends</a></li>
						</ul>
						<!-- /.category-list -->

						<div class="section-title line-style">
							<h3 class="title">Popular Post</h3>
						</div>

						<div class="recent-post">
							<a class="image image-fill" href="blog-detail.html"> <img
								alt="Image Sample"
								src="http://placehold.it/1280x680/bbbbbb/ffffff">
							</a>
							<!-- /.image -->
							<div class="body">
								<span class="title">Cras varius elementum</span> <span
									class="date">March 22, 2015 - 5 Comments</span>
								<div class="text">
									<p>Lorem ipsum dolor amet donec, collentesque ullamcorper.</p>
								</div>
								<!-- /.text -->
								<input type="submit"
									class="button-read button-read btn btn-default"
									value="Read now" name="submit" id="submit">
							</div>
							<!-- /.body -->
						</div>
						<!-- recent-post -->

						<div class="recent-post">
							<a class="image image-fill" href="blog-detail.html"> <img
								alt="Image Sample"
								src="http://placehold.it/1280x840/bbbbbb/ffffff">
							</a>
							<!-- /.image -->
							<div class="body">
								<span class="title">Ante egestas venenatis</span> <span
									class="date">March 19, 2015 - 2 Comments</span>
								<div class="text">
									<p>Consectetur adipiscing. Quam pellentesque ut fermentum.</p>
								</div>
								<!-- /.text -->
								<input type="submit"
									class="button-read button-read btn btn-default"
									value="Read now">
							</div>
							<!-- /.body -->
						</div>
						<!-- recent-post -->

						<div class="section-title line-style">
							<h3 class="title">Tags</h3>
						</div>
						<div id="filter-box">
							<a href="#" class="filter">Music <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Recipes <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Landscape <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Graphic Design <i
								class="fa fa-times"></i></a> <a href="#" class="filter">Photography
								<i class="fa fa-times"></i>
							</a> <a href="#" class="filter">Videos <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Wild Life <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Scenery <i class="fa fa-times"></i></a>
							<a href="#" class="filter">News <i class="fa fa-times"></i></a> <a
								href="#" class="filter">Web Design <i class="fa fa-times"></i></a>
							<a href="#" class="filter">Models <i class="fa fa-times"></i></a>
						</div>
						<!-- /.filter-box -->

					</div>
					<!-- /.col-md-3 -->
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
			</div>
			<!-- ./container -->
		</section>


		<!-- 로그인/회원가입부분 모달위치 -->

		<div class="modal fade" id="modal-contact" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<i class="fa fa-close"></i>
				</button>

				<div class="form-container full-fixed">
					<form method="post" action="#">
						<div id="form-modal-contact" class="box active modal-contact">
							<h2 class="title">How can we help?</h2>
							<h3 class="sub-title">Please send us your thoughts by
								filling out the below form. Comments are solely for internal
								use. Your address will not be shared with outside parties or
								used for any other purpose than to respond to your comments.</h3>
							<ul class="object-contact">
								<li><a href="#"><i class="fa fa-code"></i>Suggestion</a></li>
								<li><a href="#"><i class="fa fa-question"></i>Question</a></li>
								<li><a href="#" class="active"><i class="fa fa-bug"></i>Problems</a></li>
								<li><a href="#"><i class="fa fa-comment-o"></i>Feedback</a></li>
							</ul>
							<div class="field">
								<textarea class="form-control" name="message" id="message"
									placeholder="Your message"></textarea>
							</div>
							<div class="field">
								<input id="short-summary" class="form-control" type="text"
									name="short-summary" placeholder="Short summary"> <i
									class="fa fa-tag"></i>
							</div>
							<div class="field">
								<input id="email-help" class="form-control" type="text"
									name="email-help" placeholder="Your email"> <i
									class="fa fa-envelope-o"></i>
							</div>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-reverse button-form">Cancel</button>
								<button type="button" class="btn btn-default button-form">Send</button>
							</div>

						</div>
					</form>
				</div>

			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<div class="modal fade" id="modal-contact2" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">
				<i class="fa fa-close"></i>
			</button>

			<div class="form-container full-fixed">
				<form method="post" action="#">
					<div id="form-modal-map" class="box active modal-contact">
						<h2 class="title" id="new-food">새로운 맛집 등록</h2>
						<div class="wrap-left">	
							<!-- 지도를 표시할 div 입니다 -->
							<div id="map" style="width: 100%; height: 435px;"></div>
							
							<div class="field">
								<input id="food-search" class="form-control" type="text" name="food-search" placeholder="키워드 맛집 검색">
								<a href="#"><i class="fa fa-search"></i></a>
							</div>
							
							
							
						</div>
						
						<div class="wrap-right">
							<div class="field">
								<span class="food-insert">맛집등록
								<img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
								<input id="food-name" class="form-control" type="text" name="food-name">
								<i class="fa fa-home" aria-hidden="true"></i>
							</div>
							<div class="field">
								<span class="food-insert">가는방법</span>
								<input id="food-go" class="form-control" type="text" name="food-go">
								<i class="fa fa-car" aria-hidden="true"></i>
							</div>
							
							<div class="field">
								<span class="food-insert">영업시간
								<img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
								<input id="food-time" class="form-control" type="text" name="food-time">
								<i class="fa fa-clock-o" aria-hidden="true"></i>
							</div>
							
							<div class="field">
								<span class="food-insert">휴무일</span>
								<input id="food-holiday" class="form-control" type="text" name="food-holiday">
								<i class="fa fa-moon-o" aria-hidden="true"></i>
							</div>
							
							<div class="field">
								<span class="food-insert">연락처
								<img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
								<input id="food-phone" class="form-control" type="text" name="food-phone">
								<i class="fa fa-phone" aria-hidden="true"></i>
							</div>	
							
							<div class="field">
							<textarea class="form-control" name="message" id="message" placeholder="추가 정보 기입"></textarea>
							</div>	
						</div>

					</div>
					
					<div class="field footer-form text-right">
						<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-default button-form">Send</button>
					</div>
				</form>
			</div>

		</div>
		<!-- /.modal-dialog -->
	</div>





	<!-- /.modal-dialog -->
	<jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" />
	
	<style>
		#modal-contact2 { padding-left: 0; }
		#modal-contact2 .modal-dialog { 
			width: 850px !important; left: calc(50% - 425px); margin-left: 0;
		}
		.wrap-left { float: left; width: 380px; margin-right: 15px; }
		.wrap-right { float: left; width: 360px; }
		.wrap-right .field:first-child { margin-top: 0; }
		.wrap-right #message { height: 100px !important; }
		.modal-backdrop { display: none !important; }
		
		#form-modal-map { overflow: hidden; }
		#form-modal-map:before { display: block; content: ""; clear: both; }
		
		#search-box {margin-top: 14px; margin-bottom: 15px;}
		
		.food-insert {font-size: 12px;} 
		
		#star-icon {width : 8px; height : 8px;}
		
		#new-food { 
			text-align : center;
			font-weight: bold; 
		}

	</style>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=815544b5d2063051aa6e6316ed41e050&libraries=services"></script>
<script>
$(function() {
	$('#modal-opener').click(function() {
		setTimeout(setMap2, 500);
	});
	var isBindedMap = false; 
	function setMap2() {
		if (isBindedMap) {
			return false;
		}
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption);
		isBindedMap = true
		
		var markerPosition  = new daum.maps.LatLng(37.566826, 126.9786567); 
		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);	
	}
	
 	var ps = new daum.maps.services.Places();
 /* 	$('[class="fa fa-search"]').click(function() {
 		var searchKeyword = $("#food-search").val();
 		keyWord = encodeURIComponent(searchKeyword);
 		var url = "https://apis.daum.net/local/v1/search/keyword.json?apikey=815544b5d2063051aa6e6316ed41e050&query="+keyWord; 

	 	$.getJSON(url+"&callback=?", function(json){
	 		var items = json.channel.item;
	 		$.each(items, function(i,it){
	 			var latitude = it.latitude;
				var longitude = it.longitude;
				if(i==0) {
					var container = document.getElementById('map');
					var options = { 
							center: new daum.maps.LatLng(latitude, longitude), //지도의 중심좌표.
							level: 3 //지도의 레벨(확대, 축소 정도)

					};
				}
				var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴

			});
	 	});
	 	$("#food-search").val("");	

	}); */
	

	// 지도에 마커를 표시하는 함수
	function displayMarker(place) {
	    
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new daum.maps.Marker({
	        map: map,
	        position: new daum.maps.LatLng(place.latitude, place.longitude) 
	    });

	    // 마커에 클릭이벤트를 등록합니다
	    daum.maps.event.addListener(marker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
	        infowindow.open(map, marker);
	    });
	}
	
	 $(function(){
		var callback = function(){
			var keyWord = $("#food-search").val();
			keyWord = encodeURIComponent(keyWord);
				// keyword JSON데이터에 접근하기 위한 주소
				var url = "https://apis.daum.net/local/v1/search/keyword.json?apikey=815544b5d2063051aa6e6316ed41e050&query="+keyWord;                             
				$.getJSON(url + "&callback=?" , function(json){
					var items = json.channel.item;
					// item안의 latitude, longitude 데이터를 활용하기 위한 메서드
					$.each(items, function(i, it){
						var latitude = it.latitude;
						var longitude = it.longitude;
						var pos = latitude + "," + longitude;
						
						if(i == 0){
							var container = document.getElementById('map'); 
							var options = { // 지도를 생성할 때 필요한 기본 옵션
								center: new daum.maps.LatLng(latitude, longitude), // 지도의 중심좌표.
								level: 3 //지도의 레벨(확대, 축소 정도)
		
							};
		
						var map = new daum.maps.Map(container, options); // 지도 생성 및 객체 리턴
					
						}
		
					});	
		
				});	
		}
				// 검색 된 후 input에 입력했던 텍스트를 비워주는 코드
		$("#food-search").val("");
	  // 엔터키 누르면 위치검색 가능 메서드
		$("#food-search").keypress(function() {
		  if(event.which == 13) {
			callback();
		  } 
		});
	
  		$('[class="fa fa-search"]').click(callback);	
	 }); // 여기까지 callback 변수에 저장된 메서드

	 $('[class="btn btn-reverse"]').click(function() {
		$(this).close();
	 })
	 
});



		
</script>
</body>
</html>