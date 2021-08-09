package com.cos.unishop.web;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.comment.Comment;
import com.cos.unishop.domain.comment.CommentRepository;
import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;
import com.cos.unishop.utils.MyPath;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class CommentController {

	private final ProductRepository productRepository;
	private final UserRepository userRepository;
	private final PayMentRepository paymetMentRepository;
	private final BuyRepository buyRepository;
	private final CommentRepository commentRepository;
	private final HttpSession session;
	
	
	@PostMapping("/commentSave")
	public String commentSave(CommnetDto commentDto) {
		System.out.println(commentDto.getImage());
		//저장해야하는거
		//등록일자
		Comment comment = new Comment();
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
		Date time = new Date();
				
		String time1 = format2.format(time);
						
		System.out.println(time1);
		comment.setRegistrationtime(time1);
		System.out.println("등록 시간 저장완료");
		//등록자(user_id)
		User principal =(User) session.getAttribute("principal");
		comment.setUser(principal);
		System.out.println("등록자 저장완료");
		//post_id
		Product product = productRepository.findById(commentDto.getProductId()).get();
		comment.setProduct(product);
		System.out.println("상품 정보 저장완료");
		
		//이미지 저장
		UUID uuid = UUID.randomUUID();
		
		String imageFileName = uuid + "_"+commentDto.getImage().getOriginalFilename();
		System.out.println(imageFileName);
		Path imagePath = Paths.get(MyPath.IMAGEPATH + imageFileName);
		
		try {
			Files.write(imagePath, commentDto.getImage().getBytes());
			comment.setImage(imageFileName);
			System.out.println("이미지 저장완료");
			comment.setColorcs(commentDto.getColorcs());
			comment.setProductcs(commentDto.getProductcs());
			comment.setScore(commentDto.getScore());
			comment.setSizecs(commentDto.getSizecs());
			System.out.println("나머지 저장완료");
			
			commentRepository.save(comment);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/product/"+product.getId();
	}
	
}
