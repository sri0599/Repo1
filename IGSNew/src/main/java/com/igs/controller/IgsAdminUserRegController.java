package com.igs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.igs.model.IgsSupporterList;
import com.igs.model.IgsSupporterListDto;
import com.igs.service.IgsLoginService;

import net.bytebuddy.dynamic.loading.MultipleParentClassLoader;

@Controller
public class IgsAdminUserRegController {

	@Value("${message}")
	String message;
	
	@Autowired
	private IgsLoginService igsLoginService;
	
	@GetMapping(value = "/userRegForm" )
	public String getUserRegList( HttpServletRequest request) {
	
		
		String s1 = "a";
		String s2 = "a";
		String s3 = "a";
		String s4 = "a";
		String s5 = "a";
		
		//System.out.println("neha"+userRegList.size());
		//List<Object> tempArrList = new ArrayList();
		System.out.println("Environment: "+ message);
		System.out.println("Environment: "+ message);		
		System.out.println("Environment: "+ message);
		
		return "AdminUserRegForm" ;
	}
	
	@GetMapping(value = "/supporterList" )
	public String getSupporterList( HttpServletRequest request) {
	
		
		
		return null ;
	}
	
	@PostMapping(value = "/userSave" )
	public String saveUser(@ModelAttribute("igsSupporterListDto") IgsSupporterListDto igsSupporterListDto, HttpServletRequest request) {
	//public String lmsMultipleSave(@ModelAttribute("lmsListContainer") LMSListContainer lmsListContainer, ModelMap modelMap, HttpServletRequest request ,BindingResult bindingResult) throws Exception{
		
		MultipartFile file = igsSupporterListDto.getAttachment1();
		System.out.println("neha"+file.getOriginalFilename()); 
		
		IgsSupporterList igsSupporterList = new IgsSupporterList() ;
		  igsSupporterList.setTitle(igsSupporterListDto.getTitle());
		  igsSupporterList.setFname(igsSupporterListDto.getFname());
		  igsSupporterList.setMname(request.getParameter("mname"));
		  igsSupporterList.setLname(request.getParameter("lname"));
		  igsSupporterList.setUser_name(request.getParameter("user_name"));
		  igsSupporterList.setPassword(request.getParameter("password1"));
		  //igsLogin.setPassword(request.getParameter("password2")); confrmpass
		  igsSupporterList.setOld_user_id(request.getParameter("old_user_id"));
		  igsSupporterList.setDob(request.getParameter("dob"));
		  igsSupporterList.setSex(request.getParameter("sex"));
		  igsSupporterList.setContact_add1(request.getParameter("contact_add1"));
		  igsSupporterList.setAdd1(request.getParameter("add1"));
		  igsSupporterList.setCountry(request.getParameter("country"));
		  igsSupporterList.setState(request.getParameter("state"));
		  igsSupporterList.setCity(request.getParameter("city"));
		  igsSupporterList.setPin(request.getParameter("pin"));
		  igsSupporterList.setContact_no(request.getParameter("contact_no"));
		  igsSupporterList.setMobile(request.getParameter("mobile"));
		  igsSupporterList.setFax(request.getParameter("fax"));
		  igsSupporterList.setEmail(request.getParameter("email"));
		  igsSupporterList.setDesg(request.getParameter("desg"));
		  igsSupporterList.setOrigin(request.getParameter("origin"));
		  igsSupporterList.setDept(request.getParameter("dept"));
		  igsSupporterList.setSpecialization(request.getParameter("specialization"));
		  igsSupporterList.setOthers(request.getParameter("others"));
		  igsSupporterList.setNationality(request.getParameter("nationality"));
		  igsSupporterList.setThrough(request.getParameter("through"));
		  //igsSupporterList.set(request.getParameter("find1"));
		  igsSupporterList.setThrough2(request.getParameter("through2"));
		  //igsSupporterList.set(request.getParameter("find1"));
		  igsSupporterList.setCategory(request.getParameter("catagory"));
		  igsSupporterList.setRetltr(request.getParameter("retltr"));
		  igsSupporterList.setExectve(request.getParameter("exectve"));
		  igsSupporterList.setMem2011(request.getParameter("mem2011"));
		  igsSupporterList.setJou2011(request.getParameter("jou2011"));
		  //igsSupporterList.setMem2011_year(request.getParameter("mem2011_year"));
		  //igsSupporterList.setJou2011_year(request.getParameter("jou2011_year")); data type
		  //error igsLogin.setJlife_time(request.getParameter("jlife_time"));
		  igsSupporterList.setIssmge1013(request.getParameter("issmge1013"));
		  //igsSupporterList.setEnrlyear(request.getParameter("enrlyear")); data type error
		  igsSupporterList.setAttachment1(request.getParameter("attachment1"));
		  igsSupporterList.setAttachment2(request.getParameter("attachment2"));
		  igsSupporterList.setAttachment3(request.getParameter("attachment3"));
		  igsSupporterList.setSupp1_proof(request.getParameter("supp1Pic"));
		  igsSupporterList.setSupp2_proof(request.getParameter("supp2Pic"));
		  igsSupporterList.setDob_proof(request.getParameter("dobPic"));
		  igsSupporterList.setOthers_proof(request.getParameter("otherPic"));
		 		
		igsLoginService.save(igsSupporterList);
				
		return null ;
	}
	
}