<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
	var memberId="";
	var memberNick="";
	$(".hidden-xs").click(function(){//메시지 제목을 클릭하여 메시지 상세로 이동
		memberId = $(this).parent().parent().children("td:first").next().text();
		memberNick = $(this).parent().parent().children("td:first").next().next().text();
		messageNum = $(this).parent().parent().children("td:first").text();
		console.log("메시지 번호:"+messageNum);
		var title = $(this).parent().text();
		var content = $(this).parent().next().next().text();
		$("#restaurant-help").val(title);
		$("#message").val(content);
		$(".senderEmail").text(memberId);
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/updateFlag",
			data:"flag=1&messageNum="+messageNum
		})
	})
	$('[class="btn btn-reverse button-form"]').click(function(){//취소버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
	$(document).on("click",'[id="goToMessageWriteForm"]',function(){//답변하기 모달로 이동
		$(".replyMember").text(memberId);
	})
	$(document).on("click",'[id="cofirmMessage"]',function(){//답변하기 모달에서 확인클릭시
		//console.log("메시지 작성->서블릿으로 이동");
		var SendEmail = $(".replyMember").text();
		var messageTitle = $("#title").val();
		var messageContent = $("#messageContent").val();
		
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/noteWrite",
			data:"replyReceiveEmail="+SendEmail+"&messageTitle="+messageTitle+"&messageContent="+messageContent+"&myEmail=${sessionScope.MyEmail}",
			success:function(){
				alert(memberNick+"님께 성공적으로 메세지를 작성하셨습니다.");
				window.location.reload(true);
			}
		})
	})
	
	$("#toEmail").keyup(function(){//메세지 받을 멤버 찾기
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
		//console.log(name);
		$('[id="toEmail"]').val(name);
		$("ul").hide();
	})
	
	$(document).on("click",'[id="writeMessage"]',function(){//작성하기 모달에서 확인클릭시
		//console.log("작성버튼 클릭");
		var SendEmail = $("#toEmail").val();
		var messageTitle = $("#messageTitle").val();
		var messageContent = $("#messageWrite").val();
		/* console.log("보내는 이 ID : ${MyEmail}");
		console.log("받은 이 ID : "+SendEmail);
		console.log("제목 : "+messageTitle);
		console.log("내용 : "+messageContent); */
		
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/noteWrite",
			data:"replyReceiveEmail="+SendEmail+"&messageTitle="+messageTitle+"&messageContent="+messageContent+"&myEmail=${sessionScope.MyEmail}",
			success:function(){
				alert("성공적으로 메세지를 작성하셨습니다.");
				window.location.reload(true);
			}
		})
		
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
						<li class="icon fa fa-user user">쪽지함</li>
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
							<li><a class="faq-button" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>받은쪽지함</a></li>
							
							<li><span class="fa fa-envelope-open"></span></li>
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">
						<div class="section-title line-style no-margin">
							<h3 class="title">My Messages (${fn:length(senderDTO)})</h3>
						</div>
						<div class="table-responsive property-list">
							<table class="table-striped table-hover">
								<thead>
									<tr>
										<th>인덱스</th>
										<th>보낸사람</th>
										<th>닉네임</th>
										<th>제목</th>
										<th>작성시간</th>
										<th>읽음여부</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${senderDTO==null }">
										<tr>
											<td colspan="5" align="center">받은 쪽지가 없습니다.</td>
										</tr>
									</c:if>
									<c:forEach items="${senderDTO}" var="i" varStatus="status">
										<tr>
											<td>${noteDTO[status.count-1].noteNo }</td>
											<td>${i.email }</td>
										    <td>${i.nickName }</td>
										    <td><a href="#" data-target="#modal-contact2" data-toggle="modal"
									class="hidden-xs">${noteDTO[status.count-1].title }</a></td>
										    <td>${noteDTO[status.count-1].dDay }</td>
										    <td hidden="true">${noteDTO[status.count-1].content }</td>
										<c:choose>
										<c:when test="${noteDTO[status.count-1].flag==0 }">
										    <td>읽지 않음</td>
										</c:when>
										<c:otherwise>
											<td>읽음</td>
										</c:otherwise> 
										</c:choose>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br><br>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-default button-form" data-target="#message-write" data-toggle="modal">쪽지작성</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- 모달부분 -->
	<!-- 쪽지 상세 -->
	<div class="modal fade" id="modal-contact2" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<i class="fa fa-close"></i>
				</button>

				<div class="form-container full-fixed">
					<form method="post" action="#">
						<div id="form-modal-contact" class="box active modal-contact">
							<h2 class="title"><i class="icon fa fa-envelope-o"></i> Message <br>From <i class="senderEmail"></i></h2>
							<h3 class="sub-title"></h3>
							<div class="field">
							<i class="icon fa fa-envelope-o"></i>
								<input id="restaurant-help" class="form-control" type="text"
									name="restaurant-help" disabled>
							</div>
							<div class="field">
								<textarea class="form-control" name="message" id="message" disabled></textarea>
							</div>
							<div class="field footer-form text-right">
								<button type="button" id="goToMessageWriteForm" class="btn btn-default button-form" data-target="#reply-contact" data-toggle="modal" data-dismiss="modal">답장하기</button>
								<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div><!-- 쪽지 상세 종료 -->
		<!-- 답장하기 상세 -->
		<div class="modal fade" id="reply-contact" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<i class="fa fa-close"></i>
				</button>
				<div class="form-container full-fixed">
					<form action="#" method="post">
						<div id="form-modal-contact" class="box active modal-contact">
							<h2 class="title"><i class="icon fa fa-envelope-o"></i> Message <br> Reply to <i class="replyMember"></i></h2>
							<h3 class="sub-title"></h3>
							<div class="field">
							<i class="icon fa fa-envelope-o"></i>
								<input id="title" class="form-control" type="text"
									name="title" placeholder="보내실 메시지의 제목을 입력해주세요">
							</div>
							<div class="field">
								<textarea class="form-control" name="messageContent" id="messageContent"
									placeholder="보내실 메시지의 내용을 입력해주세요"></textarea>
							</div>
							<div class="field footer-form text-right">
								<button type="submit" id="cofirmMessage" class="btn btn-default button-form" data-dismiss="modal">확인</button>
								<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div><!-- 답장하기 모달 종료 -->
		
		<!-- 메시지 작성하기 모달 -->
		<div class="modal fade" id="message-write" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<i class="fa fa-close"></i>
				</button>
		<div class="form-container full-fixed">
					<form method="post" action="writeMessage">
						<div id="form-modal-write" class="box active modal-contact">
							<h2 class="title"><i class="icon fa fa-envelope-o"></i> Message</h2>
							<div class="field">
								<i class="icon fa fa-envelope-o"></i>
									<input class="form-control" type="text"
									id="fromEmail" name="fromEmail" value="${sessionScope.MyEmail}" disabled>
								</div>
								<div class="field">
								<i class="icon fa fa-envelope-o"></i>
									<input class="form-control" type="text"
									id="toEmail" name="toEmail" placeholder="받는 이메일의 주소를 입력해주세요">
								</div>
								<div id="searchArea" class="box active modal-contact"></div><!-- ajax로 나타낼 검색어들 -->
							<div class="field">
								<i class="icon fa fa-envelope-o"></i>
								<input class="form-control" type="text"
									id="messageTitle" name="messageTitle" placeholder="메세지 제목을 입력해주세요">
							</div>
							<div class="field">
								<textarea class="form-control" name="messageWrite" id="messageWrite" placeholder="메세지 내용을 입력해주세요"></textarea>
							</div>
							<div class="field footer-form text-right">
								<button type="button" id="writeMessage" class="btn btn-default button-form"  data-dismiss="modal">작성하기</button>
								<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button>
							</div>
						</div>
					</form>
				</div>
				</div>
		</div>
				<!-- 메시지 작성 모달 종료 -->
		</body>
</html>