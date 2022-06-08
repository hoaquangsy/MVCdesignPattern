package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Product;

public interface  ProductService{
//	
//	  ProductRepository productRepository =new ProductRepository();

	Product delete(Product product);

	Product add(Product product);

	Product update(Product product);

	List<Product> getAll();
}
