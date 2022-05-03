package com.flyaway.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "admin")
@Table(name = "admin")
public class Admin {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "uname")
	private String uname;
	
	@Column(name = "password")
	private String password;

	public Admin() {
		
	}

	public Admin(String uname, String password) {
		
		this.uname = uname;
		this.password = password;
	}

	
	public Admin(int id, String uname, String password) {
		
		this.id = id;
		this.uname = uname;
		this.password = password;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "admin [uname=" + uname + ", password=" + password + "]";
	}
	
	
	
	
}
