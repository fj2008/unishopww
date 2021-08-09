package com.cos.unishop.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.buy.Buy;
import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.comment.Comment;
import com.cos.unishop.domain.comment.CommentRepository;
import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MyPageController {

	private final ProductRepository postRepository;
	private final UserRepository userRepository;
	private final PayMentRepository paymetMentRepository;
	private final BuyRepository buyRepository;
	private final CommentRepository commentRepository;
	private final HttpSession session;
	
	//마이페이지로 가는 컨트롤러
	@GetMapping("/myPage")
	public String bucket() {
		return"user/myPage";
	}
	//상품평관리하기로 가는 컨트롤러
	@GetMapping("/CommentsManagement")
	public String CommentsManagement( Model model) {
		User principal =(User) session.getAttribute("principal");
		int userId = principal.getId();
		List<Comment> commentsEntity = commentRepository.mfindAllByUserId(userId);
		
		model.addAttribute("commentsEntity", commentsEntity);
		
		
		return"user/commentsManagement";
	}
	//장바구니로 가는 컨트롤러
	//지금은 페이지만 연결해놓은거
	//나중에 모델에 담에서뿌려야함 ㅇㅋ?
	
	@GetMapping("/bucket")
	public String myPage() {
		return"user/bucket";
	}
	
	//구매목록으로 가는 컨트롤러
	@GetMapping("/payment/{id}")
	public String paymentList(@PathVariable int id, Model model) {
		
		User principal =(User) session.getAttribute("principal");
		int userId = principal.getId();
		List <Payment> paymentEntity =paymetMentRepository.mfindbyUserId(userId);
		System.out.println(paymentEntity.size());
		List<Buy> buyEntity = buyRepository.mfindbyUserBuy(userId);
		System.out.println(buyEntity.size());
		model.addAttribute("buyEntity", buyEntity);
		model.addAttribute("paymentEntity", paymentEntity);
		
		
	
		return"user/paymentList";
	}
}
