package com.gym.data;

import java.util.*;
import java.util.Date;
import java.sql.*;
import com.gym.model.Gym;
import com.gym.data.ConnectionFactory;

public class GymDAOImpl implements GymDAO{

	public List<Gym> getMembers() throws Exception {
		List<Gym> gymList=new ArrayList<Gym>();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("select * from customer_details order by first_name");
			rs=ps.executeQuery();
			while(rs.next()) {
				int serialNo=rs.getInt(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String phoneNumber=rs.getString(4);
				int age=rs.getInt(5);
				String sex=rs.getString(6);
			    String address=rs.getString(7);
			    String city=rs.getString(8);
			    String state=rs.getString(9);
			    String pinCode=rs.getString(10);
			    double height=rs.getDouble(11);
				double weight=rs.getDouble(12);
				double bmi=rs.getDouble(13);
				int packageId=rs.getInt(14);
				String packageName=rs.getString(15);
				double rateOfPackage=rs.getDouble(16);
				Date dateOfJoining=rs.getDate(17);
				Date dateOfExpiry=rs.getDate(18);
				
				Gym gym=new Gym(serialNo, firstName, lastName, phoneNumber, age, sex, address, city, state, pinCode, height, weight, bmi, packageId, packageName, rateOfPackage, dateOfJoining, dateOfExpiry);
				gymList.add(gym);				
			}
		}
		finally {
			close(rs,ps,con);
		}
		
		return gymList;
	}
	
	
	public void addMembers(Gym gym) throws Exception {
		
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("insert customer_details(first_name,last_name,phone_number,age,sex,address,city,state,pin_code,height, weight, bmi,package_id,package_name,rate_of_package,date_of_joining,date_of_expiry) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	        ps.setString(1,gym.getFirstName());
	        ps.setString(2, gym.getLastName());
	        ps.setString(3,gym.getPhoneNumber());
	        ps.setInt(4, gym.getAge());
	        ps.setString(5,gym.getSex());
	        ps.setString(6,gym.getAddress());
			ps.setString(7,gym.getCity());
			ps.setString(8, gym.getState());
			ps.setString(9,gym.getPinCode());
			ps.setDouble(10, gym.getHeight());
			ps.setDouble(11, gym.getWeight());
			ps.setDouble(12, gym.getBmi());
			ps.setInt(13, gym.getPackageId());
			ps.setString(14, gym.getPackageName());
			ps.setDouble(15, gym.getRateOfPackage());
			ps.setTimestamp(16,new java.sql.Timestamp(gym.getDateOfJoining().getTime()));
			ps.setTimestamp(17,new java.sql.Timestamp(gym.getDateOfExpiry().getTime()));
			
			ps.executeUpdate();
		}
		finally {
			close(null,ps,con);
		}
	}
	
	
	@Override
	public void deleteMembers(String phoneNumber) throws Exception {
		Connection con=null;
		PreparedStatement ps=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("delete from customer_details where phone_number=?");
			ps.setString(1,phoneNumber);
			ps.executeUpdate();
			ps.close();
			
			ps=con.prepareStatement("delete from users where user_id=?");
			ps.setString(1,phoneNumber);
			ps.executeUpdate();
		}
		finally{
			close(null,ps,con);
		}
	}
	
	
	@Override
	public List<Gym> searchMembers(String phoneNumber) throws Exception {
		
//		System.out.println("HHH" + phoneNumber);
		List<Gym> searchList=new ArrayList<Gym>();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("select * from customer_details where phone_number=?");
			ps.setString(1, phoneNumber);
			rs=ps.executeQuery();
			while(rs.next()) {
				int serialNo=rs.getInt(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String phonenumber=rs.getString(4);
				int age=rs.getInt(5);
				String sex=rs.getString(6);
			    String address=rs.getString(7);
			    String city=rs.getString(8);
			    String state=rs.getString(9);
			    String pinCode=rs.getString(10);
			    double height=rs.getDouble(11);
				double weight=rs.getDouble(12);
				double bmi=rs.getDouble(13);
				int packageId=rs.getInt(14);
				String packageName=rs.getString(15);
				Double rateOfPackage=rs.getDouble(16);
				Date dateOfJoining=rs.getDate(17);
				Date dateOfExpiry=rs.getDate(18);
				
				Gym gym=new Gym(serialNo, firstName, lastName, phonenumber, age, sex, address, city, state, pinCode, height, weight, bmi, packageId, packageName, rateOfPackage, dateOfJoining, dateOfExpiry);
			    searchList.add(gym);			
	       }
		}
		finally {
			close(rs,ps,con);
		}
		
		return searchList;
	}
	
	
	public Gym getMember(int serialNo) throws Exception {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Gym gym=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("select * from customer_details where serial_no=?");
			ps.setInt(1, serialNo);
			rs=ps.executeQuery();
			while(rs.next()) {
				int serialNO=rs.getInt(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String phoneNumber=rs.getString(4);
				int age=rs.getInt(5);
				String sex=rs.getString(6);
			    String address=rs.getString(7);
			    String city=rs.getString(8);
			    String state=rs.getString(9);
			    String pinCode=rs.getString(10);
			    double height=rs.getDouble(11);
				double weight=rs.getDouble(12);
				double bmi=rs.getDouble(13);
				int packageId=rs.getInt(14);
				String packageName=rs.getString(15);
				Double rateOfPackage=rs.getDouble(16);
				Date dateOfJoining=rs.getDate(17);
				Date dateOfExpiry=rs.getDate(18);
				
			    gym=new Gym(serialNO, firstName, lastName, phoneNumber, age, sex, address, city, state, pinCode, height, weight, bmi, packageId, packageName, rateOfPackage, dateOfJoining, dateOfExpiry);
					
			}
		}
		finally {
			close(rs,ps,con);
		}
		
		return gym;
	}
	
	
	public void updateMembers(Gym gym) throws Exception {
		Connection con=null;
		PreparedStatement ps=null;
		try 
		{
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("update customer_details set first_name=?,last_name=?,phone_number=?,age=?,sex=?,address=?,city=?,state=?,pin_code=?,height=?,weight=?,bmi=?,package_id=?,package_name=?,rate_of_package=?,date_of_joining=?,date_of_expiry=? where serial_no=?");
			ps.setString(1,gym.getFirstName());
			ps.setString(2,gym.getLastName());
			ps.setString(3,gym.getPhoneNumber());
			ps.setInt(4,gym.getAge());
			ps.setString(5,gym.getSex());
			ps.setString(6,gym.getAddress());
			ps.setString(7,gym.getCity());
			ps.setString(8,gym.getState());
			ps.setString(9,gym.getPinCode());
			ps.setDouble(10,gym.getHeight());
			ps.setDouble(11,gym.getWeight());
			ps.setDouble(12,gym.getBmi());
			ps.setInt(13,gym.getPackageId());
			ps.setString(14,gym.getPackageName());
			ps.setDouble(15,gym.getRateOfPackage());
			ps.setTimestamp(16,new java.sql.Timestamp(gym.getDateOfJoining().getTime()));
			ps.setTimestamp(17,new java.sql.Timestamp(gym.getDateOfExpiry().getTime()));
			ps.setInt(18,gym.getSerialNo());
			
//			System.out.println(gym.getSex());
			ps.executeUpdate();
			
		}
		finally {
			close(null,ps,con);
		}
	
	}
	
	
	private void close(ResultSet rs, PreparedStatement ps, Connection con) {
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null) {
				ps.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	

	@Override
	public Gym getCustomer(String phoneNumber) throws Exception {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Gym gym=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("select * from customer_details where phone_number=?");
			ps.setString(1, phoneNumber);
			rs=ps.executeQuery();
			if(rs.next()) {
				int serialNO=rs.getInt(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String phonenumber=rs.getString(4);
				int age=rs.getInt(5);
				String sex=rs.getString(6);
			    String address=rs.getString(7);
			    String city=rs.getString(8);
			    String state=rs.getString(9);
			    String pinCode=rs.getString(10);
			    double height=rs.getDouble(11);
				double weight=rs.getDouble(12);
				double bmi=rs.getDouble(13);
				int packageId=rs.getInt(14);
				String packageName=rs.getString(15);
				Double rateOfPackage=rs.getDouble(16);
				Date dateOfJoining=rs.getDate(17);
				Date dateOfExpiry=rs.getDate(18);
				
			    gym=new Gym(serialNO, firstName, lastName, phonenumber, age, sex, address, city, state, pinCode, height, weight, bmi, packageId, packageName, rateOfPackage, dateOfJoining, dateOfExpiry);
					
			}
			else {
				throw new Exception("Sorry, Data Not Found");
			}
		}
		finally {
			close(rs,ps,con);
		}
		
		return gym;
	
	}

//	@Override
//	public void showMember(Gym gym) throws Exception {
//		Connection con=null;
//		PreparedStatement ps=null;
//		ResultSet rs=null;
//		try 
//		{
//			con=ConnectionFactory.getCon();
//            ps=con.prepareStatement("select * from customer_details where serial_no=?");
//            rs=ps.executeQuery();
//            if(rs.next()) {
//    				int serialNo=rs.getInt(1);
//    				String firstName=rs.getString(2);
//    				String lastName=rs.getString(3);
//    				String phonenumber=rs.getString(4);
//    				int age=rs.getInt(5);
//    				String sex=rs.getString(6);
//    			    String address=rs.getString(7);
//    			    String city=rs.getString(8);
//    			    String state=rs.getString(9);
//    			    String pinCode=rs.getString(10);
//    			    double height=rs.getDouble(11);
//    				double weight=rs.getDouble(12);
//    				double bmi=rs.getDouble(13);
//    				int packageId=rs.getInt(14);
//    				String packageName=rs.getString(15);
//    				Double rateOfPackage=rs.getDouble(16);
//    				Date dateOfJoining=rs.getDate(17);
//    				Date dateOfExpiry=rs.getDate(18);
//            }
//			ps.setString(1,gym.getFirstName());
//			ps.setString(2,gym.getLastName());
//			ps.setString(3,gym.getPhoneNumber());
//			ps.setInt(4,gym.getAge());
//			ps.setString(5,gym.getSex());
//			ps.setString(6,gym.getAddress());
//			ps.setString(7,gym.getCity());
//			ps.setString(8,gym.getState());
//			ps.setString(9,gym.getPinCode());
//			ps.setDouble(10,gym.getHeight());
//			ps.setDouble(11,gym.getWeight());
//			ps.setDouble(12,gym.getBmi());
//			ps.setInt(13,gym.getPackageId());
//			ps.setString(14,gym.getPackageName());
//			ps.setDouble(15,gym.getRateOfPackage());
//			ps.setTimestamp(16,new java.sql.Timestamp(gym.getDateOfJoining().getTime()));
//			ps.setTimestamp(17,new java.sql.Timestamp(gym.getDateOfExpiry().getTime()));
			
			
//		}
//		finally {
//			close(null,ps,con);
//		}	
//	}
	
}
