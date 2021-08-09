package com.cos.unishop.domain.buy;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.unishop.domain.payment.Payment;

public interface BuyRepository extends JpaRepository<Buy, Integer>{

	
	@Query(value = "SELECT * FROM buy WHERE user_id=:id", nativeQuery = true)
    List <Buy> mfindbyUserBuy(int id);
}
