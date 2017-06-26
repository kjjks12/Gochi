<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
/* 에이작스 시작 */
$(function(){
	$("#friends-search").keyup(function(){//멤버 찾기
	
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/searchMember",
			data:"keyword="+$(this).val()+"&email=${sessionScope.myEmail}",
			dataType:"json",
			success:function(data){
				var str="";
				$.each(data,function(index,item){
					str+="<ul id='searchEmail'><h4 class='searchedIDs' style='color:rgb(31, 183, 166)'>"+item.email+"</h4></ul>";
				})
				
			$("#searchArea").html(str);
				
			},
			error:function(){
				var str="검색 키워드를 입력해주세요";
				$("#searchArea").html(str);
			}
		})
	})
	$(document).on("mouseenter","[class=searchedIDs]",function(){//찾은 id에 마우스 접근시
		$(this).delay(300).animate({"font-size":"30px"},"fast");
	})
	
	$(document).on("mouseleave","[class=searchedIDs]",function(){//찾은 id에서 마우스 이탈시
		$(this).animate({"font-size":"20px"},"fast");
	})
	
	$(document).on("click","#searchEmail",function(){//멤버 찾기 후 클릭시 text박스로 이동
		var name = $(this).text();
		$('[id="friends-search"]').val(name);
		$("ul").hide();
		
		$.ajax({
			type : "post", 
			url:"${pageContext.request.contextPath}/searchMemberClick",
			data:"keyword="+$("#friends-search").val()+"&email=${sessionScope.myEmail}",
			dataType:"text",
			success:function(data){
				//console.log("서블렛에서 리턴받은 값 : "+data);
				
				if(data=="dupli"){
					$("#dupliSpace").html("<h2 style='color:rgb(255,0,0)'>친구요청중이거나 친구인 회원입니다.</h2>");
					$("#friendsAdd").hide();
				}else if(data=="mine"){
					$("#dupliSpace").html("<h2 style='color:rgb(255,0,0)'>사용자 계정입니다.</h2>");
					$("#friendsAdd").hide();
				}else{
				    $("#dupliSpace").html("<h2 style='color:rgb(0,0,255)'>친구신청가능합니다.<h2>");
				    $("#friendsAdd").show();
				}
				
			}
		})
	})
	
	$("#friendsAdd").click(function(){//친구요청 처리
		var FriendDTO = $("form[name=insertFriendForm]").serialize();
		console.log("버튼클릭");
		$.ajax({
			type : "post",
			url:"${pageContext.request.contextPath}/insertFriend",
			data:FriendDTO,
			success:function(){
				alert("친구요청메시지를 송신하였습니다.");
			}
		}) 
	})
	
	$("#cofirmMessage").click(function(){//친구등록 클릭시 
		$("#friendsAdd").hide();
	})
	
	$('[id="friendsAdd"]').click(function(){//(친구추가모달에서)확인버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
	
	$('[class="btn btn-reverse button-form"]').click(function(){//(친구추가모달에서)취소버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
	$('[class="fa fa-close"]').click(function(){//(모달에서)x버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
	$("#columns").children().css({"text-align":"center","font-size":"25px"});//친구 테이블 css
	
	/* $("[id=aTag]").mouseenter(function(){ // 친구 아이디에 마우스를 접근할시
		$(this).delay(300).animate({"font-size":"35px"},"fast");
	})
	$("[id=aTag]").mouseleave(function(){ // 친구 아이디에서 마우스 커서를 이탈할시
		$(this).animate({"font-size":"25px"},"fast");
	})
	
	$("[id=profileImg]").mouseenter(function(){// 프로필 이미지에 마우스 커서를 접근할시
		$(this).delay(300).animate({"width":"250px"},"fast");
	})
	$("[id=profileImg]").mouseleave(function(){// 프로필 이미지에서 마우스 커서를 이탈할시
		$(this).animate({"width":"100px"},"fast");
		
	}) */
})
</script>
<style>
table{
	text-align : center;
	}
</style>	
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
						<li class="icon fa fa-user user">친구목록</li>
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
							<li><a class="faq-button"
								href="${pageContext.request.contextPath}/mypage/goInfo/${sessionScope.myEmail}"><i
									class="icon fa fa-user-secret"></i>프로필</a></li>
							<li><a class="faq-button active"
								href="${pageContext.request.contextPath}/friends"><i
									class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button"
								href="${pageContext.request.contextPath}/note"><i
									class="icon fa fa-envelope-o"></i>받은쪽지함</a></li>
									<li><a class="faq-button"
							href="${pageContext.request.contextPath}/selectMyTravelList/${MYEMAIL}"><i
								class="icon fa fa-calendar" aria-hidden="true"></i>나의 일정</a></li>
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">
						<div class="section-title line-style no-margin">
							<h3 class="title">My Friends</h3>
						</div>
						<div class="table-responsive property-list">
							<table class="table-striped table-hover">
								<thead>
									<tr id="columns">
										<th></th>
										<th>친구 아이디</th>
										<!-- <th>닉네임</th> -->
									</tr>
								</thead>
								<tbody>
									<c:if test="${FriendDTO==null }">
										<tr id="friendSpace">
											<td colspan="3" style="align:center;font-size:25px;">
												친구가 없습니다
												<img src="${pageContext.request.contextPath}/resources/images/nunmul.png">
												<script>
													$("#friendSpace").css({"background-color":"white"})
												</script>
											</td>
										</tr>
									</c:if>
									<c:forEach items="${FriendDTO}" var="i">
										<tr id="friends">
											<c:choose>
												<c:when test="${not empty i.profileImg}">
													<td>
														<img style="border-radius: 70%; width: 95px;" id="profileImg"
														src="${pageContext.request.contextPath}/resources/img/member/profile/${i.email}/${i.profileImg}">
														${i.nickName }
													</td>
												</c:when>
												<c:otherwise>
													<td>
														<img style="border-radius: 70%; width: 95px; margin-left: 60px;" id="profileImg"
														src="${pageContext.request.contextPath}/resources/images/default-user-image.png">
													</td>
												</c:otherwise>
											</c:choose>	
											<td><a href="${pageContext.request.contextPath}/mypage/goInfo/${i.email}" id="aTag">${i.email}</a></td>
											<%-- <td>${i.nickName }</td> --%>
										</tr>
										<script>
										$("[id=aTag]").css({"font-size":"25px"});
										$("[id=friends]").children().css({"font-size":"25px"});
										</script>
									</c:forEach>
								</tbody>
							</table>
							<br> <br>
							<div class="field footer-form text-right">
								<button type="button" id="x	"
									class="btn btn-default 

button-form"
									data-target="#modal-friend" data-toggle="modal">친구등록</button>
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
	<div class="modal fade" id="modal-friend" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">
				<i class="fa fa-close"></i>
			</button>

			<div class="form-container full-fixed">
				<form method="post" action="#" name="insertFriendForm">
					<div id="form-modal-contact" class="box active modal-contact">
						<h2 class="title">
							<i class="icon fa fa-user user"></i> Friends Search

						</h2>
						<h3 class="sub-title"></h3>
						<div class="field">
							<i class="fa fa-search"></i> <input id="friends-search"
								class="form-control" type="text" name="fEmail" autocomplete=off 
								placeholder="검색 후 클릭하여 아이디를 선택해주세요">
							<input type="text" hidden="true" value="${sessionScope.myEmail}"
								name="email">

						</div>
						<div id="searchArea" class="box active modal-contact"></div>
						<div class="field footer-form text-right">
							<button type="submit" id="friendsAdd"
								class="btn btn-default button-form" data-dismiss="modal">확인</button>
							<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button>
							<div id="dupliSpace"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 친구 추가 모달 종료 -->