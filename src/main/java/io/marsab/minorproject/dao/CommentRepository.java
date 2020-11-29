package io.marsab.minorproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import io.marsab.minorproject.model.Comments;

public interface CommentRepository extends JpaRepository<Comments,Long>{

}
