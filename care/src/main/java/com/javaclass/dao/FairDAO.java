package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.FairVO;


public interface FairDAO {
	
	public List<FairVO> fairList(FairVO vo);
	
}