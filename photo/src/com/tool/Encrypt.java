package com.tool;

import java.text.DateFormat;
import java.util.Date;

public class Encrypt {
	public static String currentlyTime(){
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL);
		return dateFormat.format(date);
	}
}
