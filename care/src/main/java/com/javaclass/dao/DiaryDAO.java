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


}
