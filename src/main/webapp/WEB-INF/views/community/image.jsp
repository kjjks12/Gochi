<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<style> /* css */ 
.header { background-image: none; background-color: #027dfc; } 
/* 파일첨부(.file) */ 
.file { display: inline-block; margin-top: 8px; overflow: hidden; } 
.file .file-text { display: inline-block; padding: 6px 10px 8px 10px; border : 1px solid #c7c7c7; width: 179px; font-size: 14px; color: #8a8a8a; float: left; } 
.file .file-text:FOCUS { border-color: #54c4e5; outline: 0; -webkit-box-shadow: inset 0px 1px 1px rgba(0,0,0,0.075), 0px 0px 8px rgba(102,175,233,0.6); box-shadow: inset 0px 1px 1px rgba(0,0,0,0.075), 0px 0px 8px rgba(102,175,233,0.6); } 
.file .file-btn { margin-left: 2px; padding: 6px 8px 4px 8px; height: 20px; line-height: 20px; font-size: 12px; font-weight: bold; background-color: #fff; border: 1px solid #989898; color: #989898; cursor: pointer; float: left; } 
.file .file-btn:HOVER { background-color: #edfbff; border: 1px solid #009bc8; color: #009bc8; } 
</style>

	
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Daum에디터 - 이미지 첨부</title>
	
	
	
	<!-- 다음오픈에디터 라이브러리 -->
	 <!--  3번째 레이아웃 정의가 되야된다. -->
  	<link rel=stylesheet type=text/css href="${pageContext.request.contextPath}/resources/daumOpenEditor/css/popup.css"/> 
  	
	<script type=text/javascript charset=utf-8 src="${pageContext.request.contextPath}/resources/daumOpenEditor/js/popup.js"></script>
	
	
	
	<script src="${pageContext.request.contextPath}/resources/daumOpenEditor/js/trex/attacher/image.js"></script>    
	<script src="${pageContext.request.contextPath}/resources/script/jquery.min.js"></script>      <!-- jQuery   (necessary for Bootstrap's JavaScript plugins) -->
	 
	<script src="${pageContext.request.contextPath}/resources/daumOpenEditor/js/jquery.form.js"></script>
   
   <script type="text/javascript">
	

</script>
   
	<!-- jQuery 라이브러리 --> 
	<script type="text/javascript" >
	
	$(document).ready(function (){ 
		// <input type=file> 태그 기능 구현
		// 가장 먼져 시작하는 부분
		$('.file input[type=file]').change(function (){ 
			var inputObj = $(this).prev().prev(); // 두번째 앞 형제(text) 객체 
			var fileLocation = $(this).val(); // 파일경로 가져오기 
			inputObj.val(fileLocation.replace('C:\\fakepath\\','')); // 몇몇 브라우저는 보안을 이유로 경로가 변경되서 나오므로 대체 후 text에 경로 넣기 }); });
		});
		
		//첨부한 이미지를 에디터에 적용시키는 함수
		//세번쨰 클릭
		$("#save").on('click', function (){
			alert("save 클릭")
			var form = $('#daumOpenEditorForm'); // form id값 
			var fileName = $('.file input[type=file]').val(); // 파일명(절대경로명 또는 단일명)
			console.log(fileName);
		
			form.ajaxForm({ 
				type: 'post', 
				url: '${pageContext.request.contextPath}/community/singleUploadImageAjax', 
				dataType: 'JSON', // 리턴되는 데이타 타입 
				beforeSubmit: function(fileName) { 
					if(validation(fileName)) { // 확장자 체크 (jpg, gif, png, bmp) 
						return false;
					}
			},
			success: function(fileInfo) { // fileInfo는 이미지 정보를 리턴하는 객체 
				alert("success");//5번째
			console.log("success 에서 보여지는 파이이름"+fileInfo.filename);
				if(fileInfo.result===-1) { // 서버단에서 체크 후 수행됨 
					alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.'); 
					return false; 
				}else if(fileInfo.result===-2) { // 서버단에서 체크 후 수행됨 
					alert('파일이 1MB를 초과하였습니다.'); 
					return false; 
				} else { 
					alert("success에서 시작한거");//6번째
						console.log(fileInfo.filename);
						done(fileInfo); // 첨부한 이미지를 에디터에 적용시키고 팝업창을 종료 
				} 
			}
			
			});
			
			$("#daumOpenEditorForm").submit();
			
		});//이미지 첨부 끝
		
		
		});
	</script>
		<script>
		//두번째로 시작 되는  file input 하고 시작
		function done(fileInfo) {
			alert(5)//7번째
			alert("done에서 보여지는 이름"+fileInfo.filename);
		 	// fileInfo는 Ajax 요청 후 리턴하는 JSON형태의 데이터를 담을 객체 
			/* if (typeof(execAttach) == 'undefined') {
				return; 
			} */
			//console.log(fileInfo.imageurl);
			var _mockdata = { 
					'imageurl': fileInfo.imageurl, 
					'filename': fileInfo.filename, 
					'filesize': fileInfo.filesize, 
					'imagealign': fileInfo.imagealign, 
					'originalurl': fileInfo.originalurl, 
					'thumburl': fileInfo.thumburl 
			};

			execAttach(_mockdata);
			closeWindow();
		}
		
		
		
		//잘못된 경로로 접근할 때 호출되는 함수
		function initUploader(){
			alert(6+"uploader");
	    		/* var _opener = PopupUtil.getOpener();
	    		if (!_opener) {
				alert('잘못된 경로로 접근하셨습니다.');
	        		return;
	    		}
			
	    		var _attacher = getAttacher('image', _opener);
	    		registerAction(_attacher); */
		}
		//4번째
		function validation(fileName) { 
			alert(7+"인증검사");
			//alert("파일이름 : "+fileName);
			/* alert("파일이름.filename : "+Object.keys(fileName));
			var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1; // .뒤부터 확장자 
			var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex,fileName.length); // 확장자 자르기 
			
			
			if(!((fileNameExtension === 'jpg') || (fileNameExtension === 'gif') || (fileNameExtension === 'png') || (fileNameExtension === 'bmp'))) { 
				alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.'); 
				return true; 
				} else { 
					return false; 
					}  */
		}
	
	</script>
	
	


	<div class="wrapper" onload="initUploader()">
		<div class="header">
			<h1>사진 첨부</h1>
		</div>	
		<div class="body">
			<dl class="alert">
		    		<dt>&nbsp;1MB이하 (JPG,GIF,PNG,BMP)</dt> 
		    		<dd> 
		    			<form id="daumOpenEditorForm" encType="multipart/form-data" method="post" action=""> <!-- 파일첨부 --> 
		    			<div class="file"> 
		    				<input disabled class="file-text"> 
		    					<label class="file-btn" for="uploadInputBox">사진첨부</label> 
		    				<input id="uploadInputBox" style="display: none;" type="file" name="Filedata">
		    				<!-- 버튼대체용(안보임) --> 
		    			</div> 
		    			<!-- //파일첨부 --> 
		    			</form> 
		    		</dd>
			</dl>
		</div>
		<div class="footer">
			<ul>
				<li class="submit"><a href="#" id="save" class="btnlink">등록</a></li>
				<li class="cancel"><a href="#" onclick="closeWindow()" title="취소" class="btnlink">취소</a></li>
			</ul>
		</div>
	</div>


