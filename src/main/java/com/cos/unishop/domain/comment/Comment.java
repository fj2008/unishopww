package com.cos.unishop.domain.comment;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.user.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@Entity
public class Comment {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;// 프라이머리키
	
	private String registrationtime;//등록일
	private String productcs;//상품평
	private String score;//만족도 점수
    private String sizecs; //사이즈 만족도
    private String colorcs;// 색감 만족도
	private String image;
	
	@JsonIgnoreProperties({"product"})
	@JoinColumn(name = "user_id")
	@ManyToOne
	private User user;
	
	
	@JsonIgnoreProperties({"user"})
	@JoinColumn(name = "product_id")
	@ManyToOne
	private Product product;


}
