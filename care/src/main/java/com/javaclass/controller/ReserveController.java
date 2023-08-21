package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaclass.domain.ReserveVO;
import com.javaclass.service.ReserveService;

@Controller
public class ReserveController {
    private final ReserveService reserveService;

    @Autowired
    public ReserveController(ReserveService reserveService) {
        this.reserveService = reserveService;
    }
    //일정 나오기
    @GetMapping("/reserve.do")
    public String showCalendar(Model model) {
        List<ReserveVO> eventList = reserveService.getEventList();
        model.addAttribute("eventList", eventList);
        return "reserve"; // Assuming "calendar" is your JSP view name
    }
    //일정 입력
    @RequestMapping(value="/insertReserve.do", method = RequestMethod.POST)
    public String calInsert(ReserveVO vo) {
       reserveService.insertReserve(vo);
       return "reserve";
       
    }
    
}