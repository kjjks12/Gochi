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

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
 --><script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>


<!-- detail map  // 캘린터 + 버튼 클릭시 모달 -->
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a39e6160d10aea82c49d95d61746babb&libraries=drawing"></script>
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
    background: url(${pageContext.request.contextPath}/images/bg-add-my.png) no-repeat;
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
                      $(this).html('<div class=current-time-cell><i class="fa fa-plus-circle" data-toggle="modal" data-target="#detailmap" aria-hidden="true"></i></div>');
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

                     <div id="travel_itinery_map"></div>

                     <script type="text/javascript"
                        src="//apis.daum.net/maps/maps3.js?apikey=83a724e8d3593fe936b266b976eff510"></script>
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
<div class="modal fade" id=detailmap tabindex="-1" role="dialog" aria-labelledby="detailmapModal" aria-hidden="true" style="width:100%; " >
    <div class="modal-content" style="background-clip: border-box; width: 90%;">
      <div class="modal-header"><h3>여행일정 디테일 (가제~)</h3>
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-onl;y">Close</span></button>
        <h4 class="modal-title" id="detailmapModal"> </h4>
      </div>
      <div class="modal-body">
      	<!-- 지도 div 영역 -->
			<div class="map_wrap">
				<div id="drawingMap" style="border: thin;"></div>
    			<div id="map"></div> 
   			 <p class="modes">
	  			  <button class="btn btn-reverse" onclick="selectOverlay('MARKER')">마커</button>
	   			  <button class="btn btn-reverse" onclick="selectOverlay('POLYLINE')">선</button>
	   			  <button class="btn btn-reverse" onclick="selectOverlay('CIRCLE')">원</button>
	   			  <button class="btn btn-reverse" onclick="selectOverlay('RECTANGLE')">사각형</button>
	   			  <button class="btn btn-reverse" onclick="selectOverlay('POLYGON')">다각형</button>
			</p>
			
    <p class="getdata">
        <button class="btn btn-reverse" onclick="getDataFromDrawingMap()">가져오기</button>
    </p>
</div>	
<form action="#" novalidate>
  <div class="form-group">
    <label for="input">Text</label>
    <input type="text" class="form-input" id="input" value="Title">
  </div>
  <div class="form-group">
    <label for="contents">Contents</label>
    <textarea name="text" class="summernote" id="contents" title="Contents"></textarea>
  </div>
  <button type="submit" class="btn btn-default">submit</button>
</form>
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
                        <button type="button" class="btn btn-reverse button-form">Cancel</button>
                        <button type="button" class="btn btn-default button-form">Send</button>
                     </div>



                  </div>
               </form>
            </div>


         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
   </div>
   <!-- /#page-container -->


   <script>
      "use strict";
   
      // MAPS GOOGLE
      function initialize() {
         var mapOptions = {
            zoom : 18,
            scrollwheel : false,
            center : new google.maps.LatLng(-33.890542, 151.274856)
         }
         var map = new google.maps.Map(
            document.getElementById('map-canvas'), mapOptions);
   
         var image = 'resources/images/maps/pin-maps.png';
         var myLatLng = new google.maps.LatLng(-33.890542, 151.274856);
         var beachMarker = new google.maps.Marker({
            position : myLatLng,
            map : map,
            icon : image
         });
      }
      /* google.maps.event.addDomListener(window, 'load', initialize); */
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
   
   
   <!-- 지도 script -->
   <script>
// Drawing Manager로 도형을 그릴 지도 div
var drawingMapContainer = document.getElementById('drawingMap'),
    drawingMap = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var drawingMap = new daum.maps.Map(drawingMapContainer, drawingMap); 

