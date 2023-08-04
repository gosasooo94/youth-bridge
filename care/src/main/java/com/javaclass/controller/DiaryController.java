package com.javaclass.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.DiaryVO;
import com.javaclass.service.DiaryService;

@Controller
public class DiaryController {

	@Autowired
	private DiaryService diaryService;

	// 일기장 전체 리스트 가져오기
	@RequestMapping(value = "/diary.do")
	public void getDiaryList(String searchCondition, String searchKeyword, Model model) throws IOException {
		System.out.println("일기장 리스트 옴!!!" + searchCondition + " " + searchKeyword + "");
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);

		model.addAttribute("deleteList", diaryService.getdiaryList(map));

	}

	// 글 상세 조회
	@RequestMapping("/diary_see.do")
	public void getBoard(DiaryVO vo, Model model) {
		//System.out.println("글 상세 조회 옴!!" + " notecode글코드 :"+ vo.getNotecode() + " memcode회원번호 " + vo.getMemcode());
		model.addAttribute("diary", diaryService.getDiary(vo)); // Model 정보 저장
	}

	// 일기장 등록
	@RequestMapping(value = "/insertDiary.do")
	public String inserDiary(DiaryVO vo, Model model) throws IOException {

		diaryService.insertDiary(vo);

		return "redirect:/diary.do";
	}

	// 일기장 수정
	@RequestMapping("/updateDiary.do")
	public String updateDiary(@ModelAttribute("diary") DiaryVO vo) { // BoardVO board
		//System.out.println("일기장 수정하기 옴!!" + " notecode글코드 :" + vo.getNotecode() + " memcode회원번호 " + vo.getMemcode());
		diaryService.updateDiary(vo);
		return "redirect:/diary.do";
	}

	// 일기장 삭제
	@RequestMapping("/deleteDiary.do")
	public String deleteDiary(DiaryVO vo) {
		System.out.println("일기장 삭제하기 옴!! 글번호notecode" + vo.getNotecode());
		diaryService.deleteDiary(vo);
		return "redirect:/diary.do";
	}

}
