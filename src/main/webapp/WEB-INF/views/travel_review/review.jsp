<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>PROHOME - Responsive Real Estate Template</title>


<jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />

<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
<link rel="shortcut icon" href="images/favicon/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-touch-icon-152x152.png" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<div id="page-container">
		<section id="blog">

			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-2"
						id="block-menu-content">
						<ul class="block-menu" data-spy="affix" data-offset-top="500"
							data-offset-bottom="400">
							<li><a class="faq-button active" href="#basic">전체</a></li>
							<li><a class="faq-button" href="#summary"> 베스트 여행기</a></li>
							<li><a class="faq-button" href="#images"> 여행 에세이 그곳</a></li>
							<li><a class="faq-button" href="#features">여행 매거진</a></li>
						</ul>
					</div>


					<!-- 여행 후기 목록 -->
					<!-- 전체 한행의 넓이 9 -->
					<div class="col-xs-9 col-sm-9 col-md-9  col-lg-10">

						<div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6">
							<div class=" blog-list post-line">
								<div class="social">
									<span class="date">20<span>Apr</span></span> <a href="#"><i
										class="fa fa-heart-o"></i><span>346</span></a> <a href="#"><i
										class="fa fa-eye"></i><span>124635</span></a> <a href="#"><i
										class="fa fa-comments"></i><span>102</span></a>
								</div>
								<a
									href="${pageContext.request.contextPath}/travel_review/review_detail">
									<div class="image image-fill">
										<img
											src="${pageContext.request.contextPath}/resources/review_img/temp_review.jpg"
											alt="Image Sample" />
									</div>
									<h3 class="subtitle">도른자와 함께하는 오키나와 뚜벅이 여행</h3>
									<div class="text">Jieun Lee</div>
								</a>
							</div>
						</div>
						<!-- /.blog-list -->

						<div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6">
							<div class=" blog-list post-line">
								<div class="social">
									<span class="date">20<span>Apr</span></span> <a href="#"><i
										class="fa fa-heart-o"></i><span>346</span></a> <a href="#"><i
										class="fa fa-eye"></i><span>124635</span></a> <a href="#"><i
										class="fa fa-comments"></i><span>102</span></a>
								</div>
								<a
									href="${pageContext.request.contextPath}/travel_review/review_detail">
									<div class="image image-fill">
										<img
											src="${pageContext.request.contextPath}/resources/review_img/tmp_review2.jpg"
											alt="Image Sample" />
									</div>
									<h3 class="subtitle">3번째 약빤 여행 방콕+파타야! Ba Ba Ba Bangkok City~</h3>
									<div class="text">Jieun Lee</div>
								</a>
							</div>
						</div>
						<!-- /.blog-list -->

						<div class=" col-xs-6 col-sm-6 col-md-6  col-lg-6">
							<div class=" blog-list post-line">
								<div class="social">
									<span class="date">20<span>Apr</span></span> <a href="#"><i
										class="fa fa-heart-o"></i><span>346</span></a> <a href="#"><i
										class="fa fa-eye"></i><span>124635</span></a> <a href="#"><i
										class="fa fa-comments"></i><span>102</span></a>
								</div>
								<a
									href="${pageContext.request.contextPath}/travel_review/review_detail">
									<div class="image image-fill">
										<img
											src="${pageContext.request.contextPath}/resources/review_img/temp_review.jpg"
											alt="Image Sample" />
									</div>
									<h3 class="subtitle">도른자와 함께하는 오키나와 뚜벅이 여행</h3>
									<div class="text">Jieun Lee</div>
								</a>
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

	<!-- buttom css -->
	<jsp:include page="/WEB-INF/views/include/include_buttom_css.jsp" />

</body>
</html>