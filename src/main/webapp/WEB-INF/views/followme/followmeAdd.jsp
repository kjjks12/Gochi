<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<style>
#detailmap {
	overflow: auto;
}
#ui-datepicker-div{
position: absolute; top: 430px !important; left: 566px; z-index: 1; display: block;
}

.travel_start_end_div{
width: 100%;
}
.travel_start_end_table{
width: 100%;
text-align: center;
}
#weather_div{
width: 100%;
}
.weather_table{
	width: 100%:
}
</style>
<!-- 지도 script -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=a39e6160d10aea82c49d95d61746babb&libraries=services"></script>


<!-- custom css -->
<link
	href='${pageContext.request.contextPath}/resources/css/gochi/travel_add.css'
	rel='stylesheet' />
<link
	href='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.css'
	rel='stylesheet' />
<link
	href='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.print.css'
	rel='stylesheet' media='print' />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/tinymce/tinymce.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/tinymce/tinymce.min.js"></script>



<!-- 초기 셋팅 -->
<script>
alert('여행번호'+${travelDTO.travelNo});
/* $("#travel_thema2").val(${travelDTO.thema}.attr("selected", "selected")); */
</script>
<!-- 데이트피커-->
	<script type="text/javascript">
	 $( function() {
		    $( "#travel_start_day2" ).datepicker({ dateFormat: 'yy-mm-dd' });
		    $( "#travel_end_day2" ).datepicker({ dateFormat: 'yy-mm-dd',
		    	beforeShowDay:noBefore2
			});
		    $("#travel_start_day2").on("change",function (){ 
		    	$('#calendar').fullCalendar({
		    		  validRange: function(nowDate) {
		    		        return {
		    		        	start: $("#travel_start_day2").val(),
		    		        	 end:   $.fullCalendar.moment($("#travel_end_day2").val()).add(1,'days')
		    		        };
		    		    }
		    	});
		   });
		    
	  });
	 function noBefore2(date){ 
		    if (date < $("#travel_start_day2").datepicker( "getDate" )) 
		        return [false]; 
		    return [true]; 
		 }
	 
	 
	</script>
<!-- ./데이트피커-->


<!-- JQuery 스토리/ 일정표 -->
<script>
		
	$(document).ready(function() {

		//여행 타이틀 수정하기 아이콘을 눌렀을때
		$("#user_back_icon").click(function() {
			//alert($("#travel_title").text());
			//수정 입력폼 보여주기
			$("#travel_title_text").show();
			$("#travel_title_save_btn").show();

			//수정폼 text에 기존 값 보여주기
			$("#travel_title_text").val($("#travel_title").text());

			//기존 보여주는 양식 숨기기
			$("#travel_title").hide();
			$("#travel_title_change_btn").hide();
		});

		//여행 타이틀 수정 완료 버튼 눌렀을때
		$("#travel_title_save_btn").click(function() {
			//원래 여행 타이틀 div에 입력받은 text값 넣음
			//alert($("#travel_title_text").val());
			$("#travel_title").text($("#travel_title_text").val());

			//수정 입력폼 숨기기
			$("#travel_title_text").hide();
			$("#travel_title_save_btn").hide();

			//기존 보여주는 양식 보여주기
			$("#travel_title").show();
			$("#travel_title_change_btn").show();
		})


		$("#user_backcover_changebtn").click(function() {

			$("#user_backcover_filebtn").trigger('click');

		})


		//이미지 변경 됬으면
		$("#user_backcover_filebtn").change(function() {
			var file = this.files[0];
			var reader = new FileReader();
			reader.onloadend = function() {
				$('#user_backcover_div').css('background-image', 'url("' + reader.result + '")');

				$("#default_back_div1").hide();
				$("#default_back_div2").hide();
				$("#default_back_div3").hide();
				$("#default_back_div4").hide();

				//글씨 색 바꾸기
				$("#travel_title_span").css('color', 'white');
			}
			if (file) {
				reader.readAsDataURL(file);
			} else {
			}

		});


		$("#btn_story").click(function() {
			$("#story_section").show();
			$("#map_itinerary_section").hide();

		})
		$("#map_itinerary_btn").click(function() {
			$("#map_itinerary_section").show();
			$("#story_section").hide();

		})
	}); //jQuery 끝
</script>



