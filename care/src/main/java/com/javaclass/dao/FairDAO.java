package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.FairVO;


public interface FairDAO {
	
	//글 목록 조회
	public List<FairVO> getBoardList(FairVO vo) ;

}