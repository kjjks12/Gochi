<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
/* 제이쿼리 시작 */
$(function(){
	var memberId="";
	var memberNick="";
	var content="";
	var senderEmail="";
	var messageNum="";
	
	$(".hidden-xs").click(function(){//메시지 제목을 클릭하여 메시지 상세로 이동 & 친구요청글이면 보여주는 버튼을 달리 처리함
		memberId = $(this).parent().parent().children("td:first").next().text();
		memberNick = $(this).parent().parent().children("td:first").next().next().text();
		messageNum += $(this).parent().parent().children("td:first").text();
		//console.log("메시지 번호:"+messageNum);
		var title = $(this).parent().text();
		content += $(this).parent().next().next().text();
		$("#restaurant-help").val(title);
		$("#message").val(content);
		var senderId= $(".senderEmail").text(memberId);
		var sessionTitle = $("#restaurant-help").val();
		senderEmail += $(".senderEmail").text();
		//console.log("타이틀 : "+$("#restaurant-help").val());
	
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/updateFlag",
			async:false,
			data:"flag="+1+"&messageNum="+messageNum+"&title="+sessionTitle,
			success:function(result){
				//console.log(result);
				if(result=="[친구요청]"){
					$("#replyForm").hide();
				}else{
					$("#receiveForm").hide();
				}
			}
		})
	})
	$("#agree").click(function(){//친구요청 메세지 수락 클릭시
		//console.log("친구 수락");
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/friendAgree",
			data:"email=${sessionScope.MyEmail}&fEmail="+senderEmail+"&content="+content+"&noteNo="+messageNum,
			success:function(){
				alert("친구관계가 되었습니다.");
				window.location.reload(true);
			}
		})
	})
	$("#disagree").click(function(){//친구요청 메세지 거절 클릭시
		//console.log("거절");
		$.ajax({
			type : "post",
			url:"${pageContext.request.contextPath}/friendDisagree",
			data:"content="+content+"&noteNo="+messageNum,
			success:function(){
				alert("친구요청을 거절하셨습니다.");
				window.location.reload(true);
			}
		})
	})
	
	$('[class="btn btn-reverse button-form"]').click(function(){//취소버튼 클릭시
		window.location.reload(true);//리플래쉬
	})
	$('[class="fa fa-close"]').click(function(){//(모달에서)x버튼 클릭시
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
			/***
			+"&email=", 왜 값을 넘기다 말았는가?
			다른 함수에서 호출한 컨트롤러 메소드 
			${pageContext.request.contextPath}/searchMember가
			인수를 email까지 요구하기 때문
			에러를 해결하기 위해 매개변수값을 일치시킴
			*/
			data:"keyword="+$(this).val()+"&email=",
			dataType:"json",
			success:function(data){
				var str="";
				$.each(data,function(index,item){
					str+="<ul id='searchEmail'><h3 class='searchedIDs' style='color:rgb(31, 183, 166)'>"+item.email+"</h3></ul>";
				})
				$("#searchArea").html(str);
			},
			error:function(){
				//console.log("실패");
				var str="메시지를 수신할 ID를 입력해주세요.";
				$("#searchArea").html(str);
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
	
		var SendEmail = $("#toEmail").val();
		var messageTitle = $("#messageTitle").val();
		var messageContent = $("#messageWrite").val();
		
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
	
	$("#columns").children().css({"font-size":"25px","text-align":"center"});//테이블 css
	
	$("[id=updateNote]").click(function(){//각 메시지의 x버튼 클릭시
		var messageNum = $(this).parent().children("td:first").text();
		$.ajax({
			type : "post",  
			url:"${pageContext.request.contextPath}/updateFlag",
			data:"flag="+2+"&messageNum="+messageNum+"&title=",
			success:function(){
				window.location.reload(true);
			}
		})
	})
	
	$(document).on("mouseenter","[id=aTag]",function(){//id=aTag에 마우스 접촉시
		//console.log("a");
		$(this).animate({"font-size":"40px"},"fast");
	})
	
	$(document).on("mouseleave","[id=aTag]",function(){//id=aTag에 마우스 이탈시
		$(this).animate({"font-size":"25px"},"fast");
	})
	
	$(document).on("mouseenter","[class=searchedIDs]",function(){//찾은 id에 마우스 접근시
		$(this).animate({"font-size":"30px"},"fast");
	})
	
	$(document).on("mouseleave","[class=searchedIDs]",function(){//찾은 id에서 마우스 이탈시
		$(this).animate({"font-size":"20px"},"fast");
	})
})
</script>
<style>
	textarea{
	resize:none;
	}
	
	table{
	text-align: center;
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
						<li class="icon fa fa-user user">받은쪽지함</li>
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
							<li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/goInfo/${sessionScope.MyEmail}"><i class="icon fa fa-user-secret"></i>프로필</a></li>
							<%-- <li><a class="faq-button" href="${pageContext.request.contextPath}/mypage/property"><i class="icon fa fa-pencil-square-o"></i>내가쓴글</a></li>
							 --%><li><a class="faq-button" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>받은쪽지함</a></li>
						
							<li><span class="fa fa-envelope-open"></span></li>
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">
						<div class="section-title line-style no-margin">
							<h3 class="title">My Messages (${sessionScope.readYet})</h3>
						</div>
						<!-- <div class="section-title line-style no-margin">
							<h1 style="color:HotPink" class="title"></h1> 
						</div> -->
						<div class="table-responsive property-list">
							<table class="table-striped table-hover">
								<thead>
									<tr id="columns">
										<th hidden="true">인덱스</th>
										<th>#</th>
										<!-- <th class="hidden-xs">&nbsp;</th> -->
										<th>보낸사람</th>
										<th>닉네임</th>
										<th>제목</th>
										<th>작성시간</th>
										
										<!-- <th>읽음여부</th> -->
									</tr>
								</thead>
								<tbody>
									<%-- <c:if test="${senderDTO==null }"> --%>
									<c:if test="${flagCount==0 }">
										<tr id="noteSpace">
											<td colspan="5" style="align:center;font-size:25px;">
												받은 쪽지가 없습니다.
												<img src="${pageContext.request.contextPath}/resources/images/nunmul.png">
												<script>
													$("#noteSpace").css({"background-color":"white"})
												</script>
											</td>
										</tr>
									</c:if>
										<c:forEach items="${senderDTO}" var="i" varStatus="status">
											<tr>
												<td hidden="true">${noteDTO[status.count-1].noteNo }</td>
												<!-- <th class="hidden-xs">
													<input class="labelauty" type="checkbox" id="labelauty-106430" style="display: none;">
													<label for="labelauty-106430"></label>
												</th> -->
												<td id="updateNote"> <i class="fa fa-times" aria-hidden="true" ></i></td>
												<td><a href="${pageContext.request.contextPath}/mypage/goInfo/${i.email}" id="aTag">${i.email }</a></td>
											    <td>${i.nickName }</td>
											    <td><a href="#" data-target="#modal-contact2" data-toggle="modal"
										class="hidden-xs" id="aTag">${noteDTO[status.count-1].title }</a></td>
											    <td>${noteDTO[status.count-1].dDay }</td>
											    <td hidden="true">${noteDTO[status.count-1].content }</td>
											   	<c:choose>
											   		<c:when test="${noteDTO[status.count-1].flag==0 }">
														<td id="readYet"  hidden="true">읽지않음</td>
												  		<script>
															$("[id=readYet]").parent().css({"font-size":"25px","color":"rgb(0,0,0)"});
															//$("[id=aTag]").css({"font-size":"25px","color":"rgb(0,0,0)"});
															$("[id=readYet]").parent().find("[id=aTag]").css({"font-size":"25px","color":"rgb(0,0,0)"});
														</script>
													</c:when>
													
													<c:when test="${noteDTO[status.count-1].flag==1 }">
														<td id="alreadyRead" hidden="true">읽음</td>
														<script>
															$("[id=alreadyRead]").parent().css({"font-size":"25px","color":"rgb(170,170,170)"});
															//$("[id=aTag]").css({"font-size":"25px","color":"rgb(170,170,170)"});
															$("[id=alreadyRead]").parent().find("[id=aTag]").css({"font-size":"25px","color":"rgb(170,170,170)"});
															</script>
													</c:when>
													
													<c:when test="${noteDTO[status.count-1].flag==2 }">
														<td id="friendComplete" hidden="true">친구처리완료</td>
														<script>
														$("[id='friendComplete']").parent().children().css("color","rgb(170,170,170)");
														//$("[id='friendComplete']").parent().children("td:first").next().next().next().children().remove();
														$("[id='friendComplete']").parent().remove();
														$("[id='aTag']").css({"color":"rgb(170,170,170)","font-size":"25px"});
														</script>
													</c:when>
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
	<!-- 쪽지 상세 or 친구 승락-->
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
							<div class="field footer-form text-right" id="replyForm">
								<button type="button" id="goToMessageWriteForm" class="btn btn-default button-form" data-target="#reply-contact" data-toggle="modal" data-dismiss="modal">답장하기</button>
								<button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button>
							</div>
							<div class="field footer-form text-right" id="receiveForm">
								<button type="button" id="agree" class="btn btn-default button-form" data-dismiss="modal">수락</button>
								<button type="button" id="disagree" class="btn btn-default button-form" data-dismiss="modal">거절</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div><!-- 쪽지 상세 or 친구 승락창 종료 -->
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
								<textarea style="resize: none;" class="form-control" name="messageContent" id="messageContent"
									placeholder="보내실 메시지의 내용을 입력해주세요"></textarea>
							</div>
							<br>
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
									id="toEmail" name="toEmail" placeholder="메세지를 수신할 ID를 입력해주세요" autocomplete=off>
								</div>
								<div id="searchArea" class="box active modal-contact"></div><!-- ajax로 나타낼 검색어들 -->
							<div class="field">
								<i class="icon fa fa-envelope-o"></i>
								<input class="form-control" type="text"
									id="messageTitle" name="messageTitle" placeholder="메세지 제목을 입력해주세요" autocomplete=off>
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