package com.gym.model;

public class User {

	private String userId;
	private String password;
	private String userName;
	private String type;
	
	public User() {
		
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public User(String userId, String password,String userName, String type) {
		this.userId = userId;
		this.password = password;
		this.userName=userName;
		this.type=type;
	}
	
	public User(String userId,String userName, String type) {
		this.userId = userId;
		this.userName=userName;
		this.type=type;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", password=" + password + ", userName=" + userName + ", type=" + type + "]";
	}

	
}