<div id="page-container">


	<section id="header-page" class="header-margin-base">

		<div class="skyline" id="user_backcover_div">

			<div data-offset="50" class="p1 parallax" id="default_back_div1"></div>
			<div data-offset="25" class="p2 parallax" id="default_back_div2"></div>
			<div data-offset="15" class="p3 parallax" id="default_back_div3"></div>
			<div data-offset="8" class="p4 parallax" id="default_back_div4"></div>


			<!-- 여행 타이틀 부분 -->
			<div class="container header-text">
				<div class="profile_title_div">
					<h1 align="center">
						<span id="travel_title_span"> 
						<span id="travel_title">${travelDTO.title}</span>
						</span> <span id="travel_title_change_btn"> <a href="#"
							id="user_back_icon"> <i class="fa fa-pencil-square-o"
								aria-hidden="true"></i></a>
						</span>
					</h1>

					<div class="profile_modified_div">
						<h2>
							<input type="text" id="travel_title_text" size="30"
								maxlength="30" hidden> <input type="button"
								id="travel_title_save_btn" value="저장" hidden>
						</h2>
					</div>
				</div>
				<div class="profile_cover_div">
					<button type="button" class="btn btn-default btn-sm"
						id="user_backcover_changebtn">커버 바꾸기</button>
					<input type="file" id="user_backcover_filebtn"
						onchange="previewImage(this,'user_backcover_div')" />
				</div>

			</div>
		</div>




	</section>

	<section id="contact">

		<div class="container-fluid">
			<div class="row">


				<!-- 왼쪽 정보  -->
				<div class="col-xs-3 col-sm-3 col-md-3  col-lg-2">
					<div class="info-container">
						<h1>여행일정 만들기</h1>

						<!-- 왼쪽 내정보  -->
						<div class="author-box">
							<div class="author-img">
								<a target="_blank"
									href="../myPage/user/0cf608b29ae518684037.html?active=myPlan">
									<img id="profile-img"
									src="${pageContext.request.contextPath}/resources/review_img/review_detail_profile_img.jpg">
								</a>
							</div>
							<div class="author-name">
								<h3>김 준</h3>
							</div>
						</div>
						<div class="author-ment">내상태 메세지</div>
						<!-- 왼쪽 내정보  end -->

						<!-- 왼쪽 정보칸 -->
						<button id="mortgage-calc" class="btn btn-reverse" type="button">저장</button>
						<button id="mortgage-calc" class="btn btn-reverse" type="button">취소</button>
						<ul class="grey-box">

							<li>+123-456-789 <i class="icon fa fa-phone"></i></li>
							<li><a href="#">info@example.com</a><i
								class="icon fa fa-envelope-o"></i></li>
						</ul>
						

						  <h2>
                        <button type="button" class="btn btn-reverse"
                           data-toggle="modal" data-target="#exampleModal"
                           data-whatever="@checkList">체크리스트</button>
                     </h2>
                  <div id="checkboxList"> 
                  	<c:choose>
						<c:when test="${selectCheckList.size()==0}">
							체크리스트 미등록...
						</c:when>
                  	<c:otherwise>
                  	<div id='filter-box'>
                  		<c:forEach items="${selectCheckList}" var="p" varStatus="state">
                  		
							<a href='#' class='filter'>${p}<i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>
							
						</c:forEach>
					</div>
					</c:otherwise>
					</c:choose>
                  	</div>



                     <!-- 체크리스트 모달  -->
                 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                 </button>
                                 <h4 class="modal-title" id="exampleModalLabel">Check
                                    List</h4>
                              </div>

                              <div class="menu-navbar">
                                 <nav id="navigation">


                                    <ul>
                                       <li class="has_submenu">
                                          <h5>
                                             <a href="#" onclick="checkChange('start')">출발</a>
                                          </h5>
                                       </li>
                                       <li class="has_submenu">
                                          <h5>
                                             <a href="#" onclick="checkChange('see')">해변여행</a>
                                          </h5>
                                       </li>
                                       <li class="has_submenu">
                                          <h5>
                                             <a href="#" onclick="checkChange('mt')">산 여행</a>
                                          </h5>
                                       </li>
                                       <li class="has_submenu">
                                          <h5>
                                             <a href="#" onclick="checkChange('buty')">미용도구</a>
                                          </h5>
                                       </li>
                                       <li class="has_submenu">
                                          <h5>
                                             <a href="#" onclick="checkChange('119')">구급약</a>
                                          </h5>
                                       </li>


                                    </ul>
                                 </nav>
                              </div>
                              <!-- /.menu -->
									 <div class="modal-body">
                                 <div class="modal-body-list">히릿</div>
                              </div>
                              <div class="modal-footer">
                                 <button type="button" class="btn btn-default"
                                    data-dismiss="modal">취소</button>
                                 <button type="button" class="btn btn-primary" id="checkListSessionAdd">저장</button>
                              </div>
								</div>
							</div>
						</div>
						<!-- 체크리스트 모달 끝 -->

					</div>
					<!-- /.info-container -->
				</div>
				<!-- 왼쪽 정보칸 end -->

				<!-- 여행 들어갈 내용 -->
				<div class="col-xs-9 col-sm-9 col-md-9  col-lg-10">

