package genesis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


public class SignupDao {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private String SQL;
	
	
	public SignupDao() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mariadb://localhost:3307/genesis","root","1234");
		}
		catch(Exception e) {
			e.getMessage();
		}
	}
	
	
	//1.회원가입 데이터 저장
	public int signupInsert(SignupDto signupDto) {
		SQL = "INSERT INTO user_table(userId,userPw,userName,userHp,userAddress,userEmail) VALUES(?,?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, signupDto.getUserId());
			ps.setString(2, signupDto.getUserPw());
			ps.setString(3, signupDto.getUserName());
			ps.setString(4, signupDto.getUserHp());
			ps.setString(5, signupDto.getUserAddress());
			ps.setString(6, signupDto.getUserEmail());
			ps.executeUpdate();
			return 1;
		}
		catch(Exception e) {
			e.getMessage();
			return -1;
		}
	}

	//2.회원리스트 출력
	public JSONArray signupList() {
		SQL = "SELECT * FROM user_table";
		JSONArray arr = new JSONArray();
		try {
			ps = conn.prepareStatement(SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("userId", rs.getString(1));
				obj.put("userPw", rs.getString(2));
				obj.put("userName", rs.getString(3));
				obj.put("userHp", rs.getString(4));
				obj.put("userAddress", rs.getString(5));
				obj.put("userEmail", rs.getString(6));
				obj.put("signupDate", rs.getString(7));
				arr.add(obj);
			}
		}
		catch(Exception e) {
			e.getMessage();
		}
		return arr;
	}
	
	//3-1.회원정보 찾기
	public SignupDto idFindList(String userId) {
		SQL = "SELECT * FROM user_table WHERE userId=?";
		SignupDto signupDto = new SignupDto();
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, userId);
			rs = ps.executeQuery();
			while(rs.next()) {
				signupDto.setUserId(rs.getString(1));
				signupDto.setUserPw(rs.getString(2));
				signupDto.setUserName(rs.getString(3));
				signupDto.setUserHp(rs.getString(4));
				signupDto.setUserAddress(rs.getString(5));
				signupDto.setUserEmail(rs.getString(6));
			}
		}
		catch(Exception e) {
			e.getMessage();
		}		
		return signupDto;
	}	
	
	
	//3-2. 회원정보 수정 
	public int userUpdate(SignupDto signupDto) {
		SQL = "UPDATE user_table SET userPw =?,userName =?,userHp =?,userAddress =?,userEmail=? WHERE userId = ?";
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, signupDto.getUserPw());
			ps.setString(2, signupDto.getUserName());
			ps.setString(3, signupDto.getUserHp());
			ps.setString(4, signupDto.getUserAddress());
			ps.setString(5, signupDto.getUserEmail());
			ps.setString(6, signupDto.getUserId());
			ps.executeUpdate();
			return 1;
		}
		catch(Exception e) {
			e.getMessage();
			return -1;
		}
	}
	
	// 4. 회원 탈퇴
	public int userDelete(SignupDto signupDto) {
		SQL = "DELETE FROM user_table WHERE userId=? AND userPw=?";
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, signupDto.getUserId());
			ps.setString(2, signupDto.getUserPw());

			ps.executeUpdate();
			return 1;
		}
		catch(Exception e) {
			e.getMessage();
			return -1;
		}
	}
	
	// 5. 로그인
	public int userLogin(SignupDto signupDto) {
		SQL ="SELECT userPw FROM user_table WHERE userId=?";
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, signupDto.getUserId());
			rs = ps.executeQuery();
			
			if(rs.next()) {
				//입력된 아이디와 DB에서 가져온 비밀번호 일치 여부 확인 .일치 =1 , 불일치 =-1
				if( rs.getString(1).equals(signupDto.getUserPw()) ){
					return 1; // 아이디, 비밀번호 일치 => 로그인 성공
				}
				else {
					return -1; // 아이이디 일치, 비밀번호 불일지 => 로그인 실패
				}
			}
		}
		catch(Exception e) {
			e.getMessage();
		}
		return 2; // 아이디 불일치 or 그 외 이슈 => 로그인 실패
	}
	
	

	
	
	
}
