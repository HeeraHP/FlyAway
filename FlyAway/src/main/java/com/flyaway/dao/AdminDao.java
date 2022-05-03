package com.flyaway.dao;

import com.flyaway.dto.Admin;


public interface AdminDao {

	public boolean validateAdmin(String uname,String password);
	
	
	public void changePassword(Admin admin);

}
