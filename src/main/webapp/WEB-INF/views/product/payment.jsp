<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<main class="main-box">


	<!--ì»¨íì¸  ìì­ section-->
	<section class="section">
		<div class="title">
			<h2>Payment Page</h2>
			<!-- <hr/> -->
		</div>



		<div>
			<!-- <h4>ë´ê° ì´ ìíí</4> -->
		</div>
		<!-- ì¥ë°êµ¬ë -->
		<section class="bucket-box">
			<!-- ëª¨ë¬ ì¬ì©í´ì ìíí ë°ë¡ íì´ë¸ì ë£ê¸° -->
			<!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->


			<div class="input-comments">
			
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th class="th-align" scope="col">ìíì ë³´</th>
							<th scope="col">íë§¤ê°</th>
							<th scope="col">ìë</th>
							<th scope="col">í©ê³</th>
							<th scope="col"></th>

						</tr>
					</thead>
					<tbody>
						<!-- íì¤ ìì -->
						<tr>
							<!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
							<!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
							<th scope="row">
								<!-- ì²´í¬ë°ì¤ --> <!-- <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div> -->
							</th>



							<!-- ìíì ë³´ -->
							<!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- ì´ë¯¸ì§ -->
										<img id="img1"
											src="/upload/${productEntity.image}"
											class="rounded float" alt="...">
									</div>

									<!-- ì í ì´ë¦ -->
									<div class="product-inforamtion" style="font-weight: 800;">
										${productEntity.productname}</div>

									<!-- ì¬ì´ì¦ ì¶ê° -->
									<!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
									<div class="product-size">
										size
										<!-- ì¬ê¸°ì ì¬ì´ì¦ EL ííì -->
										<input class="num-wrap" value="${productEntity.size}" readonly>
									</div>
									<!-- ìí íì´ì§ ë²í¼ -->
									<!-- ì¬ê¸°ì DBì°ëí´ì ìí íì´ì§ ì ë³´ë¥¼ ë°ìì ë°ë¡ ê° ì ìê² í©ëë¤ -->
									<!-- <div class="product-button"> -->
									<!-- <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>    -->
									<!-- </div> -->
								</div>

							</td>



							<div class="info-align">
								<!-- ê°ê²© -->
								<td>
									<div class="info-align-box">
										<!-- ì¬ê¸°ì ELííìì¼ë¡ ê°ê²©ì ë°ììµëë¤ -->
										${productEntity.price}
									</div>
								</td>
								<!-- ìë -->
								<!-- ìë ì»´í¬ëí¸ ì¶ê° -->
								<td>
									<div class="info-align-box">

										<!-- ì¬ê¸°ì ìë ë°ì¤ ì¶ê° -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- í©ê³ -->
								<!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
								<td>
									<div class="info-align-box">
										<div>
											<input class="all-count" value="47.98$" readonly>
										</div>

									</div>
								</td>
								<!-- <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div>
                  </td> -->

							</div>
						</tr>
						<!-- íì¤ ì¢ë£ -->



						<!-- íì¤ ìì -->
						<tr>
							<!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
							<!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
							<th scope="row">
								<!-- ì²´í¬ë°ì¤ -->
								<div class="info-align-box">
									<!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div> -->
								</div>
							</th>



							<!-- ìíì ë³´ -->
							<!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- ì´ë¯¸ì§ -->
										<img id="img1"
											src="https://images.unsplash.com/photo-1577155848406-b53ebd277c72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
											class="rounded float" alt="...">
									</div>

									<!-- ì í ì´ë¦ -->
									<div class="product-inforamtion" style="font-weight: 800;">
										red checked pattern skirts</div>

									<!-- ì¬ì´ì¦ ì¶ê° -->
									<!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
									<div class="product-size">
										size
										<!-- ì¬ê¸°ì ì¬ì´ì¦ EL ííì -->
										<input class="num-wrap" value="M">
									</div>
									<!-- ìí íì´ì§ ë²í¼ -->
									<!-- ì¬ê¸°ì DBì°ëí´ì ìí íì´ì§ ì ë³´ë¥¼ ë°ìì ë°ë¡ ê° ì ìê² í©ëë¤ -->
									<!-- <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>   
                    </div> -->
								</div>

							</td>



							<div class="info-align">
								<!-- ê°ê²© -->
								<td>
									<div class="info-align-box">
										<!-- ì¬ê¸°ì ELííìì¼ë¡ ê°ê²©ì ë°ììµëë¤ -->
										23.99$
									</div>
								</td>
								<!-- ìë -->
								<!-- ìë ì»´í¬ëí¸ ì¶ê° -->
								<td>
									<div class="info-align-box">

										<!-- ì¬ê¸°ì ìë ë°ì¤ ì¶ê° -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- í©ê³ -->
								<!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
								<td>
									<div class="info-align-box">
										<div>
											<input class="all-count" value="47.98$" readonly>
										</div>

									</div>
								</td>
								<td>
									<!-- <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div> -->
								</td>

							</div>
						</tr>
						<!-- íì¤ ì¢ë£ -->


						<!-- íì¤ ìì -->
						<tr>
							<!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
							<!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
							<th scope="row">
								<!-- ì²´í¬ë°ì¤ -->
								<div class="info-align-box">
									<!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div> -->
								</div>
							</th>



							<!-- ìíì ë³´ -->
							<!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- ì´ë¯¸ì§ -->
										<img id="img1"
											src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"
											class="rounded float" alt="...">
									</div>

									<!-- ì í ì´ë¦ -->
									<div class="product-inforamtion" style="font-weight: 800;">
										white skirts</div>

									<!-- ì¬ì´ì¦ ì¶ê° -->
									<!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
									<div class="product-size">
										size
										<!-- ì¬ê¸°ì ì¬ì´ì¦ EL ííì -->
										<input class="num-wrap" value="M">
									</div>
									<!-- ìí íì´ì§ ë²í¼ -->
									<!-- ì¬ê¸°ì DBì°ëí´ì ìí íì´ì§ ì ë³´ë¥¼ ë°ìì ë°ë¡ ê° ì ìê² í©ëë¤ -->
									<!-- <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>   
                    </div> -->
								</div>

							</td>



							<div class="info-align">
								<!-- ê°ê²© -->
								<td>
									<div class="info-align-box">23.99$</div>
								</td>
								<!-- ìë -->
								<!-- ìë ì»´í¬ëí¸ ì¶ê° -->
								<td>
									<div class="info-align-box">

										<!-- ì¬ê¸°ì ìë ë°ì¤ ì¶ê° -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- í©ê³ -->
								<!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
								<td>
									<div class="info-align-box">
										<div>
											<input class="all-count" value="47.98$" readonly>
										</div>

									</div>
								</td>
								<td>
									<!-- <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div> -->
								</td>

							</div>
						</tr>
						<!-- íì¤ ì¢ë£ -->




						<!-- êµ¬ë²ì  -->
						<!-- íì¤ ìì -->

						<!-- íì¤ ì¢ë£ -->

					</tbody>
				</table>

				<!-- íì´ë¸ end  -->

				<!-- <div class="checkbox-area"> -->
				<!-- ì²´í¬ë°ì¤ -->
				<!-- <div class="info-align-box"> -->
				<!-- <div class="form-check">
                <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
                <label class="form-check-label" for="flexCheckDefault">
                  <div>ì ì²´ì í</div>
                </label>
              </div>
              <button type="button" class="btn btn-danger">
                ì­ì 

              </button> -->
				<!-- </div> -->

				<!-- </div> -->
		</section>
		<!-- bucket end -->

		<!-- ë²í¼ div -->
		<!-- ëª¨ë ì í ë²í¼ ìì­ -->



		<!-- ëª¨ë ì­ì  ë²í¼ ìì­ -->
		<div class="delete-button">
			<!-- <button type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >ëª¨ë ì­ì </button>
         -->
		</div>
		<!-- <div class="delete-button">
          <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >ëª¨ë ì í</button>
        </div> -->




	</section>

	<!-- ê²°ì  ë°ì¤ ìì­ìëë¤ -->
	<section class="payment-box">
		<div class="col-md-7 col-lg-8">
			<h4 class="mb-3">Billing address</h4>

			<!--           form Start -->
			<form class="needs-validation" novalidate 
				onsubmit="goPaymentAPI('${productEntity.id}','${productEntity.productname}','${productEntity.image}','${productEntity.detail}','${productEntity.price}','${productEntity.size}','${productEntity.category}','${productEntity.gender}','${principal.email}','${principal.name}','${principal.phonenumber}','${principal.address}')">
				<div class="row g-3">
					<div class="col-sm-6">
						<label for="firstName" class="form-label">name</label> <input
							type="text" class="form-control" id="firstName" placeholder=""
							value="${principal.name}" name="name" readonly="readonly" required>
						<div class="invalid-feedback">Valid first name is required.
						</div>
					</div>



					<div class="col-12">
						<label for="username" class="form-label">Username</label>
						<div class="input-group has-validation">
							<span class="input-group-text">@</span> <input type="text"
								class="form-control" id="username" 
								name="username" readonly="readonly" value="${principal.username}" required>
							<div class="invalid-feedback">Your username is required.</div>
						</div>
					</div>

					<div class="col-12">
						<label for="email" class="form-label">Email <span
							class="text-muted">(Optional)</span></label> <input type="email"
							class="form-control" id="email" placeholder="you@example.com"
							name="email" value="${principal.email}" readonly="readonly">
						<div class="invalid-feedback">Please enter a valid email
							address for shipping updates.</div>
					</div>
					<!-- 					ì£¼ìì°¾ê¸° ë²í¼ cssìì  ë¶í -->
