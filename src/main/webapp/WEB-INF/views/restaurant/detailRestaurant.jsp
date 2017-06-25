<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

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
		var formData = new FormData($("#postForm")[0]);
		$.ajax({
	        type : 'post',
	        url : 'post',
	        data : formData,
	        processData : false,
	        contentType : false,
	        success : function(html) {
	            alert("파일 업로드하였습니다.");
	            window.location.reload();
	        },
	        error : function(error) {
	            alert("파일 업로드에 실패하였습니다.");
	            console.log(error);
	            console.log(error.status);
	        }
	    });
	    //ajax 끝
		//document.getElementById("postForm").submit();
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
						<h1 class="title">맛집 추천</h1>
					</div>
					<div>
						<h2 class="sub-title">숨은 맛집을 찾아나서자!</h2>
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
						<a href="#" style="font-size: 50px"><i
							class="fa fa-bookmark-o"></i>${sessionScope.restaurantInfo.restaurantName}</a>
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

<!-- ajax를 이용한 파일업로드 부분입니다. -->
<script type="text/javascript">
function fileUpload(){
	var formData = new FormData($("#fileForm")[0]);
    $.ajax({
        type : 'post',
        url : 'upload',
        data : formData,
        processData : false,
        contentType : false,
        success : function(html) {
            alert("파일 업로드하였습니다.");
            window.location.reload();
        },
        error : function(error) {
            alert("파일 업로드에 실패하였습니다.");
            console.log(error);
            console.log(error.status);
        }
    });
    //ajax 끝
}
</script>

					<!-- 롤링 -->
					<div class="sdivde">
						<div class="image_list" id="image_list_1">
						<c:if test="${empty sessionScope.imgList}">
							<div class="images" style="display: block">
								<img
									src="${pageContext.request.contextPath}/resources/detailRestaurantImg/restaurant.png"
									style="height: 302px; width: 800px" />
							</div>
							<div class="images">
								<img src="${pageContext.request.contextPath}/resources/detailRestaurantImg/restaurant.png"
									style="height: 302px; width: 800px">
							</div>
						</c:if>
						<c:if test="${not empty sessionScope.imgList}">
							<div class="images" style="display: block">
								<img src="${pageContext.request.contextPath}/resources/detailRestaurantImg/gochi.png"
									style="height: 302px; width: 800px" />
							</div>
							<c:forEach items="${sessionScope.imgList}" var="imgList" varStatus="state">
								<div class="images">
									<img src="${pageContext.request.contextPath}/resources/img/restaurant/${imgList.img}"
										style="height: 302px; width: 800px" />
								</div>
							</c:forEach>
						</c:if>
						</div>
					</div>
					
				<div class="test-tab">
					<!-- 이미지 출력업로드 버튼 입니다. -->
					<form method="post"  enctype="multipart/form-data" id="fileForm" action="upload">
					<input type='file' name="file" onchange="readURL(this);"/>
					<input type="button" id="uploadBtn" value="업로드하기" onclick="fileUpload();"/>
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
								<dd>${sessionScope.restaurantInfo.classification}</dd>
							</li>
							<li class="category-detail">
								<dt>맛집</dt>
								<dd>${sessionScope.restaurantInfo.restaurantName}</dd>
							</li>
							<li class="category-detail">
								<dt>주 소</dt>
								<dd>${sessionScope.restaurantInfo.area}</dd>							
							</li>
							<li class="category-detail">
								<dt>영업시간</dt>
								<dd>${sessionScope.restaurantInfo.operatingTime}</dd>
							</li>
							<li class="category-detail">
								<dt>휴무일</dt>
								<dd>${sessionScope.restaurantInfo.holiday}</dd>
							</li>
							<li class="category-detail">
								<dt>연락처</dt>
								<dd>${sessionScope.restaurantInfo.phone}</dd>
							</li>
							<li class="category-detail" id="category-final">
								<dt>추가설명</dt>
								<dd>${sessionScope.restaurantInfo.explanation}</dd>
							</li>
						</ul>
						<c:if test="${not empty sessionScope.dto.email}">
							<div><a href="#" data-toggle="modal" data-target="#modal-contact3" ><font style="font-size: 20px;"><i class="fa fa-comment"></i>포스트 작성하기+</font></a></div>
						</c:if>
						<c:if test="${empty sessionScope.dto.email}">
							<a href="#"  id="abc"><font style="font-size: 20px;"><i class="fa fa-comment"></i>포스트 작성하기+</font></a>				
						</c:if>
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
					<!-- 해당 게시물의 포스트 출력부분 입니다. -->
				<c:if test="${not empty sessionScope.postList}">
					<c:forEach items="${sessionScope.postList}" var="post" varStatus="state" >
						<div class="col-md-4">
							<div class="box-ads box-home">
								<a class="hover-effect image image-fill" href="property-detail.html">
									<span class="cover"></span>
									<img alt="Sample images" src="${pageContext.request.contextPath}/resources/img/restaurant/${post.img}">
									<h3 class="title">${post.subject}</h3>
								</a><!-- /.hover-effect -->
								<span class="address">${post.email}</span>
								<span class="description">${post.text}</span>
							</div><!-- /.box-home .box-ads -->
						</div><!-- ./col-md-4 -->
					</c:forEach>
					</c:if>
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
	<!-- 로그인 된 경우 -->
	<div class="modal fade" id="modal-contact3" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" id="new-modal">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">
				<i class="fa fa-close"></i>
			</button>

			<div class="form-container full-fixed">
				<form method="post" action="post" id="postForm" enctype="multipart/form-data">
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
							<input type="file" name="file" multiple>
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
	
	<!-- 로그인 되지않은 사용자 로그인 모달 띄우기 -->
	<script>
		$("#abc").click(function() {
			$("#login_btn").click()
		})
	</script>
