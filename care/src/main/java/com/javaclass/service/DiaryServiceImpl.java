package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.DiaryDAO;
import com.javaclass.domain.DiaryVO;


@Service("diaryService")
public class DiaryServiceImpl implements DiaryService {
	
	@Autowired
	private DiaryDAO diaryDAO;

	public void insertDiary(DiaryVO vo) {
		System.out.println("인서트 서비스 옴 : " + vo.getNotetitle() + vo.getNotecontent() + vo.getNotesun());
		diaryDAO.insertDiary(vo);
	}

	public void updateDiary(DiaryVO vo) {
		diaryDAO.updateDiary(vo);
	}

	public void deleteDiary(DiaryVO vo) {
		diaryDAO.deleteDiary(vo);
	}

	@Override
	public List<DiaryVO> getdiaryList(HashMap map) {
		// TODO Auto-generated method stub
		return diaryDAO.getdiaryList(map);
	}

	@Override
	public DiaryVO getDiary(DiaryVO vo) {
		return diaryDAO.getDiary(vo);
		
	}


}