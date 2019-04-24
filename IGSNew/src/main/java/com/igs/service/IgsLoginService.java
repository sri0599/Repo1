package com.igs.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.igs.dao.IgsLoginRepository;
import com.igs.dao.IgsUserRepository;
import com.igs.model.IgsSupporterList;

@Service
@Transactional
public class IgsLoginService {

	private final IgsLoginRepository igsLoginRepository;
	private final IgsUserRepository igsUserRepository;
	
	public IgsLoginService(IgsLoginRepository igsLoginRepository,IgsUserRepository igsUserRepository) {
		this.igsLoginRepository = igsLoginRepository ;
		this.igsUserRepository = igsUserRepository ;
		}
			
	public List<IgsSupporterList> findAll()
	{
		List<IgsSupporterList> igsLogin = new ArrayList<IgsSupporterList>();
		igsLogin = (List<IgsSupporterList>) igsLoginRepository.findAll();
		return igsLogin;
	}
	public IgsSupporterList save(IgsSupporterList igsLogin)
	{
			return igsLoginRepository.save(igsLogin);
	}
	
}
