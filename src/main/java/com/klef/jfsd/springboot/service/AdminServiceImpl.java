package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;

@Service

public class AdminServiceImpl implements AdminService
{
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Override
	public List<Customer> viewAllCustomer() {
		// TODO Auto-generated method stub
		return customerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}
	@Override
	public long customercount() {
		// TODO Auto-generated method stub
		return customerRepository.count();
	}
	@Override
	public String deleteCustomer(int id) {
		customerRepository.deleteById(id);
		return "Customer deleted successfully";
	}
	@Autowired
	private ProductRepository productrepository;
	@Override
	public Customer displayCustomerByID(int id) {
		return customerRepository.findById(id).get();
	}
	@Override
	public String addProduct(Product product) 
	{
		productrepository.save(product);
		return "product Added successfully";
	}
	@Override
	public List<Product> viewAllProducts() 
	{
		return productrepository.findAll();
	}
	@Override
	public Product displayProductById(int pid) {
		return productrepository.findById(pid).get();
	}

}
