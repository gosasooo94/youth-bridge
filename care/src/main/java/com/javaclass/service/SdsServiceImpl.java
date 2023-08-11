package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.SdsDAOImpl;
import com.javaclass.domain.SdsVO;


@Service("sdsService")
public class SdsServiceImpl implements SdsService {
	
	@Autowired
	private SdsDAOImpl sdsDAO;
	
	@Override
	public List<SdsVO> sdsList(SdsVO vo) {
		return sdsDAO.sdsList(vo);
	}
}
