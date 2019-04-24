package com.igs.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.igs.model.IgsSupporterList;

@Repository
public interface IgsUserRepository extends CrudRepository<IgsSupporterList, String>{
	
	List<IgsSupporterList> findAll();
	
	IgsSupporterList save(IgsSupporterList igsLogin);
	
}
