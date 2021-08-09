package com.cos.unishop.domain.comment;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends JpaRepository<Comment, Integer>{

	@Query(value = "SELECT * FROM comment WHERE user_id =:id",nativeQuery = true)
	List<Comment> mfindAllByUserId(int id);
	
	@Query(value = "SELECT * FROM comment WHERE product_id =:id",nativeQuery = true)
	List<Comment> mfindAllByProductId(int id);
}
