package com.ssafy.happyhouse.model;

public class PresiteDto {
	

	String sido;
	String sigungu;
	String name;
	String address;
	String week;
	String saturday;
	String weekend;
	String phone;
	
	
	
	
	public PresiteDto( String sido, String sigungu, String name, String address,
			String week, String saturday, String weekend, String phone) {
		super();
	
		this.sido = sido;
		this.sigungu = sigungu;
		this.name = name;
		this.address = address;
		this.week = week;
		this.saturday = saturday;
		this.weekend = weekend;
		this.phone = phone;
	}

	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getSaturday() {
		return saturday;
	}
	public void setSaturday(String saturday) {
		this.saturday = saturday;
	}
	public String getWeekend() {
		return weekend;
	}
	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	@Override
	public String toString() {
		return "PresiteDto [sido=" + sido + ", sigungu="
				+ sigungu + ", name=" + name + ", address=" + address + ", week=" + week + ", saturday=" + saturday
				+ ", weekend=" + weekend + ", phone=" + phone + "]";
	}
	
	

}
