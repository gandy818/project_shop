package member.model;

import java.util.Date;

public class Member {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String address;
	private String email;
	private Date regDate;
	
	public Member(String id, String password, String name, String phone, String address, String email, Date regDate) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.regDate = regDate;
	}

	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}


	public String getName() {
		return name;
	}


	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public Date getRegDate() {
		return regDate;
	}
	
	public boolean matchPassword(String pwd) {
		return password.contentEquals(pwd);
	}
}
