package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;

public interface AdminService 
{
	public List<Customer> viewAllCustomer();
	public Admin checkAdminLogin(String uname,String pwd);
	public long customercount();

}
