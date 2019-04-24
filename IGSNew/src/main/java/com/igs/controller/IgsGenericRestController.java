package com.igs.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.igs.model.IgsSupporterList;
import com.igs.service.IgsLoginService;

@RestController
public class IgsGenericRestController {

	@Autowired
	private IgsLoginService igsLoginService;
	
	@PostMapping(value = "/userListJson" )
	public Map<Object,Object> getUserList( HttpServletRequest request) {
		
	    int amount = 10;
	    int start = 0;
	    int echo = 0;
	    int col = 0;
	    String dir = "asc";
	    String sStart = request.getParameter("start");
	    String sAmount = request.getParameter("length");
	    String sEcho = request.getParameter("sEcho");
	    String sCol = request.getParameter("order[0][column]");
	    String sdir = request.getParameter("order[0][dir]");

	    
	    if (sStart != null && !sStart.equals("") && !sStart.equals("null") ) {
	        start = Integer.parseInt(sStart);

	        if (start < 0)

	            start = 0;

	    }
	    if (sAmount != null && !sAmount.equals("") && !sAmount.equals("null")) {

	        amount = Integer.parseInt(sAmount);

	        if (amount < 10 || amount > 100)

	            amount = 10;

	    }

	    if (sEcho != null && !sEcho.equals("") && !sEcho.equals("null")) {

	        echo = Integer.parseInt(sEcho);

	    }

	    if (sCol != null && !sCol.equals("") && !sCol.equals("null")) {

	        col = Integer.parseInt(sCol);

	        if (col < 0 || col > 5)

	            col = 0;

	    }

	    if (sdir != null && !sdir.equals("") && !sdir.equals("null")) {

	        if (!sdir.equals("asc"))

	            dir = "desc";

	    }

	   
	    int total = 0;

	    
		
		Map<Object,Object> userList  = new HashMap() ;
				
		List<IgsSupporterList> igsLoginList = igsLoginService.findAll() ;
		
		
		
		System.out.println("neha"+igsLoginList.size());
		
		List<IgsSupporterList> igsLoginList1 = igsLoginList.subList(start, start + amount);
		
		System.out.println("iTotalRecords"+ igsLoginList.size());
		System.out.println("iTotalDisplayRecords"+ igsLoginList.size());
		
		userList.put("iTotalRecords", igsLoginList.size());
		userList.put("iTotalDisplayRecords", igsLoginList.size());
		
		List<Object> tempArrList = new ArrayList();
		
		//igsLoginList1.forEach((n)-> System.out.println(((IgsLogin) n).getLname()));
		igsLoginList1.forEach((n)-> {
										List<Object> tempList = new ArrayList();
										tempList.add(((IgsSupporterList) n).getUser_id());
										tempList.add(((IgsSupporterList) n).getScode());
										tempList.add(((IgsSupporterList) n).getCategory());
										tempList.add(((IgsSupporterList) n).getSex());
										tempList.add(((IgsSupporterList) n).getOld_user_id());
										tempList.add(((IgsSupporterList) n).getPassword());
										tempList.add(((IgsSupporterList) n).getFull_name());
										tempList.add(((IgsSupporterList) n).getTitle());
										tempList.add(((IgsSupporterList) n).getFname());
										tempList.add(((IgsSupporterList) n).getLname());
										tempList.add(((IgsSupporterList) n).getDesg());
										tempList.add(((IgsSupporterList) n).getDept());
										tempList.add(((IgsSupporterList) n).getOrigin());
										tempList.add(((IgsSupporterList) n).getAdd1());
										tempList.add(((IgsSupporterList) n).getAdd2());
										tempList.add(((IgsSupporterList) n).getAdd3());
										tempList.add(((IgsSupporterList) n).getCity());
										tempList.add(((IgsSupporterList) n).getState());
										tempList.add(((IgsSupporterList) n).getPin());
										tempList.add(((IgsSupporterList) n).getCountry());
										tempList.add(((IgsSupporterList) n).getRetltr());
										tempList.add(((IgsSupporterList) n).getExectve());
										tempList.add(((IgsSupporterList) n).getMem2011());
										tempList.add(((IgsSupporterList) n).getJou2011());
										tempList.add(((IgsSupporterList) n).getJlife_time());
										
										tempList.add(((IgsSupporterList) n).getIssmge1013());
										tempList.add(((IgsSupporterList) n).getEnrlyear());
										tempList.add(((IgsSupporterList) n).getThrough());
										tempList.add(((IgsSupporterList) n).getEmail());
										tempList.add(((IgsSupporterList) n).getRemarks());
										tempList.add(((IgsSupporterList) n).getMobile());
										tempList.add(((IgsSupporterList) n).getFax());
										tempList.add(((IgsSupporterList) n).getActive_status());
										tempList.add(((IgsSupporterList) n).getNationality());
										tempList.add(((IgsSupporterList) n).getBlog());
										tempList.add(((IgsSupporterList) n).getAttachment1());
										tempList.add(((IgsSupporterList) n).getAttachment2());
										tempList.add(((IgsSupporterList) n).getAttachment3());
										tempList.add(((IgsSupporterList) n).getSupp1_proof());
										tempList.add(((IgsSupporterList) n).getSupp2_proof());
										tempList.add(((IgsSupporterList) n).getDob_proof());
										tempList.add(((IgsSupporterList) n).getOthers_proof());
										tempList.add(((IgsSupporterList) n).getCreated_by());
										tempList.add(((IgsSupporterList) n).getCreated_on());
										tempList.add(((IgsSupporterList) n).getModified_by());
										tempList.add(((IgsSupporterList) n).getModified_on());
										tempList.add(((IgsSupporterList) n).getUpload_folder());
										tempList.add(((IgsSupporterList) n).getAbout_me());
										tempList.add(((IgsSupporterList) n).getChat_flag());
										tempList.add(((IgsSupporterList) n).getChat_visibility_flag());
										tempList.add(((IgsSupporterList) n).getMname());
										tempList.add(((IgsSupporterList) n).getDob());
										tempList.add(((IgsSupporterList) n).getContact_add1());
										tempList.add(((IgsSupporterList) n).getContact_add2());
										tempList.add(((IgsSupporterList) n).getContact_add3());
										tempList.add(((IgsSupporterList) n).getContact_no());
										tempList.add(((IgsSupporterList) n).getOthers());										
										tempList.add(((IgsSupporterList) n).getThrough2());										
										tempList.add(((IgsSupporterList) n).getExecutive_year());
										tempList.add(((IgsSupporterList) n).getApproved_by());
										tempList.add(((IgsSupporterList) n).getMem2011_year());
										tempList.add(((IgsSupporterList) n).getBlog_flag());										
										tempList.add(((IgsSupporterList) n).getEmail_flag());
										tempList.add(((IgsSupporterList) n).getSms_flag());
										tempList.add(((IgsSupporterList) n).getJou2011_year());										
										tempList.add(((IgsSupporterList) n).getJlife_time_subscription());
										tempList.add(((IgsSupporterList) n).getIssmge1013_flag());										
										tempList.add(((IgsSupporterList) n).getIssmge_block_year());										
										tempList.add(((IgsSupporterList) n).getUser_name());										
										tempList.add(((IgsSupporterList) n).getSpecialization());
										tempList.add(((IgsSupporterList) n).getRef_no());										
										tempList.add(((IgsSupporterList) n).getColflg());
										tempList.add(((IgsSupporterList) n).getEmal_group_id());
										tempList.add(((IgsSupporterList) n).getOnline_voting_right_flag());
										tempList.add(((IgsSupporterList) n).getClose_voting_flag());
										tempList.add(((IgsSupporterList) n).getClose_date());
										tempList.add(((IgsSupporterList) n).getMail_send_flag());
										tempList.add(((IgsSupporterList) n).getPassword_mail_flag());
										tempList.add(((IgsSupporterList) n).getTemp_generated_password());
										tempArrList.add(tempList);
									});
		userList.put("aaData", tempArrList);
		return userList;	
		
	}
	
}
