package com.tushar.CustomPropertyeditors;

import java.beans.PropertyEditorSupport;
import java.time.LocalTime;

public class time_To_LocalTime_Editor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		System.out.println("time_To_LocalTime_Editor.setAsText():"+text);
		String timeContent[] = text.split(":");
		int hours =Integer.parseInt(timeContent[0]) ;
		int minutes =Integer.parseInt(timeContent[1]) ;
		LocalTime lt = LocalTime.of(hours, minutes);
		setValue(lt);
	}
	
}
