package io.marsab.minorproject.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import io.marsab.minorproject.model.Subscriber;

@Repository
public interface SubRepository extends CrudRepository<Subscriber,Long>{

}
