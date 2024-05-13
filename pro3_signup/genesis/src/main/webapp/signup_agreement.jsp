<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>제네시스 어카운트 - 회원가입 동의</title>
	<link rel="stylesheet" href="./css/sub/signup_agreement.css">
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
  <main id="signup-agreement" class="signup">
    <div class="container">
      
      <div class="title">
        <h2>제네시스 통합계정</h2>
        <h5>통합계정 이용약관 및 개인정보 수집·이용에 동의해주세요.</h5>
      </div>

      <div class="content">
        <div class="form-box">
          <ul>
            <li><input type="checkbox" name="chk" id="chkAll" value="이용약관 전체동의" ><h3>아래 내용을 모두 확인하였으며 전체 동의합니다.</h3></li>
            <li><input type="checkbox" name="chk" id="chk1" value="통합계정 이용약관 동의" ><h3>제네시스 통합계정 이용약관 동의 <span>(필수)</span></h3></li>
            <li><input type="checkbox" name="chk" id="chk2" value="개인정보 동의" ><h3>제네시스 통합계정 개인정보 수집ㆍ이용 동의 <span>(필수)</span></h3></li>
          </ul>
        </div>
      </div>

      <div class="btn-box">
        <a href="#" class='agree-btn'>다음</a>
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