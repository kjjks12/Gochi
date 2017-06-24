<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<style>
#detailmap {
	overflow: auto;
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

<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/moment.min.js'></script>


<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/jquery.min.js'></script>
<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/jquery-ui.min.js'></script>

<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.js'></script>


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

		   });
		    
	  });
	 function noBefore2(date){ 
		    if (date < $("#travel_start_day2").datepicker( "getDate" )) 
		        return [false]; 
		    return [true]; 
		 }
	 
	 
	</script>
<!-- ./데이트피커-->



<!-- 날씨 스크립트 -->
<script>
	$(function() {
		var table = "";
		var imageurl = "http://openweathermap.org/img/w/";
		var png = ".png";
		var city = "";

		$.ajax({
			url : "http://api.openweathermap.org/data/2.5/forecast?q=Korea,us&mode=xml&&APPID=4af3d3202431fd8820e81da5a5f4753e", //요청이름(이동경로)
			type : "post", //method방식(get,post)
			dataType : "xml", //요청결과정보의 타입(text, html, xml, json)
			success : function(response) {
				//alert(response);
				city = $(response).find('location name').text();
				table += "<table class=weather_table><tr>"
				$(response).find('time').each(function() {
					//그날의 12 시 면
					if ($(this).attr('from').substring(11, 13) == '12') {
						table += "<th>" + $(this).attr('from').substring(5, 10) + "</th>"
					}
				}) //그날의 날씨  each문

				table += "</tr><tr>"
				$(response).find('time').each(function() {

					if ($(this).attr('from').substring(11, 13) == '12') {
						var icon = $(this).find('symbol').attr('var');
						table += "<td><img src=" + imageurl + icon + png + "></td>";
					}
				})

				table += "</tr></table>"

				$("#weather_div").html(table);
			},
			error : function(err) {
				//alert(err + "오류발생")
			}
		});

	}) //Jquery 끝
</script>


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

<!--달력 캘린더 -->
<script>
var flag=0;
	$(document).ready(function() {

		/* initialize the external events
		-----------------------------------------------------------------*/

		$('#external-events .fc-event').each(function() {

			// store data so the calendar knows to render an event upon drop
			$(this).data('event', {
				title : $.trim($(this).text()), // use the element's text as the event title
				stick : true // maintain when user navigates (see docs on the renderEvent method)
			});

			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex : 999,
				revert : true, // will cause the event to go back to its
				revertDuration : 0 //  original position after the drag
			});

		});

