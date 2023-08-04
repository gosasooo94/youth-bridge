package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.FairVO;

@Repository("fairDAO") 
public class FairDAOImpl {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<FairVO> getBoardList(FairVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		List<FairVO> list = mybatis.selectList("FairDAO.getBoardList", vo);
		return list;
	}
	
}
