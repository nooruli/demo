package com.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.model.Customer;
import com.model.UserType;

public interface Dao extends CrudRepository<Customer, Integer> {

    
	List<Customer> findAll();

}
