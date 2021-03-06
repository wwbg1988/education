package com.ssic.education.admin.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

import com.ssic.education.admin.dto.TImsMenuTypeDto;
import com.ssic.education.admin.mapper.TImsMenuTypeExMapper;
import com.ssic.education.admin.pojo.MenuType;

@Repository
public class TImsMenuTypeDao {

	@Autowired
	private TImsMenuTypeExMapper tImsMenuTypeExMapper;

	public List<TImsMenuTypeDto> finAll() {
		List<TImsMenuTypeDto> dtoList = tImsMenuTypeExMapper.findAll();
		return dtoList;
	}
	

	public MenuType getMenuTyoeById(String id) {
		return tImsMenuTypeExMapper.findById(id);
	}
}
