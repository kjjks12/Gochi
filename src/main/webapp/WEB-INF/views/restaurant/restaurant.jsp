<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
   #modal-contact2 { padding-left: 0; }
   #modal-contact2 .modal-dialog { 
      width: 850px !important; left: calc(50% - 425px); margin-left: 0;
   }
   .wrap-left { float: left; width: 380px; margin-right: 15px; }
   .wrap-right { float: left; width: 360px; }
   .wrap-right .field:first-child { margin-top: 0; }
   .wrap-right #message { height: 100px !important; }
   .modal-backdrop { display: none !important; }
   
   #form-modal-map { overflow: hidden; }
   #form-modal-map:before { display: block; content: ""; clear: both; }
   
   #search-box {margin-top: 14px; margin-bottom: 15px;}
   #map {margin-top: 14px;}
   
   .food-insert {font-size: 12px;} 
   
   #star-icon {width : 8px; height : 8px;}
   
   #new-food { 
      text-align : center;
      font-weight: bold; 
   }
   

   #field-category {margin-top:0px;}
   
   /* #food-start {height: 230px !important;}
   #food-start {width : auto;} */
   /* #food-start {
      width: auto;
        height: 50px;;
      
   } */
 

</style>


<script>


$(function() {   
   selectList();

   $('#modal-opener').click(function() {
      setTimeout(setMap2, 500);
   });
   // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
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
      var callback1 = function(){
         var keyWord = $("#food-search").val();
         
         /* var koreaKeyWord = encodeURIComponent(keyWord); */
            // keyword JSON데이터에 접근하기 위한 주소
         var url = "https://apis.daum.net/local/v1/search/keyword.json?apikey=815544b5d2063051aa6e6316ed41e050&query="+keyWord;                             
         
         
         var geocoder = new daum.maps.services.Geocoder();
         
         
         var infowindow = new daum.maps.InfoWindow({zIndex:1});
      
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
                  
               }
               var map = new daum.maps.Map(container, options); // 지도 생성 및 객체 리턴
               var ps = new daum.maps.services.Places();  //장소 검색 객체 생성
               
               ps.keywordSearch(keyWord, placesSearchCB); // 키워드 장소 검색
            
               
               function placesSearchCB (status, data, pagination) {
                   if (status === daum.maps.services.Status.OK) {

                       // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                       // LatLngBounds 객체에 좌표를 추가합니다
                       var bounds = new daum.maps.LatLngBounds();

                       for (var i=0; i<data.places.length; i++) {
                           displayMarker(data.places[i]);    
                           bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
                       };       

                       // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                       map.setBounds(bounds);
                   } 
               }
                // 지도에 마커를 표시하는 함수
               function displayMarker(place) {
                   
                   // 마커를 생성하고 지도에 표시합니다
                   var marker = new daum.maps.Marker({
                       map: map,
                       position: new daum.maps.LatLng(place.latitude, place.longitude) 
                   });

                   // 마커에 클릭이벤트를 등록합니다
                  daum.maps.event.addListener(marker, 'click', function() {
                      // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다                      
                      var coord = new daum.maps.LatLng(place.latitude, place.longitude);   
                        
                      //주소/위치에 선택한 정보 넣기.!!!!!!!!!!!!!!!!!!!!
                 document.getElementById("food-location").value=place.address;
                      infowindow.setContent('<div style="padding:5px;font-size:12px;">'+ place.title +'</div>');
                      infowindow.open(map, marker);
                      $('#food-name').val(place.title);
                
                  });
                }
               
            });   
   
         });
            
         
      }
      // 검색 된 후 input에 입력했던 텍스트를 비워주는 코드
      $("#food-search").val("");
        // 엔터키 누르면 위치검색 가능 메서드
      $("#food-search").keypress(function() {
       if(event.which == 13) {
         callback1();
         
        } 
      });
   
        $('[class="fa fa-search"]').click(callback1);   
    }); // 여기까지 callback 변수에 저장된 메서드
    
});
      
