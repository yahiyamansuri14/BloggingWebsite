package io.marsab.minorproject.controller;

import java.sql.Blob;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import io.marsab.minorproject.model.Post;
import io.marsab.minorproject.model.User;
import io.marsab.minorproject.service.CommentService;
import io.marsab.minorproject.service.PostService;
import io.marsab.minorproject.service.PostServiceImpl;
import io.marsab.minorproject.service.UserServiceImpl;

@RestController
@RequestMapping("/post")
//@SessionAttributes(names= {"usermail","username"})
public class PostController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private PostServiceImpl postServiceImpl;
		
	
	@Autowired
	private PostService postService;
	@Autowired
	private CommentService commentService;

	@RequestMapping("/showpostlist")
	ModelAndView showAllPostByUser(HttpServletRequest request){
		HttpSession session=request.getSession(false);
		User user_session=(User)session.getAttribute("user");
		ModelAndView modelAndView;
		if(user_session==null) {
			modelAndView=new ModelAndView("index");
			//need to replace it with redirect attribute
		}else {
			modelAndView=new ModelAndView("_userpostlist");
			//List<Post> postList=postServiceImpl.fetchAllByUserName(user_session.getEmail());
			List<Post> postList=postServiceImpl.fetchAllByEmail(user_session.getEmail());
			modelAndView.addObject("postList",postList);	
		}
		return modelAndView;	
	}
	@RequestMapping("/getimage")
	public void loadImage(@RequestParam("id") long id,HttpServletResponse response) {
		   Post post=postService.searchPost(id);
		   Blob blob=post.getImage();
		   byte b[]=null;
		   try {
			   b=blob.getBytes(1, (int)blob.length());
			   ServletOutputStream out=response.getOutputStream();
			   out.write(b);
			   out.close();
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		
	}
	
	@RequestMapping("/deletepost")
	ModelAndView deletePostById(@RequestParam("id")long id) {
		postServiceImpl.deletePostById(id);
		return new ModelAndView("redirect:/post/showpostlist");
	}
	@RequestMapping("/editpost")
	public ModelAndView showupdatePost(@RequestParam long id) {
		Optional<Post> optionalPost=postServiceImpl.fetchPostById(id);
		Post post=optionalPost.get();
		ModelAndView modelAndView=new ModelAndView("_editpost");
		modelAndView.addObject("post",post);
		return modelAndView;
	}
	
	@RequestMapping("/showpost")
	public ModelAndView findPostById(@RequestParam("id") long id) {
		Optional<Post> optionalPost=postServiceImpl.fetchPostById(id);
		Post post=optionalPost.get(); 
		ModelAndView modelAndView;
		if(post==null) {
			modelAndView=new ModelAndView("index");
			modelAndView.addObject("message","Post not found!!!");
		}else {
			modelAndView=new ModelAndView("postpage");
			modelAndView.addObject("post",post);
		}
		return modelAndView;
	}
	/*@RequestMapping("/addlikes")
	public ModelAndView addLikesToPost(@RequestParam("id") long post_id) {
				postService.updateLikes(post_id);
				return new ModelAndView("redirect:/post/showpost");
	}
	*/
	/*@RequestMapping("/adddislikes")
	public ModelAndView addDislikesToPost(@RequestParam("id") long post_id) {
				postService.updateDislikes(post_id);
				return new ModelAndView("redirect:/post/showpost");
	}
	*/
	@RequestMapping("/addlikes")
	public Long addLikesToPost(@RequestParam("id") long post_id) {
				return postService.updateLikes(post_id);
				
	}
	@RequestMapping("/adddislikes")
	public Long addDislikesToPost(@RequestParam("id") long post_id) {
				Long dislike=postService.updateDislikes(post_id);
				//return new ModelAndView("redirect:/post/showpost");
				return dislike;
	}
	@RequestMapping("/updatepost")
	public ModelAndView updatePost(@ModelAttribute("post") Post post,@RequestParam("img") MultipartFile file) {
		// will work letter on this one 
		//issue is what is user doesn't want to update the image
		//in this case we will have no multipart file and may be we will get a null pointer exception
		//one thing we can do is keep track of the previous image and first make it auto fill in form
		return null;
	}
	@RequestMapping("/comments")
	public void postComments(@RequestParam("id") long post_id) {
		
	}
	
}
