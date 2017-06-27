<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script> <!-- NAVER LOGIN -->
    <script   src="${pageContext.request.contextPath}/resources/script/jquery.min.js"></script>      <!-- jQuery   (necessary for Bootstrap's JavaScript plugins) -->
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/datepicker/jquery-ui.css"> <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/datepicker/jquery-ui.theme.css"> <!-- Bootstrap -->
    <script   src="${pageContext.request.contextPath}/resources/script/jquery-ui.min.js"></script>      <!-- jQuery   UI is a   curated   set   of user   interface interactions,   effects, widgets, and themes -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/datepicker/jquery-ui.theme.css"> <!-- Bootstrap -->
   <script src="${pageContext.request.contextPath}/resources/fullcalendar/bootstrap-datetimepicker.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.form.min.js"></script>


    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"> <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/font-awesom/css/font-awesome.min.css">  <!-- Font Awesome -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/mmenu/jquery.mmenu.all.css" />          <!-- Menu Responsive -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/animate-wow/animate.css">               <!-- Animation WOW -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/labelauty/labelauty.css">               <!-- Checkbox form Style -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/nouislider/nouislider.min.css">         <!-- Slider Price -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/easydropdown/easydropdown.css">         <!-- Select form Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ui-spinner.css">                               <!-- Spinner -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css">                                     <!-- Include Menu stylesheet -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">                                   <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/media-query.css">  
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gochi/button.css">                           <!-- Media Query -->
    


   <!-- wish -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gochi/review_detail.css">                              <!-- plan view Stylesheet -->

 <script src="${pageContext.request.contextPath}/resources/script/modernizr.min.js"></script> <!-- Modernizr -->




</head>

<body>
      <tiles:insertAttribute name="header" />

      <tiles:insertAttribute name="content" />

      <tiles:insertAttribute name="footer" />


</body>

   
  
   
   <script   src="${pageContext.request.contextPath}/resources/script/bootstrap.min.js"></script>      <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script   src="${pageContext.request.contextPath}/resources/script/vendor/mmenu/mmenu.min.all.js"></script>               <!-- Menu Responsive -->
   <script   src="${pageContext.request.contextPath}/resources/script/vendor/animation-wow/wow.min.js"></script>               <!-- Animate Script   -->
   <script src="${pageContext.request.contextPath}/resources/script/vendor/labelauty/labelauty.min.js"></script>               <!-- Checkbox Script -->
   <script   src="${pageContext.request.contextPath}/resources/script/vendor/parallax/parallax.min.js"></script>                  <!-- Parallax Script -->
   <script   src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagesloaded.min.js"></script>         <!-- Loaded   image with ImageFill -->
   <script src="${pageContext.request.contextPath}/resources/script/vendor/images-fill/imagefill.min.js"></script>               <!-- ImageFill Script -->
   <script   src="${pageContext.request.contextPath}/resources/script/vendor/easydropdown/jquery.easydropdown.min.js"></script>   <!-- Select   list Script   -->
   <script   src="${pageContext.request.contextPath}/resources/script/vendor/carousel/responsiveCarousel.min.js"></script>      <!-- Carousel Script -->
    <script   src="${pageContext.request.contextPath}/resources/script/custom.js"></script>      <!-- Custom   Script -->
</html>