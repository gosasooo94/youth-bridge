package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.FairDAO;
import com.javaclass.domain.FairVO;
import com.javaclass.dao.FairDAOImpl;


@Service("fairService")
public class FairServiceImpl {
	
	@Autowired
	private FairDAOImpl fairDAO;
	
	public List<FairVO> getBoardList(FairVO vo) {
		return fairDAO.getBoardList(vo);
	}
}
