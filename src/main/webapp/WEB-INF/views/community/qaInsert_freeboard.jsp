<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<li><a class="faq-button" href="${pageContext.request.contextPath}/community/pagination?lastNum=1"><i class="icon fa fa-th-list"></i> 자유 게시판</a></li>
							<li><a class="faq-button active" href="${pageContext.request.contextPath}/community/qapagination?lastNum=1"><i class="icon fa fa-picture-o"></i> Q&A</a></li>
							
						</ul>
					</div>
					<div class="col-sm-9 col-md-9">

						<div class="info-block">
							<div class="section-title line-style no-margin">
								<h3 class="title">게시글 작성</h3>
							</div>
							<div class="row">
						<form id="insertForm" name="insertForm" method="post" action="${pageContext.request.contextPath}/community/qainsert">
								
								<!-- <div class="col-md-2 space-form">
									<select class="dropdown" data-settings='{"cutOff": 5}' id="sel" name="sel">
										<option value="질문">질문</option>
										<option value="메모">메모</option>
										<option value="여행기">여행기</option>
										<option value="리뷰">리뷰</option>
										<option value="잡담">잡담</option>
									</select>
								</div> -->
								<input id="email" name="email" type="hidden" value="${sessionScope.dto.email}">
								<div class="col-md-7 space-form">
									<input id="qaTitle" class="form-control" type="text" placeholder="제목" name="qaTitle">
								</div>
								<div class="col-md-5 space-form">
									<input id="address" class="form-control" type="text" name="nickName" value="${sessionScope.dto.nickname}">
								</div>
								<div class="col-md-12">
									<!-- <textarea name="content" id="content" class="form-control description"></textarea> -->
									<!-- <div name="content"  class="form-control description"></div> -->
									<jsp:include page="/WEB-INF/views/community/editor_frame.jsp"></jsp:include>
							
								</div>
							
							</form>
							<!-- 여기서부터 새로운 코드 입력 -->
		
							</div>
							<div style="text-align: right;">
								<button class="btn btn-default" onclick="Editor.save();">작성하기</button>
								<button class="btn btn-default" onclick="page()">취소</button>
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
	var config = {
		txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
		txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
		txService: 'sample', /* 수정필요없음. */
		txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
		initializedId: "", /* 대부분의 경우에 빈문자열 */
		wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
		form: 'insertForm'+"", /* 등록하기 위한 Form 이름 */
		txIconPath: "${pageContext.request.contextPath}/resources/daumOpenEditor/images/icon/editor/", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
		txDecoPath: "${pageContext.request.contextPath}/resources/daumOpenEditor/images/deco/contents/", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
		canvas: {
            exitEditor:{
                /*
                desc:'빠져 나오시려면 shift+b를 누르세요.',
                hotKey: {
                    shiftKey:true,
                    keyCode:66
                },
                nextElement: document.getElementsByTagName('button')[0]
                */
            },
			styles: {
				color: "#123456", /* 기본 글자색 */
				fontFamily: "굴림", /* 기본 글자체 */
				fontSize: "10pt", /* 기본 글자크기 */
				backgroundColor: "#fff", /*기본 배경색 */
				lineHeight: "1.5", /*기본 줄간격 */
				padding: "8px" /* 위지윅 영역의 여백 */
			},
			showGuideArea: false
		},
		events: {
			preventUnload: false
		},
		sidebar: {
			attachbox: {
				show: true,
				confirmForDeleteAll: true
			},
			attacher:{
				image:{ 
					features:{left:250,top:65,width:400,height:190,scrollbars:0}, //팝업창 사이즈 
					popPageUrl:'${pageContext.request.contextPath}/community/imagePopup/pop' //팝업창 주소 
				}
			},
			
			caparcity: {
				maximum:5*1024*1024 // 최대 첨부 용량 (5MB)
			}
		},
		size: {
			contentWidth: 700 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */
		}
	};

	EditorJSLoader.ready(function(Editor) {
		var editor = new Editor(config);
		alert(editor);
	});
	
	
	function validForm(editor) { //값이 할당된것 확인
		// Place your validation logic here

		// sample : validate that content exists
		//alert(editor.getContent()); 이코드 이요해서 들어온값이 어떤것인지 확인 할수있따.ㄴ
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			alert('내용을 입력하세요');
			return false;
		}

		return true;
	}
	
	function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.name = 'qaContent';
        textarea.value = content;
        form.createField(textarea);
		return true;
	}
	
	Editor.save();
	
</script>
<script type="text/javascript">
function page() {
	location.href="${pageContext.request.contextPath}/community/qapagination?lastNum=1";
}
</script>
