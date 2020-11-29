package io.marsab.minorproject.model;

import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;



@Entity
public class Post {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	@NotNull
	private String title;
	@NotNull
	private String content;
	@NotNull
	private Date createdon;
	@NotNull
	private Date updatedon;
	@Column(nullable=false)
	private String username;
	private Blob image;
	@Email
	@Column(nullable=false)
	private String email;
	@Column(nullable=false)
	private Long likes;
	@Column(nullable=false)
	private Long dislikes;
	
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public Long getDislikes() {
		return dislikes;
	}
	public void setDislikes(Long dislikes) {
		this.dislikes = dislikes;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getCreatedon() {
		return createdon;
	}
	public void setCreatedon(Date createdon) {
		this.createdon = createdon;
	}
	public Date getUpdatedon() {
		return updatedon;
	}
	public void setUpdatedon(Date updatedon) {
		this.updatedon = updatedon;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Post(Long id, @NotNull String title, @NotNull String content, @NotNull Date createdon,
			@NotNull Date updatedon, String username, Blob image, @Email String email, Long likes, Long dislikes) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createdon = createdon;
		this.updatedon = updatedon;
		this.username = username;
		this.image = image;
		this.email = email;
		this.likes = likes;
		this.dislikes = dislikes;
	}
	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
		
}
