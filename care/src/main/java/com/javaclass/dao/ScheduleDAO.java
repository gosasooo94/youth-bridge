package com.javaclass.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.ScheduleVO;

@Repository
public class ScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.javaclass.dao.ScheduleDAO";
	
	public List<ScheduleVO> showSchedule() throws Exception {
		return sqlSession.selectList(namespace + ".showSchedule");
	}
	
	public void addSchedule(ScheduleVO vo) throws Exception {
		sqlSession.insert(namespace + ".addSchedule", vo);
	}
	
}
