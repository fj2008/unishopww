package com.cos.unishop.domain.product;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.web.multipart.MultipartFile;

import com.cos.unishop.Sex;
import com.cos.unishop.domain.user.User;

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
