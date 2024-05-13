<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>제네시스 회원가입</title>
	<link rel="stylesheet" href="./css/sub/signup.css">
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
  <main id="signup" class="main">
    <div class="container">

      <div class="title">
        <h2>회원 가입</h2>
        <h5>가입 정보를 입력하세요.</h5>
      </div>

      <div class="content">
        <form class="form-box">
          <ul>
            <h3> <div><img src="./img/icon_man.png" alt="회원이미지"></div> 회원 정보 입력 </h3>
            <li>              
              <label for="userId">· 아이디</label>
              <input type="text" name="userId" id="userId" placeholder="아이디 입력">
              <p></p>
            </li>
            <li>
              <label for="userPw">· 비밀번호</label>
              <input type="text" name="userPw" id="userPw" placeholder="비밀번호 입력">
              <p></p>
            </li>
            <li>
              <label for="userName">· 이름</label>
              <input type="text" name="userName" id="userName" placeholder="이름 입력">
            </li>
            <li>
              <label for="userHp">· 휴대폰</label>
              <input type="text" name="userHp" id="userHp" placeholder="휴대폰 입력">
            </li>            
            <li>
              <label for="userAddress">· 주소</label>
              <input type="text" name="userAddress" id="userAddress" placeholder="주소 입력">  
            </li>
            <li>
              <label for="userEmail">· 이메일</label>
              <input type="text" name="userEmail" id="userEmail" placeholder="이메일 입력">
            </li>

          </ul>
          <div class="btn-box">
            <button class='submit-btn'>회원가입</button>
          </div>

        </form>
      </div>


  </div>


  </main>
  <footer id="footer">
  <div>
    <a href="./login.jsp">로그인 페이지로 이동</a>
    <span>COPYRIGHT © HYUNDAI MOTOR COMPANY. ALL RIGHTS RESERVED.</span>
  </div>
  </footer>


</div>


</body>
</html>