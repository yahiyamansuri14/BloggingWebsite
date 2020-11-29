package io.marsab.minorproject.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import io.marsab.minorproject.model.Post;

@Repository
public interface PostRepository extends JpaRepository<Post,Long> {

	 @Query("From Post ORDER BY createdon DESC")
	 public List<Post> fetchAllPostInOrder(); 
	
}
