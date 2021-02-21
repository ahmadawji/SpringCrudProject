package com.emergencyaid.prototype;

public class User {
	
	private String username;
	private String password;
	private String fname;
	private String lname;
	private String sex;
	private String bdate;
	private String city;
	
	
	
	public User() {
		super();
	}



	public User(String username, String firstName, String lastName, String sex, String date, String city) {
		super();
		this.username = username;
		this.fname = firstName;
		this.lname = lastName;
		this.sex = sex;
		this.bdate = date;
		this.city = city;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}





	public String getFname() {
		return fname;
	}



	public void setFname(String fname) {
		this.fname = fname;
	}



	public String getLname() {
		return lname;
	}



	public void setLname(String lname) {
		this.lname = lname;
	}



	public String getBdate() {
		return bdate;
	}



	public void setBdate(String bdate) {
		this.bdate = bdate;
	}



	public String getPassword() {
		return password;
	}
	
	
	
	public void setPassword(String password) {
		this.password = password;
	}


	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}





	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	
	
	
	

}
