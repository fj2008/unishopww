<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!--login-->
<div class="main">
	<main class="form-signin">


		<form action="/adminLogin" method="post">

			<h1 class="h3 mb-3 fw-normal">관리자만 진입 가능한 페이지 입니다.</h1>

			<div class="form-floating">
				<input type="text" class="form-control" placeholder="ID"
					name="username"> <label for="floatingInput">Id</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" placeholder="Password"
					name="password"> <label for="floatingPassword">Password</label>
			</div>

			

			<button class="w-100 btn btn-lg btn-primary" type="submit"
				style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">Sign
				in</button>
			<p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>

		</form>

	</main>
</div>

<%@ include file="../layout/footer.jsp"%>
