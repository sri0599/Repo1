package com.igs.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController 
public class sample {
	
	@RequestMapping(value = "/sample")	
	public List<String> getSample() {
		List<String> al = new ArrayList<String>();
		al.add("1");
		al.add("11");
		al.add("111");
		al.add("1111");
		
		return al ;
	}

}
