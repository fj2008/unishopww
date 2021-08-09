package com.cos.unishop.web;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.Sex;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;
import com.cos.unishop.utils.CoolSms;
import com.cos.unishop.utils.Script;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {

	private final UserRepository userRepository;
	private final HttpSession session;
	
	// 로그인페이지로 가는컨트롤러
    @GetMapping("/auth/loginForm")
    public String loginForm() {
    	
    	
        return "auth/loginForm";
    }

    // 회원가입페이지로 가는 컨트롤러
    @GetMapping("/auth/joinForm")
    public String joinForm(User user) {
        return "auth/joinForm";
    }

    // 회원가입요청이 왔을때 처리받는 컨트롤러
    @PostMapping("/auth/join")
    public String join(User user) {
        System.out.println("나옴?");
        userRepository.save(user);
        System.out.println("안나옴?");
        return "redirect:/auth/loginForm";
    }

    // 주소 api호출 컨트롤러
    @GetMapping("/juso")
    public String jusoRequest() {
        return "juso/jusoPopup";
    }

    // 주소 api에서 데이터 보내는 컨트롤러
    @PostMapping("/juso")
    public String jusoResponse(String roadFullAddr, String inputYn, Model model) {
        System.out.println("주소 : " + roadFullAddr);
        model.addAttribute("roadFullAddr", roadFullAddr);
        model.addAttribute("inputYn", inputYn);
        return "juso/jusoPopup";
    }

    // 로그인 성공시 메인프로덕트 페이지로 보내는 컨트롤러
    @PostMapping("/auth/login")
    public @ResponseBody String login(User user) {
        User userEntity = userRepository.mLogin(user.getUsername(), user.getPassword());
        if (userEntity == null) {
            return Script.back("로그인 실패");
        } else {
        	session.setAttribute("principal", userEntity);
            return Script.href("/");
        }
    }
    //로그인화면에서 아이디찾기 화면으로
    @GetMapping("/auth/findId")
    public String findIdForm() {
        return "auth/findId";
    }
    //로그인화면에서 비밀번호 찾기 화면으로
    @GetMapping("/auth/findPw")
    public String findPwForm() {
    	return "auth/findPw";
    }
    
   
    //아이디찾기
    @GetMapping("/auth/checkNumberId")
    public@ResponseBody String checkNumber(String checkNumber) {
    	
    	String smsNumber = (String) session.getAttribute("smsNumber");
    	String phoenNumber = (String) session.getAttribute("phoneNumber");
    	
    	System.out.println("phoenNumber : "+phoenNumber);
    	System.out.println("checkNumber : "+checkNumber);
    	System.out.println("smsNumber : "+smsNumber);
    	
    	if(checkNumber.equals(smsNumber)) {
    	// 전화번호로 select해서 유저 아이디 찾기
    	User userEntity = userRepository.mPhoneNumber(phoenNumber);
    	System.out.println(userEntity);
    	session.setAttribute("username", userEntity.getUsername());
    	String userId = (String)session.getAttribute("username");
    		return Script.href("/auth/loginForm", userId);
    	}else {
    		return "redirect:/auth/findId";
    	}
    }
    
    //비밀번호찾기
    @GetMapping("/auht/checkNumberPw")
    public@ResponseBody String checkNumberPw(String checkNumber) {
    	
    	String smsNumber = (String) session.getAttribute("smsNumber");
    	String phoenNumber = (String) session.getAttribute("phoneNumber");
    	
    	System.out.println("phoenNumber : "+phoenNumber);
    	System.out.println("checkNumber : "+checkNumber);
    	System.out.println("smsNumber : "+smsNumber);
    	
    	if(checkNumber.equals(smsNumber)) {
    	// 전화번호로 select해서 유저 아이디 찾기
    	User userEntity = userRepository.mPhoneNumber(phoenNumber);
    	System.out.println(userEntity);
    	
    	session.setAttribute("userPw", userEntity.getPassword());
    	String userPw = (String)session.getAttribute("userPw");
    		return Script.href("/auth/loginForm", userPw);
    	}else {
    		return "redirect:/auth/findId";
    	}
    }

    // 인증하기 버튼
    @GetMapping("/auth/findIdsms")
    public @ResponseBody String findId(String phoneNumber) {
        Random rand = new Random();
        String numStr = "";
        for (int i = 0; i < 6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr += ran;
        }
        

        System.out.println("수신자 번호 : " + phoneNumber);
        System.out.println("인증번호 : " + numStr);
        
        //문자메시지 보내는 함수 
        //안쓸때는 돈나가니까 주석처리해서 테스트할것
         //CoolSms.certifiedPhoneNumber(phoneNumber, numStr);
        
       
        session.setAttribute("smsNumber", numStr);
        session.setAttribute("phoneNumber", phoneNumber);
        
        if(phoneNumber == null) {
        	return "fail";
        }
        return "ok";
    }

    
    // 로그아웃 하는 컨트롤러
    @GetMapping("/user/logout")
	public String logout() {
    	System.out.println("로그아웃 됩니까? 네 됩니다!");
		session.invalidate();
		return "redirect:/";
	}
}
