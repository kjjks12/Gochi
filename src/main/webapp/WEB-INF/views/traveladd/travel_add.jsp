<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>PROHOME - Responsive Real Estate Template</title>


<jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />
<jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" />
<link
   href='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.css'
   rel='stylesheet' />
<link
   href='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.print.css'
   rel='stylesheet' media='print' />
<script
   src='${pageContext.request.contextPath}/resources/fullcalendar/moment.min.js'></script>
<script
   src='${pageContext.request.contextPath}/resources/fullcalendar/jquery.min.js'></script>
<script
   src='${pageContext.request.contextPath}/resources/fullcalendar/jquery-ui.min.js'></script>
<script
   src='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.js'></script>

<!-- daum Editor -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/editor/css/editor.css" type="text/css" />
<script src="${pageContext.request.contextPath}/resources/editor/js/editor_loader.js?environment=development" type="text/javascript" charset="utf-8"></script>

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
 --><script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 


 <!-- 지도 script -->
   <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a39e6160d10aea82c49d95d61746babb&libraries=drawing"></script>
  

<!-- detail map  // 캘린터 + 버튼 클릭시 모달 -->

 <style>
.map_wrap {width: 100%;position: relative;}
.modes {position: absolute;top: 10px;left: 10px;z-index: 1;}
.getdata{position: absolute;top: 370px;left: 10px;z-index: 1;}
#drawingMap, #map {width: 100%;height: 350px;}
#map {margin-top: 10px;}
</style>
<!-- detail map end -->

<style type="text/css">
#mortgage-calc {
   margin-left: 60px;
   height: 30px;
   width: 70%
} /* 저장 , 취소 버튼 css */
#calendarPageMove {
   margin-left: 100px;
   height: 30px;
   width: 30%;
}
</style>

<!--지도 선  거리계산하기  -->
 <style>
.dot {overflow:hidden;float:left;width:12px;height:12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
.number {font-weight:bold;color:#ee6152;}
.dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
.distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
.labelMap{display:inline-block;width:50px;}
.distanceInfo:after {content:none;}
</style>


<style type='text/css'>
#title {
   text-align: center;
}

.buttonWrap {
   position: relative;
   float: left;
   overflow: hidden;
   cursor: pointer;
   width: 52px;
   height: 40px;
}

#customer_back_img {position：absolute;
   margin-left: -10px;
   filter: alpha(opacity = 0);
   opacity: 0;
   -moz-opacity: 0;
   cursor: pointer;
   width: 74px;
   height: 20px;
}

#user_back_icon {
   width: 60px;
   height: 60px;
}

/*user back cover file 태그 숨기기*/
#user_backcover_filebtn {
   display: none;
}

.profile_title_div {
   padding-top: 40px;
}

.profile_cover_div {
   text-align: center;
   padding-top: 50px;
}

#travel_title_span {
   font-weight: bold;
   text-align: center;
}

.plan-view-tab {
   margin-top: 20px;
   text-align: center;
   height: 50px;
   background: #fff;
   background-image: initial;
   background-position-x: initial;
   background-position-y: initial;
   background-size: initial;
   background-repeat-x: initial;
   background-repeat-y: initial;
   background-attachment: initial;
   background-origin: initial;
   background-clip: initial;
   background-color: rgb(255, 255, 255);
   border-radius: 4px;
   border-top-left-radius: 4px;
   border-top-right-radius: 4px;
   border-bottom-right-radius: 4px;
   border-bottom-left-radius: 4px;
   -webkit-border-radius: 4px;
   -moz-border-radius: 4px;
   box-shadow: 0 1px 1px rgba(125, 125, 125, .2);
   -webkit-box-shadow: 0 1px 1px rgba(125, 125, 125, .2);
   -moz-box-shadow: 0 1px 1px rgba(125, 125, 125, .2);
   height: 50px;
   text-align: center;
}

/*여행 스토리 / 지도,일정 선택부분*/
#plan-select-tab {
   margin-top: 10px;
   border-width: 1px 0;
   list-style: none;
   margin: 0;
   padding: 0;
   text-align: center;
   color: #1fb8a6;
   border-width: 1px 0;
}

/*여행 스토리 li 태그 */
#plan-select-tab li {
   margin-right: 100px;
   margin-left: 100px;
   display: inline;
   font-size: 20px;
   font-weight: bold;
}

#plan-select-tab li a i {
   display: inline-block;
   padding: 10px;
   color: #1fb8a6;
}

/*어떤 여행인지 간단히 설명해주세요 부분*/
#planMessage {
   margin-bottom: 10px;
}

/*초기 스토리영역 숨기기 -> 지도 일정표 보여줄거야*/
#story_section {
   display: none;
}

#wrap {
   margin-top: 60px;
   width: 100%;
   margin: 0 auto;
   width: 100%;
}

#external-events {
   float: left;
   width: 10%;
   padding: 0 10px;
   border: 1px solid #ccc;
   background: #eee;
   text-align: left;
}

#external-events h4 {
   font-size: 16px;
   margin-top: 0;
   padding-top: 1em;
}

#external-events .fc-event {
   margin: 10px 0;
   cursor: pointer;
}

