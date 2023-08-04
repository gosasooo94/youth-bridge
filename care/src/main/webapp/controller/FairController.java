package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.FairVO;
import com.javaclass.service.FairService;


@Controller
public class FairController {
	@Autowired
	private FairService FairService;

		//
		@RequestMapping("/{step}.do")
		public String viewPage(@PathVariable String step) {
			return step;
		}
	
		// 글 목록 검색
		@RequestMapping("/getBoardList.do")
		public void getBoardList(FairVO vo, Model model) {
			
			model.addAttribute("boardList", FairService.getBoardList(vo));
			// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
			// return "views/getBoardList.jsp"; // View 이름 리턴
		}
	

	}
