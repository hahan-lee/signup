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

@WebServlet(name = "signupList", urlPatterns = { "/signupList.do" })
public class SignupList extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		SignupDao signupDao = new SignupDao();
		JSONArray userlist = signupDao.signupList();
		
		
		PrintWriter pw = response.getWriter();
		pw.print(userlist.toJSONString());
		
	}

}
