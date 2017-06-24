<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>

    <jsp:include page="/WEB-INF/views/include/include_top_css.jsp"/>
   <!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
   <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon" />
   <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
   <link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-touch-icon-57x57.png" />
   <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-touch-icon-72x72.png" />
   <link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-touch-icon-76x76.png" />
   <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-touch-icon-114x114.png" />
   <link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-touch-icon-120x120.png" />
   <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-touch-icon-144x144.png" />
   <link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-touch-icon-152x152.png" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->




  </head>
  
  <body class="fixed-header">

   <div id="page-container">

      
      <section id="header-page" class="header-margin-base">
         <div class="skyline">
            <div data-offset="50" class="p1 parallax"></div>
            <div data-offset="25" class="p2 parallax"></div>
            <div data-offset="15" class="p3 parallax"></div>
            <div data-offset="8"  class="p4 parallax"></div>
            <span class="cover"></span>
            <div class="container header-text">
               <div><h1 class="title">Article fullpage</h1></div>
               <div><h2 class="sub-title">Lorem ipsum dolors adipiscing elit justo</h2></div>
            </div>
         </div>
         <div id="breadcrumb">
            <div class="container">
               <ol class="breadcrumb">
                  <li><a href="#"><i class="fa fa-home"></i></a></li>
                  <li><a href="#">Pages</a></li>
                  <li class="active">Article fullpage</li>
               </ol>
            </div>
         </div><!-- /#breadcrumb -->
         <span class="cover"></span>
      </section><!-- /#header -->

      <section id="blog">
