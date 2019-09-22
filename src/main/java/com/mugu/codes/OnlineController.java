package com.mugu.codes;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mugu.codes.entity.TReport;
import com.mugu.codes.entity.Users;
import com.mugu.codes.service.UserService;

@Controller
public class OnlineController {
	
	
	@Autowired
	UserService us;
	
	@RequestMapping("/")
	public String mainPage(Model model)
	{
		model.addAttribute("userModel",new Users());
		return "index";
	}

	@RequestMapping("/login/do")
	public String loginDo(@ModelAttribute("userModel") Users userModel)
	{
		String imail = userModel.getMailId();
		String ipw = userModel.getPw();
		
		us.setMailID(imail);
		
		int x = us.checking(imail,ipw);
		
		if(x==0)
		{
		return "notRegistered";	
		}
		else if(x==1)
		{
			return "passwordWrong";
		}
		else if(x==2)
		{	
		return "reports";
		}
		else
		{
		return "selectTest";
		}
	}
	
	
		@RequestMapping("/register")
	public String register(Model model)
	{
		model.addAttribute("newUserModel",new Users());
		return "register";
	}
		
	@RequestMapping("/registration/do")
	public String registrationDo(@ModelAttribute("newUserModel") Users newUserModel,ModelMap model)
	{
		String fn = newUserModel.getFirstName();
		String ln = newUserModel.getLastName();
		String ma = newUserModel.getMailId();
		String pw = newUserModel.getPw();
		String typ = "candidate";
		
		int i = us.adding(fn, ln, ma, pw, typ);
		
		model.addAttribute("name1",fn);
		model.addAttribute("name2",ln);
		
		if(i==0)
		{
			return "registerSuccess";
		}
		else
		{
			return "index";	
		}
		
	}
		
	@RequestMapping("/springAssessment")
	public String springAss(Model model) 
	{
	model.addAttribute("examModel",new ExamQA());	
	return "spring";	
	}
	
	@RequestMapping("/hibernateAssessment")
	public String hibernateAss(Model model) 
	{
	model.addAttribute("examModel1",new ExamQA());	
	return "hibernate";	
	}
		
	@RequestMapping("/evaluate/spring/test")
	public String evalSpring(@ModelAttribute("examModel") ExamQA examModel)
	{
		String an1 = examModel.getAns1();
		String an2 = examModel.getAns2();
		String an3 = examModel.getAns3();
		String an4 = examModel.getAns4();
		String an5 = examModel.getAns5();
		
		int i = us.validating(an1,an2,an3,an4,an5);
		
		if(i==1)
		{
		return "congrats";
		}
		else 
		{
		return "failed";	
		}	
	}

	@RequestMapping("/evaluate/hibernate/test")
	public String evalHiber(@ModelAttribute("examModel1") ExamQA examModel)
	{
		String an1 = examModel.getAns1();
		String an2 = examModel.getAns2();
		String an3 = examModel.getAns3();
		String an4 = examModel.getAns4();
		String an5 = examModel.getAns5();
		
		int i = us.validating1(an1,an2,an3,an4,an5);
		
		if(i==1)
		{
		return "congrats";
		}
		else 
		{
		return "failed";	
		}	
	}
		
	
	@RequestMapping("/users/all")
	public String listusers(ModelMap model)
	{
		List<Users> list = new ArrayList<Users>();
		list = us.allUsers();
		
		Collections.sort(list, new Comparator<Users>() {
		    public int compare(Users one, Users other) {
		        return one.getFirstName().toLowerCase().compareTo(other.getFirstName().toLowerCase());
		    }
		});
		model.addAttribute("list",list);
		return "listusers";
	}
	
	
	@RequestMapping("/tests/all")
	public String testReport(ModelMap model)
	{
		List<TReport> list1 = new ArrayList<>();
		list1=us.examReport();
		model.addAttribute("list1",list1);
		return "testReport";
	}
	
	
	
}
