<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!-- 구 버전 관리를 위해서 파일을 두개로 분리했습니다 -->


	<!--login-->
	<div class="main">
		<main class="form-signin">


			<div class="form-wrap">

				<h1 class="h3 mb-3 fw-normal">Please input your email</h1>

				<div class="form-floating">
					<input type="text" class="form-control" id="textsms"
						placeholder="phoneNumber" name="phoneNumber"> <label
						for="floatingInput">PhoneNumber</label>
				</div>



				<!-- <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
          </div> -->

				<div class="checkbox mb-3">
					<!-- <label>
              <input type="checkbox" value="remember-me"> Remember me
            </label> -->
					<div class="find">
						<!-- <div class="find-id">
                <a href="#" style="color: #868686">Find ID</a>
                <a href="#" style="color: #868686">/ PW</a>
              </div> -->
						<div>
							<a href="#" style="color: #868686" onClick="acceptNumber()">인증번호 받기</a>
						</div>
					</div>
				</div>

				<form action="/auht/checkNumberPw" method="get">
					<div class="form-floating">
						<input type="text" class="form-control" id="textsms" name="checkNumber"
							placeholder="phoneNumber"> <label for="floatingInput">인증번호</label>
					</div>
	
					<button class="w-100 btn btn-lg btn-primary" type="submit"
						style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">Confirm
					</button>
				</form>
				
				<p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
			</div>


		</main>
	</div>

	<%@ include file="../layout/footer.jsp"%>