<form action="${pageContext.request.contextPath}/followme/followmeAdd" method="post" >

					<!-- 처음 여행 일정 만들때 부분 -->
					<div class="travel_start_end_div">
							<table class="travel_start_end_table">
								<tr>
									<th>시작날짜</th>
									<th>끝 날짜</th>
									<th>테마</th>
								</tr>
								<tr>
									<th>
									<input class="datepicker form-control" type="text" id="travel_start_day2"
										placeholder="Check-in: YYYY/MM/DD" style="width: 200px"
										name="follow_start_day"
										value="${travelDTO.travelStartDay}"
										 />
									</th>
									<th><input
										class="datepicker form-control" type="text" id="travel_end_day2"
										placeholder="Check-out: YYYY/MM/DD"
										style="width: 200px; margin-left: 20px" name="follow_end_day" 
										value="${travelDTO.travelEndDay}"
										/>
									</th>
									<th>
									<select id="travel_thema2" name="thema">
											<option value="thema">-- 여행테마 --</option>
											<option value="friend">바닷가</option>
											<option value="alone">강</option>
											<option value="family">산</option>
											<option value="group">비지니스</option>
											<option value="package">사진촬영</option>
									</select>
									</th>
								</tr>
							</table>
						</div>
				<!--./ 처음 여행 일정 만들때 부분 -->
				
					<!-- 스토리 / 지도 /일정표 -->
					<div class="plan-view-tab">
						<ul id="plan-select-tab">
							<li><a href="#" id="btn_story"><i
									class="fa fa-comment-o" aria-hidden="true"></i>스토리</a></li>
							<li><a href="#" id="map_itinerary_btn"><i
									class="fa fa-calendar" aria-hidden="true"></i> 지도 / 일정표</a></li>
						</ul>
					</div>
					<!--./스토리 / 지도 /일정탭   -->



					<!-- 스토리 영역 -->
					<div id="story_section">스토리 영역 입니다.</div>

					<!-- 지도/일정표 영역 -->
					<div id="map_itinerary_section">
					<div id="weather_div"></div><!--날씨 api  -->

						<!-- 지도 div 영역 -->
			<div class="map_wrap" style="height: 400px !important;">
				<div id="map"></div>
				
  			 <p class="modes"> 
  			 
   					 <label for="input">키워드검색</label>
   					 <input type="text" class="form-input" id="keywordInput" placeholder="떠나고싶은 지명 입력">
   					 <button type="button" class="btn btn-default" id="kewordSearch" >검색</button><br>
   					 <img id="map-img" src="${pageContext.request.contextPath}/resources/review_img/review_detail_profile_img.jpg" style="width:777px;height:310px">
                          
   			</p>
				<br>
		 </div>
			  

</div>
	<!-- 모달폼 시작 -->

  <div class="form-group">
  <div class="section-title line-style">
									<h3 class="title">지역정보</h3>
								</div>
								<ul class="profile">
									<li> 
										<span><input type="text" style="width: 70px;border: none;" id="location" name="location"></span> 
										
									</li>
								</ul>
								<div class="section-title line-style">
									<h3 class="title">이동 정보</h3>
								</div>
								<ul class="profile">
									<li>
										<span>총거리</span>  >>
        						<input type="text" style="width: 80px; border: none;" id="distanceOutput" name="distance" >
									</li>
									<li>
										<span>자동차</span> >>
        						<input type="text" style="width: 100px;border: none;" id="carOutput" name="carTime">
									</li>
									<li>
										<span>도보</span> >>
							 <input type="text" style="width: 100px;border: none;" id="walkOutput" name="walkTime">
									</li>
									<li>
										<span>자전거</span> >>
							 <input type="text" style="width: 100px;border: none;" id="bycicleOutput" name="bycicleTime">
									</li>
									<li>
										<span>예상금액 입력</span> >>
							 <input type="text" style="width: 100px; border:solid;" id="cost" name="cost"> 원
									</li>
								</ul>
								
									<div class="section-title line-style">
						<h3 class="title">일정 계획</h3>
					</div>
					<textarea  id="itinearyStory" name="story" rows="50" cols="10"></textarea>
					<input name="image" type="file" id="upload" class="hidden" hidden>
  			
		</div>
		
<br>
  
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary" id="followText_btn" >저장 후 이동</button>
      </div>
   	</form>
    </div>
	<!--./form 전송 끝 -->    
    </div> <!-- 모달 콘텐츠 -->
</div> <!-- 모달 전체 윈도우 -->

					

						<div id='wrap' >
							<div id='calendar'></div>

							<div style='clear: both'></div>

						</div>


						<!-- 지도 API표시 영역  -->


						<!-- 						해당 날짜 클릭시 보여줄 부분
						<div class="add-my" id="add_my">
							<div class="add-my-box">
								<a id="insert-my-transit"><span class="btn-mytransit"><i
										class="fa fa-bus" aria-hidden="true"></i>My교통</span></a> <a
									id="insert-my-spot"><span class="btn-myspot"><i
										class="fa fa-map-marker" aria-hidden="true"></i>My장소</span></a>
							</div>
						</div> -->
					</div>
	
	<div><button type="button" class="btn btn btn-reverse btn-lg" style="width:100%; margin-top: 20px;">저장</button></div>
	
				</div>
				<!-- 지도/일정영역 end-->

				<!--./ 여행 들어갈 내용 -->




				<!-- ./col-sm-4 -->
			</div>
		</div>
	</section>


	<style>
