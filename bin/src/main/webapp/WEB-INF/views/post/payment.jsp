
<%@ include file="../layout/header.jsp"%>

<main class="main-box">


	<!--컨텐츠 영역 section-->
	<section class="section">
		<div class="title">
			<h2>Payment Page</h2>
			<!-- <hr/> -->
		</div>



		<div>
			<!-- <h4>내가 쓴 상품평</4> -->
		</div>
		<!-- 장바구니 -->
		<section class="bucket-box">
			<!-- 모달 사용해서 상품평 바로 테이블에 넣기 -->
			<!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->


			<div class="input-comments">
				<!-- Button trigger modal -->
				<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >
              상품평 쓰기
            </button> -->

				<!-- Modal -->
				<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    ...
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
          </div> -->

				<!-- 장바구니 테이블 -->
				<!-- DB에서 가져와서 던져줌 -->
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th class="th-align" scope="col">상품정보</th>
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<th scope="col">합계</th>
							<th scope="col"></th>

						</tr>
					</thead>
					<tbody>
						<!-- 한줄 시작 -->
						<tr>
							<!-- th, for문으로 돌립니다 -->
							<!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
							<th scope="row">
								<!-- 체크박스 --> <!-- <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div> -->
							</th>



							<!-- 상품정보 -->
							<!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- 이미지 -->
										<img id="img1"
											src="/upload/${postEntity.image}"
											class="rounded float" alt="...">
									</div>

									<!-- 제품 이름 -->
									<div class="product-inforamtion" style="font-weight: 800;">
										${postEntity.productname}</div>

									<!-- 사이즈 추가 -->
									<!-- 사이즈 컴포넌트 추가 -->
									<div class="product-size">
										size
										<!-- 여기에 사이즈 EL 표현식 -->
										<input class="num-wrap" value="${postEntity.size}" readonly>
									</div>
									<!-- 상품 페이지 버튼 -->
									<!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
									<!-- <div class="product-button"> -->
									<!-- <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>    -->
									<!-- </div> -->
								</div>

							</td>



							<div class="info-align">
								<!-- 가격 -->
								<td>
									<div class="info-align-box">
										<!-- 여기에 EL표현식으로 가격을 받아옵니다 -->
										${postEntity.price}
									</div>
								</td>
								<!-- 수량 -->
								<!-- 수량 컴포넌트 추가 -->
								<td>
									<div class="info-align-box">

										<!-- 여기에 수량 박스 추가 -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- 합계 -->
								<!-- 계산되어서 되는 합계 추가 -->
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
                        삭제

                      </button>
                    </div>
                  </td> -->

							</div>
						</tr>
						<!-- 한줄 종료 -->



						<!-- 한줄 시작 -->
						<tr>
							<!-- th, for문으로 돌립니다 -->
							<!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
							<th scope="row">
								<!-- 체크박스 -->
								<div class="info-align-box">
									<!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div> -->
								</div>
							</th>



							<!-- 상품정보 -->
							<!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- 이미지 -->
										<img id="img1"
											src="https://images.unsplash.com/photo-1577155848406-b53ebd277c72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
											class="rounded float" alt="...">
									</div>

									<!-- 제품 이름 -->
									<div class="product-inforamtion" style="font-weight: 800;">
										red checked pattern skirts</div>

									<!-- 사이즈 추가 -->
									<!-- 사이즈 컴포넌트 추가 -->
									<div class="product-size">
										size
										<!-- 여기에 사이즈 EL 표현식 -->
										<input class="num-wrap" value="M">
									</div>
									<!-- 상품 페이지 버튼 -->
									<!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
									<!-- <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>   
                    </div> -->
								</div>

							</td>



							<div class="info-align">
								<!-- 가격 -->
								<td>
									<div class="info-align-box">
										<!-- 여기에 EL표현식으로 가격을 받아옵니다 -->
										23.99$
									</div>
								</td>
								<!-- 수량 -->
								<!-- 수량 컴포넌트 추가 -->
								<td>
									<div class="info-align-box">

										<!-- 여기에 수량 박스 추가 -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- 합계 -->
								<!-- 계산되어서 되는 합계 추가 -->
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
                        삭제

                      </button>
                    </div> -->
								</td>

							</div>
						</tr>
						<!-- 한줄 종료 -->


						<!-- 한줄 시작 -->
						<tr>
							<!-- th, for문으로 돌립니다 -->
							<!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
							<th scope="row">
								<!-- 체크박스 -->
								<div class="info-align-box">
									<!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div> -->
								</div>
							</th>



							<!-- 상품정보 -->
							<!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- 이미지 -->
										<img id="img1"
											src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"
											class="rounded float" alt="...">
									</div>

									<!-- 제품 이름 -->
									<div class="product-inforamtion" style="font-weight: 800;">
										white skirts</div>

									<!-- 사이즈 추가 -->
									<!-- 사이즈 컴포넌트 추가 -->
									<div class="product-size">
										size
										<!-- 여기에 사이즈 EL 표현식 -->
										<input class="num-wrap" value="M">
									</div>
									<!-- 상품 페이지 버튼 -->
									<!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
									<!-- <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>   
                    </div> -->
								</div>

							</td>



							<div class="info-align">
								<!-- 가격 -->
								<td>
									<div class="info-align-box">23.99$</div>
								</td>
								<!-- 수량 -->
								<!-- 수량 컴포넌트 추가 -->
								<td>
									<div class="info-align-box">

										<!-- 여기에 수량 박스 추가 -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- 합계 -->
								<!-- 계산되어서 되는 합계 추가 -->
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
                        삭제

                      </button>
                    </div> -->
								</td>

							</div>
						</tr>
						<!-- 한줄 종료 -->




						<!-- 구버전 -->
						<!-- 한줄 시작 -->

						<!-- 한줄 종료 -->

					</tbody>
				</table>

				<!-- 테이블 end  -->

				<!-- <div class="checkbox-area"> -->
				<!-- 체크박스 -->
				<!-- <div class="info-align-box"> -->
				<!-- <div class="form-check">
                <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
                <label class="form-check-label" for="flexCheckDefault">
                  <div>전체선택</div>
                </label>
              </div>
              <button type="button" class="btn btn-danger">
                삭제

              </button> -->
				<!-- </div> -->

				<!-- </div> -->
		</section>
		<!-- bucket end -->

		<!-- 버튼 div -->
		<!-- 모두 선택 버튼 영역 -->



		<!-- 모두 삭제 버튼 영역 -->
		<div class="delete-button">
			<!-- <button type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >모두 삭제</button>
         -->
		</div>
		<!-- <div class="delete-button">
          <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >모두 선택</button>
        </div> -->




	</section>

	<!-- 결제 박스 영역입니다 -->
	<section class="payment-box">
		<div class="col-md-7 col-lg-8">
			<h4 class="mb-3">Billing address</h4>

			<!--           form Start -->
			<form class="needs-validation" novalidate 
				onsubmit="goPaymentAPI('${principal.name}')">
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
					<!-- 					주소찾기 버튼 css수정 부탁 -->
					<input class="btn btn-info" type="button" onClick="goPopup();"
						value="findaddress" />
					<div class="col-12">
						<label for="address" class="form-label">Address</label> <input
							type="text" class="form-control" id="address" class="address"
							placeholder="1234 Main St" required>
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

<%@ include file="../layout/footer.jsp"%>