package com.javaclass.dao;

import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.stereotype.Repository;

@Repository
public interface ReserveDAO {
	public ArrayList<Calendar> calenList();
}