/* 		$('#calendar').find('.fc-slats').find('[class="fc-widget-content"]').hover(
			function() {
				var tr = $(this).parent();
				var time = tr.find('td.fc-axis.fc-time.fc-widget-content').find("span").text();
				$(this).append('<td class="temp_cell" style="border: 0px; width:5px;">' + time + '</td>');
			},
			function() {
				$(this).children('.temp_cell').remove();
			}); */
			/* initialize the calendar
			-----------------------------------------------------------------*/

		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			defaultView : 'agendaWeek',
			validRange: function aaa(){
				return{
					start: $("#travel_start_day2").val(),
			        end:   $.fullCalendar.moment($("#travel_end_day2").val()).add(1,'days')
				}
			},
			editable : true,
			droppable : true, // this allows things to be dropped onto the calendar
			drop : function(date, allDay) {
				//alert(date)
				//alert(allDay)
			},
			monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
			dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
			buttonText : {
				today : "오늘",
				month : "월별",
				week : "주별",
				day : "일별",
			},
		 	dayClick : function(date, jsEvent, view) {
		 		flag=0;
		 		alert("삽입:"+flag);
					//alert(moment(date).add('m',30).utc().format());
				  //alert('Clicked on: ' + date.format());
				 // alert('Clicked on: ' + date.format('YYYY-MM-DD A/P HH:MM'));
				  //alert('Clicked on: ' + new Date(Date.parse(date)+1000*60*30).format('YYYY-MM-DD HH:MM'));
				  var startTime= date.format('YYYY-MM-DD HH:MM');
			      var endTime=moment(date).add('m',30).utc().format();
				$("#startTime").val(startTime);			
				$("#endTime").val(endTime);			
				itinearyInitFunc();//모달 초기화
				$("#detailmap").modal('show');
				
			
			}, 
			navLinks : true,
			navLinkDayClick : function(date, jsEvent) {
				console.log('day', date.format()); // date is a moment
				console.log('coords', jsEvent.pageX, jsEvent.pageY);
			},
			editable : true,
			eventLimit : true, // allow "more" link when too many events
			events: function(start, end, timezone, callback) {
				alert("이벤트"+flag);
				$("#travelItineary_btn").click(function() {
						if(flag==0){	
					    //alert($("#itinearyStory").val(tinymce.activeEditor.getContent()) );
							$("#itinearyStory").val(tinymce.activeEditor.getContent());
							var url="travelItineary";
							 $.ajax({
									url : url, //요청이름(이동경로)
									type : "post", //method방식(get,post)
									data: $("#travelItinearyForm").serialize(),
									dataType : "json", //요청결과정보의 타입(text, html, xml, json)
									success : function(travelItinearyDTO) {
										alert('여행일정 seq'+travelItinearyDTO.itinearyNo);
										//alert(response+"dd5335");
									 	 var events = [];
											events.push({
											id:travelItinearyDTO.itinearyNo,
								            title: travelItinearyDTO.travelItinearyTitle,
							                start:travelItinearyDTO.startTime,
							              	end :travelItinearyDTO.endTime
								           }); 
										callback(events);
									},//ajax_Success
									error : function(err) {
										//alert(err + "오류발생")
									}
								});//Ajax 끝
						}
								 
					$("#detailmap").modal('hide');	
					});//btnClick 
			},//events 끝
			 eventClick: function(event) {//수정용
				 flag=1;
				 //alert("수정"+flag);
				 alert("수정할 이벤트 여행일정 번호"+event.id);
				var itinearyNo="itinearyNo="+event.id;
			 	 $.ajax({
						url :"selectTravelItineary", //요청이름(이동경로)
						type : "post", //method방식(get,post)
						data: itinearyNo,
						dataType : "json", //요청결과정보의 타입(text, html, xml, json)
						success : function(travelItinearyDTO) {
							itinearyInitFunc();//여행일정모달 초기화
							alert(travelItinearyDTO.travelItinearyTitle)						 	
						    //1.여행타이틀 셋팅 
							$("#travelItinearyTitle").val(travelItinearyDTO.travelItinearyTitle);
							//2.좌표셋팅
							var markerpos = new daum.maps.LatLng(travelItinearyDTO.latitude, travelItinearyDTO.logtitude);
							alert(markerpos);
							var marker=addMarker(markerpos,0);
							onePointMap.panTo(markerpos);
							//3.내용 셋팅
							tinymce.activeEditor.setContent(travelItinearyDTO.story);
							//4.modal 보여주기
							$("#detailmap").modal('show');
						},//ajax_Success
						error : function(err) {
							alert(err + "오류발생")
						}
					});//Ajax 끝
					$("#travelItineary_btn").click(function() {
						if(flag==1){//수정하기 ajax
							$("#itinearyNo").val(itinearyNo);
							$("#itinearyStory").val(tinymce.activeEditor.getContent());
							 $.ajax({
									url : "travelItinearyUpdate", //요청이름(이동경로)
									type : "post", //method방식(get,post)
									data: $("#travelItinearyForm").serialize(),
									dataType : "json", //요청결과정보의 타입(text, html, xml, json)
									success : function(travelItinearyDTO) {
										alert('수정완료 '+travelItinearyDTO.itinearyNo);
										event.title=travelItinearyDTO.travelItinearyTitle;
										$('#calendar').fullCalendar('updateEvent', event);
										
									},//ajax_Success
									error : function(err) {
										//alert(err + "오류발생")
									}
								});//Ajax 끝
						}
						$("#detailmap").modal('hide');
					})//수정하기 버튼
			 	
			},//event 클릭
		}); /*./fullCalendar 끝*/
		

		$('.fc-widget-content').hover(function() {
			if (!$(this).html()) {
				for (i = 0; i < 7; i++) {
					$(this).append('<td class="temp-cell" style="border: 0px; width:' + (Number($('.fc-day').width()) + 3) + 'px"></td>');
				}

				$(this).children('td').each(function() {
					$(this).hover(function() {
						//$(this).html('<div class=current-time-cell  data-toggle="modal" id="detailModal" data-target="#detailmap"  aria-hidden="true" style="z-index:100"><i class="fa fa-plus-circle"></i></div>');
						$(this).html('<div class=current-time-cell id="detailModal"  id="detailModal" aria-hidden="true" style="z-index:100"><i class="fa fa-plus-circle"></i></div>');

					}, function() {
						$(this).html('');
					});
				});
			}
		}, function() {
			$(this).children('.temp-cell').remove();
		});
	});
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
							<a href="#">친구목록</a>
						</h2>
						<ul class="grey-box">
							<li><a href="mailto:info@prohome.com">친구별명</a><i
								class="icon fa fa-envelope-o"></i></li>
							<li><a href="mailto:support@prohome.com">친구별명</a><i
								class="icon fa fa-envelope-o"></i></li>
							<li><a href="mailto:development@prohome.com">친구별명</a><i
								class="icon fa fa-envelope-o"></i></li>
						</ul>

						<h2>
							<button type="button" class="btn btn-reverse" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@checkList">체크리스트</button>
						</h2>
						<ul class="grey-box">
							<li>Info: +0123-456-789 <i class="icon fa fa-mobile"></i></li>
							<li>Support: +0123-987-654 <i class="icon fa fa-phone"></i></li>
							<li>Dev: +0123-123-456 <i class="icon fa fa-phone"></i></li>
						</ul>



						<!-- 체크리스트 모달  -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">×</span><span class="sr-only">Close</span>
										</button>
										<h4 class="modal-title" id="exampleModalLabel">Check List</h4>
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
										<button type="button" class="btn btn-primary">저장</button>
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


					<!-- 간단한 여행 설명 부분  -->
					<div id="story">
						<form method="post" action="contact.php" class="form-large"
							role="form" data-toggle="validator">

							<input type="text" id="planMessage"
								class="form-control plan-brief"
								placeholder="어떤 여행인지 간단히 설명해 주세요 " maxlength="300"
								value="" />
							<textarea class="form-control" id="planDetailMessage" rows="10"
								placeholder="당신의 여행 스토리를 남겨보세요!" maxlength="10000">${travelDTO.briefStory}</textarea>

						</form>
					</div>
					<!-- 간단한 여행 설명 부분 end  -->

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
										name="travel_start_day2"
										value="${travelDTO.travelStartDay}"
										 />
									</th>
									<th><input
										class="datepicker form-control" type="text" id="travel_end_day2"
										placeholder="Check-out: YYYY/MM/DD"
										style="width: 200px; margin-left: 20px" name="travel_end_day2" 
										value="${travelDTO.travelEndDay}"
										/>
									</th>
									<th>
									<select id="travel_thema2" name="thema">
											<option value="thema">-- 테마 --</option>
											<option value="friend">친구와 함께</option>
											<option value="alone">나홀로여행</option>
											<option value="family">가족과 함께</option>
											<option value="group">단체여행</option>
											<option value="package">패키지여행</option>
											<option value="couple">커플</option>
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

						<div id="weather_div"></div>

						<div id="travel_itinery_map"></div>

						<script>
							var container = document.getElementById('travel_itinery_map');
							var options = {
								center : new daum.maps.LatLng(33.450701, 126.570667),
								level : 3
							};
						
							var map = new daum.maps.Map(container, options);
						</script>

						<div id='wrap'>
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
	<!-- 일정 저장 스크립트 -->
	<script>

	</script>

	<!--여행 장소 1개 추가 모달 -->
	<div class="modal fade" id="detailmap" tabindex="-1" role="dialog"
		aria-labelledby="detailmapModal" aria-hidden="true"
		style="width: 100%;">

		<div class="modal-dialog modal-lg" style="z-index: 1001;">
			<div class="modal-content"
				style="background-clip: border-box; margin-top: 2%; margin-right: 10%">
				
				<!-- 여행 일정 전송 폼 -->
				<form method="post" id="travelItinearyForm" name="onePointContent">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							id="travelitineary_modal_close_btn" aria-hidden="true">X</button>
						<div class="section-title line-style">
							<span class="title"><h4>
									일정 제목 :<input type="text" id="travelItinearyTitle"
										name="travelItinearyTitle">
								</h4></span>
						</div>
					</div>

					<div class="modal-body">
						<input type="hidden" value="${travelDTO.travelNo}" name="travelNo">
						<input type="hidden" value="0" name="itinearyNo" id="itinearyNo">
						<input type="hidden" value="" id="startTime" name="startTime">
						<input type="hidden" value="" id="endTime" name="endTime">
						<input type="hidden" value="" id="latitude" name="latitude">
						<input type="hidden" value="" id="logtitude" name="logtitude">
					
						<div class="map_wrap">
							<!-- 지도 div 영역 -->
							<div id="one_point_map"></div>
							<div id="menu_wrap" class="bg_white">
								<div class="option">
									<div>
										<input type="text" class="form-input" id="keywordInput"
											placeholder="키워드 검색">
										<button type="button" class="btn btn-default"
											id="kewordSearch">검색</button>
									</div>
								</div>
								<hr>
								<ul id="placesList"></ul>
								<div id="pagination"></div>
							</div>
							<p class="modes"></p>
							<br>
						</div>

					</div>
					<div class="section-title line-style">
						<h3 class="title">일정 계획</h3>
					</div>
					<textarea  id="itinearyStory" name="story" rows="50" cols="10"></textarea>
					<input name="image" type="file" id="upload" class="hidden" hidden>
					<!-- 모달 foot -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						
						 <button type="button" class="btn btn-primary"
							id="travelItineary_btn">저장 후 이동</button>
					</div>
				</form>

				<!-- 모달 foot end-->
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 끝 -->
	</div>
