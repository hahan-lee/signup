package genesis.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import genesis.SignupDao;
import genesis.SignupDto;

@WebServlet(name = "signupUpdate", urlPatterns = { "/signupUpdate.do" })
public class SignupUpdate extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId") ;
		String userPw = request.getParameter("userPw") ;
		String userName = request.getParameter("userName") ;
		String userHp = request.getParameter("userHp") ;
		String userAddress = request.getParameter("userAddress") ;
		String userEmail = request.getParameter("userEmail") ;
		
		//DTO 데이터 저장
		SignupDto signupDto = new SignupDto();
		signupDto.setUserId(userId);
		signupDto.setUserPw(userPw);
		signupDto.setUserName(userName);
		signupDto.setUserHp(userHp);
		signupDto.setUserAddress(userAddress);
		signupDto.setUserEmail(userEmail);
		
		SignupDao signupDao = new SignupDao();
		
		int res = signupDao.userUpdate(signupDto);		
		
		if(res==1){
			System.out.println("수정 성공");
			
			PrintWriter w = response.getWriter();
			
			response.sendRedirect("user_list.jsp");
		}
		else{
			System.out.println("수정 실패");
			PrintWriter w = response.getWriter();
			w.println("<script>history.go(-1)</script>");
			w.close();
		}
		
	}

}
