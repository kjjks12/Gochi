<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/wish/styles/city-main-styles.css">
	
	<div class="main-tabs">
    <div class="tabs-list">
        <ul id="menu_tab_list">
            <li><a data-tab="home" >추천콘텐츠</a></li>
            <li><a data-tab="hotdeal" >여행핫딜</a></li>
            <li><a data-tab="specialTip" >여행꿀팁</a></li>
            <li><a data-tab="community" >커뮤니티</a></li>
            <li><a data-tab="plan" >여행일정</a></li>
            <li><a data-tab="attraction" >가볼만한 곳</a></li>
            <li><a data-tab="food" >맛집</a></li>
            <li><a data-tab="sleep" >숙소</a></li>
            <li><a data-tab="hotel" href="/hotels" target="_blank">최저가 호텔</a></li>
            <li><a data-tab="flight" href="http://flights.wishbeen.com/ko-KR/flights/" target="_blank">항공권 조회</a></li>
        </ul><!-- e// tabs -->
    </div><!-- e//tabs-list -->

    <div class="search-box">
        <div class="inner-box">
            <div id="where_search_box" class="first-box">
                <label for="where"></label>
                <input type="text" id="where" placeholder="어디에서"/>
                <div id="search_city_recommend_cities" class="search-list hide">
                    <ul>
                        <li class="sub-tit"><a><span>추천여행지</span></a></li>
                        
                        <li class="search-place" data-city="korea">
                            <a>
                                <strong>대한민국</strong>
                                
                                <span>아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="jeju">
                            <a>
                                <strong>제주</strong>
                                
                                <span>대한민국, 아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="seoul">
                            <a>
                                <strong>서울</strong>
                                
                                <span>대한민국, 아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="kansai">
                            <a>
                                <strong>오사카</strong>
                                
                                <span>일본, 아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="taiwan">
                            <a>
                                <strong>대만</strong>
                                
                                <span>아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="hongkong">
                            <a>
                                <strong>홍콩</strong>
                                
                                <span>아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="thailand">
                            <a>
                                <strong>태국</strong>
                                
                                <span>아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="singapore">
                            <a>
                                <strong>싱가포르</strong>
                                
                                <span>아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="cebu">
                            <a>
                                <strong>세부</strong>
                                
                                <span>필리핀, 아시아</span>
                                
                            </a>
                        </li>
                        
                        <li class="search-place" data-city="europe">
                            <a>
                                <strong>유럽</strong>
                                
                                <span></span>
                                
                            </a>
                        </li>
                        
                    </ul>
                </div><!-- e//search-list -->
            </div><!-- e//first-box -->
            <div id="what_search_box" class="second-box">
                <label for="what"></label>
                <input type="text" id="what" autocomplete="off" placeholder="무엇을 하고 싶으세요?"/>
                <div id="search_text_tab_menus" class="search-list hide">
                    <ul>
                        <li class="l-type01 search-tab" data-tab="home"><a><span class="tmp-search-text-input"></span> <span>추천콘텐츠</span></a></li>
                        <li class="l-type02 search-tab" data-tab="hotdeal"><a><span class="tmp-search-text-input"></span> <span>여행핫딜</span></a></li>
                        <li class="l-type02 search-tab" data-tab="specialTip"><a><span class="tmp-search-text-input"></span> <span>여행꿀팁</span></a></li>
                        <li class="l-type03 search-tab" data-tab="community"><a><span class="tmp-search-text-input"></span> <span>커뮤니티</span></a></li>
                        <li class="l-type04 search-tab" data-tab="plan"><a><span class="tmp-search-text-input"></span> <span>여행일정</span></a></li>
                        <li class="l-type05 search-tab" data-tab="attraction"><a><span class="tmp-search-text-input"></span> <span>가볼만한 곳</span></a></li>
                        <li class="l-type06 search-tab" data-tab="food"><a><span class="tmp-search-text-input"></span> <span>맛집</span></a></li>
                        <li class="l-type07 search-tab" data-tab="sleep"><a><span class="tmp-search-text-input"></span> <span>숙소</span></a></li>
                    </ul>
                    <ul>
                        <li class="sub-tit"><a><span>예약하기</span></a></li>
                        <li class="l-type07 search-tab" data-tab="hotel" ><a href="/hotels" target="_blank"><span class="tmp-search-text-input"></span> <span>최저가 호텔</span></a></li>
                        <li class="l-type08 search-tab" data-tab="flight"><a href="http://flights.wishbeen.com/ko-KR/flights/" target="_blank"><span class="tmp-search-text-input"></span> <span>항공권 조회</span></a></li><!-- 나라를 선택하고나면 디폴트값 -->
                    </ul>
                </div><!-- e//search-list -->
            </div><!-- e//second-box -->
            <a id="search_tab_search_btn" class="btn-main-search"><img src="/images/btn-search.png" alt=""/></a>
        </div><!-- e//inner-box -->
    </div><!-- e//search-box -->
</div><!-- e//main-tabs -->
	<div id="page-container">
		
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
			<div class="contaibner header-text">
				<br><br>
					<div><h2 class="title">나만믿고 따라와</h2></div>
					
						
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Property</a></li>
						<li class="active">Grid right column</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="grid-content">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-9">
						<div class="row">
							<div class="col-sm-6 col-md-4">
							
							<!-- 최근등록글 -->
							<br><br>
							<div> 최신 등록글</div>
								<div class="box-ads box-grid">
									<a href="property-detail.html" class="hover-effect image image-fill">
										<span class="cover"></span>
										<img src="images/sample/property/p1.jpg" alt="Sample images" />
										<h3 class="title"> 김준 test </h3>
									</a>
									<span class="price">$ 469.500,00</span>
									<span class="address"><i class="fa fa-map-marker"></i> 장소</span>
									<span class="description">설명</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>모집중</span></dd>
										<dt class="bed">copa:</dt><dd><span>4</span></dd>
										<dt class="bath">???:</dt><dd><span>2</span></dd>
									</dl>
									<div class="footer">
										<a href="property-detail.html" class="btn btn-default">Read now</a>
									</div>
								</div><!-- ./box-ads -->
							</div><!-- ./col-md-4 -->
							</div>
							</div>
							
							<div class="col-sm-4 col-md-3">
					
						<!-- ===================== SEARCH ===================== -->
						
						
						
					</div><!-- ./col-md-3 -->
			</div><!-- ./container -->
			<!-- pagination -->	
		
			</div><!-- ./container -->
			

		</section><!-- /.#masonry-content -->

	
	</div><!-- /#page-container -->

	
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-62553398-1', 'auto');
	  ga('send', 'pageview');
	</script>
