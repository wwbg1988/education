package com.ssic.education.app.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSON;

import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssic.education.app.dto.AppParamDto;
import com.ssic.education.app.dto.AppResponse;
import com.ssic.util.UUIDGenerator;

@Controller
@RequestMapping("/InfoController")
public class InfoController {

	private static final String HTTP_LOGIN_FLAG_VALUE = "12345";
	private static final String HTTP_LOGIN_FLAG_NAME = "login_flag";

	private int submit_index = 0;

	@RequestMapping("/getLogin.do")
	@ResponseBody
	public String getLogin(String userInfo, HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("userinfo", userInfo);
		System.out.println("userinfo=" + userInfo);
		Cookie cookie = new Cookie(HTTP_LOGIN_FLAG_NAME, HTTP_LOGIN_FLAG_VALUE);
		cookie.setHttpOnly(true);
		response.addCookie(cookie);
		return userInfo;
	}

	@RequestMapping("/getIsLogined.do")
	@ResponseBody
	public String getIsLogined(HttpServletRequest request) {
		HttpSession session = request.getSession();
		boolean flag = false;
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				System.out.println(cookie);
				if (HTTP_LOGIN_FLAG_VALUE.equals(cookie.getValue())
						&& HTTP_LOGIN_FLAG_NAME.equals(cookie.getName())) {
					flag = true;
				}
			}
		}

		if (flag) {
			return "is logined";
		} else {
			return "not logined";
		}

	}

	@RequestMapping("/getFormInfo.do")
	@ResponseBody
	public AppResponse<String> getFormInfo(String name, String password,
			HttpServletResponse response) {
		AppResponse<String> appResponse = new AppResponse<String>();

		if (StringUtils.isEmpty(name)) {
			submit_index++;
			System.out.println("submit_index=" + submit_index);
			appResponse.setData(null);
			appResponse.setResultCode(AppParamDto.RESULT_CODE_FAIL);
			appResponse.setResultMsg("name is null ,index=" + submit_index);
			return appResponse;
		}
		if (StringUtils.isEmpty(password)) {
			submit_index++;
			System.out.println("submit_index=" + submit_index);
			appResponse.setData(null);
			appResponse.setResultCode(AppParamDto.RESULT_CODE_FAIL);
			appResponse.setResultMsg("password is null");
			return appResponse;
		}

		String uuid = UUIDGenerator.getUUID();

		response.addHeader("user_flag", uuid);

		submit_index++;
		System.out.println("submit_index=" + submit_index);
		appResponse.setData(name);
		appResponse.setResultCode(AppParamDto.RESULT_CODE_SUCCESS);
		appResponse.setResultMsg("get form info success,index=" + submit_index);
		return appResponse;

	}

	@RequestMapping("/getMap.do")
	@ResponseBody
	public Map<String, String> getMap() {
		Map<String, String> map = new HashMap<String, String>();

		map.put("name", "张三");
		map.put("password", "1234");
		return map;

	}
	
	@RequestMapping("/getStr.do")
	@ResponseBody
	public String getStr(){
		return "zhangsan"+"张三";
	}

	@RequestMapping("/toPage.do")
	public String toPage(HttpServletRequest request,HttpServletResponse response) {
		String token = UUIDGenerator.getUUID();
		System.out.println("token=" + token);
		request.setAttribute("token", token);
		
		response.addHeader("token", token);
		
		return "info/frist_page";
	}

}