#external-events p {
   margin: 1.5em 0;
   font-size: 11px;
   color: #666;
}

#external-events p input {
   margin: 0;
   vertical-align: middle;
}

#calendar {
   width: 90%;
   float: left;
}

#planDetailMessage {
   resize: vertical;
}

#travel_itinery_map {
   margin-top: 10px;
   width: 100%;
   height: 400px;
}

.profile_modified_div {
   text-align: center;
}

.add-my {
    position: absolute;
    display: block;
    width: 263px;
    height: 84px;
    background: url(${pageContext.request.contextPath}/resources/images/bg-add-my.png) no-repeat;
    background-image: url(../../images/bg-add-my.png);
    background-position-x: initial;
    background-position-y: initial;
    background-size: initial;
    background-repeat-x: no-repeat;
    background-repeat-y: no-repeat;
    background-attachment: initial;
    background-origin: initial;
    background-clip: initial;
    background-color: initial;
    z-index: 20000;
    margin-left: 11px;
    margin-top: -76px;
}

.current-time-cell{
   text-align: center;
   color: #1fb8a6;
}

</style>

<!-- Jquery Script Start 광수-->
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

<script>
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
      
      $('#calendar').find('.fc-slats').find('[class="fc-widget-content"]').hover(
            function() {
                var tr = $(this).parent();
                var time = tr.find('td.fc-axis.fc-time.fc-widget-content').find("span").text();
                $(this).append('<td class="temp_cell" style="border: 0px; width:5px;">'+time+'</td>');
            },          
            function() {                        
                $(this).children('.temp_cell').remove();
            });
      /* initialize the calendar
      -----------------------------------------------------------------*/

      $('#calendar').fullCalendar({
         header : {
            left : 'prev,next today',
            center : 'title',
            right : 'month,agendaWeek,agendaDay'
         },
         defaultView : 'agendaWeek',
         editable : true,
         droppable : true, // this allows things to be dropped onto the calendar
         drop : function(date, allDay) {
            /*    alert(date)
               alert(allDay) */
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
            
            alert($(this).position());
           // $("#add_my").show();
           // alert('Clicked on: ' + date.format());

         },
         navLinks: true,
          navLinkDayClick: function(date, jsEvent) {
              console.log('day', date.format()); // date is a moment
              console.log('coords', jsEvent.pageX, jsEvent.pageY);
          },
      }); /*./fullCalendar 끝*/
      
      $('.fc-widget-content').hover(function(){
          if(!$(this).html()){    
              for(i=0;i<7;i++){
                  $(this).append('<td class="temp-cell" style="border: 0px; width:'+(Number($('.fc-day').width())+3)+'px"></td>');
              }

              $(this).children('td').each(function(){
                  $(this).hover(function(){
                      $(this).html('<div class=current-time-cell><i class="fa fa-plus-circle" data-toggle="modal" id="detailModal" data-target="#detailmap"  aria-hidden="true"></i></div>');
                  },function(){
                      $(this).html('');
                  });
              });
          }
      },function(){
          $(this).children('.temp-cell').remove();
      }); 
  

      /*       $('td.fc-widget-content').mouseover(function () {
                     $(this).append("hi");
            }); */

      /* 드랍된 버튼 클릭시 발생이벤트 */
      $(document).on("click", ".fc-title", function() {
         alert("클릭:" + $(this))
         $(this).append("222222")
         return;
      })

    
      if ($('#drop-remove').is(':checked')) {
         // if so, remove the element from the "Draggable Events" list
         $(this).remove();
      }



   });
</script>


<!-- 날씨 jQeury -->
<script>
$(function(){
	var table="";
	var imageurl = "http://openweathermap.org/img/w/";
	var png =".png";
	var city="";
	
	$.ajax({
		url: "http://api.openweathermap.org/data/2.5/forecast?q=London,us&mode=xml&&APPID=4af3d3202431fd8820e81da5a5f4753e", //요청이름(이동경로)
		type: "post", //method방식(get,post)
		dataType: "xml", //요청결과정보의 타입(text, html, xml, json)
		success: function(response){
			//alert(response);
			
		city=	$(response).find('location name').text();		
			
				table+="<table class=weather_table><tr>"
				
				
				$(response).find('time').each(function(){
					//그날의 12 시 면
					if($(this).attr('from').substring(11,13)=='12'){
							table+="<th>"+$(this).attr('from').substring(5,10)+"</th>"
					}
				})//그날의 날씨  each문
				
				
				table+="</tr><tr>"
				$(response).find('time').each(function(){
					
					if($(this).attr('from').substring(11,13)=='12'){
						var icon=$(this).find('symbol').attr('var');
						table+="<td><img src="+imageurl+icon+png+"></td>";
					}
				})
				
			table+="</tr></table>"
			
			
			
			
			
		 $("#weather_div").html(table);
		} , 
		error: function(err){
			alert(err + "오류발생")
		}
	});
	 
})//Jquery 끝

</script>

<!-- DAUM MAP API -->

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


