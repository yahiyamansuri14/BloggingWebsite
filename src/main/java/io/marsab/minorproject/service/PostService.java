package io.marsab.minorproject.service;

import java.util.List;
import java.util.Optional;

import io.marsab.minorproject.model.Post;

public interface PostService {
	public void savePost(Post post);
	public List<Post> showAllPost();
	public List<Post> fetchAllByUserName(String username);
	public void deletePostById(long id);
	public Optional<Post> fetchPostById(long id);
	public Post searchPost(long id);
	public List<Post> fetchAllByEmail(String email);
	public List<Post> fetchAllPostByOrder();
	//public void updateLikes(long id);
	public long updateDislikes(long id);
	public long updateLikes(long id);
}
