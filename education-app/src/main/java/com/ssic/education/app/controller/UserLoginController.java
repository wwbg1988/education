package com.ssic.education.app.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssic.util.UUIDGenerator;

@Controller
@RequestMapping("/userLoginController")
public class UserLoginController {

	private String this_uuid = "";

	private String pid = "71717171";

	private int session_index = 0;

	@RequestMapping("/usersub.do")
	@ResponseBody
	public String usersub(String username, String userpassword,
			HttpServletResponse response, HttpServletRequest request) {

		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(userpassword)) {
			return "name or password error";
		}
		Map<String, String> map = getCookie(request);

		if (!StringUtils.isEmpty(map.get("uuid"))) {
			return "user already  login";
		} else {
			if ("zhangsan".equals(username) && "123".equals(userpassword)) {
				String uuid = UUIDGenerator.getUUID();
				Cookie cookie = new Cookie("uuid", uuid);
				response.addCookie(cookie);
				this_uuid = uuid;
				return "login success";
			} else {
				return "login fail";
			}

		}
	}

	@RequestMapping("/getPid.do")
	@ResponseBody
	public String getPid(HttpServletRequest request) {
		Map<String, String> map = getCookie(request);
		String uuid = map.get("uuid");
		log_session(request); // 记录session的创建次数
		if (StringUtils.isEmpty(uuid)) {
			return "not login";
		}
		if (this_uuid.equals(uuid)) {
			return "pid=" + pid;
		} else {
			return "not login";
		}
	}

	@RequestMapping("/getPid2.do")
	@ResponseBody
	public String getPid2(HttpServletRequest request) {
		Map<String, String> map = getCookie(request);
		String uuid = map.get("uuid");
		log_session(request); // 记录session的创建次数
		if (StringUtils.isEmpty(uuid)) {
			return "not login";
		}
		if (this_uuid.equals(uuid)) {
			return "pid=" + pid;
		} else {
			return "not login";
		}
	}

	@RequestMapping("/getPid3.do")
	@ResponseBody
	public String getPid3(HttpServletRequest request) {
		Map<String, String> map = getCookie(request);
		String uuid = map.get("uuid");
		log_session(request); // 记录session的创建次数
		if (StringUtils.isEmpty(uuid)) {
			return "not login";
		}
		if (this_uuid.equals(uuid)) {
			return "pid=" + pid;
		} else {
			return "not login";
		}
	}

	public void log_session(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session_index++;
		session.setAttribute("session_index", session_index);
		System.out.println("session_index="
				+ session.getAttribute("session_index"));
	}

	public Map<String, String> getCookie(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				map.put(cookie.getName(), cookie.getValue());
			}
		}
		return map;
	}

}
