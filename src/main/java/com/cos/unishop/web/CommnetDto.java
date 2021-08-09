package com.cos.unishop.web;



import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CommnetDto {

	private int productId;//post_id
	private String productcs;//상품평
	private String score;//만족도 점수
    private String sizecs; //사이즈 만족도
    private String colorcs;// 색감 만족도
	private MultipartFile image;//이미지
	
}
