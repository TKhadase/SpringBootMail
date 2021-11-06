package com.tushar.CustomPropertyeditors;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;

public class date_To_LocalDate_Editor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		System.out.println("date_To_LocalDate_Editor.setAsText():"+text);
		String dateContent[] = text.split("-");
		int yyyy =Integer.parseInt(dateContent[0]) ;
		int mm =Integer.parseInt(dateContent[1]) ;
		int dd =Integer.parseInt(dateContent[2]) ;
		LocalDate ld = LocalDate.of(yyyy, mm, dd);
		setValue(ld);
	}
	
}