</head>
<body class="fixed-header">


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
                     <span id="travel_title_span"> <span id="travel_title">도른자와
                           ㅋ 함꼐하는 오키나와 뚜벅이 여행</span>
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
                        <button type="button" class="btn btn-reverse"
                           data-toggle="modal" data-target="#exampleModal"
                           data-whatever="@checkList">체크리스트</button>
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
                           placeholder="어떤 여행인지 간단히 설명해 주세요 " maxlength="300" value="" />
                        <textarea class="form-control" id="planDetailMessage" rows="10"
                           placeholder="당신의 여행 스토리를 남겨보세요!" maxlength="10000"></textarea>

                     </form>
                  </div>
                  <!-- 간단한 여행 설명 부분 end  -->


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

                        <div id='external-events'>
                           <h4>Draggable Events</h4>
                           <div class='fc-event'>My Event 1</div>
                           <div class='fc-event'>My Event 2</div>
                           <div class='fc-event'>My Event 3</div>
                           <div class='fc-event'>My Event 4</div>
                           <div class='fc-event'>My Event 5</div>
                           <p>
                              <input type='checkbox' id='drop-remove' /> <label
                                 for='drop-remove'>remove after drop</label>
                           </p>
                        </div>

                        <div id='calendar'></div>

                        <div style='clear: both'></div>

                     </div>


                     <!-- 지도 API표시 영역  -->
                     
                     
                     <!-- 해당 날짜 클릭시 보여줄 부분 -->
                     <div class="add-my" id="add_my">
                        <div class="add-my-box">
                           <a id="insert-my-transit"><span class="btn-mytransit"><i class="fa fa-bus" aria-hidden="true"></i>My교통</span></a>
                           <a id="insert-my-spot"><span class="btn-myspot"><i class="fa fa-map-marker" aria-hidden="true"></i>My장소</span></a>
                        </div>
                     </div>

                  </div>
                   </div>
                  <!-- 지도/일정영역 end-->
			
               <!--./ 여행 들어갈 내용 -->




               <!-- ./col-sm-4 -->
            </div>
         </div>
      </section>



      <div class="modal fade login-modal" tabindex="-1" role="dialog"
         aria-hidden="true">
         <div class="modal-dialog">
            <button type="button" class="close" data-dismiss="modal"
               aria-hidden="true">
               <i class="fa fa-close"></i>
            </button>
            <div class="login-button-container">
               <a href="#" data-section="login"><i class="fa fa-user"></i></a> <a
                  href="#" data-section="sign-in"><i
                  class="fa fa-pencil-square-o"></i></a> <a href="#"
                  data-section="recovery"><i class="fa fa-lock"></i></a> <a href="#"
                  data-section="setting"><i class="fa fa-cog"></i></a>
            </div>
            <!-- ./login-button-container -->
            <div class="form-container">
               <form method="post" action="#">
                  <div id="login" class="box">
                     <h2 class="title">Login in to your account</h2>
                     <h3 class="sub-title">It is a breach of our terms and
                        conditions to provide username and password details to
                        unauthorised third parties. Unauthorised use may lead to
                        suspension or termination.</h3>
                     <div class="field">
                        <input id="user-log" name="user-log" class="form-control"
                           type="text" placeholder="Username or email"> <i
                           class="fa fa-user user"></i>
                     </div>
                     <div class="field">
                        <input id="password-log" name="password-log"
                           class="form-control" type="password" placeholder="Password">
                        <i class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <span class="remember"><input class="labelauty"
                           type="checkbox" data-labelauty="Keep me signed in" checked /></span>
                        <button type="button" class="btn btn-reverse button-form">Reset</button>
                        <button type="button" class="btn btn-default button-form">Login</button>
                     </div>
                  </div>
                  <!-- ./login -->
                  <div id="sign-in" class="box">
                     <h2 class="title">Sign In</h2>
                     <h3 class="sub-title">Create a Free account and discover how
                        you can centralize all communication around a transaction,
                        connect with clients, market your listings, and more.</h3>
                     <div class="form-inline">
                        <div class="form-group">
                           <input id="user-sign" name="user-sign"
                              class="form-control input-inline margin-right" type="text"
                              placeholder="Username"> <i class="fa fa-user user"></i>
                        </div>
                        <div class="form-group">
                           <input id="email-sign" class="form-control input-inline"
                              type="text" name="email-sign" placeholder="Email"> <i
                              class="fa fa-envelope-o"></i>
                        </div>
                     </div>
                     <div class="field">
                        <input id="password-sign" class="form-control" type="password"
                           name="password-sign" placeholder="Password"> <i
                           class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field">
                        <input id="re-password-sign" class="form-control"
                           type="password" name="re-password-sign"
                           placeholder="Repeat password"> <i
                           class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <span class="remember"><input class="labelauty"
                           type="checkbox"
                           data-labelauty="I have read the privacy policy." checked /></span>
                        <button type="button" class="btn btn-default button-form">Sign
                           in</button>
                     </div>
                  </div>
                  <!-- ./sign-in -->
                  <div id="setting" class="box">
                     <h2 class="title">Setting profile</h2>
                     <h3 class="sub-title">
                        Please note: You won't be able to change your name within the
                        next 60 days. Make sure that you don't add any unusual
                        capitalisation, punctuation, characters or random words. <a
                           href="#">Learn more</a>.
                     </h3>
                     <div class="field">
                        <input id="username-block" class="form-control" type="text"
                           name="username-block" value="John Doe" disabled> <i
                           class="fa fa-user user"></i>
                     </div>
                     <div class="field">
                        <input id="email-setting" class="form-control" type="text"
                           name="email-setting" value="administrator@prohome.com">
                        <i class="fa fa-envelope-o"></i>
                     </div>
                     <div class="field">
                        <input id="update-pass" class="form-control" type="password"
                           name="update-pass" placeholder="New password"> <i
                           class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field">
                        <input id="update-repass" class="form-control" type="password"
                           name="update-repass" placeholder="Repeat password"> <i
                           class="fa fa-ellipsis-h"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <button type="button" class="btn btn-reverse button-form">Cancel</button>
                        <button type="button" class="btn btn-default button-form">Update</button>
                     </div>
                  </div>
                  <!-- ./recovery -->
                  <div id="recovery" class="box">
                     <h2 class="title">Need a new password?</h2>
                     <h3 class="sub-title">Enter your email address, and we’ll
                        email you instructions to reset your password.</h3>
                     <div class="field">
                        <input id="recovery-email" class="form-control" type="text"
                           name="recovery-email" placeholder="Your email"> <i
                           class="fa fa-envelope-o"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <button type="button" class="btn btn-default button-form">Recovery</button>
                     </div>
                  </div>
                  <!-- ./recovery -->
               </form>
               <!-- ./form-container -->
            </div>
            <!-- ./login-button-container -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      
      
      <!-- Detail map   Modal -->
