package com.ssic.education.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MenuInfoMapper {

	
	public List<String> getMenuNameById(@Param("id")  String id);
	
	
}
