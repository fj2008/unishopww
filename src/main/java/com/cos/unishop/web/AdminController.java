package com.cos.unishop.web;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.admin.AdminUser;
import com.cos.unishop.domain.admin.AdminUserRepository;
import com.cos.unishop.domain.buy.Buy;
import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.product.Product;

import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;
import com.cos.unishop.utils.MyPath;
import com.cos.unishop.utils.Script;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AdminController {

	private final ProductRepository productRepository;
	private final UserRepository userRepository;
	private final BuyRepository buyRepository;
	private final AdminUserRepository adminUserRepository;
	private final HttpSession session;

	// 관리자 로그인 페이지 ㄱㄱ
	@GetMapping("/adminLoginForm")
	public String adminLogin() {
		return "admin/adminLogin";
	}


	

	
	// 관리자 로그인성공시에 관리자 메인페이지로 이동
	@PostMapping("/adminLogin")
	public @ResponseBody String login(AdminUser adminUser) {
		AdminUser adminUserEntity = adminUserRepository.mAdminLogin(adminUser.getUsername(), adminUser.getPassword());
		if (adminUserEntity == null) {
			return Script.back("로그인 실패");
		} else {
			session.setAttribute("adminprincipal", adminUserEntity);
			return Script.href("/admin/main");
		}
	}
	
	

	// 로그아웃 하는 컨트롤러
	@GetMapping("/admin/logout")
	public String logout() {
		System.out.println("로그아웃 됩니까? 네 됩니다!");
		session.invalidate();
		return "redirect:/adminLogin";
	}

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

	// 관리자 회원구메로그 페이지 ㄱㄱ
	@GetMapping("/admin/userLog")
	public String adminUserLog(Model model) {

		List<Buy> buyEntity = buyRepository.findAll();
		model.addAttribute("buyEntity", buyEntity);

		return "admin/adminUserLog";
	}

	// 관리자 상품등록컨트롤러
	@PostMapping("/admin/update")
	public String product(ProductDto productDto) {

		UUID uuid = UUID.randomUUID();
		Product product = new Product();

		

		String imageFileName = uuid + "_" + productDto.getImage().getOriginalFilename();

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
			
			productRepository.save(product);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/admin/productRegister";
	}
	
	//회원로그 삭제 하는 컨트롤러
	@DeleteMapping("/admin/{id}")
	public @ResponseBody void deleteLog(@PathVariable int id) {
		System.out.println(id);
		
		buyRepository.deleteById(id);
	
	}
	//상품 관리페이지로 가는 컨트롤러
	@GetMapping("/admin/productManagement")
	public String productManagement(Model model) {
		model.addAttribute("productsEntity", productRepository.findAll());
		
		return"admin/adminProductManagement";
	}
	
	//상품 수정하는 컨트롤러
	@PutMapping("/admin/productUpdate")
	public @ResponseBody String productUpdate(ProductUpdateDto productUpdateDto) {

		UUID uuid = UUID.randomUUID();
		Product productEntity = productRepository.findById(productUpdateDto.getProductId()).get();
		System.out.println("상품 찾았다");
		

		String imageFileName = uuid + "_" + productUpdateDto.getImage().getOriginalFilename();

		Path imagePath = Paths.get(MyPath.IMAGEPATH + imageFileName);

		try {
			Files.write(imagePath, productUpdateDto.getImage().getBytes());

			productEntity.setProductname(productUpdateDto.getProductname());
			productEntity.setImage(imageFileName);
			productEntity.setDetail(productUpdateDto.getDetail());
			productEntity.setPrice(productUpdateDto.getPrice());
			productEntity.setSize(productUpdateDto.getSize());
			productEntity.setGender(productUpdateDto.getGender());
			productEntity.setCategory(productUpdateDto.getCategory());
			System.out.println("상품수정완료");

			productRepository.save(productEntity);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ok";
	}
	
	//상품 삭제 하는 컨트롤러
	@DeleteMapping("/admin/productDelete/{id}")
	public @ResponseBody String productDelete(@PathVariable int id) {
		System.out.println("상품정보"+id);
		productRepository.deleteById(id);
		System.out.println("상품 삭제 완료");
		return "ok";
		
	}
}
