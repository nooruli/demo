package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.dao.Dao;
import com.dao.DaoForLogin;
import com.model.Customer;
import com.model.UserType;
@org.springframework.stereotype.Service
public class Service implements ServiceInterface {

@Autowired
Dao dao;
@Autowired
DaoForLogin dig;
public List<Customer> findAll() {
	List<Customer> ls=(List<Customer>) dao.findAll();
	return ls;
}

public void save(Customer customer) {
	dao.save(customer);
	
}

public UserType findByNameAndPassword(String name, String password) {
	return dig.findByNameAndPassword(name,password);
}

	
}
