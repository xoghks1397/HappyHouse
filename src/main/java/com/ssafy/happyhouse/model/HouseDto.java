package com.ssafy.happyhouse.model;

public class HouseDto {
	private int num;
	private String dong;
	private String aptName;
	private int code;
	private int buildYear;
	private String jibun;
	private double lat;
	private double lng;
	private String img;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getAptName() {
		return aptName;
	}

	public void setAptName(String aptName) {
		this.aptName = aptName;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getBuildYear() {
		return buildYear;
	}

	public void setBuildYear(int buildYear) {
		this.buildYear = buildYear;
	}

	public String getJibun() {
		return jibun;
	}

	public void setJibun(String jibun) {
		this.jibun = jibun;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public HouseDto(int num, String dong, String aptName, int code, int buildYear, String jibun, double lat, double lng,
			String img) {
		super();
		this.num = num;
		this.dong = dong;
		this.aptName = aptName;
		this.code = code;
		this.buildYear = buildYear;
		this.jibun = jibun;
		this.lat = lat;
		this.lng = lng;
		this.img = img;
	}

	@Override
	public String toString() {
		return "AptDto [num=" + num + ", dong=" + dong + ", AptName=" + aptName + ", code=" + code + ", buildYear="
				+ buildYear + ", jibun=" + jibun + ", lat=" + lat + ", lng=" + lng + ", img=" + img + "]";
	}
}
