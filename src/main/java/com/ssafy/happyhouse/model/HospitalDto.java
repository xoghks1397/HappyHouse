package com.ssafy.happyhouse.model;

public class HospitalDto {


	String sido;
	String sigungu;
	String name;
	String address;

	String phone;
	
	
	public HospitalDto( String sido, String sigungu, String name, String address, 
			String phone) {
		super();
		
		this.sido = sido;
		this.sigungu = sigungu;
		this.name = name;
		this.address = address;
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
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "HospitalDto [sido=" + sido + ", sigungu=" + sigungu + ", name="
				+ name + ", address=" + address + ", phone=" + phone + "]";
	}
	
	
	
	
}
