package io.marsab.minorproject.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.marsab.minorproject.dao.PostRepository;
import io.marsab.minorproject.model.Post;


@Service
public class PostServiceImpl implements PostService{

	@Autowired
	private PostRepository postRepository;
	@Autowired
	private EntityManager entityManager;
	@Override
	public void savePost(Post post) {
		postRepository.save(post);
	}

	@Override
	public List<Post> fetchAllByUserName(String username) {
		// TODO Auto-generated method stub
		Session session=entityManager.unwrap(Session.class);
		Query query=session.createQuery("From Post where username=:username");
		query.setParameter("username", username);
		ArrayList<Post> posts=(ArrayList<Post>) query.list();
		return posts;
	}
//	@Override
//	public void deletePostById(long id) {
//		 postRepository.deleteById(id);
		// TODO Auto-generated method stub
	 /*Session session=entityManager.unwrap(Session.class);
		//Query query=session.createQuery("delete from Post where id=:id");
		//query.setParameter("id", id);//
		Transaction transaction=session.beginTransaction();
		Post post=session.get(Post.class, id);
		if(post!=null)
			session.delete(post);
		transaction.commit();
		if(transaction!=null)
			transaction.rollback();
		session.close();
		*/	
//	}
	@Override
	public void deletePostById(long id) {
		// TODO Auto-generated method stub
		postRepository.deleteById(id);
	}

	
	 @Override
	 public List<Post> showAllPost() {
	// TODO Auto-generated method stub
	//List<Post> postList=postRepository.findAllPostByDate(new Sort(Sort.Direction.ASC, "id"));
		 return postRepository.findAll();
}

	@Override
	public Optional<Post> fetchPostById(long id) {
		// TODO Auto-generated method stub
		return postRepository.findById(id);
	}

	@Override
	public Post searchPost(long id) {
		// TODO Auto-generated method stub
		Session session=entityManager.unwrap(Session.class);
		Post post=session.get(Post.class, id);
		session.close();
		return post;
	}

	@Override
	public List<Post> fetchAllByEmail(String email) {
		// TODO Auto-generated method stub
		Session session=entityManager.unwrap(Session.class);
		Query query=session.createQuery("From Post where email=:email");
		query.setParameter("email", email);
		ArrayList<Post> posts=(ArrayList<Post>) query.list();
		return posts;
	}

	@Override
	public List<Post> fetchAllPostByOrder() {
		// TODO Auto-generated method stub
		return postRepository.fetchAllPostInOrder();	
	}

	@Override
	public long updateLikes(long id) {
		// TODO Auto-generated method stub
		  Session session=entityManager.unwrap(Session.class);
		  Transaction transaction=session.beginTransaction();
		  //Object post_object=session.load(Post.class, id);
		  //Post post=(Post)post_object;
		  Post post=session.load(Post.class, id);
		  long likes=post.getLikes()+1;
		  //post.setLikes(post.getLikes()+1);
		  post.setLikes(likes);
		  session.update(post);
		  transaction.commit();
		  session.close();
		  return likes;
	}

	@Override
	public long updateDislikes(long id) {
		// TODO Auto-generated method stub
		Session session=entityManager.unwrap(Session.class);
		  Transaction transaction=session.beginTransaction();
		  //Object post_object=session.load(Post.class, id);
		  //Post post=(Post)post_object;
		  Post post=session.load(Post.class, id);
		  //post.setLikes(post.getLikes()+1);
		  long dislike=post.getDislikes()+1;
		  post.setDislikes(dislike);
		  session.update(post);
		  transaction.commit();
		  session.close();
		  return dislike;
	}

	
	
}