.modal-dialog {
	position: absolute !important;
	top: 100px;
	right: auto;
	left: 5%;
	bottom: auto;
	z-index: 50;
	color: #777;
	width: 90%;
	min-height: 300px;
	margin-left: auto;
	background-color: #FFF;
	-webkit-border-radius: 2px;
	-khtml-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
	border-bottom-right-radius: 2px;
	border-bottom-left-radius: 2px;
}

.modal-content {
	position: relative;
	background-color: #fff;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 1px solid #999;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 6px;
	outline: 0;
	-webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
	box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
	width: 100%;
}

#onPointTitle {
	size: 100;
}
</style>


 <script type="text/javascript">
      /*  체크리스트 리스트 change */
   
    	  
    
      function checkChange(str) {
         var output = "";
         var list = str;
         
         
         if (list == "start") {
            output = "";
            list = "";
   
            output += "<input id='startCheck' type='checkbox' value='비상금' >비상금</input>";
            output += "<input id='startCheck' type='checkbox' value='교통편' >교통편</input>";
            output += "<input id='startCheck' type='checkbox' value='숙소예약' >숙소예약</input>";
            output += "<input id='startCheck' type='checkbox' value='물놀이아이템' >물놀이 아이템</input>";
            output += "<input id='startCheck' type='checkbox' value='비상연락망' >비상연락망</input>";
            
            $("div .modal-body-list").html(output);
            

            $(document).on("click",'#startCheck' , function() { 
        		//alert($(this).is(":checked")) // true/ false  값 리턴
          		//alert($(this).val())   // 클릭한 해당 value값 리턴
              	$.ajax({
				url: "${pageContext.request.contextPath}/traveladd/checkList", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "check="+ $(this).is(":checked") +"&item="+$(this).val()+"&travel_no="+${travelDTO.travelNo}+"&category=출발", // 서버에게 보낼 parameter정보
				success: function(result) {   // 성공결과
			        var str="";
		         
		            	
		            	str+="<div class='section-title line-style'>";
		            	str+="<h3 class='title'>체크리스트</h3>";
		            	str+="</div>";
		            	str+="<div id='filter-box'>";
		            	
		            	
		            	 $.each(result,function(index,item){
		            		 str+="<a href='#' class='filter'>"+item+" <i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>";
		            	  })
		         	str+= "</div>";
		      
		            $("#checkboxList").html(str);
				},
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			})
    	 })
            return;
     }
         if (list == "see") {
            output = "";
            list = "";
   
            output += "<input id='seeCheck' type='checkbox' value='선글라스' >선글라스</input>";
            output += "<input id='seeCheck' type='checkbox' value='자외선차단제' >자외선차단제</input>";
            output += "<input id='seeCheck' type='checkbox' value='샌들/아쿠아샌들' >샌들/아쿠아샌들</input>";
            output += "<input id='seeCheck' type='checkbox' value='모자' >모자</input>";
            output += "<input id='seeCheck' type='checkbox' value='수영복' >수영복</input>";
            output += "<input id='seeCheck' type='checkbox' value='비치타월/스포츠타월' >비치타월/스포츠타월</input>";
            $("div .modal-body-list").html(output);
        	
            $(document).on("click",'#seeCheck' , function() { 
        		//alert($(this).is(":checked")) // true/ false  값 리턴
          		//alert($(this).val())   // 클릭한 해당 value값 리턴
              	$.ajax({
				url: "${pageContext.request.contextPath}/traveladd/checkList", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "check="+ $(this).is(":checked") +"&item="+$(this).val()+"&travel_no="+${travelDTO.travelNo}+"&category=해변가", // 서버에게 보낼 parameter정보
				success: function(result) {   // 성공결과
			        var str="";
		         
		            	
		            	str+="<div class='section-title line-style'>";
		            	str+="<h3 class='title'>체크리스트</h3>";
		            	str+="</div>";
		            	str+="<div id='filter-box'>";
		            	
		            	
		            	 $.each(result,function(index,item){
		            		 str+="<a href='#' class='filter'>"+item+" <i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>";
		            	  })
		         	str+= "</div>";
		      
		            $("#checkboxList").html(str);
				},
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			})
           
			})
         
   
            return;
         }
         if (list == "mt") {
            output = "";
            list = "";
   
            output += "<input id='mtCheck' type='checkbox' value='배낭' >배낭</input>";
            output += "<input id='mtCheck' type='checkbox' value='물통' >물통</input>";
            output += "<input id='mtCheck' type='checkbox' value='다용도칼' >다용도칼</input>";
            output += "<input id='mtCheck' type='checkbox' value='우비' >우비</input>";
            output += "<input id='mtCheck' type='checkbox' value='지팡이' >지팡이</input>";
            $("div .modal-body-list").html(output);
            $(document).on("click",'#mtCheck' , function() { 
        		//alert($(this).is(":checked")) // true/ false  값 리턴
          		//alert($(this).val())   // 클릭한 해당 value값 리턴
              	$.ajax({
				url: "${pageContext.request.contextPath}/traveladd/checkList", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "check="+ $(this).is(":checked") +"&item="+$(this).val()+"&travel_no="+"&category=산여행", // 서버에게 보낼 parameter정보
				success: function(result) {   // 성공결과
			        var str="";
		         
		            	
		            	str+="<div class='section-title line-style'>";
		            	str+="<h3 class='title'>체크리스트</h3>";
		            	str+="</div>";
		            	str+="<div id='filter-box'>";
		            	
		            	
		            	 $.each(result,function(index,item){
		            		 str+="<a href='#' class='filter'>"+item+" <i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>";
		            	  })
		         	str+= "</div>";
		      
		            $("#checkboxList").html(str);
				},
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			})
          })
         
            return;
         }
            
         if (list == "buty") {
            output = "";
            list = "";
   
            output += "<input id='butyCheck' type='checkbox' value='치약' >치약</input>";
            output += "<input id='butyCheck' type='checkbox' value='샴푸' >샴푸</input>";
            output += "<input id='butyCheck' type='checkbox' value='칫솔' >칫솔</input>";
            output += "<input id='butyCheck' type='checkbox' value='세안수건' >세안수건</input>";
            output += "<input id='butyCheck' type='checkbox' value='BB크림' >BB크림</input>";
            output += "<input id='butyCheck' type='checkbox' value='린스' >린스</input>";
            output += "<input id='butyCheck' type='checkbox' value='바디워시' >바디워시</input>";
            output += "<input id='butyCheck' type='checkbox' value='면도크림' >면도크림</input>";
            output += "<input id='butyCheck' type='checkbox' value='면도기' >면도기</input>";

            $("div .modal-body-list").html(output);
   			
            $(document).on("click",'#butyCheck' , function() { 
        		//alert($(this).is(":checked")) // true/ false  값 리턴
          		//alert($(this).val())   // 클릭한 해당 value값 리턴
              	$.ajax({
				url: "${pageContext.request.contextPath}/traveladd/checkList", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "check="+ $(this).is(":checked") +"&item="+$(this).val()+"&travel_no=1&category=미용도구", // 서버에게 보낼 parameter정보
				success: function(result) {   // 성공결과
			        var str="";
		         
		            	
		            	str+="<div class='section-title line-style'>";
		            	str+="<h3 class='title'>체크리스트</h3>";
		            	str+="</div>";
		            	str+="<div id='filter-box'>";
		            	
		            	
		            	 $.each(result,function(index,item){
		            		 str+="<a href='#' class='filter'>"+item+" <i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>";
		            	  })
		         	str+= "</div>";
		      
		            $("#checkboxList").html(str);
				},
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			})
           })
            return;
         }
         if (list == "119") {
            output = "";
            list = "";
   
            output += "<input id='119Check' type='checkbox' value='종합감기약' >종합감기약</input>";
            output += "<input id='119Check' type='checkbox' value='파스' >파스</input>";
            output += "<input id='119Check' type='checkbox' value='소독약' >소독약</input>";
            output += "<input id='119Check' type='checkbox' value='지사제' >지사제</input>";
            output += "<input id='119Check' type='checkbox' value='두통약' >두통약</input>";
            output += "<input id='119Check' type='checkbox' value='소화제' >소화제</input>";
            output += "<input id='119Check' type='checkbox' value='아스피린' >아스피린</input>";
            output += "<input id='119Check' type='checkbox' value='복용중인약(처방)' >복용중인약(처방)</input>";
            output += "<input id='119Check' type='checkbox' value='복합연고제' >복합연고제</input>";
            $("div .modal-body-list").html(output);
   
            $(document).on("click",'#119Check' , function() { 
        		//alert($(this).is(":checked")) // true/ false  값 리턴
          		//alert($(this).val())   // 클릭한 해당 value값 리턴
              	$.ajax({
				url: "${pageContext.request.contextPath}/traveladd/checkList", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "check="+ $(this).is(":checked") +"&item="+$(this).val()+"&travel_no="+${travelDTO.travelNo}+"&category=응급도구", // 서버에게 보낼 parameter정보
				success: function(result) {   // 성공결과
			        var str="";
		         
		            	
		            	str+="<div class='section-title line-style'>";
		            	str+="<h3 class='title'>체크리스트</h3>";
		            	str+="</div>";
		            	str+="<div id='filter-box'>";
		            	
		            	
		            	 $.each(result,function(index,item){
		            		 str+="<a href='#' class='filter'>"+item+" <i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>";
		            	  })
		         	str+= "</div>";
		      
		            $("#checkboxList").html(str);
				},
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			})
           })
            return;
   
         }
 
        
      }
      /* checkListDelete 클릭시 삭제 이벤트 */
      $(document).on("click",'#checkListDelete' , function() { 
      		alert($(this).attr("name"))
      		$.ajax({
				url: "${pageContext.request.contextPath}/traveladd/deleteIcon", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "item="+$(this).attr("name")+"&travel_no="+${travelDTO.travelNo}, // 서버에게 보낼 parameter정보
				success: function(deleteData) {   // 성공결과
					 var str="";
			         
		            	
		            	str+="<div class='section-title line-style'>";
		            	str+="<h3 class='title'>체크리스트</h3>";
		            	str+="</div>";
		            	str+="<div id='filter-box'>";
		            	
		            	
		            	 $.each(deleteData,function(index,item){
		            		 str+="<a href='#' class='filter'>"+item+" <i class='fa fa-times' id='checkListDelete' name="+item+"></i></a>";
		            	  })
		         	str+= "</div>";
		      
		            $("#checkboxList").html(str);
				},
				
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			})
      })     
     
    
   </script> <!-- 체크리스트 완료 -->
   
