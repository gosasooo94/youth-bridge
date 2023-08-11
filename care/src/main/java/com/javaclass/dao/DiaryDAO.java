package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.DiaryVO;

public interface DiaryDAO {
	public void insertDiary(DiaryVO vo);

	public void updateDiary(DiaryVO vo) ;

	public void deleteDiary(DiaryVO vo);

	public List<DiaryVO> getdiaryList(HashMap map);

	public DiaryVO getDiary(DiaryVO vo);

	// 감정분류 (감정그래프) 인서트
	public void insertEmotions(DiaryVO vo);

	public DiaryVO selectDiaryLately(DiaryVO vo);


}
