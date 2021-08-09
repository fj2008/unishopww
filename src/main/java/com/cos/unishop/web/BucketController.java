package com.cos.unishop.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.bucket.BucketProducts;
import com.cos.unishop.domain.bucket.BucketProductsRepository;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BucketController {
	
	private final HttpSession session;
	private final ProductRepository productRepository;
	private final UserRepository userRepository;
	private final BucketProductsRepository bucketProductsRepository;
	
	//장바구니에 물건 담는 컨트롤러
	@PostMapping("/bucket")
	public @ResponseBody String input(@RequestBody BucketProducts bucket) {
		
		User principal = (User) session.getAttribute("principal");
		
		System.out.println("유저가 선택한 상품 이름 : " + bucket.getProductname());
		System.out.println("유저의 프라이머리 키: " + principal.getId());
		System.out.println(bucketProductsRepository.mFindByUserId(principal.getId()));
		
		String UserChoiceProductName = bucket.getProductname();
		List<String> bucketEntityProNameList = null;
		bucketEntityProNameList = bucketProductsRepository.mFindByUserId(principal.getId());
		
		
		int size = bucketEntityProNameList.size();
		System.out.println("리스트 사이즈 : "+size);
		// 고객이 상품을 조금이라도 넣었을 때
		
		// 만약 고객이 선택한 것 중에 같은 것이 있으면
		// num의 값을 높여서 save 하지 않도록 넘긴다.(구버전 0806)
		
		// 곂치는 것이 있으면 num값이 올라간다.
		// 그렇지 않으면 DB에 저장해주자.
		int num = 0;
		for(int i=0; i< size ; i++) {
			
			
			if(UserChoiceProductName.equals(bucketEntityProNameList.get(i))) {
				System.out.println(UserChoiceProductName+" : 유저가 선택한 이름이에요!");
				System.out.println(bucketEntityProNameList.get(i)+"for문안의 이름 값이에요!"+ "인덱스번호: "+i);
				num ++;
				System.out.println(num);
			} 
		}
		// num의 값은 결국 곂치는 이름의 수를 의미하는데 (0807)
		// 그러나 이거 size가 모든 크기이기 때문에
		// size-num 이 곂치지 않는 숫자 인것.
		// 결국은 size-num 이 1 이거나 (하나가 곂치지 않음)
		// 아니면 size-num 이 0 이다 (전부다 곂침)
		// 여기서 곂치지 않는 다는 건 다른 값이 들어왔다는 것!!
		// 그러면 저장을 해줘야한다!
		
		// 즉 num은 기존값과 같은지 같지 않은지 여부를 판단하게 해준다!
		
		
		// 아니다
		// num은 리스트에서 꺼내서 같을 때만 숫자를 더하게 된다.
		// 보통은 1 아니면 0 인것이다.
		// 왜냐하면 곂치는 경우에도 한번만 곂치기 때문이다.
		// 곂치지 않으면 그 때 그 값을 저장 시켜주면 된다.
		// num이 1이라는건 하나가 곂쳤다는 것이다.
		// 그러면 no를 해주자
		// num이 0이라는 건 없다는 것이다.
		// 그러면 ok를 해주자
		
		
		if(num==1) {
			
			return "no";
		} else if(num==0) {
			
			bucket.setUser(principal);
			bucketProductsRepository.save(bucket);
			System.out.println("나 때려짐? input PostMapping");
			return "ok";	
		} else {
			// 이외의 모든 것 
			// 그냥 보내주자
			return "ok";
		}
		
		// for문 다돌고나면
		// num의 값을 선택하여 save할지 유무를 정한다
		// num이 값이 있으면 버킷에 있는 것! 저장하지 않는다!
		
		// 고객이 상품을 아예 안넣었을 때도 여기에 포함
		
		
		
		
		
		// 없으면 버킷에 저장한다
//		bucket.setUser(principal);
//		bucketProductsRepository.save(bucket);
//		System.out.println("나 때려짐? input PostMapping");
//		return "no";
		
		

		
	}
	

	// 장바구니 보여주는 컨트롤러
	@GetMapping("/bucket/{id}")
	public String showBucket(@PathVariable int id, Model model) {
		
		
				
		// bucketProducts의 user id 찾기 ({id})
		
		System.out.println("get 장바구니 나실행됨?");
		// 들어오는 id는 principal id임
		List<BucketProducts> bucketProductsEntity = bucketProductsRepository.mFindAllByProductId(id);
		
		System.out.println("마지막 나실행됨>?");
		
		model.addAttribute("bucketProductsEntity",bucketProductsEntity);
		return "user/bucket";
	}
	
	
	
	// 물건 보내주는 컨트롤러
	@PostMapping("/bucket/buy")
	public @ResponseBody void bucketSaveToPayment(@RequestBody BucketProducts bucket) {
		System.out.println(bucket.getId()+": 번째 물건 넘겨주기 시작!");
		//여기에 받은 ID를 가지고 bucketProductsRepository에 접근!
		// 그리고 그 데이터를 가져와서
		// payment 데이터로 넘겨준다!
		// 즉 데이터를 넘겨주는 컨트롤러!
		
		// payment 모델의 빈껍데기를 만들어줘서
		// bucketProductsRepository에서 가져온 데이터를 원자성에 맞게 구성을한다.
		// 그리고 저장
		// 빈껍데기 데이터를 paymentRepository에 넣어주는 것을 짠다
		// 그리고 void이기 때문에
		// 하나의 상품이 저장되면 바로
		// 다음 상품이 돌아서 저장된다!
		
		System.out.println(bucket.getId()+": 번째 물건 결제창으로 넘어갔어요!");
		
//		return "ok";
	}
	
	// 물건 지우는 컨트롤러
	@DeleteMapping("/bucket/delete")
	public @ResponseBody void bucketProductDeleteById(@RequestBody BucketProducts bucket) {
		bucketProductsRepository.deleteById(bucket.getId());
	}
	
}
