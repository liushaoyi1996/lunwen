package com.tz.entity;

import java.util.Date;
import java.util.List;

public class Vo {

	private Date day;
	private List schedules;
	public Vo() {
		super();
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public List getSchedules() {
		return schedules;
	}
	public void setSchedules(List schedules) {
		this.schedules = schedules;
	}
	
}
