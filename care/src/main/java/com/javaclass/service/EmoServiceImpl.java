package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.EmoDAO;
import com.javaclass.domain.EmoVO;

@Service("emoService")
public class EmoServiceImpl implements EmoService {
	@Autowired
	private EmoDAO emoDAO;

	@Override
	public List<EmoVO> getemoList(EmoVO vo) {
		return emoDAO.getemoList(vo);
	}

	@Override
	public List<EmoVO> getEmo(EmoVO vo) {
		// TODO Auto-generated method stub
		return emoDAO.getEmo(vo);
	}

}
