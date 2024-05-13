package genesis.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import genesis.SignupDao;
import genesis.SignupDto;


@WebServlet(name = "signupDelete", urlPatterns = { "/signupDelete.do" })
public class SignupDelete extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("id") ;
		String userPw = request.getParameter("pw") ;

		
		//DTO 데이터 저장
		SignupDto signupDto = new SignupDto();
		signupDto.setUserId(userId);
		signupDto.setUserPw(userPw);
		
		SignupDao signupDao = new SignupDao();
		
		int res = signupDao.userDelete(signupDto);		
		
		if(res==1){
			System.out.println("회원정보 삭제 완료");
			JSONArray userlist = signupDao.signupList();
			PrintWriter pw = response.getWriter();
			pw.print(userlist.toJSONString());
		}
		else{
			System.out.println("회원정보 삭제 실패");
		}
	}

}
