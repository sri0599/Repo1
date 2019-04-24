package com.igs.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.igs.dao.IgsLoginRepository;
import com.igs.model.IgsSupporterList;
import com.igs.service.IgsLoginService;

@Controller
public class IgsLoginController {
	
	@Autowired
	private IgsLoginService igsLoginService;
	
	@Autowired
	private IgsLoginRepository igsLoginRepository;
	
	@RequestMapping(value = "/userList" , method = RequestMethod.GET)
	public String userList (ModelMap modelMap, HttpServletRequest request) throws ParseException{
		
	List<IgsSupporterList> igsLoginList = new ArrayList<IgsSupporterList>();
	igsLoginList = igsLoginService.findAll() ;
	System.out.println("neha"+igsLoginList.size());
	
	return null;
	
	
	// String = request.getParameter("");
	
	}
	
	@RequestMapping(value = "/index")
	public String loginForm()
	{
		
		
		return "Login";
	}

	@RequestMapping(value = "/login")
	public String loginSubmit()
	{
		
		
		return "AdminHome";
	}
	
	@RequestMapping(value = "/GenFooterNavBar")
	public String genFooterNavBar()
	{
		
		
		return "GenFooterNavBar";
	}
	
	@RequestMapping(value = "/GenSideMenuBar")
	public String genSideMenuBar()
	{
		
		
		return "GenSideMenuBar";
	}
	
	@RequestMapping(value = "/GenTopLeftLogoInfo")
	public String genTopLeftLogoInfo()
	{
		
		
		return "GenTopLeftLogoInfo";
	}
	
	@RequestMapping(value = "/GenTopNavBar")
	public String genTopNavBar()
	{
		
		
		return "GenTopNavBar";
	}

	@RequestMapping(value = "/MenuFooterButton")
	public String menuFooterButton()
	{
		
		
		return "MenuFooterButton";
	}

	@RequestMapping(value = "/MenuProfileQuickInfo")
	public String menuProfileQuickInfo()
	{
		
		
		return "MenuProfileQuickInfo";
	}

	@RequestMapping(value = "/User")
	public String user()
	{
		
		
		return "User";
	}

}