var options = { // Drawing Manager를 생성할 때 사용할 옵션입니다
    map: drawingMap, // Drawing Manager로 그리기 요소를 그릴 map 객체입니다
    drawingMode: [ // Drawing Manager로 제공할 그리기 요소 모드입니다
        daum.maps.drawing.OverlayType.MARKER,
        daum.maps.drawing.OverlayType.POLYLINE,
        daum.maps.drawing.OverlayType.RECTANGLE,
        daum.maps.drawing.OverlayType.CIRCLE,
        daum.maps.drawing.OverlayType.POLYGON
    ],
    // 사용자에게 제공할 그리기 가이드 툴팁입니다
    // 사용자에게 도형을 그릴때, 드래그할때, 수정할때 가이드 툴팁을 표시하도록 설정합니다
    guideTooltip: ['draw', 'drag', 'edit'], 
    markerOptions: { // 마커 옵션입니다 
        draggable: true, // 마커를 그리고 나서 드래그 가능하게 합니다 
        removable: true // 마커를 삭제 할 수 있도록 x 버튼이 표시됩니다  
    },
    polylineOptions: { // 선 옵션입니다
        draggable: true, // 그린 후 드래그가 가능하도록 설정합니다
        removable: true, // 그린 후 삭제 할 수 있도록 x 버튼이 표시됩니다
        editable: true, // 그린 후 수정할 수 있도록 설정합니다 
        strokeColor: '#39f', // 선 색
        hintStrokeStyle: 'dash', // 그리중 마우스를 따라다니는 보조선의 선 스타일
        hintStrokeOpacity: 0.5  // 그리중 마우스를 따라다니는 보조선의 투명도
    },
    rectangleOptions: {
        draggable: true,
        removable: true,
        editable: true,
        strokeColor: '#39f', // 외곽선 색
        fillColor: '#39f', // 채우기 색
        fillOpacity: 0.5 // 채우기색 투명도
    },
    circleOptions: {
        draggable: true,
        removable: true,
        editable: true,
        strokeColor: '#39f',
        fillColor: '#39f',
        fillOpacity: 0.5
    },
    polygonOptions: {
        draggable: true,
        removable: true,
        editable: true,
        strokeColor: '#39f',
        fillColor: '#39f',
        fillOpacity: 0.5,
        hintStrokeStyle: 'dash',
        hintStrokeOpacity: 0.5
    }
};

// 위에 작성한 옵션으로 Drawing Manager를 생성합니다
var manager = new daum.maps.drawing.DrawingManager(options);

// 버튼 클릭 시 호출되는 핸들러 입니다
function selectOverlay(type) {
    // 그리기 중이면 그리기를 취소합니다
    manager.cancel();

    // 클릭한 그리기 요소 타입을 선택합니다
    manager.select(daum.maps.drawing.OverlayType[type]);
}

// Drawing Manager에서 데이터를 가져와 도형을 표시할 아래쪽 지도 div
var mapContainer = document.getElementById('map'),
    mapOptions = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도 div와 지도 옵션으로 지도를 생성합니다
var map = new daum.maps.Map(mapContainer, mapOptions),
    overlays = []; // 지도에 그려진 도형을 담을 배열

// 가져오기 버튼을 클릭하면 호출되는 핸들러 함수입니다
// Drawing Manager로 그려진 객체 데이터를 가져와 아래 지도에 표시합니다
function getDataFromDrawingMap() {
    // Drawing Manager에서 그려진 데이터 정보를 가져옵니다 
    var data = manager.getData();

    // 아래 지도에 그려진 도형이 있다면 모두 지웁니다
    removeOverlays();

    // 지도에 가져온 데이터로 도형들을 그립니다
    drawMarker(data[daum.maps.drawing.OverlayType.MARKER]);
    drawPolyline(data[daum.maps.drawing.OverlayType.POLYLINE]);
    drawRectangle(data[daum.maps.drawing.OverlayType.RECTANGLE]);
    drawCircle(data[daum.maps.drawing.OverlayType.CIRCLE]);
    drawPolygon(data[daum.maps.drawing.OverlayType.POLYGON]);
}

// 아래 지도에 그려진 도형이 있다면 모두 지웁니다
function removeOverlays() {
    var len = overlays.length, i = 0;

    for (; i < len; i++) {
        overlays[i].setMap(null);
    }

    overlays = [];
}

// Drawing Manager에서 가져온 데이터 중 마커를 아래 지도에 표시하는 함수입니다
function drawMarker(markers) {
    var len = markers.length, i = 0;

    for (; i < len; i++) {
        var marker = new daum.maps.Marker({
            map: map, 
            position: new daum.maps.LatLng(markers[i].y, markers[i].x), 
            zIndex: markers[i].zIndex
             
        });

        overlays.push(marker);
    }
}

