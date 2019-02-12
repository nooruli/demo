package com.service;

import java.util.List;

import com.model.Customer;

public interface ServiceInterface {
	public List<Customer> findAll();

	public void save(Customer customer);

}
