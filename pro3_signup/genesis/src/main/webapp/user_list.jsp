<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원리스트</title>
  <link rel="stylesheet" href="./css/sub/user_list.css">
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
  <main id="main">
    <div class="container">

      <div class="title">
        <h2>회원 정보</h2>        
        <a href="#" class='main-btn'>메인화면 이동</a>
      </div>

      <br>
      <br>
      <div class="content">
        <table>
          <thead>
            <tr>
              <th>No.</th>
              <th>아이디</th>
              <th>비밀번호</th>
              <th>이름</th>
              <th>연락처</th>
              <th>주소</th>
              <th>이메일</th>
              <th>가입일</th>
              <th>수정</th>
              <th>삭제</th>
            </tr>
          </thead>
          <tbody class='signup-list'>

          </tbody>
        </table>
      </div>
    </div> 

  </main>

  
</div>

</body>
</html>	


