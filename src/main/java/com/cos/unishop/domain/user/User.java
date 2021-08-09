package com.cos.unishop.domain.user;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.Product;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@Entity
public class User {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;// 프라이머리키

    @Column(unique = true, length = 20)
    private String username;
    private String password;
    private String email;
    private String address;
    private String phonenumber; 
    private String name;
    
    @JsonIgnoreProperties("user")
    @OneToMany(mappedBy = "user")
    private List<Product> products;
    
    
    @JsonIgnoreProperties("user")
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private List<Payment> payments;
}
