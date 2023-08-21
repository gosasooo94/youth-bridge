package com.javaclass.dao;

import com.javaclass.domain.ReserveVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReserveDAOImpl implements ReserveDAO {
    private final SqlSession sqlSession;
    
    @Autowired
    public ReserveDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
    
    @Autowired
   private SqlSessionTemplate mybatis;
    
    //일정 출력부분
    @Override
    public List<ReserveVO> getEventList() {
        return sqlSession.selectList("ReserveDAO.getEventList");
    }
    
    //일정 입력부분
    public void insertReserve(ReserveVO vo) {
       System.out.println("===>  ReserveMapper insertReserve() 호출");
       mybatis.insert("ReserveDAO.insertReserve", vo);
    }
}