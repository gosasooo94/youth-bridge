package com.javaclass.domain;

public class ReserveVO {
   private int c_code;
   private int memcode;
   private String title;
   private String startdate;
   private String enddate;
   private String cate;

   public int getC_code() {
      return c_code;
   }

   public void setC_code(int c_code) {
      this.c_code = c_code;
   }

   public int getMemcode() {
      return memcode;
   }

   public void setMemcode(int memcode) {
      this.memcode = memcode;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getStartdate() {
      return startdate;
   }

   public void setStartdate(String startdate) {
      this.startdate = startdate;
   }

   public String getEnddate() {
      return enddate;
   }

   public void setEnddate(String enddate) {
      this.enddate = enddate;
   }

   public String getCate() {
      return cate;
   }

   public void setCate(String cate) {
      this.cate = cate;
   }
   
   
}