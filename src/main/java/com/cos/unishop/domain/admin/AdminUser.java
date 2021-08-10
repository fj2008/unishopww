package com.cos.unishop.domain.admin;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.cos.unishop.Role;

import lombok.Data;


@Data
@Entity
public class AdminUser {


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
    
    @Enumerated(EnumType.STRING)
    private Role role;
}
