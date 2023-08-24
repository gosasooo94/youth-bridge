package com.javaclass.domain;

import java.util.Date;

public class FreeBoardVO {
    private int freecode;
    private String freetitle;
    private Date freedate;
    private String freecontent;
    private int memcode;
    private MemberVO member;
    
	public MemberVO getMember() {
		return member;
	}
	public void setMember(MemberVO member) {
		this.member = member;
	}
	public int getFreecode() {
		return freecode;
	}
	public void setFreecode(int freecode) {
		this.freecode = freecode;
	}
	public String getFreetitle() {
		return freetitle;
	}
	public void setFreetitle(String freetitle) {
		this.freetitle = freetitle;
	}
	public Date getFreedate() {
		return freedate;
	}
	public void setFreedate(Date freedate) {
		this.freedate = freedate;
	}
	public String getFreecontent() {
		return freecontent;
	}
	public void setFreecontent(String freecontent) {
		this.freecontent = freecontent;
	}
	public int getMemcode() {
		return memcode;
	}
	public void setMemcode(int memcode) {
		this.memcode = memcode;
	}

    
}