<!-- 					<input class="btn btn-info" type="button" onClick="goPopup();" -->
<!-- 						value="findaddress" /> -->
					<div class="col-12">
						<label for="address" class="form-label">Address</label> <input
							type="text" class="form-control" id="address" class="address"
							placeholder="1234 Main St" value="${principal.address}" readonly="readonly"  required>
						<div class="invalid-feedback">Please enter your shipping
							address.</div>
					</div>




					<hr class="my-4">

					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="same-address">
						<label class="form-check-label" for="same-address">Shipping
							address is the same as my billing address</label>
					</div>

					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="save-info">
						<label class="form-check-label" for="save-info">Save this
							information for next time</label>
					</div>


					<hr class="my-4">

					<button class="w-100 btn btn-primary btn-lg" type="submit"
						style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">Continue
						to checkout</button>
					<!--         form End -->
			</form>
		</div>
	</section>



</main>


<script>
function goPaymentAPI(id,productname,image,detail,price,size,category,gender,email,name,phonenumber,address){
	
	event.preventDefault();
	
	let productDto = {
			productId: id,
			productname: productname,
			image: image,
			detail: detail,
			price: price,
			size: size,
			category: category,
			gender: gender
	};
	console.log(productDto);
	
	let IMP = window.IMP;
    IMP.init("imp55496891");
    IMP.request_pay({
        pg: "html5_inicis",//이니시스 웹표준 결제창
        pay_method: "card",//결제방법
        merchant_uid: "123444",//주문번호
        name: productname,//상품명
        amount: price,//가격
        buyer_email: email,//이메일
        buyer_name: name,//이름
        buyer_tel: phonenumber,//연락처
        buyer_addr: address, //주소
        buyer_postcode: id //상품코드
    }, async function (rsp) {
//         console.log(rsp);
        if (rsp.success) {
        	alert("결제가 완료되었습니다.");
        	console.log(rsp);
        	let response =await fetch("/payment",{
        		method:"post",
        		body:JSON.stringify(rsp),
        		headers:{
        			"Content-Type":"application/json; charset=utf-8"
        		}
        	});
        	
        	let parseResponse =await response.text();
        	console.log(parseResponse);
        	if(parseResponse === "ok"){
        		
        		
        		location.href="/myPage";
        	}
        	
        	
//             msg += '고유ID : ' + rsp.imp_uid;//아임포트 거래고유번호
//             msg += '상점 거래ID : ' + rsp.merchant_uid;//주문번호
//             msg += '결제 금액 : ' + rsp.paid_amount;//결제금액
//             msg += '카드 승인번호 : ' + rsp.apply_num;
        } else {
        	alert("결제가 실패하였습니다.");
            msg += '에러내용 : ' + rsp.error_msg;
        }
        
    });


}

function goLogin(){
	alert("실행됨?");
	location.href = "/auth/loginForm";
}
</script>

<%@ include file="../layout/footer.jsp"%>