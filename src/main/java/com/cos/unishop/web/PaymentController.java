package com.cos.unishop.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.buy.Buy;
import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PaymentController {

	private final ProductRepository productRepository;
	private final UserRepository userRepository;
	private final PayMentRepository paymentRepository;
	private final BuyRepository buyRepository;
	private final HttpSession session;
	
	//@RequestBody는 HTTP요청의 body 내용을 자바 객체로 매핑 하는 역할을 한다 
	@PostMapping("/payment")
	public @ResponseBody String payment(@RequestBody Payment payment) {
		
		User principal =(User) session.getAttribute("principal");
		
		Buy buy = new Buy();
		
		payment.setUser(principal);
		System.out.println("유저저장완료");
		
		int postId = Integer.parseInt(payment.getBuyer_postcode()); 
		System.out.println(postId);
		Product product = productRepository.findById(postId).get();
		System.out.println("구매 저장시작");
		buy.setProduct(product);
		buy.setUser(principal);
		buyRepository.save(buy);
		System.out.println("구매저장완료");
		paymentRepository.save(payment);
		
		System.out.println("나 어째 됐냐?");
		return "ok";
	}
	
	
}
