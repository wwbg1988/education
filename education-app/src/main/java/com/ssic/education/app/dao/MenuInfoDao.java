package com.ssic.education.app.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssic.education.app.mapper.MenuInfoMapper;

@Repository
public class MenuInfoDao {

	@Autowired
	private MenuInfoMapper mapper;
	
	public List<String> getMenuNameById(String id){
		return mapper.getMenuNameById(id);
	}
	
	
	
}
