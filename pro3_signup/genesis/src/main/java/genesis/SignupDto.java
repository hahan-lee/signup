package genesis;

public class SignupDto {
	
	private String userId;
	private String userPw;
	private String userName;
	private String userHp;
	private String userAddress;
	private String userEmail;
	
	public String getUserId() {
		return userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public String getUserName() {
		return userName;
	}
	public String getUserHp() {
		return userHp;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setUserHp(String userHp) {
		this.userHp = userHp;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "SignupDto [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userHp=" + userHp
				+ ", userAddress=" + userAddress + ", userEmail=" + userEmail + "]";
	}

	

}
