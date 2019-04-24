package com.igs.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.igs.model.IgsSupporterList;

public interface IgsLoginRepository extends CrudRepository<IgsSupporterList, String>{
	
	List<IgsSupporterList> findAll();
	
	IgsSupporterList save(IgsSupporterList igsLogin);


}
