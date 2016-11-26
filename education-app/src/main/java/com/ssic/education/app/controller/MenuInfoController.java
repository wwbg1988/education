package com.ssic.education.app.controller;

import java.util.List;

import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssic.education.app.dto.AppResponse;
import com.ssic.education.app.dto.GetMenuNameRequest;
import com.ssic.education.app.service.IMenuInfoService;

@Controller
@RequestMapping("MenuInfoController")
public class MenuInfoController {

	@Autowired
	private IMenuInfoService menuInfoService;

	@RequestMapping("/getMenuName.do")
	@ResponseBody
	public AppResponse<List<String>> getMenuName(
			GetMenuNameRequest getMenuNameRequest) {

		List<String> list = menuInfoService.getMenuNameById(getMenuNameRequest
				.getId());

		AppResponse<List<String>> response = new AppResponse<List<String>>();
		response.setData(list);
		response.setResultCode(200);
		response.setResultMsg("success");
		return response;

	}

}