// Drawing Manager에서 가져온 데이터 중 선을 아래 지도에 표시하는 함수입니다
function drawPolyline(lines) {
    var len = lines.length, i = 0;

    for (; i < len; i++) {
        var path = pointsToPath(lines[i].points);
        var style = lines[i].options;
        var polyline = new daum.maps.Polyline({
            map: map,
            path: path,
            strokeColor: style.strokeColor,
            strokeOpacity: style.strokeOpacity,
            strokeStyle: style.strokeStyle,
            strokeWeight: style.strokeWeight
        });

        overlays.push(polyline);
    }
}

// Drawing Manager에서 가져온 데이터 중 사각형을 아래 지도에 표시하는 함수입니다
function drawRectangle(rects) {
    var len = rects.length, i = 0;

    for (; i < len; i++) {
        var style = rects[i].options;
        var rect = new daum.maps.Rectangle({
            map: map, 
            bounds: new daum.maps.LatLngBounds(
                new daum.maps.LatLng(rects[i].sPoint.y, rects[i].sPoint.x),
                new daum.maps.LatLng(rects[i].ePoint.y, rects[i].ePoint.x)
            ), 
            strokeColor: style.strokeColor,
            strokeOpacity: style.strokeOpacity,
            strokeStyle: style.strokeStyle,
            strokeWeight: style.strokeWeight,
            fillColor: style.fillColor,
            fillOpacity: style.fillOpacity
        });

        overlays.push(rect);
    }
}

// Drawing Manager에서 가져온 데이터 중 원을 아래 지도에 표시하는 함수입니다
function drawCircle(circles) {
    var len = circles.length, i = 0;

    for (; i < len; i++) {
        var style = circles[i].options;
        var circle = new daum.maps.Circle({
            map: map, 
            center: new daum.maps.LatLng(circles[i].center.y, circles[i].center.x), 
            radius: circles[i].radius,
            strokeColor: style.strokeColor,
            strokeOpacity: style.strokeOpacity,
            strokeStyle: style.strokeStyle,
            strokeWeight: style.strokeWeight,
            fillColor: style.fillColor,
            fillOpacity: style.fillOpacity
        });

        overlays.push(circle);
    }
}

// Drawing Manager에서 가져온 데이터 중 다각형을 아래 지도에 표시하는 함수입니다
function drawPolygon(polygons) {
    var len = polygons.length, i = 0;

    for (; i < len; i++) {
        var path = pointsToPath(polygons[i].points);
        var style = polygons[i].options;
        var polygon = new daum.maps.Polygon({
            map: map,
            path: path,
            strokeColor: style.strokeColor,
            strokeOpacity: style.strokeOpacity,
            strokeStyle: style.strokeStyle,
            strokeWeight: style.strokeWeight,
            fillColor: style.fillColor,
            fillOpacity: style.fillOpacity
        });

        overlays.push(polygon);
    }
}

// Drawing Manager에서 가져온 데이터 중 
// 선과 다각형의 꼭지점 정보를 daum.maps.LatLng객체로 생성하고 배열로 반환하는 함수입니다 
function pointsToPath(points) {
    var len = points.length, 
        path = [], 
        i = 0;

    for (; i < len; i++) { 
        var latlng = new daum.maps.LatLng(points[i].y, points[i].x);
        path.push(latlng); 
    }

    return path;
}


var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
daum.maps.event.addListener(map, 'click', function(mouseEvent) {

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
daum.maps.event.addListener(drawingMap, 'mousemove', function (mouseEvent) {

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
daum.maps.event.addListener(drawingMap, 'rightclick', function (mouseEvent) {

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

    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
    var walkkTime = distance / 67 | 0;
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
    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">도보</span>' + walkHour + walkMin;
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
    content += '    </li>';
    content += '</ul>'

    return content;
}
</script>

<!--  summernote script-->
<script type="text/javascript">
    $(function() {
      $('.summernote').summernote({
        height: 200
      });

      $('form').on('submit', function (e) {
        e.preventDefault();
        alert($('.summernote').summernote('code'));
        alert($('.summernote').val());
      });
    });
  </script>
  <!--  summernote script end-->
  
</body>
</html>