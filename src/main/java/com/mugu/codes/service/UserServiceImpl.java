package com.mugu.codes.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mugu.codes.entity.TReport;
import com.mugu.codes.entity.Users;
import com.mugu.codes.repo.ReportRepository;
import com.mugu.codes.repo.UserRepository;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository urepo;
	
	@Autowired
	ReportRepository rrepo;
	
	private String mailID;

	@Override
	public int checking(String imail,String ipw) {
		
		try
		{
		Users user = urepo.getOne(imail);
		if(user!=null)
		{
			
		String opw = user.getPw();
	    	
		if(opw.equals(ipw))
		{
			String otype = user.getType();
			if(otype.equals("admin"))
			{
				return 2;
			}
			else 
			{
			return 3;
			}
		}
		else
		{	
		 return 1;	
		}
		
		}
		else
		{
		return 0;	
		}
		}
		catch(Exception e)
		{
			return 0;
		}

	}

	@Override
	public int adding(String fn,String ln,String ma,String pw,String typ) 
	{
		Users user=new Users();
		user.setFirstName(fn);
		user.setLastName(ln);
		user.setMailId(ma);
		user.setPw(pw);
		user.setType(typ);
		urepo.save(user);
        return 0;	
	}
	
	@Override
	public int validating(String a1,String a2,String a3,String a4,String a5)
	{
		
		int mark=0;
		String testDate;
		String assessment="Spring-L1";
		int total=50;
		String result;
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");  
	    Date date = new Date();  
	    testDate=formatter.format(date);  
		
		
		if(a1.equals("J2EE App Development Framework")) {
			mark=mark+10;
		}
		
		if(a2.equals("Inversion Of Control")) {
			mark=mark+10;
		}
		
		if(a3.equals("Aspect Oriented Programming")) {
			mark=mark+10;
		}
		
		if(a4.equals("Application Context")) {
			mark=mark+10;
		}
		
		if(a5.equals("Dispatcher Servlet")) {
			mark=mark+10;
		}
		
		
		if(mark<30)
		{
			result="Failed";
		} 
		else
		{
			result="Passed";
		}
		
		TReport test = new TReport();
		
		test.setAssessment(assessment);
		test.setMail(mailID);
		test.setResult(result);
		test.setTestDate(testDate);
		test.setTestMark(mark);
		test.setTotal(total);
		rrepo.save(test);
		
		if(mark<30)
		{
			return 0;
		} 
		else
		{
			return 1;	
		}
		
	}
	
	@Override
	public int validating1(String a1,String a2,String a3,String a4,String a5)
	{
		
		int mark=0;
		String testDate;
		String assessment="Hibernate-L1";
		int total=50;
		String result;
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");  
	    Date date = new Date();  
	    testDate=formatter.format(date);
		
		if(a1.equals("Object Relational Mapping")) {
			mark=mark+10;
		}
		
		if(a2.equals("uni-directional & bi-directional")) {
			mark=mark+10;
		}
		
		if(a3.equals("configuration file")) {
			mark=mark+10;
		}
		
		if(a4.equals("Hibernate Query Language")) {
			mark=mark+10;
		}
		
		if(a5.equals("isolation levels")) {
			mark=mark+10;
		}
		
		
		if(mark<30)
		{
			result="Failed";
		} 
		else
		{
			result="Passed";
		}
		
        TReport test = new TReport();
		
		test.setAssessment(assessment);
		test.setMail(mailID);
		test.setResult(result);
		test.setTestDate(testDate);
		test.setTestMark(mark);
		test.setTotal(total);
		rrepo.save(test);
		
		
		if(mark<30)
		{
			return 0;
		} 
		else
		{
			return 1;	
		}
		
	}

	public String getMailID() {
		return mailID;
	}

	@Override
	public void setMailID(String mailID) {
		this.mailID = mailID;
	}
	
	@Override
	public List<Users> allUsers() {
		List<Users> theUsers = urepo.findAll();
		return theUsers;
	}

	public List<TReport> examReport(){
		List<TReport> exam = rrepo.findAll();
		return exam;
	}

	
}
