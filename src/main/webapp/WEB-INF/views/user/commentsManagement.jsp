<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>

<main class="sidebar-main">
	<!--side bar-->
	<div class="sidebars">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
			<a href="#"
				class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				<svg class="bi me-2" width="30" height="24">
						<use xlink:href="#bootstrap" /></svg> <span class="fs-5 fw-semibold">My
					page</span>
			</a>
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="true">Service Information</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/CommentsManagement" class="link-dark rounded">Comments
									management</a></li>
							<li><a href="/bucket/${principal.id}"
								class="link-dark rounded">Shopping bucket</a></li>
							<li><a href="/payment/${principal.id}"
								class="link-dark rounded">Payment list</a></li>
						</ul>
					</div>
				</li>
				<!-- <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                Dashboard
              </button>
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
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                Orders
              </button>
              <div class="collapse" id="orders-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark rounded">New</a></li>
                  <li><a href="#" class="link-dark rounded">Processed</a></li>
                  <li><a href="#" class="link-dark rounded">Shipped</a></li>
                  <li><a href="#" class="link-dark rounded">Returned</a></li>
                </ul>
              </div>
            </li> -->
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false">Account</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<!-- <li><a href="#" class="link-dark rounded">New...</a></li> -->
							<li><a href="#" class="link-dark rounded">Profile
									modification</a></li>
							<li><a href="#" class="link-dark rounded">Settings</a></li>
							<li><a href="#" class="link-dark rounded">Sign out</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!--side bar End-->

	<!--????????? ?????? section-->
	<section class="section">
		<div>
			<h2>Comments management</h2>
			<!-- <hr/> -->
		</div>



		<div>
			<!-- <h4>?????? ??? ?????????</4> -->
		</div>
		<!-- ?????? ????????? -->
		<section class="member-comments-box">


			<!-- ?????? ????????? -->
			<!-- DB?????? ???????????? ????????? -->
			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">?????????</th>
						<th scope="col">?????????</th>
						<th scope="col">?????????</th>
						<th scope="col">?????????</th>
						<th scope="col">??????</th>
						<th scope="col">?????????</th>
						<th scope="col">?????????</th>
						<th scope="col">?????? / ??????</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="comments" items="${commentsEntity}">


						<div style="display: flex;">

							<tr id="reply-${comments.id}">
								<th scope="row">${comments.id}</th>
								<td><img src="/upload/${comments.image}" /></td>
								<td>${comments.score}</td>
								<td>${comments.productcs}</td>
								<td>${comments.sizecs}</td>
								<td>${comments.colorcs}</td>
								<td>@${comments.user.username}</td>
								<td>${comments.registrationtime}</td>
								<!-- 							td?????? -->

								<!-- 					??????????????? ?????? ?????????????????????  -->
								<c:if test="${sessionScope.principal.id == comments.user.id}">
									<td>
										<form
											onsubmit="commentDelete(${comments.id})">
											<button type="submit" class="btn btn-danger">??????</button>
										</form>

										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal"
											style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">
											????????????</button>
									</td>

								</c:if>
							</tr>



						</div>
				</tbody>
			</table>
			<section class="member-comments-box">
				<!-- ?????? ???????????? ????????? ?????? ???????????? ?????? -->
				<!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->

				<!-- ????????? ?????? -->
				<div class="input-comments">
					<!-- Button trigger modal -->


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
									<!-- 			???????????? ?????? -->
									<div class="register">
										<!-- ????????? ????????????! -->
										<form onsubmit="commentUpdate()" id="my-form">
											<!-- 			???????????? -->

											<input type="number" name="id" value="${comments.id}"
												readonly="readonly">

											<div>
												<div class="input-parent">
													<h4>????????? ??????</h4>
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
													<h4>????????? ??????</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<span class="input-group-text"
																id="inputGroup-sizing-default">Default</span> <input
																id="score" type="text" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="score">
														</div>
													</div>
												</div>
											</div>

											<div>
												<div class="input-parent">
													<h4>????????? ?????????</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
															<input type="text" id="sizecs" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="sizecs">
														</div>
													</div>
												</div>
											</div>
											<div>
												<div class="input-parent">
													<h4>?????? ?????????</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
															<input type="text" id="colorcs" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="colorcs">
														</div>
													</div>
												</div>
											</div>
											<div>
												<div class="input-parent">
													<h4>?????????</h4>
													<div class="input-wrap">
														<div class="input-group mb-3">
															<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
															<input type="text" id="productcs" class="form-control"
																aria-label="Sizing example input"
																aria-describedby="inputGroup-sizing-default"
																name="productcs">
														</div>
													</div>
												</div>
											</div>







											<!-- ??????????????? -->
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
					<!-- ?????? ????????? -->
					<!-- DB?????? ???????????? ????????? -->
			</section>
		</section>
		<!-- comments box end -->
		</c:forEach>


	</section>




</main>

<script src="/js/commentManage.js"></script>

<%@ include file="../layout/footer.jsp"%>
