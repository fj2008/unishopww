package com.cos.unishop.web;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CommentUpdateDto {

	private int id;
	private MultipartFile image;
	private String score;
	private String sizecs;
	private String colorcs;
	private String productcs;
	
}
