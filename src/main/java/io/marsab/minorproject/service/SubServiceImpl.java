package io.marsab.minorproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.marsab.minorproject.dao.SubRepository;
import io.marsab.minorproject.model.Subscriber;

@Service
public class SubServiceImpl implements SubsService {

	@Autowired
	private SubRepository subRepository;
	@Override
	public int saveSubscriber(Subscriber sub) {
		try {
			subRepository.save(sub);
		}catch(Exception e) {
			return 0;
		}
		return 1;
	}

}
