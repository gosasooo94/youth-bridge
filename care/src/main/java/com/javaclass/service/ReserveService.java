package com.javaclass.service;

import com.javaclass.domain.ReserveVO;

import java.util.List;

public interface ReserveService {
   //일정 출력 부분
    List<ReserveVO> getEventList();
    
    //일정 입력 부분
    public void insertReserve(ReserveVO vo);
}