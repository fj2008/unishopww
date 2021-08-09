package com.cos.unishop.web;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.product.ProductDto;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;
import com.cos.unishop.utils.MyPath;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AdminController {

	private final ProductRepository productRepository;
	private final UserRepository userRepository;
	private final HttpSession session;

	// 관리자페이지 메인ㄱㄱ
	@GetMapping("/admin/main")
	public String adminMain() {
		return "admin/adminMain";
	}

	// 관리자 상품등록페이지ㄱㄱ
	@GetMapping("/admin/productRegister")
	public String adminProductRegister() {
		return "admin/adminProductRegister";
	}

	//관리자 회원구메로그 페이지 ㄱㄱ
	@GetMapping("/admin/userLog")
	public String adminUserLog() {
		return "admin/adminUserLog";
	}
	
	// 관리자 상품업데이트컨트롤러
	@PostMapping("/admin/update")
	public String productUpdate(ProductDto productDto) {
	
		UUID uuid = UUID.randomUUID();
		Product product = new Product();
		
		User principal =(User) session.getAttribute("principal");
		

		String imageFileName = uuid + "_"+productDto.getImage().getOriginalFilename();
		
		Path imagePath = Paths.get(MyPath.IMAGEPATH + imageFileName);

		try {
			Files.write(imagePath, productDto.getImage().getBytes());
			
			product.setProductname(productDto.getProductname());
			product.setImage(imageFileName);
			product.setDetail(productDto.getDetail());
			product.setPrice(productDto.getPrice());
			product.setSize(productDto.getSize());
			product.setGender(productDto.getGender());
			product.setCategory(productDto.getCategory());
			product.setUser(principal);

			
			
		
			productRepository.save(product);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/admin/productRegister";
	}
	
	

}
