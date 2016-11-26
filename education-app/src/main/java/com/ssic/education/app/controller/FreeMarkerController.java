package com.ssic.education.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssic.education.app.dto.UserDto;

@Controller
@RequestMapping("FreeMarkerController")
public class FreeMarkerController {


    @RequestMapping("/index1.do")
    public ModelAndView Add(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("index");
        UserDto user = new UserDto();
        user.setUsername("<h2>小明=========================================================></h2>");
        user.setPassword("<a href='https://www.hao123.com/'>百度</a>");
        List<UserDto> users = new ArrayList<UserDto>();
        users.add(user);
        mav.addObject("users", users);        
        return mav;
    }

    @RequestMapping("/index2.do")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("title", "网站标题");
        //说明：在这里可以控制不生成静态htm
      //  mav.addObject("CREATE_HTML", false);
        return mav;
    }
	
	
}
