package com.dao;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;

import com.model.UserType;

public interface DaoForLogin extends CrudRepository<UserType, Serializable> {

	UserType findByNameAndPassword(String name, String password);

	
}