</script>
<script>
function foodCheck() {
   var category = document.insertForm
   if(category.category2.value==""){
      alert("카테고리를 선택해 주세요");
   }else if(document.getElementById("food-name").value==""){
      alert("맛집 이름을 확인 해 주세요!");
   }else if(document.getElementById("food-location").value==""){
      alert("맛집 주소를 확인 해 주세요!");
   }else if(document.getElementById("food-remark").value==""){
      alert("맛집 한줄평을 확인 해 주세요!");
   }else if(document.getElementById("food-phone").value==""){
      alert("맛집 연락처를 확인해 주세요!");
   }else {
      sendSubmit();
   }
}



var testTarget = document.getElementById("category2");
function sendSubmit() {
   $('#food-send').submit();
   testTarget.options[testTarget.selectedIndex].text
}


function selectList() {
   $.ajax({
      type : "post",
      url : "${pageContext.request.contextPath}/restaurant/selectAll",
      dataType : "json",
      success : function(data) {
         var divStr="";
         $.each(data,function(index,item){
            divStr+="<div class='item'>";
            divStr+="<div class='blog-list masonry-post'>";
            divStr+="<h2 class='title'><a href='${pageContext.request.contextPath}/restaurant/detail?index="+index+"'>"+item.restaurantName+"</a></h2>";
            divStr+="<div class='image' id='food-start'>";
            divStr+="<a href='#'><img src='${pageContext.request.contextPath}/resources/images/sample1.jpg' width='100%' height='340px'/></a>";
            divStr+="<div class='social'>";
            divStr+="<a href='#'><span class='date'><i class='fa fa-heart-o'></i><span>654</span></span></a>";
            divStr+="<a href='#'><i class='fa fa-eye'></i><span>92435</span></a>";
            divStr+="</div>";
            divStr+="</div>";
            divStr+="<div class='text'>";
            divStr+="<h3 class='subtitle'>"+item.remark+"</h3>"+item.explanation;
            divStr+="</div>";
            divStr+="</div>";
            divStr+="</div>";
         })
         $("#blog-list").append(divStr);
      },error:function(){
         alert("에러발생!!")
      }
   })
}
</script>


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
                  <h1 class="title">순댓국 이야기</h1>
               </div>
               <div>
                  <h2 class="sub-title">맛있는 순댓국을 찾아 나서자!</h2>
               </div>
            </div>
         </div>
         <!-- /#breadcrumb -->
         <span class="cover"></span>
      </section>
      <!-- /#header -->

      <section id="blog">
         <div class="container">
            <div class="row">
               <div class="col-md-9" id="blog-list">
               
   
               <!-- /.item -->
                 <!--   <div class="item">
                     <div class="blog-list masonry-post">
                        <h2 class="title">
                           <a href="blog-detail.html">${food.restaurantName}</a>
                        </h2>
                        <div class="image" id="food-start">
                           <a href="#"><img src="${pageContext.request.contextPath}/resources/images/sample1.jpg" width="100%" height="340px"/></a>
                           <div class="social">
                              <a href="#"><span class="date"><i class="fa fa-heart-o"></i><span>654</span></span></a>
                              <a href="#"><i class="fa fa-eye"></i><span>92435</span></a>
                           </div>
                        </div>
                        <div class="text">
                           <h3 class="subtitle">맛있는 순댓국 세상으로 오세요!</h3>
                           소사골의 소고기 순대국, 올바름에 대해 고민하는 사람들
                           순대국으로 3끼를 다 먹을 수 있는 그날이 올때까지 
                        </div>
                     </div>
                  </div> --!>
                  <!-- /.item -->
    
               </div>
               <!-- /.col-md-9 -->
               <div class="col-md-3">
                  <div class="section-title line-style no-margin">
                     <h3 class="title">
                        <a href="#" id="modal-opener" data-target="#modal-contact2" data-toggle="modal"
                           class="hidden-xs" onclick="checkLogin()"><i class="fa fa-cutlery"
                           aria-hidden="true"></i> 맛집 등록</a>
                     </h3>

                  </div>
                  <div class="section-title line-style">
                     <h3 class="title">맛집 카테고리</h3>
                  </div>
                  <ul class="category-list">
                     <li><a href="#">음식점(7584)</a></li>
                     <li><a href="#">카페(8845)</a></li>
                     <li><a href="#">주점(9877)</a></li>
                     <li><a href="#">베이커리(1887)</a></li>
                     <li><a href="#">길거리음식(561)</a></li>
                  </ul>
               </div>
               <!-- /.col-md-3 -->
            </div>
         </div>
         <!-- pagination -->
         <div class="container" id="pagination">
            <div class="row">
               <div class="col-md-9 text-center">
                  <ul class="pagination">
                     <li><a href="#"><i class="fa fa-chevron-left" id="test"></i></a></li>
                     <li><a class="active" href="#">1</a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a class="no-active">...</a></li>
                     <li><a href="#">9</a></li>
                     <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                  </ul>
               </div>
            </div>
         </div>
         <!-- ./container -->
      </section>


   <div class="modal fade" id="modal-contact2" tabindex="-1" role="dialog"
      aria-hidden="true">
      <div class="modal-dialog">
         <button type="button" class="close" data-dismiss="modal"
            aria-hidden="true">
            <i class="fa fa-close"></i>
         </button>

         <div class="form-container full-fixed">
            <form method="post" action="${pageContext.request.contextPath}/restaurant/insert" id="food-send" name="insertForm">   
            <div id="form-modal-map" class="box active modal-contact">
               <h2 class="title" id="new-food">새로운 맛집 등록</h2>
               <div class="wrap-left">   
                  <div class="field" id="field-category">
                     <span class="food-insert" >카테고리
                     <img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
                     <select id="food-category" class="form-control" name="category2">
                        <option value="">선택</option>
                        <option value="음식점">음식점</option>
                        <option value="카페">카페</option>
                        <option value="주점">주점</option>
                        <option value="베이커리">베이커리</option>
                        <option value="길거리음식">길거리음식</option>
                     </select>
                  </div>   
                  <div class="field">
                     <input id="food-search" class="form-control" type="text" name="food-search" placeholder="키워드 맛집 검색">
                     <a href="#"><i class="fa fa-search"></i></a>
                  </div>
                  
                  <!-- 지도를 표시할 div 입니다 -->
                  <div id="map" style="width: 100%; height: 440px;"></div>                     
               </div>            
               
               <div class="wrap-right">
                  <div class="field">
                     <span class="food-insert">맛집이름
                     <img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
                     <input id="food-name" class="form-control" type="text" name="food-name">
                     <i class="fa fa-home" aria-hidden="true"></i>
                  </div>
                  
                  <div class="field">
                     <span class="food-insert">주소/위치
                     <img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
                     <input id="food-location" class="form-control" type="text" name="food-location">
                     <i class="fa fa-compass" aria-hidden="true"></i>
                  </div>
                  <div class="field">
                     <span class="food-insert">한줄평
                     <img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
                     <input id="food-remark" class="form-control" type="text" name="food-remark">
                     <i class="fa fa-paint-brush" aria-hidden="true"></i>
                  </div>
                  
                  <div class="field">
                     <span class="food-insert">영업시간</span>
                     <input id="food-time" class="form-control" type="text" name="food-time">
                     <i class="fa fa-clock-o" aria-hidden="true"></i>
                  </div>
                  
                  <div class="field">
                     <span class="food-insert">휴무일</span>
                     <input id="food-holiday" class="form-control" type="text" name="food-holiday">
                     <i class="fa fa-moon-o" aria-hidden="true"></i>
                  </div>
                  
                  <div class="field">
                     <span class="food-insert">연락처
                     <img id="star-icon" src="${pageContext.request.contextPath}/resources/images/staricon.png"></span>
                     <input id="food-phone" class="form-control" type="text" name="food-phone">
                     <i class="fa fa-phone" aria-hidden="true"></i>
                  </div>   
                  
                  <div class="field">
                     <textarea class="form-control" name="food-info" id="message" placeholder="추가 정보 기입" style="resize:none"></textarea>
                  </div>   
               </div>
            </div>
            <div class="field footer-form text-right">
               <button type="button" class="btn btn-reverse button-form" data-dismiss="modal">Cancel</button>
               <button type="button" class="btn btn-default button-form" onclick="foodCheck()">저장</button>
            </div>
            </form>
         </div>
      </div>
   </div>
 </div>  
      <!-- /.modal-dialog -->

<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=815544b5d2063051aa6e6316ed41e050&libraries=services"></script>

