package com.javaclass.service;

import com.javaclass.dao.ReserveDAO;
import com.javaclass.domain.ReserveVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReserveServiceImpl implements ReserveService {
    private final ReserveDAO reserveDAO;

    @Autowired
    public ReserveServiceImpl(ReserveDAO reserveDAO) {
        this.reserveDAO = reserveDAO;
    }
    //일정 출력 부분
    @Override
    public List<ReserveVO> getEventList() {
        return reserveDAO.getEventList();
    }
    
    //일정 입력 부분
    public void insertReserve(ReserveVO vo) {
       reserveDAO.insertReserve(vo);
    }
}