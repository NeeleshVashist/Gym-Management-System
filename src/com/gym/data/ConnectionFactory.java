package com.gym.data;
import java.sql.Connection;
import java.sql.DriverManager;
	public class ConnectionFactory {

		public static Connection getCon() throws Exception{
			
			Connection con=null;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym?allowPublicKeyRetrieval=true&useSSL=false","root","nlvg3412");
			return con;
		}
		
		
}
