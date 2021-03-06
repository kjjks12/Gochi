<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="page-container">

   <section id="home-slide" class="header-margin-base">
      <div class="home-slider" data-navigation=".home-slider-nav">
         <div class="crsl-wrap">
            <figure class="crsl-item"
               data-image="${pageContext.request.contextPath}/resources/main_img/travel_main.jpg">
               <div class="container slider-box">
                  <div class="content">
                     <h2>당신의 여행을</h2>
                  </div>
                  <div class="content">
                     <h1>여행꼬치에서</h1>
                  </div>
                  <div class="content">
                     <h3>시작하세요.</h3>
                  </div>
               </div>
            </figure>
            <figure class="crsl-item"
               data-image="${pageContext.request.contextPath}/resources/main_img/travel_main2.jpg">
               <div class="container slider-box">
                  <div class="content">
                     <h2>여행 준비와 후기도</h2>
                  </div>
                  <div class="content">
                     <h1>여행꼬치에서</h1>
                  </div>
               </div>
            </figure>
            <figure class="crsl-item"
               data-image="${pageContext.request.contextPath}/resources/main_img/travel_main3.jpg">
               <div class="container slider-box">
                  <div class="content">
                     <h2>혼행족 탈출은?</h2>
                  </div>
                  <div class="content">
                     <h1>여행꼬치</h1>
                  </div>
               </div>
            </figure>
         </div>
         <p class="home-slider-nav previus">
            <a href="#" class="previous">previous</a>
         </p>
         <p class="home-slider-nav next">
            <a href="#" class="next">next</a>
         </p>
      </div>
   </section>

   <section id="recent-list">
      <div class="section-detail">
         <h1>
            <span>여행 후기 </span> <span id="spinner-show"> <em
               class="current">Real Estate</em> <span class="next"><span></span></span>
            </span> <span>Featured Homes</span>
         </h1>
         <ul id="spinner">
            <li>Clients</li>
            <li>Stellar Service</li>
            <li>Simple Question</li>
            <li>Home Valutation</li>
            <li>Rentals</li>
         </ul>
         <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Donec dolor, sagittis sed elementum dignissim, lobortis.</h2>
      </div>
      <div class="container">
         <div class="list-box-title">
            <span><i class="icon fa fa-plus-square"></i>나만믿고 따라와 패키지</span>
         </div>
         <div class="row">
         
          <c:forEach items="${flist}" var="i">
          
            <div class="col-md-4">
               <div class="box-ads box-home">
                  <a class="hover-effect image image-fill"
                     href="property-detail.html"> <span class="cover"></span> <img
                     alt="Sample images"
                     src="http://placehold.it/1240x745/bbbbbb/ffffff">
                     <h3 class="title">${i.title}</h3>
                  </a>
                  <!-- /.hover-effect  --> 
                  <span class="price">${i.cost}</span> <span class="address"><i
                     class="fa fa-map-marker"></i>${i.location}</span> 
                  <span class="description">${i.story}</span>
                  <dl class="detail">
                     <dt class="status">Status:</dt>
                     <dd>
                        <span>Sale</span>
                     </dd>
                     <dt class="area">Area:</dt>
                     <dd>
                        <span>$	{i.distance}</span>
                     </dd>
                     <dt class="bed">Beds:</dt>
                     <dd>
                        <span>3</span>
                     </dd>
                     <dt class="bath">Baths:</dt>
                     <dd>
                        <span>2</span>
                     </dd>
                  </dl>
                  <!-- /.detail -->
                  <div class="footer">
                     <a class="btn btn-reverse" href="property-detail.html">Read
                        now</a>
                  </div>
               </div>
               <!-- /.box-home .box-ads -->
            </div>
            </c:forEach>
            </div>
            
         <div class="list-box-title">
            <span><i class="icon fa fa-plus-square"></i>여행 후기</span>
         </div>
         <div class="row">
         <c:forEach items="${tlist}" var="i">
            <div class="col-md-4">
            
               <div class="box-ads box-home">
                  <a class="hover-effect image image-fill"
                     href="property-detail.html"> <span class="cover"></span> <img
                     alt="Sample images"
                     src="http://placehold.it/1240x745/bbbbbb/ffffff">
                     <h3 class="title">${i.title}</h3>
                  </a>
                  <!-- /.hover-effect -->
                  <span class="price"></span> 
                  <span class="address"><i class="fa fa-map-marker"></i>${i.briefStory}</span>
                  <dl class="detail">
                     <dt class="status">Status:</dt>
                     <dd>
                        <span>Sale</span>
                     </dd>
                     <dt class="area">Area:</dt>
                     <dd>
                        <span>165m2</span>
                     </dd>
                     <dt class="bed">Beds:</dt>
                     <dd>
                        <span>2</span>
                     </dd>
                     <dt class="bath">Baths:</dt>
                     <dd>
                        <span>1</span>
                     </dd>
                  </dl>
                  <!-- /.detail -->


                  <div class="footer">
                     <a class="btn btn-reverse" href="property-detail.html">Read
                        now</a>
                  </div>
               </div>
               </div>
                </c:forEach>
            </div>
            <!-- ./col-md-4 -->
         </div>
         </section>
      </div>
   
   <section id="service" class="section-color">
      <div class="section-detail">
         <h1>Services</h1>
         <h2>Pellentesque vitae dolor eu lacus lacinia viverra in sed
            urna. Donec vitae ipsum eu nibh convallis rutrum.</h2>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-md-4">
               <div class="content-box">
                  <i class="icon-box fa fa-users"></i>
                  <h3>
                     <i class="icon-quote fa fa-quote-left"></i> Don't Lonely Trip<i
                        class="icon-quote fa fa-quote-right"></i>
                  </h3>
                  <h4>We enjoy traveling</h4>
               </div>
            </div>
            <div class="col-md-4">
               <div class="content-box">
                  <i class="icon-box fa fa-car"></i>
                  <h3>
                     <i class="icon-quote fa fa-quote-left"></i> Enjoy Travel <i
                        class="icon-quote fa fa-quote-right"></i>
                  </h3>
                  <h4>Simple Trip<br>   Pleasant Trip</h4>
               </div>
            </div>
            <div class="col-md-4">
               <div class="content-box">
                  <i class="icon-box fa fa-key"></i>
                  <h3>
                     <i class="icon-quote fa fa-quote-left"></i> Dolor sit amet <i
                        class="icon-quote fa fa-quote-right"></i>
                  </h3>
                  <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                     Donec dolor, sagittis sed elementum dignissim, lobortis.</h4>
               </div>
            </div>
         </div>
      </div>
   </section>


   <section id="recent-listed" data-parallax-speed="-0.3"
      class="hidden-xs">
      <div class="section-detail">
         <h1>맛집 소개</h1>
         <h2>빅데이터를 이용한 이용자들이 추천해주는 맛집!!</h2>
      </div>
      <div class="margin-box">
         <div class="property-slide" data-navigation="#property-slide-nav">
            <div class="crsl-wrap">
               <figure class="crsl-item">
                  <div class="box-property-slide">
                     <div class="left-block">
                        <span class="title">59 Paterson Ave</span> <span
                           class="description">Mauris ullamcorper magna a dui
                           viverra pulvinar. Phasellus gravida risus eros, eget porta
                           risus auctor at. Vivamus elementum odio nunc, non scelerisque
                           nisi pulvinar vitae. Quisque in sagittis nulla. Aenean
                           tristique purus ut ipsum suscipit laoreet.</span>
                        <dl class="detail">
                           <dt class="status">Status:</dt>
                           <dd>
                              <span>Sale</span>
                           </dd>
                           <dt class="area">Area:</dt>
                           <dd>
                              <span>560m2</span>
                           </dd>
                           <dt class="bed">Beds:</dt>
                           <dd>
                              <span>5</span>
                           </dd>
                           <dt class="bath">Baths:</dt>
                           <dd>
                              <span>7</span>
                           </dd>
                        </dl>
                        <span class="price">$ 1.890.000,00</span> <a
                           href="property-detail.html" class="btn btn-reverse button"><i
                           class="fa fa-search"></i> View</a>
                     </div>
                     <a href="property-detail.html"
                        class="right-block hover-effect image-fill"> <img
                        alt="img sample"
                        src="http://placehold.it/1240x745/bbbbbb/ffffff"> <span
                        class="cover"></span> <span class="cover-title">59
                           Paterson Ave</span>
                     </a>
                  </div>
               </figure>
               <figure class="crsl-item">
                  <div class="box-property-slide">
                     <div class="left-block">
                        <span class="title">560 Marshall Dr</span> <span
                           class="description">Proin fermentum, erat tempus
                           ullamcorper vehicula, lacus quam tempor nisi, gravida rutrum
                           arcu justo sed quam. Sed sollicitudin, ligula et rhoncus
                           interdum, odio ex maximus lectus, laoreet mollis velit lectus
                           quis nisl. Sed erat lacus.</span>
                        <dl class="detail">
                           <dt class="status">Status:</dt>
                           <dd>
                              <span>Sale</span>
                           </dd>
                           <dt class="area">Area:</dt>
                           <dd>
                              <span>330m2</span>
                           </dd>
                           <dt class="bed">Beds:</dt>
                           <dd>
                              <span>9</span>
                           </dd>
                           <dt class="bath">Baths:</dt>
                           <dd>
                              <span>2</span>
                           </dd>
                        </dl>
                        <span class="price">$ 1.268.500,00</span> <a
                           href="property-detail.html" class="btn btn-reverse button"><i
                           class="fa fa-search"></i> View</a>
                     </div>
                     <a href="property-detail.html"
                        class="right-block hover-effect image-fill"> <img
                        alt="img sample"
                        src="http://placehold.it/1240x745/bbbbbb/ffffff"> <span
                        class="cover"></span> <span class="cover-title">560
                           Marshall Dr</span>
                     </a>
                  </div>
               </figure>
               <figure class="crsl-item">
                  <div class="box-property-slide">
                     <div class="left-block">
                        <span class="title">477 Jersey Ave</span> <span
                           class="description">Morbi molestie mi eu metus gravida,
                           eu sollicitudin neque fermentum. Suspendisse potenti. Class
                           aptent taciti sociosqu ad litora torquent per conubia nostra,
                           per inceptos himenaeos. Vestibulum tellus orci, dictum eget
                           fringilla at, mollis nec lorem.</span>
                        <dl class="detail">
                           <dt class="status">Status:</dt>
                           <dd>
                              <span>Sale</span>
                           </dd>
                           <dt class="area">Area:</dt>
                           <dd>
                              <span>210m2</span>
                           </dd>
                           <dt class="bed">Beds:</dt>
                           <dd>
                              <span>6</span>
                           </dd>
                           <dt class="bath">Baths:</dt>
                           <dd>
                              <span>1</span>
                           </dd>
                        </dl>
                        <span class="price">$ 758.200,00</span> <a
                           href="property-detail.html" class="btn btn-reverse button"><i
                           class="fa fa-search"></i> View</a>
                     </div>
                     <a href="property-detail.html"
                        class="right-block hover-effect image-fill"> <img
                        alt="img sample"
                        src="http://placehold.it/1240x745/bbbbbb/ffffff"> <span
                        class="cover"></span> <span class="cover-title">477
                           Jersey Ave</span>
                     </a>
                  </div>
               </figure>
               <figure class="crsl-item">
                  <div class="box-property-slide">
                     <div class="left-block">
                        <span class="title">403 Bloomfield St</span> <span
                           class="description">Lorem ipsum dolor sit amet,
                           consectetur adipiscing elit. Proin vulputate, nulla ac suscipit
                           blandit, risus nisl vulputate purus, at pharetra lacus odio ut
                           est. Donec nisi est, rutrum in sapien eu, tristique dapibus
                           orci. Duis sagittis faucibus quam ac.</span>
                        <dl class="detail">
                           <dt class="status">Status:</dt>
                           <dd>
                              <span>Sale</span>
                           </dd>
                           <dt class="area">Area:</dt>
                           <dd>
                              <span>260m2</span>
                           </dd>
                           <dt class="bed">Beds:</dt>
                           <dd>
                              <span>5</span>
                           </dd>
                           <dt class="bath">Baths:</dt>
                           <dd>
                              <span>2</span>
                           </dd>
                        </dl>
                        <span class="price">$ 926.949,99</span> <a
                           href="property-detail.html" class="btn btn-reverse button"><i
                           class="fa fa-search"></i> View</a>
                     </div>
                     <a href="property-detail.html"
                        class="right-block hover-effect image-fill"> <img
                        alt="img sample"
                        src="http://placehold.it/1240x745/bbbbbb/ffffff"> <span
                        class="cover"></span> <span class="cover-title">403
                           Bloomfield St</span>
                     </a>
                  </div>
               </figure>
            </div>
         </div>
         <!-- ./property-slide -->
         <div id="property-slide-nav" class="nav-box">
            <a href="#" class="previous"></a> <a href="#" class="next"></a>
         </div>
      </div>
      <!-- ./margin-box -->
   </section>

   <section id="recent-news">
      <div class="section-detail">
         <h1>Recent News</h1>
         <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Donec dolor, sagittis sed elementum dignissim, lobortis.</h2>
      </div>
      <div class="container" id="blog">
         <div class="row">
            <div class="col-md-4">
               <div class="blog-list masonry-post">
                  <h2 class="title">
                     <a href="blog-detail.html">Praesent moleti ipsum</a>
                  </h2>
                  <div class="image">
                     <img class="img-responsive" alt="Image Sample"
                        src="http://placehold.it/1280x850/bbbbbb/ffffff">
                     <div class="social">
                        <span class="date">2<span>Apr</span></span> <a href="#"><i
                           class="fa fa-heart-o"></i><span>654</span></a> <a href="#"><i
                           class="fa fa-eye"></i><span>92435</span></a> <a href="#"><i
                           class="fa fa-comments"></i><span>69</span></a>
                     </div>
                  </div>
                  <div class="text">
                     <h3 class="subtitle">Internet tend to repeat prunks.</h3>
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
                     molestie in ippulvinar libero enim, et finibus massa commodo
                     vitae.
                  </div>
                  <a href="blog-detail.html" class="btn btn-default button-read">Read
                     now</a>
               </div>
            </div>
            <div class="col-md-4">
               <div class="blog-list masonry-post">
                  <h2 class="title">
                     <a href="blog-detail.html">Dolor sit amet</a>
                  </h2>
                  <div class="image">
                     <img class="img-responsive" alt="Image Sample"
                        src="http://placehold.it/1280x850/bbbbbb/ffffff">
                     <div class="social">
                        <span class="date">18<span>Mar</span></span> <a href="#"><i
                           class="fa fa-heart-o"></i><span>654</span></a> <a href="#"><i
                           class="fa fa-eye"></i><span>92435</span></a> <a href="#"><i
                           class="fa fa-comments"></i><span>69</span></a>
                     </div>
                  </div>
                  <div class="text">
                     <h3 class="subtitle">Internet tend to redefined chunks.</h3>
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
                     molestie in ippulvinar libero enim, et finibus massa commodo
                     vitae.
                  </div>
                  <a href="blog-detail-full.html"
                     class="btn btn-default button-read">Read now</a>
               </div>
            </div>
            <div class="col-md-4">
               <div class="blog-list masonry-post">
                  <h2 class="title">
                     <a href="blog-detail.html">Pepeat predefined chunks</a>
                  </h2>
                  <div class="image">
                     <img class="img-responsive" alt="Image Sample"
                        src="http://placehold.it/1280x850/bbbbbb/ffffff">
                     <div class="social">
                        <span class="date">15<span>Mar</span></span> <a href="#"><i
                           class="fa fa-heart-o"></i><span>654</span></a> <a href="#"><i
                           class="fa fa-eye"></i><span>92435</span></a> <a href="#"><i
                           class="fa fa-comments"></i><span>69</span></a>
                     </div>
                  </div>
                  <div class="text">
                     <h3 class="subtitle">Interno repeat predefined chunks.</h3>
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
                     molestie in ippulvinar libero enim, et finibus massa commodo
                     vitae.
                  </div>
                  <a href="blog-detail.html" class="btn btn-default button-read">Read
                     now</a>
               </div>
            </div>
         </div>
      </div>
   </section>


   <section id="submit-property" data-parallax-speed="0">
      <span class="overlay"></span>
      <div class="container">
         <div class="section-detail">
            <h1>Submit Property</h1>
            <h2>
               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec
               dolor, sagittis sed elementum dignissim, lobortis.<br />Dolor nunc
               vule putateulr ips dol consec.Donec semp ertet.
            </h2>
         </div>
         <div class="row text-center">
            <a href="new-property.html" class="btn btn-reverse button-large">Submit
               Property</a>
         </div>
      </div>
   </section>


   <section id="testimonial">
      <div class="section-detail hidden-xs">
         <h1>Client Testimonials</h1>
      </div>
      <div class="container hidden-xs">
         <div class="row">
            <div class="col-md-12">
               <div class="row feedback-margin">
                  <div class="feedback-container" data-navigation="#feedback-nav">
                     <div class="crsl-wrap">
                        <figure class="crsl-item">
                           <div class="feeddback-user">
                              <div class="info-user">
                                 <span class="avatar"> <img
                                    src="http://placehold.it/512/bbbbbb/ffffff"
                                    alt="Image Sample" class="img-responsive" />
                                 </span> <b>Robert Phelps</b> <span>broadway (NY)</span> <span>Age
                                    26 Year</span>
                              </div>
                              <div class="message">
                                 <div class="content">
                                    <h3 class="title">
                                       <i class="icon-quote fa fa-quote-left"></i> Iaculis
                                       pharetra velit torquent pellentesque euismod <i
                                          class="icon-quote fa fa-quote-right"></i>
                                    </h3>
                                    <span class="rating"> <span>Rating:</span> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star-o"></i>
                                    </span>
                                    <p class="text-container">
                                       Aenean nisique purus vulputate suspendisse felis aliquet eu
                                       commodo aliquam ut ultricies facilisi eu metus cum<br />
                                       <br />Facilisi aenean in penatiblus convallis montes
                                       taciti cras sollicitudin semper iniam vestibulum orci
                                       convallis malesuada orci pellentesque nascetur massa amet
                                       parturient
                                    </p>
                                 </div>
                              </div>
                           </div>
                        </figure>
                        <figure class="crsl-item">
                           <div class="feeddback-user">
                              <div class="info-user">
                                 <span class="avatar"> <img
                                    src="http://placehold.it/512/bbbbbb/ffffff"
                                    alt="Image Sample" class="img-responsive" />
                                 </span> <b>Shawn Mcdonald</b> <span>Boston</span> <span>Age
                                    32 Year</span>
                              </div>
                              <div class="message">
                                 <div class="content">
                                    <h3 class="title">
                                       <i class="icon-quote fa fa-quote-left"></i> Iaculis
                                       pharetra velit torquent pellentesque euismod <i
                                          class="icon-quote fa fa-quote-right"></i>
                                    </h3>
                                    <span class="rating"> <span>Rating:</span> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star-o"></i>
                                    </span>
                                    <p class="text-container">
                                       Aenean nisique purus vulputate suspendisse felis aliquet eu
                                       commodo aliquam ut ultricies facilisi eu metus cum<br />
                                       <br />Facilisi aenean in penatiblus convallis montes
                                       taciti cras sollicitudin semper iniam vestibulum orci
                                       convallis malesuada orci pellentesque nascetur massa amet
                                       parturient
                                    </p>
                                 </div>
                              </div>
                           </div>
                        </figure>
                        <figure class="crsl-item">
                           <div class="feeddback-user">
                              <div class="info-user">
                                 <span class="avatar"> <img
                                    src="http://placehold.it/512/bbbbbb/ffffff"
                                    alt="Image Sample" class="img-responsive" />
                                 </span> <b>Andrew Waters</b> <span>Paris (FR)</span> <span>Age
                                    26 Year</span>
                              </div>
                              <div class="message">
                                 <div class="content">
                                    <h3 class="title">
                                       <i class="icon-quote fa fa-quote-left"></i> Iaculis
                                       pharetra velit torquent pellentesque euismod <i
                                          class="icon-quote fa fa-quote-right"></i>
                                    </h3>
                                    <span class="rating"> <span>Rating:</span> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star-o"></i>
                                    </span>
                                    <p class="text-container">
                                       Aenean nisique purus vulputate suspendisse felis aliquet eu
                                       commodo aliquam ut ultricies facilisi eu metus cum<br />
                                       <br />Facilisi aenean in penatiblus convallis montes
                                       taciti cras sollicitudin semper iniam vestibulum orci
                                       convallis malesuada orci pellentesque nascetur massa amet
                                       parturient
                                    </p>
                                 </div>
                              </div>
                           </div>
                        </figure>
                        <figure class="crsl-item">
                           <div class="feeddback-user">
                              <div class="info-user">
                                 <span class="avatar"> <img
                                    src="http://placehold.it/512/bbbbbb/ffffff"
                                    alt="Image Sample" class="img-responsive" />
                                 </span> <b>Diane Hayes</b> <span>Bloomfield (NY)</span> <span>Age
                                    29 Year</span>
                              </div>
                              <div class="message">
                                 <div class="content">
                                    <h3 class="title">
                                       <i class="icon-quote fa fa-quote-left"></i> Iaculis
                                       pharetra velit torquent pellentesque euismod <i
                                          class="icon-quote fa fa-quote-right"></i>
                                    </h3>
                                    <span class="rating"> <span>Rating:</span> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                       class="fa fa-star-o"></i>
                                    </span>
                                    <p class="text-container">
                                       Aenean nisique purus vulputate suspendisse felis aliquet eu
                                       commodo aliquam ut ultricies facilisi eu metus cum<br />
                                       <br />Facilisi aenean in penatiblus convallis montes
                                       taciti cras sollicitudin semper iniam vestibulum orci
                                       convallis malesuada orci pellentesque nascetur massa amet
                                       parturient
                                    </p>
                                 </div>
                              </div>
                           </div>
                        </figure>
                     </div>
                     <div id="feedback-nav" class="nav-box">
                        <a href="#" class="previous"></a> <a href="#" class="next"></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- 모달자리였음 -->

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
                  <h3 class="sub-title">Please send us your thoughts by filling
                     out the below form. Comments are solely for internal use. Your
                     address will not be shared with outside parties or used for any
                     other purpose than to respond to your comments.</h3>
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
<<<<<<< HEAD
=======

>>>>>>> b7bf42013c5ad2c90cfcd27c0e098a5d910b7b19
<!-- /#page-container -->