<div class="modal fade" id=detailmap  tabindex="-1" role="dialog" aria-labelledby="detailmapModal" aria-hidden="true" style="width:100%; " >
    <div class="modal-content" style="background-clip: border-box; 
    	margin-top: 2%; margin-right: 10%">
      <div class="modal-header"><h3>여행일정 디테일 (가제~)</h3>
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-onl;y">Close</span></button>
        <h4 class="modal-title" id="detailmapModal"> </h4>
      </div>
      <div class="modal-body">
      	<!-- 지도 div 영역 -->
			<div class="map_wrap">
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

	<form name="tx_editor_form" id="tx_editor_form" action="http://posttestserver.com/post.php" method="post" accept-charset="utf-8">

  
  <div class="form-group">
  				 <table>
        				<tr>
        					<th style="width: 100px">
							<label style="font-size: 8px;font-style:oblique; ;font-family:monospace;">총거리</label>
							</th>
							<th style="width: 100px">
							<label style="font-size: 8px;font-style:oblique; ;font-family:monospace;">도보</label>
							</th>
							<th style="width: 100px">
							<label style="font-size: 8px;font-style:oblique; ;font-family:monospace;">자전거</label>
							</th>
						</tr>
							<tr>
        					<th style="width: 100px">  
        						<input type="text" style="width: 70px" id="distanceOutput">
							</th>
							<th style="width: 100px">
							 <input type="text" style="width: 70px" id="walkOutput">
							</th>
							<th style="width: 100px">
							 <input type="text" style="width: 70px" id="bycicleOutput">
							</th>
						</tr>
						
				</table>
		</div>
		
