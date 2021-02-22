package com.ssafy.happyhouse.model;

/**
 * @author yun
 *
 */
public class EnvironmentDto {

	String name; // 기업이름
	String checkdate;// 체크날짜
	String checksido;// 대략위치
	String divide;// 검사 분류
	String checkReason;// 이유
	String address;// 정확한 위치

	public EnvironmentDto(String envName, String checksido, String divide, String checkReason, String address) {
		super();
		this.name = envName;

		this.checksido = checksido;
		this.divide = divide;
		this.checkReason = checkReason;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCheckdate() {
		return checkdate;
	}

	public void setCheckdate(String checkdate) {
		this.checkdate = checkdate;
	}

	public String getChecksido() {
		return checksido;
	}

	public void setChecksido(String checksido) {
		this.checksido = checksido;
	}

	public String getDivide() {
		return divide;
	}

	public void setDivide(String divide) {
		this.divide = divide;
	}

	public String getCheckReason() {
		return checkReason;
	}

	public void setCheckReason(String checkReason) {
		this.checkReason = checkReason;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "EnviromentDto [envName=" + name + ", checkdate=" + checkdate + ", checksido=" + checksido + ", divide="
				+ divide + ", checkReason=" + checkReason + ", address=" + address + "]";
	}

}
