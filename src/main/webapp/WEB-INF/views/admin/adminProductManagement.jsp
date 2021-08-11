<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!-- 비정상적으로 요소가 배치되는 것을 수정해야합니다 -->



<main class="sidebar-main">
	<!--side bar-->
	<div class="sidebars">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
			<a href="#"
				class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				<svg class="bi me-2" width="30" height="24">
					<use xlink:href="#bootstrap" /></svg> <span class="fs-5 fw-semibold">UNISHOP
					Administrator</span>
			</a>
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="true">상품관리</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/admin/main" class="link-dark rounded">상품
									수정 / 삭제</a></li>
							<li><a href="/admin/productRegister"
								class="link-dark rounded">상품 생성</a></li>
							<li><a href="/admin/userLog" class="link-dark rounded">회원
									로그</a></li>
						</ul>
					</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false">계정</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/admin/logout" class="link-dark rounded">로그아웃</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!--side bar End-->

	<!--Admin section-->


	<section class="admin-section">
		<div>
			<h2 id="h2">상품 수정 / 삭제</h2>
		</div>



		<table class="table">
			<thead class="category-management">
				<tr>
					<th scope="col">#</th>
					<th scope="col">이미지</th>
					<th scope="col">상품명</th>
					<th scope="col">사이즈</th>
					<th scope="col">성별</th>
					<th scope="col">상세설명</th>
					<th scope="col">카테고리</th>
					<th scope="col">가격</th>
					<th scope="col">수정하기 / 삭제</th>


				</tr>
			</thead>
			<tbody class="category-management">
				<c:forEach var="product" items="${productsEntity}">
					<tr>
						<th scope="row">${product.id}</th>
						<td><img id="img1" src="/upload/${product.image}"
							class="modal-img float" alt="..."></td>
						<td>${product.productname}</td>
						<td>${product.size}</td>
						<td>${product.gender}</td>
						<td>@${product.detail}</td>
						<td>${product.category}</td>
						<td>${product.price}</td>
						<td><button type="button" class="btn btn-primary"
								data-bs-toggle="modal" data-bs-target="#exampleModal"
								style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">
								수정하기</button>
							<button type="button" class="pyong-btn" onclick="productDelete(${product.id})">삭제</button></td>

					</tr>
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel"></h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<!-- 			모달바디 시작 -->
									<div class="register" style="flex-direction: column;">
										<!-- 여기에 폼있어요! -->
										<form onsubmit="productUpdate()" id="my-form">
											<!-- 			상품코드 -->

											<input type="number" name="productId" value="${product.id}"
												readonly="readonly">

											<div>
												<div class="input-parent">
													<h4>상품명</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<span class="input-group-text"
																id="inputGroup-sizing-default">Default</span> <input
																id="productname" type="text" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="productname">
														</div>
													</div>
												</div>
											</div>


											<div>
												<div class="input-parent">
													<h4>이미지 등록</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">

															<input type="file" class="form-control" id="image"
																name="image">

														</div>
													</div>
												</div>
											</div>

											<div>
												<div class="input-parent">
													<h4>상세 정보</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<span class="input-group-text"
																id="inputGroup-sizing-default">Default</span> <input
																id="detail" type="text" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="detail">
														</div>
													</div>
												</div>
											</div>

											<div>
												<div class="input-parent">
													<h4>가격</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<span class="input-group-text"
																id="inputGroup-sizing-default">Default</span> <input
																type="number" id="price" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="price">
														</div>
													</div>
												</div>
											</div>
											<div>
												<div class="input-parent">
													<h4>사이즈</h4>
													<div class="input-wrap">
														<div class="input-group">
															<select class="form-select" id="inputGroupSelect04"
																aria-label="Example select with button addon"
																name="size">
																<option selected>Choose...</option>
																<option value="S">S</option>
																<option value="M">M</option>
																<option value="L">L</option>
																<option value="XL">XL</option>
															</select>
															<!-- <button class="btn btn-outline-secondary" type="button">Button</button> -->
														</div>
													</div>
												</div>
											</div>

											<div>
												<div class="input-parent">
													<h4>성별</h4>
													<div class="input-wrap">

														<div class="sex">
															<!-- <div class="input-group mb-3"> -->

															<div class="form-check">
																<input class="form-check-input" type="radio"
																	name="gender" id="flexRadioDefault1" value="MAN">
																<label class="form-check-label" for="flexRadioDefault1">
																	MAN </label>
															</div>
														</div>
														<div class="sex">
															<div class="form-check">
																<input class="form-check-input" type="radio"
																	name="gender" id="flexRadioDefault1" value="WOMAN">
																<label class="form-check-label" for="flexRadioDefault1">
																	WOMAN </label>
															</div>
														</div>
														<!-- 채우기용 빈 박스입니다 -->
														<div class="sex"></div>
														<div class="sex"></div>
														<div class="sex"></div>


													</div>


												</div>

											</div>

											<div>
												<div class="input-parent">
													<h4>카테고리</h4>
													<div class="input-wrap">
														<div class="input-group">
															<select class="form-select" id="inputGroupSelect04"
																aria-label="Example select with button addon"
																name="category">
																<option selected>Choose...</option>
																<option value="m_shirts">M-셔츠</option>
																<option value="m_shortsleeve">M-반팔</option>
																<option value="m_longsleeves">M-긴팔</option>
																<option value="m_jeans">M-청바지</option>
																<option value="m_slacks">M-슬랙스</option>
																<option value="m_widepants">M-와이드팬츠</option>
																<option value="m_cardigan">M-가디건</option>
																<option value="m_trenchcoat">M-트렌치코트</option>
																<option value="m_coat">M-코트</option>

																<option value="w_shirts">W-셔츠</option>
																<option value="w_shortsleeve">W-반팔</option>
																<option value="w_onepiece">W-원피스</option>
																<option value="w_jeans">W-청바지</option>
																<option value="w_skirt">W-치마</option>
																<option value="w_widepants">W-와이드팬츠</option>
																<option value="w_cardigan">W-가디건</option>
																<option value="w_trenchcoat">W-트렌치코트</option>
																<option value="w_coat">W-코트</option>


															</select>
															<!-- <button class="btn btn-outline-secondary" type="button">Button</button> -->
														</div>
													</div>
												</div>
											</div>



											<!-- 모달바디끝 -->
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					</form>
				</c:forEach>
			</tbody>
		</table>




	</section>

</main>
<script src="/js/admin.js"></script>
<%@ include file="../layout/footer.jsp"%>