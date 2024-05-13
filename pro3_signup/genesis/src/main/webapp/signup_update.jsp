<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="genesis.SignupDao" %>
<%@ page import="genesis.SignupDto" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("userId");
	
	SignupDao signupDao = new SignupDao();
	SignupDto res = signupDao.idFindList(userId);
	
	System.out.println(userId);
	System.out.println(res);
	System.out.println(res.getUserId() );
	

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>회원 정보 수정</title>
  <link rel="stylesheet" href="./css/sub/signup_update.css">
  <script src='./script/lib/jquery-1.9.0.min.js'></script>
  <script src='./script/signup.js' defer></script>
</head>
<body>

<div id='wrap'>
  <div id="modal">
	<div class='container'>
	    <div class="content">
	    
	      <form class="form-box" name="signupUpdate" id="signupUpdate" method="post"  action="signupUpdate.do">
	        <ul>
	          <h3>회원 수정 정보 입력 </h3>
	          <li>              
	            <label for="userId">· 아이디</label>
	            <input type="text" name="userId" id="userId" maxlength="16" value="<%= res.getUserId() %>" >
	            <p></p>
	          </li>
	          <li>
	            <label for="userPw">· 비밀번호</label>
	            <input type="text" name="userPw" id="userPw" maxlength="16" value="<%= res.getUserPw() %>">
	            <p></p>
	          </li>
	          <li>
	            <label for="userName">· 이름</label>
	            <input type="text" name="userName" id="userName" maxlength="30" value="<%= res.getUserName() %>">
	          </li>
	          <li>
	            <label for="userHp">· 휴대폰</label>
	            <input type="text" name="userHp" id="userHp" maxlength="13" value="<%= res.getUserHp() %>">
	          </li>            
	          <li>
	            <label for="userAddress">· 주소</label>
	            <input type="text" name="userAddress" id="userAddress" maxlength="250" value="<%= res.getUserAddress() %>">  
	          </li>
	          <li>
	            <label for="userEmail">· 이메일</label>
	            <input type="text" name="userEmail" id="userEmail" maxlength="100" value="<%= res.getUserEmail() %>">
	          </li>
	
	        </ul>
	        <div class="btn-box">
	          <button class='close-btn'>닫기</button>
	          <button class='signup-update-btn'>수정하기</button>
	        </div>
	
	      </form>
	    </div>    
								
	</div>

  </div>



</div>

</body>
</html>