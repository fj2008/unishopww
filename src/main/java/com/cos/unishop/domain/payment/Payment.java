package com.cos.unishop.domain.payment;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.user.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@Entity
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String apply_num;
	private String bank_name;
	private String buyer_addr;
	private String buyer_email;
	private String	buyer_name;
	private String	buyer_postcode;
	private String	buyer_tel; 
	private String	card_name;
	private String	card_number;
	private int	card_quota;
	private String	currency;
	private String	custom_data;
	private String	imp_uid;
	private String	merchant_uid;//주문번호
	private String	name;
	private int		paid_amount;
	private int	paid_at;
	private String pay_method;
	private String pg_provider;
	private String pg_tid;
	private String pg_type;
	private String receipt_url;
	private String status;

	
	@JsonIgnoreProperties({"payments"})
	@JoinColumn(name = "user_id")
	@ManyToOne
	private User user;
}
