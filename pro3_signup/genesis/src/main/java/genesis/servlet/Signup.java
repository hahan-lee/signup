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

@WebServlet(name = "signup", urlPatterns = { "/signup.do" })
public class Signup extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 연결 성공");
		
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
		
		//DTO 가입정보를 DAO signupInsert() 통해 DB저장.
		SignupDao signupDao = new SignupDao();
		int res = signupDao.signupInsert(signupDto);
		
		System.out.println(res);

		
		if(res == 1) {
			System.out.println("회원정보 DB저장 완료");
			PrintWriter out = response.getWriter();
			out.println("1");
			out.close();
		}
		else {
			System.out.println("회원정보 DB저장 실패");
			PrintWriter out = response.getWriter();
			out.println("-1");
			out.close();
		}
		
	}
}
