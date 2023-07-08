package com.registration.model;

import java.sql.*;

public class DaoServiceimpl implements DaoService {
private Connection con;
private Statement stmnt;



	@Override
	public void connectDB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Blog","root","root");
			System.out.println("con");
			stmnt =con.createStatement();
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	@Override
	public boolean verifyCredentials(String email, String password) {
		try {
			ResultSet result=stmnt.executeQuery("select * from Users where email='"+email+"' and password = '"+password+"'");
			return result.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void saveReg(String username, String email, String number, String password) {
		try {
			stmnt.executeUpdate("INSERT INTO Users VALUES ('" + username + "','" + email + "','" + number + "','" + password + "')");
			
		System.out.println("--data inserted into the table--");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteReg(String email) {
		

	}

	@Override
	public void updateReg(String email, String number) {
		// TODO Auto-generated method stub

	}

	@Override
	public void closeDB() {
		// TODO Auto-generated method stub

	}

	@Override
	public void saveBlog(String title, String tags, String content, String image) {
		try {
			stmnt.executeUpdate("INSERT INTO  blogs values ('" + title + "','" + tags + "','" + content + "','"+image+"')");
			
		System.out.println("--data inserted into the table--");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet Blogs() {
		try {
			ResultSet result=stmnt.executeQuery("select * from blogs");
			return result;
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
		
	}

}
