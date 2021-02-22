package com.ssafy.happyhouse.model;

public class HouseDealDetailDto {

	int no;
	String city, gugun, dong;
	String aptName;
	String jibun;
	String dealAmount;
	int buildYear, dealYear, dealMonth;
	double lat, lng, area, floor;
	String type;
	String rentMoney;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getDealAmount() {
		return dealAmount;
	}

	public void setDealAmount(String dealAmount) {
		this.dealAmount = dealAmount;
	}

	public String getAptName() {
		return aptName;
	}

	public void setAptName(String aptName) {
		this.aptName = aptName;
	}

	public String getJibun() {
		return jibun;
	}

	public void setJibun(String jibun) {
		this.jibun = jibun;
	}

	public String getRentMoney() {
		return rentMoney;
	}

	public void setRentMoney(String rentMoney) {
		this.rentMoney = rentMoney;
	}

	public int getBuildYear() {
		return buildYear;
	}

	public void setBuildYear(int buildYear) {
		this.buildYear = buildYear;
	}

	public int getDealYear() {
		return dealYear;
	}

	public void setDealYear(int dealYear) {
		this.dealYear = dealYear;
	}

	public int getDealMonth() {
		return dealMonth;
	}

	public void setDealMonth(int dealMonth) {
		this.dealMonth = dealMonth;
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

	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public double getFloor() {
		return floor;
	}

	public void setFloor(double floor) {
		this.floor = floor;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public HouseDealDetailDto(int no, String city, String gugun, String dong, String aptName, String jibun,
			String dealAmount, int buildYear, int dealYear, int dealMonth, double lat, double lng, double area,
			double floor, String type, String rentMoney) {
		super();
		this.no = no;
		this.city = city;
		this.gugun = gugun;
		this.dong = dong;
		this.aptName = aptName;
		this.jibun = jibun;
		this.dealAmount = dealAmount;
		this.buildYear = buildYear;
		this.dealYear = dealYear;
		this.dealMonth = dealMonth;
		this.lat = lat;
		this.lng = lng;
		this.area = area;
		this.floor = floor;
		this.type = type;
		this.rentMoney = rentMoney;
	}

	@Override
	public String toString() {
		return "HouseDealDetailDto [no=" + no + ", city=" + city + ", gugun=" + gugun + ", dong=" + dong
				+ ", dealAmount=" + dealAmount + ", AptName=" + aptName + ", jibun=" + jibun + ", rentMoney="
				+ rentMoney + ", buildYear=" + buildYear + ", dealYear=" + dealYear + ", dealMonth=" + dealMonth
				+ ", lat=" + lat + ", lng=" + lng + ", area=" + area + ", floor=" + floor + ", type=" + type + "]";
	}
}
