package io.marsab.minorproject.controller;

import java.sql.Blob;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.engine.jdbc.BlobProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import io.marsab.minorproject.model.Post;
import io.marsab.minorproject.model.User;
import io.marsab.minorproject.service.PostServiceImpl;
import io.marsab.minorproject.service.UserServiceImpl;

@RestController
@RequestMapping("/user")
//@SessionAttributes(names = { "usermail", "username"})
public class UserController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private PostServiceImpl postServiceImpl;

	
	@RequestMapping("/signup")
	public ModelAndView signup(@RequestParam("username") String username, @RequestParam("usermail") String usermail,
			@RequestParam("userpwd") String userpwd) {
		ModelAndView modelAndView = new ModelAndView("index");
		User user = new User();
		user.setEmail(usermail);
		user.setPassword(userpwd);
		user.setUsername(username);
		userServiceImpl.saveUser(user);
		//modelAndView.addObject("usermail",usermail);
		//modelAndView.addObject("username",username);
		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("usermail") String email, @RequestParam("userpwd") String pwd,
			HttpServletRequest request) {
		ModelAndView modelAndView;
		User user = new User();
		user.setEmail(email);
		user.setPassword(pwd);
		User user_temp = userServiceImpl.getUser(user);
		if (user_temp == null) {
			modelAndView = new ModelAndView("login");
		} else {

			modelAndView = new ModelAndView("index");
			request.getSession().setAttribute("user", user);
			List<Post> postList = postServiceImpl.showAllPost();
			modelAndView.addObject("postList", postList);
		//	//modelAndView.addObject("user", user);
		 //   modelAndView.addObject("usermail", email);
		 //   modelAndView.addObject("username", user_temp.getUsername());
		}
		return modelAndView;
	}



	@RequestMapping("/showpostpage")
	public ModelAndView showPostPage(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		User user_session=(User)session.getAttribute("user");
		ModelAndView modelAndView;
		if(user_session==null) {
			 modelAndView = new ModelAndView("login");
		}else {
			modelAndView = new ModelAndView("post");
		}
		return modelAndView;
	}
	
	// @SessionAttribute("username") String username,
/*	@RequestMapping("/savepost")
	public ModelAndView savePost(@SessionAttribute("username") String username,@SessionAttribute("usermail") String usermail,
			@RequestParam("post_title") String title, @RequestParam("post_content") String content,@RequestParam("img") MultipartFile file) {
		byte b[]=null;
		try {
		b=file.getBytes();
		}catch(Exception e) {
			e.printStackTrace();
		}
		Blob blob=BlobProxy.generateProxy(b);
		Post post = new Post();
		post.setImage(blob);
		post.setUsername(username);
		post.setTitle(title);
		post.setContent(content);
		post.setCreatedon(new Date());
		post.setUpdatedon(new Date());
		post.setEmail(usermail);
		postServiceImpl.savePost(post);
		ModelAndView modelAndView = new ModelAndView("index");
		return modelAndView;
	}
*/
	@RequestMapping("/savepost")
	public ModelAndView savePost(@RequestParam("post_title") String title, @RequestParam("post_content") String content,@RequestParam("img") MultipartFile file, HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		User user_session=(User)session.getAttribute("user");
		byte b[]=null;
		try {
		b=file.getBytes();
		}catch(Exception e) {
			e.printStackTrace();
		}
		Blob blob=BlobProxy.generateProxy(b);
		Post post = new Post();
		post.setImage(blob);
		//post.setUsername(username);
		post.setUsername(user_session.getUsername());
		//post.setUsername("abc");
		//SimpleDateFormat sd=new SimpleDateFormat("dd/MM/yyyy");
		post.setTitle(title);
		post.setContent(content);
		post.setCreatedon(new Date());
		post.setUpdatedon(new Date());
		//post.setEmail(usermail);
		post.setEmail(user_session.getEmail());
		long likes=0;long dislikes=0;
		post.setLikes(likes);
		post.setDislikes(dislikes);
		//post.setEmail("abc@gmail.com");
		postServiceImpl.savePost(post);
		//ModelAndView modelAndView = new ModelAndView("index");
		return new ModelAndView("redirect:/showindex");
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request) {
		 request.getSession(false).invalidate();
		 return new ModelAndView("forward:/showindex");

	}
/*
	@RequestMapping("/userprofile")
	public ModelAndView showUserProfile(@SessionAttribute String username, @SessionAttribute String usermail) {
		if (username == null && usermail == null) {
			ModelAndView modelAndView = new ModelAndView("error");
			return modelAndView;
		} else {
			User user_temp=new User();
			user_temp.setEmail(usermail);
			User user=userServiceImpl.getUserByEmail(user_temp);
			ModelAndView modelAndView = new ModelAndView("_userprofile");
			modelAndView.addObject("user",user);
			return modelAndView;
		}
	}
*/
	@RequestMapping("/userprofile")
	public ModelAndView showUserProfile(HttpServletRequest request) {
		 User user_session=(User)request.getSession(false);
		if (user_session==null) {
			ModelAndView modelAndView = new ModelAndView("error");
			return modelAndView;
		} else {
			User user_temp=new User();
			user_temp.setEmail(user_session.getEmail());
			User user=userServiceImpl.getUserByEmail(user_temp);
			ModelAndView modelAndView = new ModelAndView("_userprofile");
			modelAndView.addObject("user",user);
			return modelAndView;
		}
	}
	// edit,delete,update post
	//User Profile Views
	@RequestMapping("/showraiseconcern")
	public ModelAndView showRaiseConcern(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		User user_session=(User)session.getAttribute("user");
		if(user_session==null) {
			return new ModelAndView("redirec:/showlogin");
		}else {
			ModelAndView modelAndView=new ModelAndView("raiseconcern");
			return modelAndView;
		}
	} 
}
