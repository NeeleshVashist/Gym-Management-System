package com.gym.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.gym.model.User;
import com.gym.data.ConnectionFactory;

public class UserDAOImpl implements UserDAO{

	
	public void addUser(User user) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			
			con = ConnectionFactory.getCon();
			ps = con.prepareStatement("insert users values(?,?,?,?)");
			ps.setString(1,user.getUserId());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getUserName());
			ps.setString(4, user.getType());
			ps.executeUpdate();
		}
		finally {
			close(null,ps,con);
		}
		
	}

	public User getUser(String userId) throws Exception {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		
//		System.out.println(userId);
		
		try {
			con = ConnectionFactory.getCon();
			ps = con.prepareStatement("select * from users where user_id=?");
			ps.setString(1, userId);
			rs = ps.executeQuery();
			
			
			
			if(rs.next()) {
				user = new User();
//				String userID=rs.getString(1);
//				String password=rs.getString(2);
//				String userName=rs.getString(3);
//			    user=new User(userID, password,userName);
				
				user.setUserId(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setUserName(rs.getString(3));
				user.setType(rs.getString(4));
				
//				System.out.println("Hello");
			}
			else {
				throw new Exception("Invalid User ID");
			}
		}
			finally {
				close(rs,ps,con);
			}
		return user;
	}
	
	private void close(ResultSet rs, PreparedStatement ps, Connection con) {
		try {
			if(rs != null) {
				rs.close();
			}
			if( ps != null) {
				ps.close();
			}
			if(con != null) {
				con.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
