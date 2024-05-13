<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>제네시스 마이페이지</title>
	<link rel="stylesheet" href="./css/style.css">
	<link rel='icon' href='./img/genesis-kr-favicon.png'>
	<link rel='apple-touch-icon' href='./img/genesis-kr-favicon.png'>
	<script src='./script/lib/jquery-1.9.0.min.js'></script>
	<script src='./script/signup.js' defer></script>

</head>
<body>

<div id="wrap">
  <header id="header">
    <div class="container">
      <div class="logo-box">
        <img src="./img/logo.png" alt="">
      </div>
    </div>
  </header>


<%
	// 1. 로그인 유저 아이디 변수를 설정 = 기본값 없음
	String loginId = null;

	// 2. 조건 세션 값이 널(빈값)이 아니면 loginId=세션값(userId)을 저장한다.
	if(session.getAttribute("userId") != null){
		loginId = (String)session.getAttribute("userId"); // 문자열 강제형변환 필요	
	}
%>


  <main id="main">
    <div class="container">
      <div class="main-img">
        <div class="text-box">
          <h1>MY PAGE</h1>
          <span>Your daily life will be special the moment you select GENESIS.</span>
          <%= loginId != null ? "<span>"+loginId+"님, 환영합니다.</span>" : "" %>	
        </div>
        
<%
	if(loginId!=null){ // 로그인 성공시
%>   
        <div class="btn-box">
          <a class="logout" href="./logout_action.jsp">로그아웃</a>
          <a class="signup" href="./user_list.jsp">회원목록</a>
        </div>

<%		
	}
	else{
%>
        <div class="btn-box">
          <a class="login" href="./login.jsp">로그인</a>
          <a class="signup" href="./signup_agreement.jsp">회원가입</a>
        </div>
<%		
	}
%>	

      </div>	

    </div>
  </main>


</div>


</body>
</html>