package com.registration.model;

import java.io.InputStream;
import java.sql.ResultSet;

public interface DaoService {
	public void connectDB();
	public boolean verifyCredentials(String email,String password);
	public void saveReg(String username,String email,String number,String password);
	public void deleteReg(String email);
	public void updateReg(String email,String number);
	public void saveBlog(String title, String tags,String content, String image );
	public ResultSet Blogs();
	public void closeDB();
		
	
	
	
	
}
