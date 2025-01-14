package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminservice;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		 long count=adminservice.customercount();
	        mv.addObject("count", count);
		return mv;
	}
	
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallcustomers");
		 long count=adminservice.customercount();
	        mv.addObject("count", count);
		List<Customer> customers=adminservice.viewAllCustomer();
		mv.addObject("customerlist",customers);
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    String auname = request.getParameter("auname");
	    String apwd = request.getParameter("apwd");
	    Admin admin = adminservice.checkAdminLogin(auname, apwd);
	    if (admin != null) {
	        mv.setViewName("adminhome");
	        long count=adminservice.customercount();
	        mv.addObject("count", count);
	    } else {
	        mv.setViewName("adminloginfail");
	        mv.addObject("message", "Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("deletecustomer")
	public ModelAndView deletecustomer()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletecustomer");
		
		List<Customer> customers=adminservice.viewAllCustomer();
		mv.addObject("customerlist",customers);
		return mv;
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam int id)
	{
		adminservice.deleteCustomer(id);
		return "redirect:/deletecustomer";
	}
	
	@GetMapping("viewcustomerbyid")
	public ModelAndView viewcustomerbyid()
	{	
		ModelAndView mv=new ModelAndView();
		
		List<Customer> customers=adminservice.viewAllCustomer();
		mv.addObject("customerlist",customers);
		
		mv.setViewName("viewcustomerbyid");
		return mv;
	}


	

	@PostMapping("displaycustomer")
	public ModelAndView displaycustomer(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		
		Customer customer=adminservice.displayCustomerByID(id);
		
		ModelAndView mv=new ModelAndView("displaycustomer");
		mv.addObject("c",customer);
		
		return mv;
	}
	
	//image related
	@GetMapping("addproduct")
	public String addproduct()
	{
		return "addproduct";
	}
	
	@PostMapping("insertproduct")
	public ModelAndView insertProduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) 
	        throws IOException,SQLException
	{
		String name=request.getParameter("pname");
		double cost=Double.parseDouble(request.getParameter("pcost"));
		String description=request.getParameter("pdescription");
		
		byte[] bytes=file.getBytes();
		Blob blob=new javax.sql.rowset.serial.SerialBlob(bytes);
		Product p=new Product();
		p.setCost(cost);
		p.setDescription(description);
		p.setName(name);
		p.setImage(blob);
		
		String message=adminservice.addProduct(p);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("productsuccess");
		mv.addObject("message",message);
		return mv;
	}
	
	@GetMapping("viewallproducts")
	public ModelAndView viewallproducts() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallproducts");
		List<Product> products=adminservice.viewAllProducts();
		mv.addObject("products",products);
		return mv;
	}
	
	
	@GetMapping("displayproductimage")
	public ResponseEntity<byte[]> displayproductimage(@RequestParam int id) throws SQLException
	{
		Product product=adminservice.displayProductById(id);
		
		byte[] imagebytes = null;
		imagebytes=product.getImage().getBytes(1,(int)product.getImage().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagebytes);
		
	}


}
