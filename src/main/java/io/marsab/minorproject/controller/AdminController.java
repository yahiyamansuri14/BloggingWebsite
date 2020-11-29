package io.marsab.minorproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.marsab.minorproject.model.Post;
import io.marsab.minorproject.model.User;
import io.marsab.minorproject.service.PostService;
import io.marsab.minorproject.service.UserService;
import io.marsab.minorproject.utility.EmailSenderImpl;
import io.marsab.minorproject.utility.Response;

@RequestMapping("/admin")
@RestController
public class AdminController {
	@Autowired
	private PostService postService;
	@Autowired
	private UserService userService;
	private static final String ADMIN_MAIL="admin@gmail.com";
	private static final String ADMIN_SECUREKEY="admin@123";
	private static final String ADMIN_PWD="admin12345";
	@Autowired
	private EmailSenderImpl emailSenderImpl;
	@RequestMapping("/login")
	public ModelAndView adminLogin(@RequestParam("adminemail") String mail,@RequestParam("securekey") String skey, @RequestParam("adminpwd") String pwd) {
		ModelAndView modelAndView;
		if(mail.equals(ADMIN_MAIL) && skey.equals(ADMIN_SECUREKEY) && pwd.equals(ADMIN_PWD)) {
			List<User> userList=userService.getAllUser();
			modelAndView=new ModelAndView("admin-dashboard");
			modelAndView.addObject("users",userList);
		}else {
			modelAndView=new ModelAndView("_adminlogin");
			modelAndView.addObject("MESSAGE","Pls Enter Right Credentials");
		}
		return modelAndView;
	}
	@RequestMapping("/showadminlogin")
	public ModelAndView showAdminLogin() {
		 ModelAndView modelAndView=new ModelAndView("_adminlogin");
		return modelAndView;
	}
	
	@RequestMapping("/showdashboard")
	public ModelAndView returnAllUser() {
			List<User> userList=userService.getAllUser();
			ModelAndView modelAndView=new ModelAndView("admin-dashboard");
			modelAndView.addObject("users",userList);
			return modelAndView;
	}
	@RequestMapping("/admin-postlist")
	public ModelAndView showAllPostByUserAdmin(@RequestParam("mail") String usermail){
		ModelAndView modelAndView;
		if(usermail==null) {
			modelAndView=new ModelAndView("admin-dashboard");
			modelAndView.addObject("string","no post for this user");
			//need to replace it with redirect attribute
		}else {
			modelAndView=new ModelAndView("admin-userpostlist");
			//List<Post> postList=postServiceImpl.fetchAllByUserName(usermail);
			List<Post> postList=postService.fetchAllByEmail(usermail);
			modelAndView.addObject("postList",postList);	
		}
		return modelAndView;	
	}
	@RequestMapping("/delete")
	public ModelAndView deleteUserAccount(@RequestParam("id") long id) {
		User user=new User();
		user.setId(id);
		int result=userService.deleteUser(user);
		if(result==1) {
			return new ModelAndView("redirect:/admin/showdashboard");
		}else {
			ModelAndView modelAndView=new ModelAndView("admin-dashboard");
			modelAndView.addObject("delete_message","there is some error while deleting the user");
			//return new ModelAndView("admin-dashboard");
			return modelAndView;
		}
	}
	
	@RequestMapping("/ajax/delete")
	public Response deleteUserAccoungAjax(@RequestParam("id") long id) {
			User user=new User();
			int result=userService.deleteUser(user);
			if(result==1) {
				return new Response("success",user);
			}
			else {
				return new Response("failed",user);
			}
	}
	@RequestMapping("/removal")
	public  ModelAndView sendAccountRemovalWarning(@RequestParam("email")String email,@RequestParam("username") String username) {
			 emailSenderImpl.sendRemovalWarning(email, username);
			 return new ModelAndView("redirect:/admin/showdashboard");
	}
}
