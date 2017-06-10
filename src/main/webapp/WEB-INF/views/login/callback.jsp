<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("qkQPxecKnvS2x7Gphr25", "");
  //접근토큰 값 출력
  //alert(naver_id_login.oauthParams.access_token);
  //네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    var email = naver_id_login.getProfileData('email');
    var nickname = naver_id_login.getProfileData('nickname');
	
    document.naverForm.email.value = email;
    document.naverForm.nickname.value = nickname;
 
    document.naverForm.submit();
    opener.parent.location.href = "http://localhost:8000/controller/";
  }
  
  onunload=test
  function test(){
	  opener.parent.location.reload();
	  self.close();
  }
</script>

<form action="http://localhost:8000/controller/member/naverLogin" name="naverForm" method="get">
	<input type="hidden" name="email">
	<input type="hidden" name="nickname">
</form>
</body>
</html>
