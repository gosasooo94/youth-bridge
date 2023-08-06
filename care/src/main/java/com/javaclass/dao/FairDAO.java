package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.FairVO;


public interface FairDAO {
	
	public List<FairVO> getBoardList(FairVO vo);
	
}