<br>
  <!-- 에디터 시작 -->
	<!--
		@decsription
		등록하기 위한 Form으로 상황에 맞게 수정하여 사용한다. Form 이름은 에디터를 생성할 때 설정값으로 설정한다.
	-->
		<!-- 에디터 컨테이너 시작 -->
		<div id="tx_trex_container" class="tx-editor-container">
			<!-- 사이드바 -->
			<div id="tx_sidebar" class="tx-sidebar">
				<div class="tx-sidebar-boundary">
					<!-- 사이드바 / 첨부 -->
					<ul class="tx-bar tx-bar-left tx-nav-attach">
						<!-- 이미지 첨부 버튼 시작 -->
						<!--
							@decsription
							<li></li> 단위로 위치를 이동할 수 있다.
						-->
						<li class="tx-list">
							<div unselectable="on" id="tx_image" class="tx-image tx-btn-trans">
								<a href="javascript:;" title="사진" class="tx-text">사진</a>
							</div>
						</li>
						<!-- 이미지 첨부 버튼 끝 -->
						<li class="tx-list">
							<div unselectable="on" id="tx_file" class="tx-file tx-btn-trans">
								<a href="javascript:;" title="파일" class="tx-text">파일</a>
							</div>
						</li>
						<li class="tx-list">
							<div unselectable="on" id="tx_media" class="tx-media tx-btn-trans">
								<a href="javascript:;" title="외부컨텐츠" class="tx-text">외부컨텐츠</a>
							</div>
						</li>
						<li class="tx-list tx-list-extra">
							<div unselectable="on" class="tx-btn-nlrbg tx-extra">
								<a href="javascript:;" class="tx-icon" title="버튼 더보기">버튼 더보기</a>
							</div>
							<ul class="tx-extra-menu tx-menu" style="left:-48px;" unselectable="on">
								<!--
									@decsription
									일부 버튼들을 빼서 레이어로 숨기는 기능을 원할 경우 이 곳으로 이동시킬 수 있다.
								-->
							</ul>
						</li>
					</ul>
					<!-- 사이드바 / 우측영역 -->
					<ul class="tx-bar tx-bar-right">
						<li class="tx-list">
							<div unselectable="on" class="tx-btn-lrbg tx-fullscreen" id="tx_fullscreen">
								<a href="javascript:;" class="tx-icon" title="넓게쓰기 (Ctrl+M)">넓게쓰기</a>
							</div>
						</li>
					</ul>
					<ul class="tx-bar tx-bar-right tx-nav-opt">
						<li class="tx-list">
							<div unselectable="on" class="tx-switchtoggle" id="tx_switchertoggle">
								<a href="javascript:;" title="에디터 타입">에디터</a>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<!-- 툴바 - 기본 시작 -->
			<!--
				@decsription
				툴바 버튼의 그룹핑의 변경이 필요할 때는 위치(왼쪽, 가운데, 오른쪽) 에 따라 <li> 아래의 <div>의 클래스명을 변경하면 된다.
				tx-btn-lbg: 왼쪽, tx-btn-bg: 가운데, tx-btn-rbg: 오른쪽, tx-btn-lrbg: 독립적인 그룹

				드롭다운 버튼의 크기를 변경하고자 할 경우에는 넓이에 따라 <li> 아래의 <div>의 클래스명을 변경하면 된다.
				tx-slt-70bg, tx-slt-59bg, tx-slt-42bg, tx-btn-43lrbg, tx-btn-52lrbg, tx-btn-57lrbg, tx-btn-71lrbg
				tx-btn-48lbg, tx-btn-48rbg, tx-btn-30lrbg, tx-btn-46lrbg, tx-btn-67lrbg, tx-btn-49lbg, tx-btn-58bg, tx-btn-46bg, tx-btn-49rbg
			-->
			<div id="tx_toolbar_basic" class="tx-toolbar tx-toolbar-basic"><div class="tx-toolbar-boundary">
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div id="tx_fontfamily" unselectable="on" class="tx-slt-70bg tx-fontfamily">
							<a href="javascript:;" title="글꼴">굴림</a>
						</div>
						<div id="tx_fontfamily_menu" class="tx-fontfamily-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div unselectable="on" class="tx-slt-42bg tx-fontsize" id="tx_fontsize">
							<a href="javascript:;" title="글자크기">9pt</a>
						</div>
						<div id="tx_fontsize_menu" class="tx-fontsize-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-font">

					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-bold" id="tx_bold">
							<a href="javascript:;" class="tx-icon" title="굵게 (Ctrl+B)">굵게</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-underline" id="tx_underline">
							<a href="javascript:;" class="tx-icon" title="밑줄 (Ctrl+U)">밑줄</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-italic" id="tx_italic">
							<a href="javascript:;" class="tx-icon" title="기울임 (Ctrl+I)">기울임</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-strike" id="tx_strike">
							<a href="javascript:;" class="tx-icon" title="취소선 (Ctrl+D)">취소선</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-slt-tbg 	tx-forecolor" id="tx_forecolor">
							<a href="javascript:;" class="tx-icon" title="글자색">글자색</a>
							<a href="javascript:;" class="tx-arrow" title="글자색 선택">글자색 선택</a>
						</div>
						<div id="tx_forecolor_menu" class="tx-menu tx-forecolor-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-slt-brbg 	tx-backcolor" id="tx_backcolor">
							<a href="javascript:;" class="tx-icon" title="글자 배경색">글자 배경색</a>
							<a href="javascript:;" class="tx-arrow" title="글자 배경색 선택">글자 배경색 선택</a>
						</div>
						<div id="tx_backcolor_menu" class="tx-menu tx-backcolor-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-align">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-alignleft" id="tx_alignleft">
							<a href="javascript:;" class="tx-icon" title="왼쪽정렬 (Ctrl+,)">왼쪽정렬</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-aligncenter" id="tx_aligncenter">
							<a href="javascript:;" class="tx-icon" title="가운데정렬 (Ctrl+.)">가운데정렬</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-alignright" id="tx_alignright">
							<a href="javascript:;" class="tx-icon" title="오른쪽정렬 (Ctrl+/)">오른쪽정렬</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-alignfull" id="tx_alignfull">
							<a href="javascript:;" class="tx-icon" title="양쪽정렬">양쪽정렬</a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-tab">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-indent" id="tx_indent">
							<a href="javascript:;" title="들여쓰기 (Tab)" class="tx-icon">들여쓰기</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-outdent" id="tx_outdent">
							<a href="javascript:;" title="내어쓰기 (Shift+Tab)" class="tx-icon">내어쓰기</a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-list">
					<li class="tx-list">
						<div unselectable="on" class="tx-slt-31lbg tx-lineheight" id="tx_lineheight">
							<a href="javascript:;" class="tx-icon" title="줄간격">줄간격</a>
							<a href="javascript:;" class="tx-arrow" title="줄간격">줄간격 선택</a>
						</div>
						<div id="tx_lineheight_menu" class="tx-lineheight-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="tx-slt-31rbg tx-styledlist" id="tx_styledlist">
							<a href="javascript:;" class="tx-icon" title="리스트">리스트</a>
							<a href="javascript:;" class="tx-arrow" title="리스트">리스트 선택</a>
						</div>
						<div id="tx_styledlist_menu" class="tx-styledlist-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-etc">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-emoticon" id="tx_emoticon">
							<a href="javascript:;" class="tx-icon" title="이모티콘">이모티콘</a>
						</div>
						<div id="tx_emoticon_menu" class="tx-emoticon-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-link" id="tx_link">
							<a href="javascript:;" class="tx-icon" title="링크 (Ctrl+K)">링크</a>
						</div>
						<div id="tx_link_menu" class="tx-link-menu tx-menu"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-specialchar" id="tx_specialchar">
							<a href="javascript:;" class="tx-icon" title="특수문자">특수문자</a>
						</div>
						<div id="tx_specialchar_menu" class="tx-specialchar-menu tx-menu"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-table" id="tx_table">
							<a href="javascript:;" class="tx-icon" title="표만들기">표만들기</a>
						</div>
						<div id="tx_table_menu" class="tx-table-menu tx-menu" unselectable="on">
							<div class="tx-menu-inner">
								<div class="tx-menu-preview"></div>
								<div class="tx-menu-rowcol"></div>
								<div class="tx-menu-deco"></div>
								<div class="tx-menu-enter"></div>
							</div>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-horizontalrule" id="tx_horizontalrule">
							<a href="javascript:;" class="tx-icon" title="구분선">구분선</a>
						</div>
						<div id="tx_horizontalrule_menu" class="tx-horizontalrule-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-richtextbox" id="tx_richtextbox">
							<a href="javascript:;" class="tx-icon" title="글상자">글상자</a>
						</div>
						<div id="tx_richtextbox_menu" class="tx-richtextbox-menu tx-menu">
							<div class="tx-menu-header">
								<div class="tx-menu-preview-area">
									<div class="tx-menu-preview"></div>
								</div>
								<div class="tx-menu-switch">
									<div class="tx-menu-simple tx-selected"><a><span>간단 선택</span></a></div>
									<div class="tx-menu-advanced"><a><span>직접 선택</span></a></div>
								</div>
							</div>
							<div class="tx-menu-inner">
							</div>
							<div class="tx-menu-footer">
								<img class="tx-menu-confirm"
									 src="./images/icon/editor/btn_confirm.gif?rv=1.0.1" alt=""/>
								<img class="tx-menu-cancel" hspace="3"
									 src="./images/icon/editor/btn_cancel.gif?rv=1.0.1" alt=""/>
							</div>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-quote" id="tx_quote">
							<a href="javascript:;" class="tx-icon" title="인용구 (Ctrl+Q)">인용구</a>
						</div>
						<div id="tx_quote_menu" class="tx-quote-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-background" id="tx_background">
							<a href="javascript:;" class="tx-icon" title="배경색">배경색</a>
						</div>
						<div id="tx_background_menu" class="tx-menu tx-background-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-dictionary" id="tx_dictionary">
							<a href="javascript:;" class="tx-icon" title="사전">사전</a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-undo">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-undo" id="tx_undo">
							<a href="javascript:;" class="tx-icon" title="실행취소 (Ctrl+Z)">실행취소</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-redo" id="tx_redo">
							<a href="javascript:;" class="tx-icon" title="다시실행 (Ctrl+Y)">다시실행</a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-right">
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-nlrbg tx-advanced" id="tx_advanced">
							<a href="javascript:;" class="tx-icon" title="툴바 더보기">툴바 더보기</a>
						</div>
					</li>
				</ul>
			</div></div>
			<!-- 툴바 - 기본 끝 -->
			<!-- 툴바 - 더보기 시작 -->
			<div id="tx_toolbar_advanced" class="tx-toolbar tx-toolbar-advanced"><div class="tx-toolbar-boundary">
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div class="tx-tableedit-title"></div>
					</li>
				</ul>

				<ul class="tx-bar tx-bar-left tx-group-align">
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-lbg tx-mergecells" id="tx_mergecells">
							<a href="javascript:;" class="tx-icon2" title="병합">병합</a>
						</div>
						<div id="tx_mergecells_menu" class="tx-mergecells-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-bg tx-insertcells" id="tx_insertcells">
							<a href="javascript:;" class="tx-icon2" title="삽입">삽입</a>
						</div>
						<div id="tx_insertcells_menu" class="tx-insertcells-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-rbg tx-deletecells" id="tx_deletecells">
							<a href="javascript:;" class="tx-icon2" title="삭제">삭제</a>
						</div>
						<div id="tx_deletecells_menu" class="tx-deletecells-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>

				<ul class="tx-bar tx-bar-left tx-group-align">
					<li class="tx-list">
						<div id="tx_cellslinepreview" unselectable="on" class="tx-slt-70lbg tx-cellslinepreview">
							<a href="javascript:;" title="선 미리보기"></a>
						</div>
						<div id="tx_cellslinepreview_menu" class="tx-cellslinepreview-menu tx-menu"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellslinecolor" unselectable="on" class="tx-slt-tbg tx-cellslinecolor">
							<a href="javascript:;" class="tx-icon2" title="선색">선색</a>

							<div class="tx-colorpallete" unselectable="on"></div>
						</div>
						<div id="tx_cellslinecolor_menu" class="tx-cellslinecolor-menu tx-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellslineheight" unselectable="on" class="tx-btn-bg tx-cellslineheight">
							<a href="javascript:;" class="tx-icon2" title="두께">두께</a>

						</div>
						<div id="tx_cellslineheight_menu" class="tx-cellslineheight-menu tx-menu"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellslinestyle" unselectable="on" class="tx-btn-bg tx-cellslinestyle">
							<a href="javascript:;" class="tx-icon2" title="스타일">스타일</a>
						</div>
						<div id="tx_cellslinestyle_menu" class="tx-cellslinestyle-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellsoutline" unselectable="on" class="tx-btn-rbg tx-cellsoutline">
							<a href="javascript:;" class="tx-icon2" title="테두리">테두리</a>

						</div>
						<div id="tx_cellsoutline_menu" class="tx-cellsoutline-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div id="tx_tablebackcolor" unselectable="on" class="tx-btn-lrbg tx-tablebackcolor"
							 style="background-color:#9aa5ea;">
							<a href="javascript:;" class="tx-icon2" title="테이블 배경색">테이블 배경색</a>
						</div>
						<div id="tx_tablebackcolor_menu" class="tx-tablebackcolor-menu tx-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div id="tx_tabletemplate" unselectable="on" class="tx-btn-lrbg tx-tabletemplate">
							<a href="javascript:;" class="tx-icon2" title="테이블 서식">테이블 서식</a>
						</div>
						<div id="tx_tabletemplate_menu" class="tx-tabletemplate-menu tx-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
				</ul>

			</div></div>
			<!-- 툴바 - 더보기 끝 -->
			<!-- 편집영역 시작 -->
				<!-- 에디터 Start -->
	<div id="tx_canvas" class="tx-canvas">
		<div id="tx_loading" class="tx-loading"><div><img src="${pageContext.request.contextPath}/resources/editor/images/icon/editor/loading2.png" width="113" height="21" align="absmiddle"/></div></div>
		<div id="tx_canvas_wysiwyg_holder" class="tx-holder" style="display:block;">
			<iframe id="tx_canvas_wysiwyg" name="tx_canvas_wysiwyg" allowtransparency="true" frameborder="0"></iframe>
		</div>
		<div class="tx-source-deco">
			<div id="tx_canvas_source_holder" class="tx-holder">
				<textarea id="tx_canvas_source" rows="30" cols="30"></textarea>
			</div>
		</div>
		<div id="tx_canvas_text_holder" class="tx-holder">
			<textarea id="tx_canvas_text" rows="30" cols="30"></textarea>
		</div>
	</div>
					<!-- 높이조절 Start -->
	<div id="tx_resizer" class="tx-resize-bar">
		<div class="tx-resize-bar-bg"></div>
		<img id="tx_resize_holder" src="${pageContext.request.contextPath}/resources/editor/images/icon/editor/skin/01/btn_drag01.gif" width="58" height="12" unselectable="on" alt="" />
	</div>
					<div class="tx-side-bi" id="tx_side_bi">
		<div style="text-align: right;">
			<img hspace="4" height="14" width="78" align="absmiddle" src="${pageContext.request.contextPath}/resources/editor/images/icon/editor/editor_bi.png" />
		</div>
	</div>
				<!-- 편집영역 끝 -->
			<!-- 첨부박스 시작 -->
				<!-- 파일첨부박스 Start -->
	<div id="tx_attach_div" class="tx-attach-div">
		<div id="tx_attach_txt" class="tx-attach-txt">파일 첨부</div>
		<div id="tx_attach_box" class="tx-attach-box">
			<div class="tx-attach-box-inner">
				<div id="tx_attach_preview" class="tx-attach-preview"><p></p><img src="${pageContext.request.contextPath}/resources/editor/images/icon/editor/pn_preview.gif" width="147" height="108" unselectable="on"/></div>
				<div class="tx-attach-main">
					<div id="tx_upload_progress" class="tx-upload-progress"><div>0%</div><p>파일을 업로드하는 중입니다.</p></div>
					<ul class="tx-attach-top">
						<li id="tx_attach_delete" class="tx-attach-delete"><a>전체삭제</a></li>
						<li id="tx_attach_size" class="tx-attach-size">
							파일: <span id="tx_attach_up_size" class="tx-attach-size-up"></span>/<span id="tx_attach_max_size"></span>
						</li>
						<li id="tx_attach_tools" class="tx-attach-tools">
						</li>
					</ul>
					<ul id="tx_attach_list" class="tx-attach-list"></ul>
				</div>
			</div>
		</div>
	</div>
				<!-- 첨부박스 끝 -->
		</div>
		<!-- 에디터 컨테이너 끝 -->
	</form>

