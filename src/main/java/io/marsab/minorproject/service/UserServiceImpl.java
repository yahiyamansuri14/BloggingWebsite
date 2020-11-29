package io.marsab.minorproject.service;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.marsab.minorproject.dao.UserRepository;
import io.marsab.minorproject.model.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private EntityManager entityManager;
	@Override
	public void saveUser(User user) {
		   userRepository.save(user);
	}
	@Override
	public User getUser(User user) {
//		String usermail=user.getEmail();
//		String pwd=user.getPassword();
		Session session=entityManager.unwrap(Session.class);
		Query query=session.createQuery("From User where email=:usermail and password=:pwd");
		query.setParameter("usermail", user.getEmail());
		query.setParameter("pwd", user.getPassword());
		List list=query.list();
		User user1=(User)list.get(0);
		return user1;
	}
	@Override
	public User getUserByEmail(User user) {
		// TODO Auto-generated method stub
		Session session=entityManager.unwrap(Session.class);
		Query query=session.createQuery("From User where email=:usermail");
		query.setParameter("usermail",user.getEmail());
		List list=query.list();
		User user_temp=(User)list.get(0);
		return user_temp;
	}
	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		List<User> user=userRepository.findAll();
		return user;
	}
	@Override
	public int deleteUser(User user) {
		// TODO Auto-generated method stub
		int i=1;
		try {
		userRepository.deleteById(user.getId());
		}catch(Exception e) {
			e.printStackTrace();
			i=0;
		}
		return i;
	}
	
	
}
