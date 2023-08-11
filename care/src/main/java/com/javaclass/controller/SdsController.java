package com.javaclass.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.SdsVO;
import com.javaclass.service.SdsService;




@Controller
public class SdsController {
	@Autowired
	private SdsService sdsService;
	// 글 목록 검색
	@RequestMapping("/sdsList.do")
	public String sdsList(SdsVO vo, Model model) {
		model.addAttribute("sdsList", sdsService.sdsList(vo));
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
		return "reservation";
	}
	
}
