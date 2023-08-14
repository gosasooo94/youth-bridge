package com.javaclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javaclass.dao.ScheduleDAO;
import com.javaclass.domain.ScheduleVO;

@Service
public class ScheduleService {
	
	@Inject
	private ScheduleDAO dao;
	
	public List<ScheduleVO> showSchedule() throws Exception {
		return dao.showSchedule();
	}
	
	public void addSchedule(ScheduleVO vo) throws Exception{
		dao.addSchedule(vo);
	}
	
}
