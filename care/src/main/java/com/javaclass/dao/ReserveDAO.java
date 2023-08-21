package com.javaclass.dao;

import com.javaclass.domain.ReserveVO;

import java.util.List;

public interface ReserveDAO {
   // 풀캘린더에 일정 나오는 부분
    List<ReserveVO> getEventList();
    
    // 일정 입력 부분
    public void insertReserve(ReserveVO vo);
}