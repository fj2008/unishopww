package com.cos.unishop.web;

import org.springframework.web.multipart.MultipartFile;

import com.cos.unishop.Sex;

import lombok.Data;

@Data
public class ProductDto {

	private String productname;
	private MultipartFile image;
	private String detail;
	private int price;
	private String size;
	private String category;
	private Sex gender;
	
}
