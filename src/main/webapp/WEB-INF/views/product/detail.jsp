<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>



<main>
	<div class="main-box">
		<section class="top">
			<!-- 상품 정보 -->
			<section class="information">
				<h3>${productEntity.productname}</h3>
				<p>size: S M L</p>
				<p>${productEntity.price}</p>
			</section>

			<!-- 상품 이미지 -->
			<section class="product-img">

				<img id="img1" src="/upload/${productEntity.image}"
					class="rounded float" alt="...">

			</section>


			<section>

				<c:choose>
					<c:when test="${empty sessionScope.principal}">
						<div class="button-group">
							<div class="button-wrap">
								<button class="w-100 btn btn-lg btn-primary" type="submit"
									style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;"
									onclick="goLoginCheck()">Buy</button>
							</div>
							<div class="button-wrap">
								<button class="w-100 btn btn-lg btn-primary" type="submit"
									style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;"
									onclick="goLoginCheck()">Input bucket</button>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="button-group">
							<div class="button-wrap">
								<button class="w-100 btn btn-lg btn-primary" type="submit"
									style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;"
									onclick="goPayment('${productEntity.id}')">Buy</button>
							</div>
							<div class="button-wrap">
								<button class="w-100 btn btn-lg btn-primary" type="submit"
									style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;"
									onclick="inputBucket('${principal.id}','${productEntity.productname}','${productEntity.image}','${productEntity.size}','${productEntity.price}')">Input
									bucket</button>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</section>
		</section>




		<!-- 고객 상품평 -->
		<section class="member-comments-box">
			<!-- 모달 사용해서 상품평 바로 테이블에 넣기 -->
			<!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->

			<!-- 상품평 쓰기 -->
			<div class="input-comments">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#exampleModal"
					style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">
					상품평 쓰기</button>

				<!-- Modal -->
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
								<div class="register">
									<!-- 여기에 폼있어요! -->
									<form action="/commentSave" method="post"
										enctype="multipart/form-data">
										<!-- 			상품코드 -->
										<div>
											<div class="input-parent">

												<div class="input-wrap">
													<div class="input-group mb-3">
														<span class="input-group-text"
															id="inputGroup-sizing-default"></span> <input
															type="number" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															value="${productEntity.id}" readonly="readonly"
															name="productId">
													</div>
												</div>
											</div>
										</div>

										<div class="input-parent">
											<h4>상품 이름</h4>
											<div class="input-wrap">
												<div class="input-group mb-3">
													${productEntity.productname}</div>
											</div>
											<section class="product-img">

												<img id="img1" src="/upload/${productEntity.image}"
													class="rounded float" alt="...">





											</section>
										</div>
										<div>
											<div class="input-parent">
												<h4>이미지 등록</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">

														<input type="file" class="form-control"
															id="inputGroupFile02" name="image">

													</div>
												</div>
											</div>
										</div>

										<div>
											<div class="input-parent">
												<h4>만족도 점수</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<span class="input-group-text"
															id="inputGroup-sizing-default">Default</span> <input
															type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default" name="score">
													</div>
												</div>
											</div>
										</div>

										<div>
											<div class="input-parent">
												<h4>사이즈 만족도</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
														<input type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															name="sizecs">
													</div>
												</div>
											</div>
										</div>
										<div>
											<div class="input-parent">
												<h4>색감 만족도</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
														<input type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															name="colorcs">
													</div>
												</div>
											</div>
										</div>
										<div>
											<div class="input-parent">
												<h4>상품평</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
														<input type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															name="productcs">
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
				<!-- 댓글 테이블 -->
				<!-- DB에서 가져와서 던져줌 -->
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">이미지</th>
							<th scope="col">만족도</th>
							<th scope="col">상품평</th>
							<th scope="col">사이즈</th>
							<th scope="col">색감</th>
							<th scope="col">등록자</th>
							<th scope="col">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="comments" items="${commentsEntity}">
							<tr>
								<th scope="row">${comments.id}</th>
								<td>${comments.image}</td>
								<td>${comments.score}</td>
								<td>${comments.productcs}</td>
								<td>${comments.sizecs}</td>
								<td>${comments.colorcs}</td>
								<td>@${comments.user.username}</td>
								<td>${comments.registrationtime}</td>
							</tr>
						</c:forEach>
						<!--               <tr> -->
						<!--                 <th scope="row">2</th> -->
						<!--                 <td>Jacob</td> -->
						<!--                 <td>넘이뻐요</td> -->
						<!--                 <td>@fat</td> -->
						<!--                 <td>21-07-23</td> -->
						<!--               </tr> -->
						<!--               <tr> -->
						<!--                 <th scope="row">1</th> -->
						<!--                 <td>Larry the Bird</td> -->
						<!--                 <td>사랑합니다~</td> -->
						<!--                 <td>@twitter</td> -->
						<!--                 <td>21-07-21</td> -->
						<!--               </tr> -->
					</tbody>
				</table>
		</section>
	</div>
</main>

<script>
	function goLoginCheck() {
		alert("로그인하셔야 들어갈수 있는 페이지입니다.");
		location.href = "/auth/loginForm";
	}

	function goPayment(id) {
		alert("결제화면으로 이동하시겠습니까?");
		console.log(id)
		location.href = "/product/payment/" + id;
	}
</script>
<script src="/js/bucket.js"></script>
<%@ include file="../layout/footer.jsp"%>