<script>

  $(function() {
	   $('#detailModal').click(function() {
	      setTimeout(setMap2, 500);
	   });
	   // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	   var markers = [];
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
	      
	   }

	   
	   $(function(){
	      var callback = function(){
	    	           $("#map-img").hide();

	      var keyWord = $("#keywordInput").val();
	      $("#location").val(keyWord);
	   // 주소-좌표 변환 객체를 생성합니다
	   
	      keyWord = encodeURIComponent(keyWord);
	            // keyword JSON데이터에 접근하기 위한 주소
	         var url = "https://apis.daum.net/local/v1/search/keyword.json?apikey=a39e6160d10aea82c49d95d61746babb&query="+keyWord;                             
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
	           

	               daum.maps.event.addListener(map, 'dblclick', function(mouseEvent) { //더블클릭 이벤트
	            	    var latlng = mouseEvent.latLng;
	            	    alert('double click! ' + latlng.toString());
	            	    addMarker(mouseEvent.latLng);     
	            	    
	            	});
	          
					// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
	            	var markers = [];

	            	// 마커 하나를 지도위에 표시합니다 
	            	addMarker(new daum.maps.LatLng(33.450701, 126.570667));

	            	// 마커를 생성하고 지도위에 표시하는 함수입니다
	            	function addMarker(position) {
	            	    
	            	    // 마커를 생성합니다
	            	    var marker = new daum.maps.Marker({
	            	        position: position
	            	    });

	            	    // 마커가 지도 위에 표시되도록 설정합니다
	            	    marker.setMap(map);
	            	    
	            	    // 생성된 마커를 배열에 추가합니다
	            	    markers.push(marker);
	            	}
	            	
	            	
	            	
	            	var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
	            	var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
	            	var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
	            	var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
	            	var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

	            	// 지도에 클릭 이벤트를 등록합니다
	            	// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
	            	daum.maps.event.addListener(map, 'dblclick', function(mouseEvent) {

	            	    // 마우스로 클릭한 위치입니다 
	            	    var clickPosition = mouseEvent.latLng;

	            	    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
	            	    if (!drawingFlag) {

	            	        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
	            	        drawingFlag = true;
	            	        
	            	        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
	            	        deleteClickLine();
	            	        
	            	        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
	            	        deleteDistnce();

	            	        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
	            	        deleteCircleDot();
	            	    
	            	        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
	            	        clickLine = new daum.maps.Polyline({
	            	            map: map, // 선을 표시할 지도입니다 
	            	            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
	            	            strokeWeight: 3, // 선의 두께입니다 
	            	            strokeColor: '#db4040', // 선의 색깔입니다
	            	            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            	            strokeStyle: 'solid' // 선의 스타일입니다
	            	        });
	            	        
	            	        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
	            	        moveLine = new daum.maps.Polyline({
	            	            strokeWeight: 3, // 선의 두께입니다 
	            	            strokeColor: '#db4040', // 선의 색깔입니다
	            	            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            	            strokeStyle: 'solid' // 선의 스타일입니다    
	            	        });
	            	    
	            	        // 클릭한 지점에 대한 정보를 지도에 표시합니다
	            	        displayCircleDot(clickPosition, 0);

	            	            
	            	    } else { // 선이 그려지고 있는 상태이면

	            	        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
	            	        var path = clickLine.getPath();

	            	        // 좌표 배열에 클릭한 위치를 추가합니다
	            	        path.push(clickPosition);
	            	        
	            	        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
	            	        clickLine.setPath(path);

	            	        var distance = Math.round(clickLine.getLength());
	            	        displayCircleDot(clickPosition, distance);
	            	    }
	            	});
	            	    
	            	// 지도에 마우스무브 이벤트를 등록합니다
	            	// 선을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 선의 위치를 동적으로 보여주도록 합니다
	            	daum.maps.event.addListener(map, 'mousemove', function (mouseEvent) {

	            	    // 지도 마우스무브 이벤트가 발생했는데 선을 그리고있는 상태이면
	            	    if (drawingFlag){
	            	        
	            	        // 마우스 커서의 현재 위치를 얻어옵니다 
	            	        var mousePosition = mouseEvent.latLng; 

	            	        // 마우스 클릭으로 그려진 선의 좌표 배열을 얻어옵니다
	            	        var path = clickLine.getPath();
	            	        
	            	        // 마우스 클릭으로 그려진 마지막 좌표와 마우스 커서 위치의 좌표로 선을 표시합니다
	            	        var movepath = [path[path.length-1], mousePosition];
	            	        moveLine.setPath(movepath);    
	            	        moveLine.setMap(map);
	            	        
	            	        var distance = Math.round(clickLine.getLength() + moveLine.getLength()), // 선의 총 거리를 계산합니다
	            	            content = '<div class="dotOverlay distanceInfo">총거리 <span class="number">' + distance + '</span>m</div>'; // 커스텀오버레이에 추가될 내용입니다
	            	        
	            	        // 거리정보를 지도에 표시합니다
	            	        showDistance(content, mousePosition);   
	            	    }             
	            	});                 

	            	// 지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
	            	// 선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다
	            	daum.maps.event.addListener(map, 'rightclick', function (mouseEvent) {

	            	    // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
	            	    if (drawingFlag) {
	            	        
	            	        // 마우스무브로 그려진 선은 지도에서 제거합니다
	            	        moveLine.setMap(null);
	            	        moveLine = null;  
	            	        
	            	        // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
	            	        var path = clickLine.getPath();
	            	    
	            	        // 선을 구성하는 좌표의 개수가 2개 이상이면
	            	        if (path.length > 1) {

	            	            // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
	            	            if (dots[dots.length-1].distance) {
	            	                dots[dots.length-1].distance.setMap(null);
	            	                dots[dots.length-1].distance = null;    
	            	            }

	            	            var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
	            	                content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
	            	                
	            	            // 그려진 선의 거리정보를 지도에 표시합니다
	            	            showDistance(content, path[path.length-1]);  
	            	             
	            	        } else {

	            	            // 선을 구성하는 좌표의 개수가 1개 이하이면 
	            	            // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
	            	            deleteClickLine();
	            	            deleteCircleDot(); 
	            	            deleteDistnce();

	            	        }
	            	        
	            	        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
	            	        drawingFlag = false;          
	            	    }  
	            	});    

	            	// 클릭으로 그려진 선을 지도에서 제거하는 함수입니다
	            	function deleteClickLine() {
	            	    if (clickLine) {
	            	        clickLine.setMap(null);    
	            	        clickLine = null;        
	            	    }
	            	}

	            	// 마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하거
	            	// 마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
	            	function showDistance(content, position) {
	            	    
	            	    if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
	            	        
	            	        // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
	            	        distanceOverlay.setPosition(position);
	            	        distanceOverlay.setContent(content);
	            	        
	            	    } else { // 커스텀 오버레이가 생성되지 않은 상태이면
	            	        
	            	        // 커스텀 오버레이를 생성하고 지도에 표시합니다
	            	        distanceOverlay = new daum.maps.CustomOverlay({
	            	            map: map, // 커스텀오버레이를 표시할 지도입니다
	            	            content: content,  // 커스텀오버레이에 표시할 내용입니다
	            	            position: position, // 커스텀오버레이를 표시할 위치입니다.
	            	            xAnchor: 0,
	            	            yAnchor: 0,
	            	            zIndex: 3  
	            	        });      
	            	    }
	            	}

	            	// 그려지고 있는 선의 총거리 정보와 
	            	// 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
	            	function deleteDistnce () {
	            	    if (distanceOverlay) {
	            	        distanceOverlay.setMap(null);
	            	        distanceOverlay = null;
	            	    }
	            	}

	            	// 선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
	            	// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
	            	function displayCircleDot(position, distance) {

	            	    // 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
	            	    var circleOverlay = new daum.maps.CustomOverlay({
	            	        content: '<span class="dot"></span>',
	            	        position: position,
	            	        zIndex: 1
	            	    });

	            	    // 지도에 표시합니다
	            	    circleOverlay.setMap(map);

	            	    if (distance > 0) {
	            	        // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
	            	        var distanceOverlay = new daum.maps.CustomOverlay({
	            	            content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
	            	            position: position,
	            	            yAnchor: 1,
	            	            zIndex: 2
	            	        });

	            	        // 지도에 표시합니다
	            	        distanceOverlay.setMap(map);
	            	    }

	            	    // 배열에 추가합니다
	            	    dots.push({circle:circleOverlay, distance: distanceOverlay});
	            	}

	            	// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
	            	function deleteCircleDot() {
	            	    var i;

	            	    for ( i = 0; i < dots.length; i++ ){
	            	        if (dots[i].circle) { 
	            	            dots[i].circle.setMap(null);
	            	        }

	            	        if (dots[i].distance) {
	            	            dots[i].distance.setMap(null);
	            	        }
	            	    }

	            	    dots = [];
	            	}

	            	// 마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
	            	// 그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
	            	// HTML Content를 만들어 리턴하는 함수입니다
	            	function getTimeHTML(distance) {
	            		 // 도보의 시속은 평균 60km/h 이고 자동차의 분속은500m/min입니다
	            	    var carTime = distance / 500 | 0;
	            	    var carHour = '', carMin = '';

	            	    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
	            	    if (carTime > 60) {
	            	    	carHour = '<span class="number">' + Math.floor(carTime / 60) + '</span>시간 '
	            	    }
	            	    carMin = '<span class="number">' + carTime % 60 + '</span>분'

	            	    // 도보의 시속은 평균 4km/h 이고 도보의 분속은50m/min입니다
	            	    var walkkTime = distance / 50 | 0;
	            	    var walkHour = '', walkMin = '';

	            	    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
	            	    if (walkkTime > 60) {
	            	        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
	            	    }
	            	    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

	            	    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
	            	    var bycicleTime = distance / 227 | 0;
	            	    var bycicleHour = '', bycicleMin = '';

	            	    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
	            	    if (bycicleTime > 60) {
	            	        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
	            	    }
	            	    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

	            	    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
	            	    var content = '<ul class="dotOverlay distanceInfo">';
	            	    content += '    <li>';
	            	    content += '        <span class="labelMap">총거리</span><span class="number">' + distance + '</span>m';
	            	    content += '    </li>';
	            	    content += '    <li>';
	            	    content += '           <span class="labelMap">자동차</span>' + carHour + carMin;
	            	    content += '    </li>';
	            	    content += '    <li>';
	            	    content += '        <span class="labelMap">도보</span>' + walkHour + walkMin;
	            	    content += '    </li>';
	            	    content += '    <li>';
	            	    content += '        <span class="labelMap">자전거</span>' + bycicleHour + bycicleMin;
	            	    content += '    </li>';
	            	    content += '</ul>'
	            	    
	            	    	
	            	        $("#distanceOutput").val(distance+"m");
	            	    	$("#carOutput").val(Math.floor(carTime / 60)+ "시간  " + carTime % 60 + "분");
	            	    	$("#walkOutput").val(Math.floor(walkkTime / 60)+ "시간  " + walkkTime % 60 + "분");
	            	    	$("#bycicleOutput").val(Math.floor(bycicleTime / 60)+ "시간  " + bycicleTime % 60 + "분");
	            	    	
	            	    	
	            	    return content;
	            	}


					

	            		
	               
	               }
	   
	            });   
	   
	         });   
	      }
	     
	            // 검색 된 후 input에 입력했던 텍스트를 비워주는 코드
	      $("#kewordInput").val("");
	     // 엔터키 누르면 위치검색 가능 메서드
	      $("#kewordInput").keypress(function() {
	        if(event.which == 13) {
	         callback();
	         
	        } 
	      });
	   
	        $("#kewordSearch").click(callback);   
	    }); // 여기까지 callback 변수에 저장된 메서드
	    
	});
      

  </script>

<script>
$(document).ready(function() {
		//tiymce 
		tinymce.init({
				selector : "#itinearyStory",
				theme : "modern",
				height : "300",
				paste_data_images : true,
				language : "ko_KR",
				images_upload_base_path : '',
				plugins : [
					"advlist autolink lists link image charmap print preview hr anchor pagebreak",
					"searchreplace wordcount visualblocks visualchars code fullscreen",
					"insertdatetime media nonbreaking save table contextmenu directionality",
					"emoticons template paste textcolor colorpicker textpattern" ],
				toolbar1 : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
				toolbar2 : "print preview media | forecolor backcolor emoticons",
				image_advtab : true,
				file_picker_callback : function(callback, value, meta) {
					if (meta.filetype == 'image') {
						$('#upload').trigger('click');
						$('#upload')
							.on('change',function() {
									var file = this.files[0];
									var reader = new FileReader();
									reader.onload = function(e) {
						 			callback(
											e.target.result,
											{
												alt : ''
											});
									};
									reader
										.readAsDataURL(file);
								});
					}
				},
				templates : [ {
					title : 'Test template 1',
					content : 'Test 1'
				}, {
					title : 'Test template 2',
					content : 'Test 2'
				} ]
			});
});//Jquery 끝


</script>



