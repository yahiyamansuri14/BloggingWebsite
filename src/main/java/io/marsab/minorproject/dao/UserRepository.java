package io.marsab.minorproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import io.marsab.minorproject.model.User;

@Repository
public interface UserRepository extends JpaRepository<User,Long>{
	

}
