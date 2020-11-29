package io.marsab.minorproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.marsab.minorproject.model.Post;
import io.marsab.minorproject.model.User;
import io.marsab.minorproject.service.PostService;
import io.marsab.minorproject.service.PostServiceImpl;
import io.marsab.minorproject.service.UserServiceImpl;

@RestController
public class HomeController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private PostServiceImpl postServiceImpl;
	@Autowired
	private PostService postService;
	/*
	 * view display mappings 
	 */
	@RequestMapping("/")
	public ModelAndView homePage() {
		ModelAndView modelAndView=new ModelAndView("index");
		//List<Post> postList=postServiceImpl.showAllPost();
		List<Post> postList=postService.fetchAllPostByOrder();
		modelAndView.addObject("postList",postList);
		return modelAndView;
	}
	@RequestMapping("/showindex")
	public ModelAndView showIndex() {
		ModelAndView modelAndView=new ModelAndView("index");
		//List<Post> postList=postServiceImpl.showAllPost();
		List<Post> postList=postService.fetchAllPostByOrder();
		modelAndView.addObject("postList",postList);
		return modelAndView;
	}
	@RequestMapping("/showlogin")
	public ModelAndView showLogin() {
		ModelAndView modelAndView=new ModelAndView("login");
		return modelAndView;
	}
	@RequestMapping("/showsignup")
	public ModelAndView showSignUp() {
		ModelAndView modelAndView=new ModelAndView("signup");
		return modelAndView;
	}
	@RequestMapping("/showcontactus")
	public ModelAndView showContactUs() {
		 ModelAndView modelAndView=new ModelAndView("contactus");
		 return modelAndView;
	}
	@RequestMapping("/showuserprofile")
	public ModelAndView showUserProfilePage(HttpServletRequest request) {
		//User user_session=(User)request.getSession(false);
		HttpSession session=request.getSession(false);
		User user_session=(User)session.getAttribute("user");
		ModelAndView modelAndView;
		if(user_session==null) {
			modelAndView =new ModelAndView("login");
		}else {
			modelAndView=new ModelAndView("userprofile");
		}
		return modelAndView;
	}
	
}
