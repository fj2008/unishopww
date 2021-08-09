package com.cos.unishop.domain.payment;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;



public interface PayMentRepository extends JpaRepository<Payment, Integer>{

	
	 @Query(value = "SELECT * FROM payment WHERE user_id=:id", nativeQuery = true)
	    List <Payment> mfindbyUserId(int id);
	 
	 
//	 @Query(value = "SELECT * FROM post WHERE post_id=:id", nativeQuery = true)
//	    List <Payment> mfindbyPostName(String name);
}
