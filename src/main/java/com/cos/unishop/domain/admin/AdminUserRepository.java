package com.cos.unishop.domain.admin;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.unishop.domain.user.User;

public interface AdminUserRepository extends JpaRepository<AdminUser, Integer>{
	  @Query(value = "SELECT id,username,address,email,null password,phonenumber,name,role FROM admin_user WHERE username=:username AND password=:password", nativeQuery = true)
	    AdminUser mAdminLogin(String username, String password);
	  
	  
	  @Query(value = "SELECT * FROM admin_user WHERE phonenumber=:phonenumber", nativeQuery = true)
	  AdminUser mAdminPhoneNumber(String phonenumber);
}
