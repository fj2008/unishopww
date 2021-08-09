<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!-- 구 버전 관리를 위해서 파일을 두개로 분리했습니다 -->
<!-- 정상적으로 작동함 -->

<!--login-->
<div id="main">
	<main id="form-signin">

		<h2>Sign Up</h2>
		<form action="/auth/join" method="post">
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">name</label> <input
					type="text" class="form-control" placeholder="Input ID"
					name="name">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">ID</label> <input
					type="text" class="form-control" placeholder="Input ID"
					name="username">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput2" class="form-label">Password</label>
				<input type="password" class="form-control"
					placeholder="Input Password" name="password">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">
					phoneNumber</label> <input type="text" class="form-control"
					id="formGroupExampleInput" placeholder="Input Password Again"
					name="phonenumber">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput2" class="form-label">Email</label>
				<input type="text" class="form-control" placeholder="Input Email"
					name="email">
			</div>
			<input class="btn btn-info" type="button" onClick="goPopup();"
				value="findaddress" />
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Address</label>
				<input type="text" class="form-control" placeholder="Input Address"
					name="address" id="address">
			</div>
			<%--서브주소 나중에구현 <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Address2</label>
            <input type="text" class="form-control" id="formGroupExampleInput4" placeholder="Input Address2">
          </div> --%>

			<button class="w-100 btn btn-lg btn-primary" type="submit"
				style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">Sign
				up</button>

		</form>
	</main>
</div>

<%@ include file="../layout/footer.jsp"%>
