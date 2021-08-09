<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- 간판입니다 -->
<div class="main-top-information">
	<div class="new-main">
		<div class="top-width">
			<h2>SKIRTS</h2>
			<h4>"If you wear a short enough skirt, the party will come to
				you." -Dorothy Parker</h4>
		</div>
		<div></div>
		<div class="content-img-top">
			<img
				src="https://images.unsplash.com/photo-1564246614931-1be8ad768e63?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80">
		</div>
	</div>
</div>


<!-- <hr/> -->

<!--Main-content-->
<div class="main-content-product">
	<div class="new-main">
		<h3>Beatiful Women Skirts</h3>
	</div>



	<div class="new-main-products">
	
		
	<c:forEach var="post" items="${postsEntity}">
		<div class="products">
			<div class="content-img">
				

				<a href="/post/${post.id}">
					<div class="content-wrap-img">

						<img
							src="/upload/${post.image}"
							class="rounded float-start" alt="...">

					</div>
				</a>
			</div>
			<h5>${post.productname}</h5>


			<p>size: S M L</p>
			<p>${post.price}</p>

		</div>
	</c:forEach>	
		<!--End One of Products-->

<!-- 		<div class="products"> -->

<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->

<!-- 						<img id="img1" -->
<!-- 							src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" -->
<!-- 							class="rounded float" alt="..."> -->

<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>white skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>45.99$</p> -->

<!-- 		</div> -->

<!-- 		<div class="products"> -->
<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->
<!-- 						<img -->
<!-- 							src="https://images.unsplash.com/photo-1551163943-3f6a855d1153?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80" -->
<!-- 							class="rounded float" alt="..."> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>light brown skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>32.99$</p> -->
<!-- 		</div> -->

<!-- 		<div class="products" id="content-end"> -->
<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->
<!-- 						<img id="img" -->
<!-- 							src="https://images.unsplash.com/photo-1583846783214-7229a91b20ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" -->
<!-- 							class="rounded float" alt="..."> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>black button skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>39.99$</p> -->
<!-- 		</div> -->

<!-- 		<div class="products"> -->
<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->
<!-- 						<img id="img2" -->
<!-- 							src="https://images.unsplash.com/photo-1561932850-f13404855e53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=313&q=80" -->
<!-- 							class="rounded float" alt="..."> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>long yellow skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>42.99$</p> -->
<!-- 		</div> -->

<!-- 	</div> -->




</div>



<%@ include file="../layout/footer.jsp"%>
