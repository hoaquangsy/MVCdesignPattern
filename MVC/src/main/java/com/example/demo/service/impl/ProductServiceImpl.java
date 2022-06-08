package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Product;
import com.example.demo.repositories.ProductRepository;
import com.example.demo.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<Product> getAll() {
		return productRepository.findAll();
	}

	@Override
	public Product update(Product product) {
		productRepository.save(product);
		return productRepository.save(product);
	}

	@Override
	public Product add(Product product) {
		product.setId(null);
		return productRepository.save(product);
	}

	@Override
	public Product delete(Product product) {
		productRepository.deleteById(product.getId());
		return null;
	}

	

}
