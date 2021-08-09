<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--     여기에 파일마다 title 변경 EL표현식으로 -->

<link rel="stylesheet" type="text/css" href="/css/sidebars.css">
<link rel="stylesheet" type="text/css" href="/css/admin.css">
<link rel="stylesheet" type="text/css" href="/css/header.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<link rel="stylesheet" type="text/css" href="/css/paymentpage.css">
<link rel="stylesheet" type="text/css" href="/css/productpage.css">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" type="text/css" href="/css/auth.css">
<link rel="stylesheet" type="text/css" href="/css/detail.css">

    
<meta charset="UTF-8">
<title>UNISHOP</title>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<!--header-->
	<div class="sticky-top">
		<div class="header">
			<div class="header-top">
				<nav class="navbar navbar-light bg-light">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
						<div class="container-fluid">
							<a class="navbar-brand" href="#"></a>
							<button class="navbar-toggler" type="button"
								data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
								aria-controls="navbarNavDropdown" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div>
								<a class="navbar-brand" href="/"><img class="logo"
									src="/images/logo.png"></a>
							</div>
							<div class="collapse navbar-collapse" id="navbarNavDropdown">
								<ul class="navbar-nav">

									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#"
										id="navbarDropdownMenuLink" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> Women </a>
										<ul class="dropdown-menu">
											<div class="dropdown-in">
												<li><span class="dropdown-item-text">상의</span></li>
												<li><a class="dropdown-item" href="/post/productPage">셔츠</a></li>
												<li><a class="dropdown-item" href="/post/productPage">반팔</a></li>
												<li><a class="dropdown-item" href="/post/productPage">원피스</a></li>
											</div>
											<div class="dropdown-in">
												<li><span class="dropdown-item-text">하의</span></li>
												<li><a class="dropdown-item" href="/post/productPage">청바지</a></li>
												<li><a class="dropdown-item" href="/post/productPage">치마</a></li>
												<li><a class="dropdown-item" href="/post/productPage">와일드팬츠</a></li>
											</div>
											<div class="dropdown-in">
												<li><span class="dropdown-item-text">아우터</span></li>
												<li><a class="dropdown-item" href="/post/productPage">가디건</a></li>
												<li><a class="dropdown-item" href="/post/productPage">트렌치코트</a></li>
												<li><a class="dropdown-item" href="/post/productPage">코트</a></li>
											</div>
											<div class="dropdown-in">
												<button type="button" class="btn-close" aria-label="Close"></button>
											</div>
										</ul></li>

									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#"
										id="navbarDropdownMenuLink" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> Man </a>
										<ul class="dropdown-menu">
											<div class="dropdown-in">
												<li><span class="dropdown-item-text">상의</span></li>
												<li><a class="dropdown-item" href="/post/productPage">셔츠</a></li>
												<li><a class="dropdown-item" href="/post/productPage">반팔</a></li>
												<li><a class="dropdown-item" href="/post/productPage">긴팔</a></li>
											</div>
											<div class="dropdown-in">
												<li><span class="dropdown-item-text">하의</span></li>
												<li><a class="dropdown-item" href="/post/productPage">청바지</a></li>
												<li><a class="dropdown-item" href="/post/productPage">슬랙스</a></li>
												<li><a class="dropdown-item" href="/post/productPage">와일드팬츠</a></li>
											</div>
											<div class="dropdown-in">
												<li><span class="dropdown-item-text">아우터</span></li>
												<li><a class="dropdown-item" href="/post/productPage">가디건</a></li>
												<li><a class="dropdown-item" href="/post/productPage">트렌치코트</a></li>
												<li><a class="dropdown-item" href="/post/productPage">코트</a></li>
											</div>
											<div class="dropdown-in">
												<button type="button" class="btn-close" aria-label="Close"></button>
											</div>
										</ul></li>

									<!-- <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul> -->

									<!-- <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li> -->
								</ul>
							</div>
					</nav>



					<nav class="navbar navbar-light bg-light">
						<div class="container-fluid">
							<div class="icon">
								<c:choose>
									<c:when test="${empty sessionScope.principal}">
										<!-- /* 변화 된 코드 로그인 */ -->
										<button type="button" class="btn btn-light"
											onclick="goLogin()">Login</button>
										<!-- <a href="#"> -->
										<img
											src="https://img.icons8.com/ios-glyphs/30/000000/login-rounded-right--v1.png" />
										<!-- </a> -->
									</c:when>
									<c:otherwise>

										<div>
											<a href="/myPage"><img
												src="https://img.icons8.com/windows/32/000000/shopping-cart.png" /></a>
										</div>

										<div>
											<a href="/post" onclick="logout()"><img
												src="https://img.icons8.com/windows/32/000000/user-male-circle.png" /></a>
											<!-- 여기 로그아웃이미지 삽입 -->
											<!-- 일단 버튼으로 때웁니다 -->
											<button type="button" class="btn btn-light"
												onclick="goLogin()">Login out</button>
										</div>
									</c:otherwise>
								</c:choose>

							</div>

							<a class="navbar-brand"></a>
							<form class="d-flex">
								<input class="form-control me-2" type="search"
									placeholder="키워드로 검색 예)히트택" aria-label="Search">
								<button class="btn btn-outline-success" type="submit">Search</button>
							</form>
						</div>
					</nav>
					<!-- Navbar content -->
				</nav>





			</div>
		</div>
	</div>
	<!--header End-->