<!-- 에디터 끝 -->	

       <!-- 모달 foot -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary" >저장 후 이동</button>
      </div>
        <!-- 모달 foot end-->
   
    </div>

			<!--./form 전송 끝 -->    
    </div> <!-- 모달 콘텐츠 -->
</div> <!-- 모달 전체 윈도우 -->


      <div class="modal fade" id="modal-contact" tabindex="-1" role="dialog"
         aria-hidden="true">
         <div class="modal-dialog">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
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
                        <button type="button" class="btn btn-reverse button-form" onclick='saveContent()'>Cancel</button>
                        <button type="button" class="btn btn-default button-form">Send</button>
                     
                     </div>



                  </div>
               </form>
            </div>


         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
   <!-- /#page-container -->


 
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
	            	    content += '        <span class="labelMap">도보</span>' + walkHour + walkMin;
	            	    content += '    </li>';
	            	    content += '    <li>';
	            	    content += '        <span class="labelMap">자전거</span>' + bycicleHour + bycicleMin;
	            	    content += '    </li>';
	            	    content += '</ul>'
	            	    
	            	    	$("#distanceOutput").val(distance+"m");
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
  
  <!-- daum editor 스크립트  -->
   <script type="text/javascript">
	var config = {
		txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
		txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
		txService: 'sample', /* 수정필요없음. */
		txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
		initializedId: "", /* 대부분의 경우에 빈문자열 */
		wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
		form: 'tx_editor_form'+"", /* 등록하기 위한 Form 이름 */
		txIconPath: "images/icon/editor/", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
		txDecoPath: "images/deco/contents/", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
		canvas: {
			styles: {
				color: "#123456", /* 기본 글자색 */
				fontFamily: "굴림", /* 기본 글자체 */
				fontSize: "10pt", /* 기본 글자크기 */
				backgroundColor: "#fff", /*기본 배경색 */
				lineHeight: "1.5", /*기본 줄간격 */
				padding: "8px" /* 위지윅 영역의 여백 */
			},
			showGuideArea: false
		},
		events: {
			preventUnload: false
		},
		sidebar: {
			attachbox: {
				show: true,
				confirmForDeleteAll: true
			}
		},
		size: {
			contentWidth: 700 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */
		}
	};

	EditorJSLoader.ready(function(Editor) {
		var editor = new Editor(config);
	});
	
