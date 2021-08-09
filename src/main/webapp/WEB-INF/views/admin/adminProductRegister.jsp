<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


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
						aria-expanded="true">Product Management</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">Overview</a></li>
							<li><a href="/admin/productRegister"
								class="link-dark rounded">New</a></li>
							<li><a href="#" class="link-dark rounded">Delete</a></li>
							<li><a href="#" class="link-dark rounded">Reports</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#dashboard-collapse"
						aria-expanded="false">Dashboard</button>
					<div class="collapse" id="dashboard-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">Overview</a></li>
							<li><a href="#" class="link-dark rounded">Weekly</a></li>
							<li><a href="#" class="link-dark rounded">Monthly</a></li>
							<li><a href="#" class="link-dark rounded">Annually</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#orders-collapse"
						aria-expanded="false">Orders</button>
					<div class="collapse" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/admin/userLog" class="link-dark rounded">New</a></li>
							<li><a href="#" class="link-dark rounded">Processed</a></li>
							<li><a href="#" class="link-dark rounded">Shipped</a></li>
							<li><a href="#" class="link-dark rounded">Returned</a></li>
						</ul>
					</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false">Account</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">New...</a></li>
							<li><a href="#" class="link-dark rounded">Profile</a></li>
							<li><a href="#" class="link-dark rounded">Settings</a></li>
							<li><a href="#" class="link-dark rounded">Sign out</a></li>
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
			<h2>New</h2>
		</div>

		<hr />
		<br>

		<div class="register">
			<!-- 여기에 폼있어요! -->
			<form action="/admin/update" method="post" enctype="multipart/form-data">
				<div class="input-parent">
					<h4>상품 이름</h4>
					<div class="input-wrap">
						<div class="input-group mb-3">
							<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
							<input type="text" class="form-control"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="productname">
						</div>
					</div>
				</div>
				<div>
					<div class="input-parent">
						<h4>이미지 등록</h4>
						<div class="input-wrap">
							<div class="input-group mb-3">

								<input type="file" class="form-control" id="inputGroupFile02"
									name="image">

							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="input-parent">
						<h4>상세정보</h4>
						<div class="input-wrap">
							<div class="input-group mb-3">
								<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
								<input type="text" class="form-control"
									aria-label="Sizing example input"
									aria-describedby="inputGroup-sizing-default" name="detail">
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="input-parent">
						<h4>상품 가격</h4>
						<div class="input-wrap">
							<div class="input-group mb-3">
								<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
								<input type="text" class="form-control"
									aria-label="Sizing example input"
									aria-describedby="inputGroup-sizing-default" name="price">
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
									aria-label="Example select with button addon" name="size">
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
									<input class="form-check-input" type="radio" name="gender"
										id="flexRadioDefault1" value="MAN"> <label
										class="form-check-label" for="flexRadioDefault1"> MAN
									</label>
								</div>
							</div>
							<div class="sex">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="flexRadioDefault1" value="WOMAN"> <label
										class="form-check-label" for="flexRadioDefault1">
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





				<!-- 우리 카테고리 구현해야합니다. 성별에 따라서 옷도 다르고 그리고 상위항목도 있습니다. 상의의 셔츠라던가 -->
				<!-- <div>
            <div class="input-parent">
              <h4>카테고리</h4>
              
                <div class="input-wrap">
                  <div class="input-group mb-3">
                    
                  
                  </div>
                </div>
              
            </div>
          </div> -->

				<div>
					<div class="input-parent">
						<h4>카테고리</h4>
						<div class="input-wrap">
							<div class="input-group">
								<select class="form-select" id="inputGroupSelect04"
									aria-label="Example select with button addon" name="category">
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




				<div>
					<div class="input-parent">
						<div class="input-wrap">
							<!-- 채우기용 빈 박스입니다 -->
							<div class="sex"></div>
							<div class="sex"></div>
							<div class="sex"></div>
							<button class="btn btn-outline-secondary" type="submit">Upload</button>
						</div>
					</div>
				</div>


			</form>

		</div>

	</section>

</main>

<%@ include file="../layout/footer.jsp"%>
