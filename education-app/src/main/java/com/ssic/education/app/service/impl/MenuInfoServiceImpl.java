package com.ssic.education.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssic.education.app.dao.MenuInfoDao;
import com.ssic.education.app.service.IMenuInfoService;

@Service
public class MenuInfoServiceImpl implements IMenuInfoService {

	@Autowired
	private MenuInfoDao menuInfoDao;

	@Override
	public List<String> getMenuNameById(String id) {
		// TODO Auto-generated method stub
		return menuInfoDao.getMenuNameById(id);
	}

}