</div>
<!-- 모달 전체 윈도우 -->

<!-- 여행장소 1개 초기화 -->
<script>
function itinearyInitFunc(){
	/*1.일정 제목 초기화*/
	$("#travelItinearyTitle").val("");
	/*2.지도 초기화*/
	$("#keywordInput").val("");
	removeAllChildNods(document.getElementById('placesList'));
	removeMarker();
	setTimeout("callMap()", 500);
	/*3.텍스트 영역 초기화*/
	tinymce.activeEditor.setContent(' ');
}

</script>

<!--여행 장소 1개 추가 모달 다음 지도 API-->
<script>
var onePointMap;
var markers;
	//마커를 담을 배열입니다
	 markers = [];
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new daum.maps.InfoWindow({
		zIndex : 1
	});

	 onPointMapContainer = document.getElementById('one_point_map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3 // 지도의 확대 레벨
		};

	// 지도를 생성합니다    
	onePointMap = new daum.maps.Map(onPointMapContainer, mapOption);

	
	function callMap() {
	onePointMap.relayout();
	}

	$(function() {
		$("#kewordSearch").click(function() {
			//alert($("#keywordInput").val());
			var searchKeword = $("#keywordInput").val();

			//장소 검색 객체를 생성합니다
			var ps = new daum.maps.services.Places();

			//검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
				zIndex : 10
			});


			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(searchKeword, placesSearchCB);

			//장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(status, data, pagination) {
				if (status === daum.maps.services.Status.OK) {

					// 정상적으로 검색이 완료됐으면
					// 검색 목록과 마커를 표출합니다
					displayPlaces(data.places);

					// 페이지 번호를 표출합니다
					displayPagination(pagination);

				} else if (status === daum.maps.services.Status.ZERO_RESULT) {

					alert('검색 결과가 존재하지 않습니다.');
					return;

				} else if (status === daum.maps.services.Status.ERROR) {

					alert('검색 결과 중 오류가 발생했습니다.');
					return;

				}
			}

		}) //kewordSearchClick 했을때
	}); //Jquery  끝 */
	

	//검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
		var listEl = document.getElementById('placesList'),
			menuEl = document.getElementById('menu_wrap'),
			fragment = document.createDocumentFragment(),
			bounds = new daum.maps.LatLngBounds(),
			listStr = '';

		// 검색 결과 목록에 추가된 항목들을 제거합니다
		removeAllChildNods(listEl);
		
		
		// 지도에 표시되고 있는 마커를 제거합니다
		removeMarker();

		for (var i = 0; i < places.length; i++) {

			// 마커를 생성하고 지도에 표시합니다
			var placePosition = new daum.maps.LatLng(places[i].latitude, places[i].longitude),
				marker = addMarker(placePosition, i),
				itemEl = getListItem(i, places[i], marker); // 검색 결과 항목 Element를 생성합니다

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			// LatLngBounds 객체에 좌표를 추가합니다
			bounds.extend(placePosition);

			// 마커와 검색결과 항목에 mouseover 했을때
			// 해당 장소에 인포윈도우에 장소명을 표시합니다
			// mouseout 했을 때는 인포윈도우를 닫습니다
			(function(marker, title) {
				daum.maps.event.addListener(marker, 'mouseover', function() {
					displayInfowindow(marker, title);
				});

				daum.maps.event.addListener(marker, 'mouseout', function() {
					infowindow.close();
				});

				daum.maps.event.addListener(marker, 'click', function() {
					//alert(marker.getPosition().getLat());
					
					$("#latitude").val(marker.getPosition().getLat());
					$("#logtitude").val(marker.getPosition().getLng());
					removeMarker();
					selectMarker(marker);
					//alert(marker.getPosition());
				});

				itemEl.onmouseover = function() {
					displayInfowindow(marker, title);
				};
				itemEl.onclick = function() {
					$("#latitude").val(marker.getPosition().getLat());
					$("#logtitude").val(marker.getPosition().getLng());
					removeMarker();
					selectMarker(marker);
				};
				itemEl.onmouseout = function() {
					infowindow.close();
				};


			})(marker, places[i].title);

			fragment.appendChild(itemEl);
		}

		// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
		listEl.appendChild(fragment);
		menuEl.scrollTop = 0;

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		onePointMap.setBounds(bounds);
	}

	//검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {
		var el = document.createElement('li'),
			itemStr = '<span class="markerbg marker_' + (index + 1) + '"></span>' +
				'<div class="info">' +
				'   <h5>' + places.title + '</h5>';

		if (places.newAddress) {
			itemStr += '    <span>' + places.newAddress + '</span>' +
				'   <span class="jibun gray">' + places.address + '</span>';
		} else {
			itemStr += '    <span>' + places.address + '</span>';
		}

		itemStr += '  <span class="tel">' + places.phone + '</span>' +
			'</div>';

		el.innerHTML = itemStr;
		el.className = 'item';

		return el;
	}

	//마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
		var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new daum.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new daum.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
			},
			markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
			marker = new daum.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

		marker.setMap(onePointMap); // 지도 위에 마커를 표출합니다
		marker.setDraggable(true); // 드래그 가능하도록 설정
		markers.push(marker); // 배열에 생성된 마커를 추가합니다

		return marker;
	}

	//지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
		}
		markers = [];
	}

	//마커 올리기
	function selectMarker(marker) {
		marker.setMap(onePointMap); // 지도 위에 마커를 표출합니다
		markers.push(marker); // 배열에 생성된 마커를 추가합니다
	}

	//검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
		var paginationEl = document.getElementById('pagination'),
			fragment = document.createDocumentFragment(),
			i;

		// 기존에 추가된 페이지번호를 삭제합니다
		while (paginationEl.hasChildNodes()) {
			paginationEl.removeChild(paginationEl.lastChild);
		}

		for (i = 1; i <= pagination.last; i++) {
			var el = document.createElement('a');
			el.href = "#";
			el.innerHTML = i;

			if (i === pagination.current) {
				el.className = 'on';
			} else {
				el.onclick = (function(i) {
					return function() {
						pagination.gotoPage(i);
					}
				})(i);
			}

			fragment.appendChild(el);
		}
		paginationEl.appendChild(fragment);
	}

	//검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	//인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
		var content = '<div style="padding:5px;z-index:2;">' + title + '</div>';

		infowindow.setContent(content);
		infowindow.open(onePointMap, marker);

	}

	// 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {
		while (el.hasChildNodes()) {
			el.removeChild(el.lastChild);
		}
	}
</script>


<script type="text/javascript">
	/*  체크리스트 리스트 change */
	function checkChange(str) {
		var output = "";
		var list = str;
		if (list == "start") {
			output = "";
			list = "";

			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			$("div .modal-body-list").html(output);

			return;
		}
		if (list == "see") {
			output = "";
			list = "";

			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			$("div .modal-body-list").html(output);

			return;
		}
		if (list == "mt") {
			output = "";
			list = "";

			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			$("div .modal-body-list").html(output);

			return;
		}
		if (list == "buty") {
			output = "";
			list = "";

			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			$("div .modal-body-list").html(output);

			return;
		}
		if (list == "119") {
			output = "";
			list = "";

			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			output += "<input  type='checkbox' value='아이템' >아이템</input>";
			$("div .modal-body-list").html(output);

			return;

		}

	}
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






