<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>제네시스 어카운트</title>
	<link rel="stylesheet" href="./css/sub/login.css">	
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
      <a href="#" class='main-btn'>메인화면 이동</a>
    </div>
  </header>
  <main id="login" class="main">
    <div class="container">


      <div class="content">
        <form class="form-box">
          
          <ul>
            <h3></h3>
            <li>              
              <label for="userId">· 아이디 로그인</label>
              <input type="text" name="userId" id="userId" placeholder="아이디 입력">
              <p></p>
            </li>
            <li>
              <input type="text" name="userPw" id="userPw" placeholder="비밀번호 입력">
              <p></p>
            </li>
          </ul>
	      <div class="btn-box">
	        <button class='login-btn'>로그인</button>
	      </div>

        </form>
      </div>


      <div class="text-box">
        <div class="sub1-box">
          <span><a href="#">아이디 찾기</a></span>
          <i>|</i>
          <span><a href="#">비밀번호 초기화</a></span>
        </div>
        <div class="sub2-box">
          <span><a href="signup_agreement.jsp">회원가입 ></a></span>
        </div>
      </div>

  </div>


  </main>

  <footer id="footer">
    <div>
      <span><a href="#">이용약관</a></span>
      <i>|</i>
      <span><a href="#">개인정보 처리방침</a></span>
    </div>
    <div class="span">
      <span>COPYRIGHT © HYUNDAI MOTOR COMPANY. ALL RIGHTS RESERVED.</span>
    </div>
  </footer>


</div>


</body>
</html>