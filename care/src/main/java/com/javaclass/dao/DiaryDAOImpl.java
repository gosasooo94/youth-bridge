package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.DiaryVO;

@Repository("diaryDAO")
public class DiaryDAOImpl implements DiaryDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertDiary(DiaryVO vo) {
		System.out.println("===> Mybatis insertDiary() ");
		//System.out.println("제목 : " + vo.getNotetitle() + " 내용 : " + vo.getNotecontent() +" 작성자코드 :" + vo.getMemcode());
		mybatis.insert("DiaryDAO.insertDiary", vo);
	}

	public void updateDiary(DiaryVO vo) {
		System.out.println("===> Mybatis updateDiary() ");
		mybatis.update("DiaryDAO.updateDiary", vo);
	}

	public void deleteDiary(DiaryVO vo) {
		System.out.println("===> Mybatis deleteDiary() ");
		mybatis.delete("DiaryDAO.deleteDiary", vo);
	}

	@Override
	public List<DiaryVO> getdiaryList(HashMap map) {
		// TODO Auto-generated method stub
		return mybatis.selectList("DiaryDAO.getDiaryList", map);
	}

	@Override
	public DiaryVO getDiary(DiaryVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("DiaryDAO.getDiary", vo);
	}
	
	//
	@Override
	public DiaryVO selectDiaryLately(DiaryVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("DiaryDAO.getDiaryLately", vo);
	}

	// 감정분류 (감정그래프) 인서트
	@Override
	public void insertEmotions(DiaryVO vo) {
		// TODO Auto-generated method stub
		System.out.println("감정분류 인서트 다오!!!! "+vo.getNotegood() +" / " + vo.getNotebad() + " / " + vo.getNotecode());
		mybatis.insert("DiaryDAO.insertEmotions", vo);
	}

	




}