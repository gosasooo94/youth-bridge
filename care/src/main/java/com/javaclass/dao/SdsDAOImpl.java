package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.SdsVO;


@Repository("sdsDAO")
public class SdsDAOImpl implements SdsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<SdsVO> sdsList(SdsVO vo) {
		System.out.println("===> Mybatis sdsList() 호출");
		List<SdsVO> list = mybatis.selectList("SdsDAO.sdsList", vo);
		return list;
	}



}
