package com.cos.unishop.web;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.comment.Comment;
import com.cos.unishop.domain.comment.CommentRepository;
import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;
import com.cos.unishop.utils.MyPath;
import com.cos.unishop.utils.Script;

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
	
	//상품평 수정하는 컨트롤러
	@PutMapping("/commentUpdate")
	public @ResponseBody String commentUpdate(CommentUpdateDto commentUpdateDto) {
		
		Comment commentEntity = commentRepository.findById(commentUpdateDto.getId()).get();
		System.out.println(commentEntity);
		
		//수정일자
		
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
		Date time = new Date();
				
		String time1 = format2.format(time);
						
		System.out.println(time1);
		commentEntity.setRegistrationtime(time1);
		System.out.println("수정일자 저장완료");
		//수정한 유저 user_id
		User principal =(User) session.getAttribute("principal");
		commentEntity.setUser(principal);
		System.out.println("유저정보"+principal);
		//수정한 post_id

		Product product = productRepository.findById(commentEntity.getProduct().getId()).get();
		commentEntity.setProduct(product);
		System.out.println("상품 정보 저장완료");
		
		
		//수정한 이미지
	UUID uuid = UUID.randomUUID();
		
		String imageFileName = uuid + "_"+commentUpdateDto.getImage().getOriginalFilename();
		System.out.println(imageFileName);
		Path imagePath = Paths.get(MyPath.IMAGEPATH + imageFileName);
		
		try {
			Files.write(imagePath, commentUpdateDto.getImage().getBytes());
			commentEntity.setImage(imageFileName);
			System.out.println("이미지 저장완료");
			commentEntity.setColorcs(commentUpdateDto.getColorcs());
			commentEntity.setProductcs(commentUpdateDto.getProductcs());
			commentEntity.setScore(commentUpdateDto.getScore());
			commentEntity.setSizecs(commentUpdateDto.getSizecs());
			System.out.println("나머지 저장완료");
			
			commentRepository.save(commentEntity);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return "ok";
		
	}
	
	@DeleteMapping("/comment/{id}")
	public @ResponseBody String commentDelete(@PathVariable int id) {
		User principal =(User) session.getAttribute("principal");
		int userId = principal.getId();
		Comment comment = commentRepository.findById(id).get();
		//로그인된 유저와 해당 코멘트에 저장되있는 user_id의 pk가 같은지 확인한다
		//아무나 삭제하면 안되기 때문
		if(userId == comment.getUser().getId()) {
			
			commentRepository.deleteById(id);
			return "ok";
		}else {
			return Script.href("/", "실패");
			
		}
		
	}
	
	
	
}
