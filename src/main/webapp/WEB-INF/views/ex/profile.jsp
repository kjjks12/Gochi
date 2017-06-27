<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
/* 파일 필드 관련 css */
.filebox label { 
	display: inline-block; padding: .5em .75em; 
	color: #999; font-size: inherit; line-height: normal; 
	vertical-align: middle; background-color: rgb(31,183,166); 
	cursor: pointer; border: 1px solid #ebebeb; 
	border-bottom-color: #e2e2e2; border-radius: .25em; 
} 
				
/* 프로필 사진 필드 숨기기 */
.filebox input[type="file"] {
	position: absolute; width: 1px; height: 1px; 
	padding: 0; margin: -1px; overflow: hidden; 
	clip:rect(0,0,0,0); border: 0; 
}
/* 프로필 사진 전송 버튼 관련 css*/
.filebox input[type="submit"] {
	 background-color: rgb(31,183,166); 
	 color:white;
	 border: 1px solid white;
	 border-bottom-color: white; border-radius: .25em;
}
/* clear none 하기 */
#header-page .skyline .header-text div {
    clear: none; 
}

</style>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.form.js"></script>
<script type="text/javascript">
$(function(){
	profileDetail();//텍스트 프로필 함수 호출
	coverImageDetail();//배경 이미지 함수 호출
	profileImageDetail();//프로필 이미지 함수 호출
	
	function profileImageDetail(){//프로필 이미지 출력 함수
		var str="";
		str+='<img style="border-radius: 70%; width: 190px; margin-left: 60px;" id="profileImg"';
		str+='src="${pageContext.request.contextPath}/resources/img/member/profile/${requestScope.MYPAGEDTO.email}/${requestScope.MYPAGEDTO.profileImg}">';
		$("#profileCover").append(str);
	}
	
	function coverImageDetail(){//배경 이미지 출력 함수
		var str="";
		str+='<img alt="detail_back_cover" id="review_detail_back_cover_img"';
		str+='src="${pageContext.request.contextPath}/resources/img/member/cover/${requestScope.MYPAGEDTO.email}/${requestScope.MYPAGEDTO.backImg}">';
		$("#detailCover").append(str);
	}
	
	$(document).on("change","#profileImgForm",function(){//프로필 이미지 선택시
		$("#profileImgForm").submit();//자동으로 submit
	});
	
	$(document).on("mouseenter","[id=profileImg]",function(){//프로필 이미지에 마우스 커서 접근시
		//console.log('프로필 이미지 접근');
		$("#profileDiv").show();
		var str='';
		str+='<div class="filebox" id="profileFileForm">';
		str+='<form method="post" action="${pageContext.request.contextPath}/uploadProfileImg/${requestScope.MYPAGEDTO.email}" enctype="multipart/form-data" id="profileImgForm" name="profileImgForm">';
		str+='<label for="ex_file" style="margin-top:-160px;"><p style="color:white;font-size:150%;" id="profileText">프로필 이미지 변경</p></ladbel>';
		str+='<input type="file" name="profileImgFile" id="ex_file"/>';
		/* str+='<input type="submit" value="확인"/>'; */
		str+='</form>';
		str+='</div>';
		$("#profileDiv").html(str);
		$("#profileDiv").css("text-align","center");//가운데 정렬 - 동적 css
	})
	$(document).on("mouseleave","#profileImg",function(){//프로필 이미지에서 마우스 커서 이탈시
		//console.log('프로필 이미지 이탈');
		$("#profileDiv").hide();
	})
	
	$(document).on("mouseenter","#profileDiv",function(){//프로필 file 태그에 마우스 커서 접근시
		//console.log('파일 태그 접근');
		$("#profileDiv").show();
	})
	
	$(document).on("change","#backImgForm",function(){//배경 이미지 선택시
		$("#backImgForm").submit();//자동으로 submit
	});
	
	$(document).on("mouseenter","#review_detail_back_cover_img",function(){//배경 이미지에 마우스 커서 접근시
		
		$("#backImgForm").show();
		//alert("배경이미지 나타내기");
		var str='';
		str+='<div class="filebox">';
		str+='<form method="post" action="${pageContext.request.contextPath}/uploadBackImg/${requestScope.MYPAGEDTO.email}" enctype="multipart/form-data" id="backImgForm">';
		str+='<label for="ex_file"><p style="color:white;font-size:150%">배경 이미지 변경</p></ladbel>';
		str+='<input type="file" name="backImgFile" id="ex_file"/>';
		/* str+='<input type="submit" value="확인"/>'; */
		str+='</form>';
		str+='</div>';
		
		$("#backImgUpdate").html(str);
		$("#backImgUpdate").css("text-align","center");
	})
	$(document).on("mouseleave","[id=backImgForm]",function(){
		//alert("배경 이미지 감추기!!");
		$("#backImgForm").hide();
	})
	
	function profileDetail(){//상세 프로필 뿌리기(닉네임, 자기소개, ID, 핸드폰번호) 
		$.ajax({
			type : "post",
			url:"${pageContext.request.contextPath}/mypage/profileDetail",
			data :"email=${requestScope.MYPAGEDTO.email}&fEmail=${requestScope.MYEMAIL}",
			dataType:"json",
			success:function(result){
				$("#idSpan").text(result[0]);
				$("#nickName").text(result[1]);
				$("#nickName").css("color","white");
				$("#nickName").css("text-shadow","2px 2px 2px gray");
				$("#phoneNumber").text(result[2]);
				$("#selfContent").text(result[3]);
				$("#selfContent").css("color","white");
				$("#selfContent").css("text-shadow","2px 2px 2px gray");
				if(result[0]!=result[4]){//본인의 마이페이지가 아닌경우
					$("#profileImg").css("margin-left","0px");//톱니바퀴가 없는만큼 가운데로 정렬하겠다
					
					$(document).on("mouseenter","#profileImg",function(){//프로필 이미지에서 마우스 커서 이동시
						$("#profileDiv").hide();	
					})
					$(document).on("mouseenter","#review_detail_back_cover_img",function(){//배경 이미지에 마우스 커서 이동시 감추기
						$("#backImgUpdate").hide();
					})
					$(document).on("change","#ex_file",function(){//다른 유저가 커버 수정 선택시
						alert("잘못된 접근입니다.");
						window.location.reload(true);
					}) 
				}
			}
		})
	}
	
	$("[id=updateForm]").click(function(){//업데이트 폼클릭시
		$("#field-1").val($("#idSpan").text());
		$("#field-2").val($("#nickName").text());
		$("#updatePhoneNumber").val($("#phoneNumber").text());
		$("#updateSelfContent").text($("#selfContent").text());
	})
})
</script>
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<c:choose>
					<c:when test="${not empty MYPAGESESSION.backImg }">
						<span class="cover" id="detailCover"></span>
					</c:when>
					<c:otherwise>
						<span class="cover" id="detailCover">
							<img alt="detail_back_cover" id="review_detail_back_cover_img" 
							src="${pageContext.request.contextPath}/resources/images/parallax
							/parallax-header1.png">
						</span>
					</c:otherwise>
				</c:choose>
					<div class="container header-text" style="padding-top: 15px;">
						<c:if test="${MYPAGEEMAIL eq MYEMAIL}">
							<div style="float:right;">
								<a href="#" data-toggle="modal" data-target="#profile-modal" id="updateForm">	
									<i class="fa fa-cog fa-5x" aria-hidden="true"></i>
								</a>
							</div>
						</c:if>
			<c:choose>
				<c:when test="${not empty MYPAGESESSION.profileImg }">
				   <div align="center" id="profileCover"></div>
			    </c:when>
				<c:otherwise>	
					 <div align="center">
						<img style="border-radius: 70%; width: 190px; margin-left: 60px;" id="profileImg"
						src="${pageContext.request.contextPath}/resources/images/default-user-image.png">		
					 </div>
					 <script>
						//$("[class=container header-text]").removeAttr("style");
					 </script>
				</c:otherwise>
			</c:choose>		
						<p id="profileDiv">
					<div>
						<h1 align="center" id="nickName" style="font-weight:bold"></h1>
					</div>
					<div style="text-align:center;text-shadow:2px 2px 2px gray">
						<c:choose>
							<c:when test="${requestScope.MYPAGEDTO.selfContent!=null }">
								<p id="selfContent"/>
							</c:when>
							<c:otherwise>
							<c:choose>
								<c:when test="${MYPAGEEMAIL eq MYEMAIL}">
										<h3><a href="#" id="updateForm" style="color:white;"data-toggle="modal" data-target="#profile-modal">
											자기소개를 등록해 주세요
										</a></h3>
									</c:when>
									<c:otherwise>
										<h3 style="color:white;">자기소개를 등록해 주세요</h3>
								</c:otherwise>
							</c:choose>		
							</c:otherwise>
				    	</c:choose>
					</div>
					<p id="backImgUpdate">	
				</div>
			</div>
		</section><!-- 해더 끝 -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-md-3">
						<ul class="block-menu">
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/mypage/goInfo"><i class="icon fa fa-user-secret"></i>프로필</a></li>
							<c:if test="${MYPAGEEMAIL eq MYEMAIL}">
								 <li><a class="faq-button" href="${pageContext.request.contextPath}/friends"><i class="icon fa fa-pencil-square-o"></i>친구목록</a></li>
								 <li><a class="faq-button" href="${pageContext.request.contextPath}/note"><i class="icon fa fa-envelope-o"></i>받은쪽지함</a></li>
								 <li><a class="faq-button" href="${pageContext.request.contextPath}/selectMyTravelList/${MYEMAIL}"><i class="icon fa fa-calendar" aria-hidden="true"></i>나의 일정</a></li>
							</c:if>
						</ul>
					</div>
					<div class="col-sm-8 col-md-9">
						<div class="row">
							<div class="col-md-7">
								<div class="section-title line-style no-margin">
									<h3 class="title">Member Info</h3>
								</div>
								<ul class="profile">
									<li class="disabled">
										<span>ID</span> <h2 id="idSpan"></h2>
									</li>
								</ul>
								<ul class="profile">
									<li>
										<span>핸드폰번호</span>
										<c:choose>
											<c:when test="${requestScope.MYPAGEDTO.phoneNumber!=null }">
												<h2 id="phoneNumber"></h2>
											</c:when>
											<c:otherwise>
												<h2>핸드폰 번호를 등록해 주세요</h2>
											</c:otherwise>
										</c:choose>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<!-- 프로필 모달 id="profile-modal"-->
        <div id="profile-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
          <div class="modal-dialog"> 
             <form action="${pageContext.request.contextPath}/mypage/update" method="post">
            
              <div class="modal-content"> 
                  <div class="modal-header"> 
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> 
                      <h4 class="modal-title" align="center"><i class="btn-setting edit-profile" aria-hidden="true"></i>&nbsp;설정</h4> 
                  </div> 
                  <div class="modal-body"> 
                      <div class="row"> 
                          <div class="col-md-6"> 
                              <div class="form-group"> 
                                  <label for="field-1" class="control-label">아이디</label> 
                                  <input type="text" class="form-control" name="email" id="field-1" readonly> 
                              </div> 
                          </div> 
                          <div class="col-md-6"> 
                              <div class="form-group"> 
                                  <label for="field-2" class="control-label">닉네임</label> 
                                  <input type="text" class="form-control" id="field-2" readonly> 
                              </div> 
                          </div> 
                      </div> 
                      <div class="row"> 
                          <div class="col-md-6"> 
                              <div class="form-group"> 
                                  <label for="field-3" class="control-label">휴대폰번호</label> 
                                  <input type="text" class="form-control" id="updatePhoneNumber" name="phoneNumber" id="field-3"> 
                              </div> 
                          </div> 
                      </div>
                      <div class="row"> 
                          <div class="col-md-12"> 
                              <div class="form-group no-margin"> 
                                  <label for="field-7" class="control-label">자기소개</label> 
                                  <textarea class="form-control autogrow" id="updateSelfContent" name="selfContent" id="field-7" style="overflow: hidden; word-wrap: break-word; resize: none; height: 104px;"></textarea>
                              </div> 
                          </div> 
                      </div> 
                  </div> 
                  <div class="modal-footer"> 
                      <button type="button" class="btn btn-reverse button-form" data-dismiss="modal">취소</button> 
                      <button type="submit" class="btn btn-default button-form">확인</button> 
                  </div> 
              </div> 
             </form> 
          </div>
        </div><!-- /.modal -->        