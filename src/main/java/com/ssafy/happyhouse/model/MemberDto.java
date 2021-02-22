package com.ssafy.happyhouse.model;

public class MemberDto {
	private String name;
	private String password;
	private String email;
	private String address;

	public MemberDto(String name, String password, String email, String address) {
		super();

		setName(name);
		setPassword(password);
		setEmail(email);
		setAddress(address);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAddress(){
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "비밀번호는 가려집니다. [name=" + name + ", password=" + password + ", email=" + email + ", address=" + address + "]";
	}
}
