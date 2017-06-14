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
            //$("#add_my").show();
            //alert('Clicked on: ' + date.format());

         },
         navLinks: true,
          navLinkDayClick: function(date, jsEvent) {
              console.log('day', date.format()); // date is a moment
              console.log('coords', jsEvent.pageX, jsEvent.pageY);
          },
      }); /*./fullCalendar 끝*/

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
                           <div class='fc-event' value="12345">My Event 1</div>
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
                  <!-- 지도/일정영역 end-->


               </div>
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


      <div class="modal fade" id="modal-contact" tabindex="-1" role="dialog"
         aria-hidden="true">
         <div class="modal-dialog">
            <button type="button" class="close" data-dismiss="modal"
               aria-hidden="true">
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

</body>
</html>