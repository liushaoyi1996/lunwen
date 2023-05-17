package com.tz.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER")
public class User {
	
	private Long id;
    private String userId;
    private String password;
    private String user_Name;
    private String user_Address;
    private String connect;
    
    public User() {
    }

    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)   
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	@Column
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Column
	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}

	@Column
	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}
	@Column
	public String getUser_Address() {
		return user_Address;
	}

	public void setUser_Address(String user_Address) {
		this.user_Address = user_Address;
	}
	@Column
	public String getConnect() {
		return connect;
	}

	public void setConnect(String connect) {
		this.connect = connect;
	}

}
