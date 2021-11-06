package com.tushar.CustomPropertyeditors;

import java.beans.PropertyEditorSupport;
import java.time.LocalDateTime;

public class dateTime_To_LocalDateTime_Editor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		System.out.println("dateTime_To_LocalDateTime_Editor.setAsText():"+text);
		
		String dtTime[] = text.split("T");
		String dateContent[] = dtTime[0].split("-");
		int yyyy =Integer.parseInt(dateContent[0]) ;
		int mm =Integer.parseInt(dateContent[1]) ;
		int dd =Integer.parseInt(dateContent[2]) ;
		
		String timeContent[] =  dtTime[1].split(":");
		int hours =Integer.parseInt(timeContent[0]) ;
		int minutes =Integer.parseInt(timeContent[1]) ;
		
		LocalDateTime ldt = LocalDateTime.of(yyyy, mm, dd,hours,minutes);
		setValue(ldt);
	}
	
}
