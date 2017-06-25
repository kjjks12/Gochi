<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div id="page-container">
		<section id="blog">

			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-2" id="block-menu-content">
						<ul class="block-menu" data-spy="affix" data-offset-top="500"
							data-offset-bottom="400">
							<li><a class="faq-button active" href="#basic" id="select">전체</a></li>
							<li><a class="faq-button" href="#summary" id="select">친구와 함께</a></li>
							<li><a class="faq-button" href="#images" id="select">나홀로여행</a></li>
							<li><a class="faq-button" href="#features" id="select">가족과 함께</a></li>
							<li><a class="faq-button" href="#features" id="select">패키지여행</a></li>
							<li><a class="faq-button" href="#features" id="select">단체여행</a></li>
							<li><a class="faq-button" href="#features" id="select">커플</a></li>
							
						</ul>
					</div>
			
	
					<!-- 여행 후기 목록 -->
					<!-- 전체 한행의 넓이 9 -->

<div class="col-xs-9 col-sm-9 col-md-9  col-lg-10"  >
	<div id="left">
	<div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6" style="width:40%; " >
		<div class=" blog-list post-line">
		<div class="section-title line-style">
							<h3 class="title">최신 여행후기</h3>
		</div>
 <c:choose>
         <c:when test="${reviewList.size()==0}">
               <span colspan="6" align="center"><h2>여행후기가 없습니다...</h2></span>   
         </c:when>
   <c:otherwise>
   
   		<c:forEach items="${newTrvelReview}" var="list" varStatus="state" >
     	
       		<div class="social" >
       		<span class="date">${state.count}<span>${list.thema}</span></span> <a href="#">
			<i class="fa fa-heart-o"></i><span>${list.favor}</span></a> <a href="#">
			<i class="fa fa-eye"></i><span>0</span></a> <a href="#">
			<i class="fa fa-comments"></i><span>0</span></a>
			</div>
			<a href="${pageContext.request.contextPath}/travel_review/review_detail">
			<div class="image image-fill">
			<img src="${pageContext.request.contextPath}/resources/review_img/temp_review.jpg" alt="Image Sample" />
			</div>
			<h3 class="subtitle">${list.brief_story}</h3>
			<div class="text">${list.email}</div>
			</a>
		
		</c:forEach>
	 </c:otherwise>
	</c:choose>
	
	 	</div>
	 
</div>
</div> <!-- 	<div id="left"> end -->

	

<div id="right">
<div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6" style="width:40%; margin-left: 70px;" >
		<div class=" blog-list post-line" >
		<div class="section-title line-style">
							<h3 class="title">추천순</h3>
		</div>
 <c:choose>
         <c:when test="${reviewList.size()==0}">
               <span colspan="6" align="center"><h2>여행후기가 없습니다...</h2></span>   
         </c:when>
   <c:otherwise>
   
   	
     	<c:forEach items="${goodTrvelReview}" var="list" varStatus="state"  >
     	
       		<div class="social" >
       		<span class="date">${state.count}<span>${list.thema}</span></span> <a href="#">
			<i class="fa fa-heart-o"></i><span>${list.favor}</span></a> <a href="#">
			<i class="fa fa-eye"></i><span>0</span></a> <a href="#">
			<i class="fa fa-comments"></i><span>0</span></a>
			</div>
			<a href="${pageContext.request.contextPath}/travel_review/review_detail">
			<div class="image image-fill">
			<img src="${pageContext.request.contextPath}/resources/review_img/temp_review.jpg" alt="Image Sample" />
			</div>
			<h3 class="subtitle">${list.brief_story}</h3>
			<div class="text">${list.email}</div>
			</a>
		
		</c:forEach>
	 </c:otherwise>
	</c:choose>
	
	 				 </div>
	</div> 
</div>
						<!-- /.blog-list -->
</div>





				</div>
			</div>

			<!-- pagination -->
			<div class="container-fluid" id="pagination">
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="pagination">
							<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
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

		
	</div>
	<!-- /#page-container -->
	<script type="text/javascript">
	
	$(document).ready(function() {
			
		$("#block-menu-content").children().children().click(function() {
			//alert($(this).text())
			var thema = $(this).text()
			
			
				$.ajax({
				url: "${pageContext.request.contextPath}/travelreview/travelreviewData_main", //서보요청이름(주소)
				type: "post", // method방식(get , post)
				dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
				data: "data="+$(this).text(), // 서버에게 보낼 parameter정보
				success: function(result) {   // 성공결과
			        var str="";
			       
					str+='<div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6" style="width:40%" >';
			    	str+='<div class=" blog-list post-line">';
			    	str+='<div class="section-title line-style">';
		    		str+='<h3 class="title">'+thema+' 최신 후기</h3></div>';
			    	
			        $.each(result.newTrvelReview,function(index, item) {
			        	str+='<div class="social" >';
			        	str+='<span class="date">'+(index+1)+'<span>'+item.thema+'</span></span> <a href="#">';
			        	str+='<i class="fa fa-heart-o"></i><span>'+item.favor+'</span></a> <a href="#">';
			        	str+='<i class="fa fa-eye"></i><span>0</span></a> <a href="#">';
			        	str+='<i class="fa fa-comments"></i><span>0</span></a></div>';
			        	str+='<a href="${pageContext.request.contextPath}/travel_review/review_detail">';
			        	str+='<div class="image image-fill">';
			        	str+='<img src="${pageContext.request.contextPath}/resources/review_img/temp_review.jpg" alt="Image Sample"style="position: absolute; width: 500px; height: 255px; top: 0px; left: -36px;" />';
			        	str+='</div>';
			        	str+='<h3 class="subtitle">'+item.brief_story+'</h3>';
			        	str+='<div class="text">'+item.email+'</div></a>';
			        	
			     })
			     str+='</div></div>';
			     $("#left").html(str);
			     	
			 	
			     	var str2 = "";
			     	str2+=' <div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6" style="width:40%; margin-left: 70px;" >';
			     	str2+='<div class=" blog-list post-line">';
			     	str2+='<div class="section-title line-style">';
			     	str2+='<h3 class="title">'+thema+' 후기 인기글</h3></div>';

					$.each(result.goodTrvelReview,function(index, item) {
						str2+='<div class="social" >';
						str2+='<span class="date">'+(index+1)+'<span>'+item.thema+'</span></span> <a href="#">';
						str2+='<i class="fa fa-heart-o"></i><span>'+item.favor+'</span></a> <a href="#">';
						str2+='<i class="fa fa-eye"></i><span>0</span></a> <a href="#">';
						str2+='<i class="fa fa-comments"></i><span>0</span></a></div>';
						str2+='<a href="${pageContext.request.contextPath}/travel_review/review_detail">';
						str2+='<div class="image image-fill">';
						str2+='<img src="${pageContext.request.contextPath}/resources/review_img/temp_review.jpg" alt="Image Sample" style="position: absolute; width: 500px; height: 255px; top: 0px; left: -36px;" />';
						str2+='</div>';
						str2+='<h3 class="subtitle">'+item.brief_story+'</h3>';
						str2+='<div class="text">'+item.email+'</div></a>';
			        	
			     })
			     str2+='</div></div>';
					   $("#right").html(str2);
		            	
		            	
				},
				error :  function(err) {
					alert("오류발생 : "+ err);
				}
			}) //ajax end
		})  // 클릭이벤트 end
	
	})  // document end
	
	</script>

	