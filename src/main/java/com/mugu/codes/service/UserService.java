package com.mugu.codes.service;

import java.util.List;

import com.mugu.codes.entity.TReport;
import com.mugu.codes.entity.Users;

public interface UserService {
	
	public int checking(String imail,String ipw);
	
	public int adding(String fn,String ln,String ma,String pw,String typ);
	
	public int validating(String a1,String a2,String a3,String a4,String a5);
	
	public int validating1(String a1,String a2,String a3,String a4,String a5);

	public void setMailID(String mailID);
	
	public List<Users> allUsers();
	
	public List<TReport> examReport();
	
}
