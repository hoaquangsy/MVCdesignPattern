package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Product;
import com.example.demo.service.ProductService;


@Controller
@RequestMapping(path = "product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("/index")
	public String getAll(Model model) {
		List<Product> listProducts=productService.getAll();
		model.addAttribute("products", listProducts);
		return "index";
	}	
	@GetMapping("edit/{id}")
    public String getFormUpdate(@PathVariable(name = "id") Product product, Model model) {
		model.addAttribute("Product", product);
		return "update";
	}
	@GetMapping("delete/{id}")
    public String delete(@PathVariable(name = "id") Product product, Model model) {
		productService.delete(product);
		return "redirect:/product/index";
	}
	@GetMapping("create")
    public String getFormCreate(Model model, Product product) {
		model.addAttribute("Product", product);
		return "add";
	}
	@PostMapping("/add")
	public String add( @ModelAttribute("Product") Product product) {
		productService.add(product);
		return "redirect:/product/index";
	}
	@PostMapping("/update")
	public String update( @ModelAttribute("Product") Product product) {
		productService.update(product);
		return "redirect:/product/index";
	}
}




