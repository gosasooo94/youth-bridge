package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.SdsVO;


public interface SdsService {

	// 글 목록 조회
	List<SdsVO> sdsList(SdsVO vo);

}
