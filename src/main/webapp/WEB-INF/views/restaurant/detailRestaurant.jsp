<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 롤링 스타일 -->
<style>
.sdivde {
	overflow: hidden;
	position: relative;
	height: 500px;
	width: 100%;
}

.sdivde .image_list {
	list-style: none;
	overflow: none;
	white-space: nowrap;
	padding: 0;
	margin: 0;
}

.sdivde .images {
	position: absolute;
	display: none;
	border: 1px solid #4C4C4C;
}
.category-detail {
	padding-bottom : 20px;
}
#new-modal {
	width : 740px;
	height: 540px;
}

.wrap-right {
	height: 340px;
}
.restaurant_front_img{
width: 100%;
height: 100%;
}
</style>
<script>
function post(){
	if(document.getElementById("food-name").value==""){
		alert("제목을 입력해 주세요.");
	}else if(document.getElementById("message").value==""){
		alert("내용을 입력해 주세요.");
	}else{
		document.getElementById("postForm").submit();
	}
}
</script>


</head>


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
						<li class="active">Detail View</li>
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
						<div class="view-icon">
							<a href="#"><i class="fa fa-heart-o"></i><span></span></a> <a
								href="#"><i class="fa fa-eye"></i><span></span></a> <a href="#"><i
								class="fa fa-comments"></i><span></span></a>
						</div>
						<div class="blog-list masonry-post">
							<a href="#" style="font-size: 50px"><i class="fa fa-bookmark-o"></i>국내성에서 만나자</a>
						</div>
						
<!-- 이미지 출력 스크립트입니다. -->
<script type="text/javascript">

	function readURL(input) {
	
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
			
	        reader.onload = function (e) {
				$(".image_list").prepend("<div class='restaurant_front_img' style='display:block'> <img src="+e.target.result+" style='height:500px; width:802px;'/></div>");
	        	
	        }
	        reader.readAsDataURL(input.files[0]);
	
	    }
	
	}
