package io.marsab.minorproject.model;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;


@Entity
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long Id;
	@Column(nullable=false)
	private String username;
	@NotNull
	private String password;
	@Column(unique=true, nullable=false)
	private String email;
	public Long getId() {
		return Id;
	}
	
	public void setId(Long id) {
		Id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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

	public User(Long id, @NotNull String username, @NotNull String password, String email) {
		super();
		Id = id;
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	 
}