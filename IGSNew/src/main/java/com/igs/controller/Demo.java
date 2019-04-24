package com.igs.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Demo {

	@RequestMapping(value = "/demo")	
	public String getDemo() {
		
		System.out.println("neha");
		
		List<String> al = new ArrayList<String>();
		al.add("1");
		al.add("11");
		al.add("111");
		al.add("1111");
		
		return "Login" ;
	}
	
}
