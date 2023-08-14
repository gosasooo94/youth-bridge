package com.javaclass.domain;

public class ScheduleVO {
	private String subject;
	private String startDate;
	private String endDate;
	private String memo;
	
	public String getSubject() {
		System.out.println(subject);
		return subject;
	}
	public void setSubject(String subject) {
		System.out.println(subject);
		this.subject = subject;
	}
	public String getStartDate() {
		System.out.println(startDate);
		return startDate;
	}
	public void setStartDate(String startDate) {
		System.out.println(startDate);
		this.startDate = startDate;
	}
	public String getEndDate() {
		System.out.println(endDate);
		return endDate;
	}
	public void setEndDate(String endDate) {
		System.out.println(endDate);
		this.endDate = endDate;
	}
	public String getMemo() {
		System.out.println(memo);
		return memo;
	}
	public void setMemo(String memo) {
		System.out.println(memo);
		this.memo = memo;
	}
	
}