</script>

<!-- Sample: Saving Contents -->
<script type="text/javascript">
	/* 예제용 함수 */
	function saveContent() {
		Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
	}

	
	function validForm(editor) {
		// Place your validation logic here

		// sample : validate that content exists
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			alert('내용을 입력하세요');
			return false;
		}

		return true;
	}

	/**
	 * Editor.save()를 호출한 경우 validForm callback 이 수행된 이후
	 * 실제 form submit을 위해 form 필드를 생성, 변경하기 위해 부르는 콜백함수로
	 * 각자 상황에 맞게 적절히 응용하여 사용한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 정상적인 경우에 true
	 */
	function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.name = 'content';
        textarea.value = content;
        form.createField(textarea);

        /* 아래의 코드는 첨부된 데이터를 필드를 생성하여 값을 할당하는 부분으로 상황에 맞게 수정하여 사용한다.
         첨부된 데이터 중에 주어진 종류(image,file..)에 해당하는 것만 배열로 넘겨준다. */
        var images = editor.getAttachments('image');
        for (i = 0; i < images.length; i++) {
            // existStage는 현재 본문에 존재하는지 여부
            if (images[i].existStage) {
                // data는 팝업에서 execAttach 등을 통해 넘긴 데이터
                alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
                input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'attach_image';
                input.value = images[i].data.imageurl;  // 예에서는 이미지경로만 받아서 사용
                form.createField(input);
            }
        }

        var files = editor.getAttachments('file');
        for (i = 0; i < files.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_file';
            input.value = files[i].data.attachurl;
            form.createField(input);
        }
        return true;
	}
