package com.javaclass.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.ScheduleVO;
import com.javaclass.service.ScheduleService;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService service;
	
	@ResponseBody
	@RequestMapping(value = "/addSchedule", method = RequestMethod.POST)
	public Map<Object, Object> addSchedule(@RequestBody ScheduleVO vo) throws Exception{
		Map<Object,Object>map = new HashMap<Object, Object>();
		
		service.addSchedule(vo);
		
		return map;
	}
	
	@RequestMapping(value = "/schedule")
	public String schedule(Model model) throws Exception {
		
		model.addAttribute("showSchedule", service.showSchedule());
		
		return "/schedule";
	}
}
