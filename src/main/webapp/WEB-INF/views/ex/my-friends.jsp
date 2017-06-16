<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>PROHOME - Responsive Real Estate Template</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/font-awesom/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/mmenu/jquery.mmenu.all.css" />
<!-- Menu Responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/animate-wow/animate.css">
<!-- Animation WOW -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/labelauty/labelauty.css">
<!-- Checkbox form Style -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<!-- Include Menu stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/media-query.css">
<!-- Media Query -->

<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
<link rel="shortcut icon" href="images/favicon/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-152x152.png" />



<script
	src="${pageContext.request.contextPath}/resources/script/modernizr.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/script/jquery.min.js"></script>
<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->
<script
	src="${pageContext.request.contextPath}/resources/script/jquery-ui.min.js"></script>
<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->
<script
	src="${pageContext.request.contextPath}/resources/script/bootstrap.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script
	src="${pageContext.request.contextPath}/resources/script/vendor/mmenu/mmenu.min.all.js"></script>
<!-- Menu Responsive -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/animation-wow/wow.min.js"></script>
<!-- Animate Script	-->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/labelauty/labelauty.min.js"></script>
<!-- Checkbox Script -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/parallax/parallax.min.js"></script>
<!-- Parallax Script -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagesloaded.min.js"></script>
<!-- Loaded	image with ImageFill -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagefill.min.js"></script>
<!-- ImageFill Script -->
<script
	src="${pageContext.request.contextPath}/resources/script/vendor/easydropdown/jquery.easydropdown.min.js"></script>
<!-- Select	list Script	-->

<script
	src="${pageContext.request.contextPath}/resources/script/custom.js"></script>
<!-- Custom	Script -->

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js"></script>
<script type="text/javascript">
/* 에이작스 시작 */
$(function(){
	$("#friends-search").keyup(function(){//멤버 찾기
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/searchMember",
			data:"keyword="+$(this).val(),
			dataType:"json",
			success:function(data){
				var str="";
				$.each(data,function(index,item){
					str+="<ul id='searchEmail'>"+item.email+"</ul>";
				})
				$("#searchArea").html(str);
			},
			error:function(){
				console.log("실패");
			}
		})
	})
	
	$(document).on("click","#searchEmail",function(){//멤버 찾기 후 클릭시 text박스로 이동
		var name = $(this).text();
		console.log(name);
		$('[id="friends-search"]').val(name);
		$("ul").hide();
	})
	
	$("#friendsAdd").click(function(){//친구추가 처리
		
		var FriendDTO = $("form[name=insertFriendForm]").serialize();
		console.log("버튼클릭");
		$.ajax({
			type : "post",
			url:"${pageContext.request.contextPath}/insertFriend",
			data:FriendDTO
		}) 
	})
	
	$('[id="friendsAdd"]').click(function(){//(친구추가모달에서)확인버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
	
	$('[class="btn btn-reverse button-form"]').click(function(){//(친구추가모달에서)취소버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
})
</script>
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
						<h1 class="title">My Property</h1>
					</div>
					<div>
						<h2 class="sub-title">LOREM IPSUM DOLOR SISCING ELIT JUSTO</h2>
					</div>
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
			</div>
			<!-- /#breadcrumb -->
			<span class="cover"></span>
		</section>
		<!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-md-3">
						<ul class="block-menu">
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/goInfo"><i class="icon fa fa-user-secret"></i>프로필</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/property"><i class="icon fa fa-pencil-square-o"></i>내가쓴글</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>받은쪽지함</a></li>
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">
						<div class="section-title line-style no-margin">
							<h3 class="title">My Friends</h3>
						</div>
						<div class="table-responsive property-list">
							<table class="table-striped table-hover">
								<thead>
									<tr>
										<th>email</th>
										<th>nickName</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${FriendDTO==null }">
										<tr>
											<td colspan="2" align="center">친구가 없습니다</td>
										</tr>
									</c:if>
									<c:forEach items="${FriendDTO}" var="i">
										<tr>
											<td>${i.email }</td>
										    <td>${i.nickName }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br><br>
							<div class="field footer-form text-right">
								<button type="button"  id="cofirmMessage" class="btn btn-default button-form" data-target="#modal-friend" data-toggle="modal">친구등록</button>
							</div>
						</div>
						<!-- /.table-responsive -->
					</div>
					
				</div>
				
			</div>
		</section>
	</div>
	<!-- /#page-container -->
	
	<!-- 모달부분 -->
	<!-- 친구 추가 모달 -->
	<div class="modal fade" id="modal-friend" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<i class="fa fa-close"></i>
				</button>

				<div class="form-container full-fixed">
					<form method="post" action="#" name="insertFriendForm">
						<div id="form-modal-contact" class="box active modal-contact">
							<h2 class="title"><i class="icon fa fa-user user"></i> Friends Search </h2>
							<h3 class="sub-title"></h3>
							<div class="field">
							<i class="fa fa-search"></i>
								
								<input id="friends-search" class="form-control" type="text" name="fEmail">
								<input type="text" hidden="true" value="${sessionScope.myEmail}" name="email">
								
							</div>
							<div id="searchArea" class="box active modal-contact"></div>
							<div class="field footer-form text-right">
								<button type="submit" id="friendsAdd" class="btn btn-default button-form" data-dismiss="modal">확인</button>
								<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div><!-- 친구 추가 모달 종료 -->
</body>
</html>