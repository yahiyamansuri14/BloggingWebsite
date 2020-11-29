package io.marsab.minorproject.model;

import java.sql.Blob;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserProfile {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long profile_id;
	private String user_id;
	private String user_email;
	private String firstname;
	private String lastname;
	private Date dob;
	private String about;
	private Blob profile_image;
	public long getProfile_id() {
		return profile_id;
	}
	public void setProfile_id(long profile_id) {
		this.profile_id = profile_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public Blob getProfile_image() {
		return profile_image;
	}
	public void setProfile_image(Blob profile_image) {
		this.profile_image = profile_image;
	}
	public UserProfile(long profile_id, String user_id, String user_email, String firstname, String lastname, Date dob,
			String about, Blob profile_image) {
		super();
		this.profile_id = profile_id;
		this.user_id = user_id;
		this.user_email = user_email;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.about = about;
		this.profile_image = profile_image;
	}
	public UserProfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
