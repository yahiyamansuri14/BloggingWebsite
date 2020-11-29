package io.marsab.minorproject.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Comments {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String user_id;
	private String post_id;
	private String comment;
	private Date comment_date;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPost_id() {
		return post_id;
	}
	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	public Comments(long id, String user_id, String post_id, String comment, Date comment_date) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.post_id = post_id;
		this.comment = comment;
		this.comment_date = comment_date;
	}
	public Comments() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