<%-- ${pageContext.request.contextPath} --%>
         <div class="container">
            <div class="row">
               <div class="col-sm-3 col-md-3" id="block-menu-content">
                  <ul class="block-menu" data-spy="affix" data-offset-top="500" data-offset-bottom="400">
                     <li><a class="faq-button" href="faq"><i class="icon fa fa-check-square-o"></i>월간 베스트</a></li>
                     <li><a class="faq-button active" href="${pageContext.request.contextPath}/community/pagination?lastNum=1"><i class="icon fa fa-th-list"></i> 자유 게시판</a></li>
                     <li><a class="faq-button" href=""><i class="icon fa fa-picture-o"></i> Q&A</a></li>
                  </ul>
               </div>
               <div class="col-md-9">
                  <div class="blog-list blog-detail">
                     <h2 class="title"><a href="#"></a></h2>
                      <div class="col-md-10">
	                     <c:if test="${boardDTO.content!=null}">
		                     <h3 class="subtitle">${boardDTO.title}</h3>
		                     <div class="text">
		                        ${boardDTO.content}<br /><br />
		                     </div>
	                     </c:if>
                     </div>
                     <div class="social" style="float: right;">
                        <span class="date">${boardDTO.dDay.substring(3,5)}<span>${boardDTO.dDay.substring(6,8)}</span></span>
                        <a href="#"><i class="fa fa-heart-o"></i><span>${boardDTO.favor}</span></a>
                        <a href="#"><i class="fa fa-eye"></i><span>${boardDTO.hits}</span></a>
                        <a href="#"><i class="fa fa-comments"></i><span>69</span></a>
                     </div>
                     <!-- <div class="image">
                        <img src="http://placehold.it/1280x680/bbbbbb/ffffff" alt="Image Sample" class="img-responsive" />
                     </div> -->
                  </div><!-- /.blog-list -->

                     <!-- comment start -->
                  <div id="comments">
                     <h2 class="title-comment" style="margin-top: 200px;">Comments<span class="total-comment">4</span></h2>
                     <!-- 댓글 리스트 출력 -->
                     <div class="medialist">
                        <div class="media">
                           <c:choose>
                           <c:when test="${requestScope.commentList.size()==0}">
                              첫번째 댓글을 달아주세용~! (찡끗)
                           </c:when>
                           </c:choose>
                           <c:choose>
                           <c:when test="${requestScope.commentList.size()>0}">
                             <c:forEach items="${requestScope.commentList}" var="commentList" varStatus="state">
                              <div class="media-left">
                                 <a href="#">
                                 <img class="media-object" src="http://placehold.it/512/bbbbbb/ffffff" alt="Image sample" />
                              </a>
                           </div>
                           <div class="media-body">
                              <div class="comment-line">
                                 <h4 class="media-heading">
                                    ${commentList.email}
                                    <span class="date-comment">${commentList.d_day}</span>
                                     
                                    <button class="reply" id="deleteComment" name="${commentList.email}"><i class="fa fa-share-square-o"></i></button>
                                    
                                 </h4>
                                  ${commentList.content}
                              </div>
                           </div>
                           <br>
                           </c:forEach>
                           </c:when>
                           </c:choose>
                           
                        </div>
                     </div>
                     
                     <!-- commnet 글쓰기 -->
                     <div id="comments">
                     <h3 class="title-form"><i class="icon fa fa-comment"></i> Leave a Comment</h3>
                     <form class="form-large grey-color" action="#" method="post">
                        <div class="row">
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <label for="name">NicName</label>
                              <input type="text" placeholder="Name .." name="name" id="name"  value="${dto.nickname}" class="margin-bottom form-control">
                           </div>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <label for="email">E-mail</label>
                              <input type="text" placeholder="Email .." name="email" id="email" value="${dto.email}" 
                                       class="margin-bottom form-control" >
                           </div>
                           <div class="col-md-12">
                              <label for="text-message">Message</label>
                              <textarea name="text-message" id="text-messageArea" rows="4" class="margin-bottom form-control"></textarea>
                           </div>
                        </div>
                        <input type="submit" class="btn btn-default" value="Send Comment" id="commentAdd">
                     </form>
                     <div style="text-align: right;">
                        <button type="button" class="btn btn-default" id="back" name="back" onclick="page()">확인</button>
                     </div>   
                  </div><!-- /. end-comment -->
               </div>
               
            </div>
            
         </div>
         </div>
      </section>

      <div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>

            <div class="form-container full-fixed">
               <form method="post" action="#">
                  <div id="form-modal-contact" class="box active modal-contact">
                     <h2 class="title">How can we help?</h2>
                     <h3 class="sub-title">Please send us your thoughts by filling out the below form. Comments are solely for internal use. Your address will not be shared with outside parties or used for any other purpose than to respond to your comments.</h3>
                     <ul class="object-contact">
                        <li><a href="#"><i class="fa fa-code"></i>Suggestion</a></li>
                        <li><a href="#"><i class="fa fa-question"></i>Question</a></li>
                        <li><a href="#" class="active"><i class="fa fa-bug"></i>Problems</a></li>
                        <li><a href="#"><i class="fa fa-comment-o"></i>Feedback</a></li>
                     </ul>
                     <div class="field">
                        <textarea class="form-control" name="message" id="message" placeholder="Your message"></textarea>
                     </div>
                     <div class="field">
                        <input id="short-summary" class="form-control" type="text" name="short-summary" placeholder="Short summary">
                        <i class="fa fa-tag"></i>
                     </div>
                     <div class="field">
                        <input id="email-help" class="form-control" type="text" name="email-help" placeholder="Your email">
                        <i class="fa fa-envelope-o"></i>
                     </div>
                     <div class="field footer-form text-right">
                        <button type="button" class="btn btn-reverse button-form">Cancel</button>
                        <button type="button" class="btn btn-default button-form">Send</button>
                     </div>

                  </div>
               </form>
            </div>


         </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
   </div><!-- /#page-container -->
   
   <jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp"/>

  </body>
  
  <!-- comment 등록 스크립트 -->
<script type="text/javascript">
$(document).ready(function() {
      

       $("#commentAdd").click(function() {
            
       
          $.ajax({
               url: "${pageContext.request.contextPath}/comment/commentAdd", //서보요청이름(주소)
               type: "post", // method방식(get , post)
               dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
               data: "content="+$("#text-messageArea").val()+"&board_no=${requestScope.boardDTO.boardno}", 
               success: function(result) {   // 성공결과
                   alert(1234)
               },
               error :  function(err) {
                  alert("오류발생 : "+ err);
               }
            })
      })
      
      
        $(document).on("click",'#deleteComment' , function() { 
           $.ajax({
               url: "${pageContext.request.contextPath}/comment/commentDelete", //서보요청이름(주소)
               type: "post", // method방식(get , post)
               dataType: "json", // 요청결과타입(text, html, xml, json)        //travel_no는 session 에저장된값 가져와야됨
               data: "sessionEmail=${sessionScope.dto.email}&board_no=${requestScope.boardDTO.boardno}&boardEmail="+$(this).attr("name"), 
               success: function(result) {   // 성공결과
                   alert(result)
               },
               error :  function(err) {
                  alert("오류발생 : "+ err);
               }
            })
           
        })
})
</script>
<script type="text/javascript">
function page() {
	location.href="${pageContext.request.contextPath}/community/pagination?lastNum=1";
}
</script>
</html>