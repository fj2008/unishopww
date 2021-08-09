package com.cos.unishop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.product.ProductRepository;

@Service
public class Files {
	@Autowired
	ProductRepository postRepository;
	
	
	public void save(Files files) {
		Product post =new Product();
		
	}
}
