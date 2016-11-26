package com.ssic.education.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssic.education.app.dto.AppParamDto;
import com.ssic.education.app.dto.AppResponse;
import com.ssic.education.app.dto.UserDto;

@Controller
@RequestMapping("PageTestController")
public class PageTestController {

	@RequestMapping("/getId.do")
	@ResponseBody
	public AppResponse<String> getId(HttpServletResponse response) {
		AppResponse<String> appResponse = new AppResponse<String>();
		appResponse.setData("张三");
		appResponse.setResultCode(AppParamDto.RESULT_CODE_SUCCESS);
		appResponse.setResultMsg("get id");
		response.setHeader("Access-Control-Allow-Origin", "*");
		return appResponse;
	}

	@RequestMapping("/getPageId.do")
	public String getPageId(HttpServletRequest request) {
		request.setAttribute("data", "张三");
		request.setAttribute("resultCode", AppParamDto.RESULT_CODE_SUCCESS);
		request.setAttribute("resultMsg", "get id");
		return "pageTest/pageInit";
	}

	@RequestMapping("/getView.do")
	public ModelAndView getView() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/pageView");
		modelAndView.addObject("username", "zhangsan");
		modelAndView.addObject("password", "54321");
		return modelAndView;

	}

}
