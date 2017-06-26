<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/tinymce/tinymce.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/tinymce/tinymce.min.js">
   </script>
   
	<div id="page-container">
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Submit Property</h1></div>
					<div><h2 class="sub-title">Lorem ipsum detur ats adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">User</a></li>
						<li class="active">Submit Property</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="new-property">
			<div class="container">
				<div class="row">
				<div class="col-sm-3 col-md-3" id="block-menu-content">
						<ul class="block-menu" data-spy="affix" data-offset-top="500" data-offset-bottom="400">
							<li><a class="faq-button" href="faq"><i class="icon fa fa-check-square-o"></i>월간 베스트</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/community/pagination?lastNum=1"><i class="icon fa fa-th-list"></i> 자유 게시판</a></li>
							<li><a class="faq-button" href=""><i class="icon fa fa-picture-o"></i> Q&A</a></li>
							
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">

						<div class="info-block">
							<div class="section-title line-style no-margin">
								<h3 class="title">게시글 작성</h3>
							</div>
							<div class="row">
						<form id="insertForm" name="insertForm" method="post" action="${pageContext.request.contextPath}/community/insert">
								
								<div class="col-md-2 space-form">
									<select class="dropdown" data-settings='{"cutOff": 5}' id="sel" name="sel">
										<option value="질문">질문</option>
										<option value="메모">메모</option>
										<option value="여행기">여행기</option>
										<option value="리뷰">리뷰</option>
										<option value="잡담">잡담</option>
									</select>
								</div>
								<input id="email" name="email" type="hidden" value="${sessionScope.dto.email}">
								<div class="col-md-5 space-form">
									<input id="title" class="form-control" type="text" placeholder="제목" name="title">
								</div>
								<div class="col-md-5 space-form">
									<input id="address" class="form-control" type="text" name="nickName" value="${sessionScope.dto.nickname}">
								</div>
								<div class="col-md-12">
									<!-- <textarea name="content" id="content" class="form-control description"></textarea> -->
									<!-- <div name="content"  class="form-control description"></div> -->
									<textarea  id="content" name="content" rows="50" cols="10"></textarea>
									<input name="image" type="file" id="upload" class="hidden" hidden>
								</div>
							<div style="text-align: right;">
									<button class="btn btn-default">작성하기</button>
									<button class="btn btn-default" onclick="page()">취소</button>
							</div>
							
							</form>
							<!-- 여기서부터 새로운 코드 입력 -->
		
							</div>
							
						</div>
						
						<div class="info-block" id="images">
							<div class="section-title line-style">
								<h3 class="title">Images</h3>
							</div>
							<form action="./upload.php" method="post" class="dropzone"></form>
							<span class="text">
								<strong>Drop files</strong> here or <strong>click</strong> to upload.<br />
							</span>
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
	
<script type="text/javascript">
function page() {
	location.href="${pageContext.request.contextPath}/community/pagination?lastNum=1";
}
</script>
<script>
$(document).ready(function() {
      //tiymce 
      tinymce.init({
            selector : "#content",
            theme : "modern",
            height : "300",
            paste_data_images : true,
            language : "ko_KR",
            images_upload_base_path : '',
            plugins : [
               "advlist autolink lists link image charmap print preview hr anchor pagebreak",
               "searchreplace wordcount visualblocks visualchars code fullscreen",
               "insertdatetime media nonbreaking save table contextmenu directionality",
               "emoticons template paste textcolor colorpicker textpattern" ],
            toolbar1 : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
            toolbar2 : "print preview media | forecolor backcolor emoticons",
            image_advtab : true,
            file_picker_callback : function(callback, value, meta) {
               if (meta.filetype == 'image') {
                  $('#upload').trigger('click');
                  $('#upload')
                     .on('change',function() {
                           var file = this.files[0];
                           var reader = new FileReader();
                           reader.onload = function(e) {
                              callback(
                                 e.target.result,
                                 {
                                    alt : ''
                                 });
                           };
                           reader
                              .readAsDataURL(file);
                        });
               }
            },
            templates : [ {
               title : 'Test template 1',
               content : 'Test 1'
            }, {
               title : 'Test template 2',
               content : 'Test 2'
            } ]
         });
});//Jquery 끝
</script>
