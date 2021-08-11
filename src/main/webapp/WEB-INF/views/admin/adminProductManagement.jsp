<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>
<!-- 비정상적으로 요소가 배치되는 것을 수정해야합니다 -->



    <main class="sidebar-main">
    <!--side bar-->
      <div class="sidebars">
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
            <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
            <span class="fs-5 fw-semibold">UNISHOP Administrator</span>
          </a>
          <ul class="list-unstyled ps-0">
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                상품관리
              </button>
              <div class="collapse show" id="home-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="/admin/main" class="link-dark rounded">상품 수정 / 삭제</a></li>
                  <li><a href="/admin/productRegister" class="link-dark rounded">상품 생성</a></li>
                  <li><a href="/admin/userLog" class="link-dark rounded">회원 로그</a></li>
                </ul>
              </div>
            </li>
            <li class="border-top my-3"></li>
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                계정
              </button>
              <div class="collapse" id="account-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark rounded">로그아웃</a></li>
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
                <td><img id="img1" src="/upload/${product.image}" class="modal-img float" alt="..."></td>
                <td>${product.productname}</td>
                <td>${product.size}</td>
                <td>${product.gender}</td>
                <td>@${product.detail}</td>
                <td>${product.category}</td>
                <td>${product.price}</td>
                <td><button type="button" class="pyong-btn" style="margin-inline: 10%;">
                수정하기</button>
                <button type="button" class="pyong-btn">
                삭제</button>
                </td>
                
              </tr>
            
            </c:forEach>
				</tbody>
			</table>
      
	
        
      
      </section>

    </main>

<%@ include file="../layout/footer.jsp" %>