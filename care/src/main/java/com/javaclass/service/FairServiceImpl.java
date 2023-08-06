package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.FairDAO;
import com.javaclass.dao.FairDAOImpl;
import com.javaclass.domain.FairVO;


@Service("fairService")
public class FairServiceImpl implements FairService {
	
	@Autowired
	private FairDAOImpl fairDAO;
	
	public List<FairVO> getBoardList(FairVO vo) {
		return fairDAO.getBoardList(vo);
	}
}
