package com.javaclass.service;

import java.util.List;
import java.util.HashMap;

import com.javaclass.domain.DiaryVO;

public interface DiaryService {
	// 일기등록
	void insertDiary(DiaryVO vo);

	// 일기 수정
	void updateDiary(DiaryVO vo);

	// 일기 삭제
	void deleteDiary(DiaryVO vo);

	// 일기 전체 조회
	List<DiaryVO> getdiaryList(HashMap map);

	// 일기 상세보기
	public DiaryVO getDiary(DiaryVO vo);

	

}