</script>

						<!-- 롤링 -->
						<div class="sdivde">
							<div class="image_list" id="image_list_1">
								<div class="images" style="display: block">
									<img
										src="${pageContext.request.contextPath}/resources/detailRestaurantImg/baram1.jpg"
										style="height: 500px; width: 802px" />
								</div>
								<div class="images">
									<img
										src="${pageContext.request.contextPath}/resources/detailRestaurantImg/baram2.jpg"
										style="height: 500px; width: 802px" />
								</div>
								<div class="images">
									<img
										src="${pageContext.request.contextPath}/resources/detailRestaurantImg/baram3.jpg"
										style="height: 500px; width: 802px" />
								</div>
								<div class="images">
									<img
										src="${pageContext.request.contextPath}/resources/detailRestaurantImg/baram4.jpg"
										style="height: 500px; width: 802px" />
								</div>
								<div class="images">
									<img
										src="${pageContext.request.contextPath}/resources/detailRestaurantImg/baram5.jpg"
										style="height: 500px; width: 802px" />
								</div>
							</div>
						</div>
						<div class="test-tab">
								<!-- 이미지 출력업로드 버튼 입니다. -->
								<form method="post"  enctype="multipart/form-data" id="upLoadForm">
								<input type='file' onchange="readURL(this);" /><input type="button" id="uploadBtn" value="업로드하기"/>
								</form>
															
							
						</div>
					</div>
					<!-- /롤링 끝 -->

					<div class="col-md-3">
						<div class="section-title line-style">
							<h3 class="title">
								<i class="fa fa-cutlery" aria-hidden="true"></i> 맛집 정보
							</h3>
						</div>
						<ul class="category-list">
							<li class="category-detail">
								<dt>카테고리</dt>
								<dd>음식점</dd>
							</li>
							<li class="category-detail">
								<dt>맛집</dt>
								<dd>야탑 담소 순대국</dd>
							</li>
							<li class="category-detail">
								<dt>주 소</dt>
								<dd>경기도 판교시</dd>							
							</li>
							<li class="category-detail">
								<dt>영업시간</dt>
								<dd>24시간</dd>
							</li>
							<li class="category-detail">
								<dt>휴무일</dt>
								<dd>24시간 영업</dd>
							</li>
							<li class="category-detail">
								<dt>연락처</dt>
								<dd>031-777-777</dd>
							</li>
							<li class="category-detail" id="category-final">
								<dt>추가설명</dt>
								<dd>여기 일반 순대국이 정말 맛나요</dd>
							</li>
						</ul>
						<div><a href="#" data-toggle="modal" data-target="#modal-contact3"><font style="font-size: 20px;"><i class="fa fa-comment"></i>포스트 작성하기+</font></a></div>
					</div>
				</div>
			<br>
			<br>		
		<!--다른 사람들의 포스트 출력하는 부분 입니다.  -->
		<div class="container">
		
				<div class="list-box-title">
					<span><i class="icon fa fa-plus-square"></i>다른 여행자의 포스트</span>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="box-ads box-home">
							<a class="hover-effect image image-fill" href="property-detail.html">
								<span class="cover"></span>
								<img alt="Sample images" src="http://placehold.it/1240x745/bbbbbb/ffffff">
								<h3 class="title">59 Paterson Ave</h3>
							</a><!-- /.hover-effect -->
							<span class="price">물품금액</span>
							<span class="address">제목부분</span>
							<span class="description">내용</span>
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
							<span class="price">물건금액</span>
							<span class="address">제목부분</span>
							<span class="description">내용</span>
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
							<span class="price">물건금액</span>
							<span class="address">제목부분</span>
							<span class="description">내용</span>
							<div class="footer">
								<a class="btn btn-reverse" href="property-detail.html">Read now</a>
							</div>
						</div><!-- /.box-home .box-ads -->
					</div><!-- ./col-md-4 -->
				</div><!-- 다른사람의 포스트 보기 마지막 부분입니다. -->
			</div><!-- 블로그 부분 끝 -->
			
		</section>
		
		
	</div>

	<%-- <jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" /> --%>
	
	<!-- 롤링 스크립트 -->
	<script type="text/javascript">
	var current_img = 0;
	var next_img = 1;
	var divs;
	var t;
	var m_t;
	function aaa(id){
		 var o = document.getElementById(id);
		 if(typeof o == undefined || o == null) { alert(id+" 이름을 가진 객체가 없습니다."); return;}
		
		 return o;
		}
	
	function setRoll(){
	 var l = aaa("image_list_1");
	 divs = l.getElementsByTagName("div");
	 window.img_cnt = divs.length-1;
	 
	 window.coord_x1 = 0;
	 window.coord_x2 = 800;
	 
	 divs[next_img].style.display = "block";
	 divs[next_img].style.left = window.coord_x2+"px";
	 
	 imgRoll();
	}
	
	function imgRoll(){
	 divs[current_img].style.left = window.coord_x1 + "px";
	 divs[next_img].style.left = window.coord_x2 + "px";
	
	 window.coord_x1 -= 200;
	 window.coord_x2 -= 200;
	 
	 if(window.coord_x1 < -800) {
	  current_img = next_img;
	  next_img += 1;
	  if(current_img == window.img_cnt) next_img = 0;
	  clearTimeout(t); 
	  setTimeout("setRoll()",4000); 
	  return;
	 }
	 
	 t = setTimeout("imgRoll()",100);
	}
	
	setRoll();
	</script>
	
	<!-- 포스팅 모달 -->
	<div class="modal fade" id="modal-contact3" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" id="new-modal">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">
				<i class="fa fa-close"></i>
			</button>

			<div class="form-container full-fixed">
				<form method="post" action="${pageContext.request.contextPath}/restaurant/post" id="postForm">
					<div id="form-modal-map" class="box active modal-contact">
						<h2 class="title" id="new-food"><i class="fa fa-pencil"></i> 포스팅 하기</h2>
						<div class="wrap-right">
							<div class="field">
								<span class="food-insert" ></span>
								<input type="hidden" value="${sessionScope.dto.email}" name="email">
								<input id="food-name" class="form-control" type="text" name="food-name" placeholder="제목">
								<i class="fa fa-home" aria-hidden="true"></i>
							</div>
							<div class="field">
							<textarea class="form-control" name="message" id="message" placeholder="내용을 적어주세요"></textarea>
							</div>
							<!-- 포스팅 사진 추가 -->
							<input type="file">
						</div>
					</div>
					<div class="field footer-form text-right">
						<button type="reset" class="btn btn-reverse button-form" data-dismiss="modal">Reset</button>
						<button type="button" class="btn btn-default button-form" onclick="post()">Send</button>
					</div>
				</form>
			</div>

		</div>
		<!-- /.modal-dialog -->
	</div>
	

