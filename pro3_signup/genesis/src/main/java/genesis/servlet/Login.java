package genesis.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import genesis.SignupDao;
import genesis.SignupDto;


@WebServlet(name = "login", urlPatterns = { "/login.do" })
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String userId = request.getParameter("userId") ;
		String userPw = request.getParameter("userPw") ;
		
		SignupDto signupDto = new SignupDto();
		signupDto.setUserId(userId);
		signupDto.setUserPw(userPw);
		
		SignupDao signupDao = new SignupDao();
		int res = signupDao.userLogin(signupDto);	
		
		if(res==1){
			System.out.println("로그인성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("userId", userId);  // 세션 설정 setAttribute("변수", 값)
			System.out.println(session.getAttribute("userId"));
			
			
			PrintWriter pw = response.getWriter();
			pw.print(res);	
		}
		else if(res==-1){
			System.out.println("로그인 실패 비밀번호 불일치");
			PrintWriter pw = response.getWriter();
			pw.print(res);	
		}
		else{
			System.out.println("아이디&비밀번호를 확인하고 다시 시도하세요!");
			PrintWriter pw = response.getWriter();
			pw.print(res);	
		}
	}

}