</script>


<script type="text/javascript">
	function loadContent() {
		var attachments = {};
		attachments['image'] = [];
		attachments['image'].push({
			'attacher': 'image',
			'data': {
				'imageurl': 'http://cfile273.uf.daum.net/image/2064CD374EE1ACCB0F15C8',
				'filename': 'github.gif',
				'filesize': 59501,
				'originalurl': 'http://cfile273.uf.daum.net/original/2064CD374EE1ACCB0F15C8',
				'thumburl': 'http://cfile273.uf.daum.net/P150x100/2064CD374EE1ACCB0F15C8'
			}
		});
		attachments['file'] = [];
		attachments['file'].push({
			'attacher': 'file',
			'data': {
				'attachurl': 'http://cfile297.uf.daum.net/attach/207C8C1B4AA4F5DC01A644',
				'filemime': 'image/gif',
				'filename': 'editor_bi.gif',
				'filesize': 640
			}
		});
		/* 저장된 컨텐츠를 불러오기 위한 함수 호출 */
		Editor.modify({
			"attachments": function () { /* 저장된 첨부가 있을 경우 배열로 넘김, 위의 부분을 수정하고 아래 부분은 수정없이 사용 */
				var allattachments = [];
				for (var i in attachments) {
					allattachments = allattachments.concat(attachments[i]);
				}
				return allattachments;
			}(),
			"content": document.getElementById("sample_contents_source") /* 내용 문자열, 주어진 필드(textarea) 엘리먼트 */
		});
	}
</script>
  
</body>
</html>