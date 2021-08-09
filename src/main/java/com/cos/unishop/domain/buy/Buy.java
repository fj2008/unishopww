package com.cos.unishop.domain.buy;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.user.User;

import lombok.Data;

@Data
@Entity
public class Buy {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;


	@JoinColumn(name = "product_id")
	@ManyToOne
	private Product product;
	
	
	@JoinColumn(name = "user_id")
	@ManyToOne
	private User user;
}
