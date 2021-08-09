<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

 <main>
    <!--side bar-->
      <div class="sidebars">
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
            <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
            <span class="fs-5 fw-semibold">My page</span>
          </a>
          <ul class="list-unstyled ps-0">
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                Service Information
              </button>
              <div class="collapse show" id="home-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="/CommentsManagement" class="link-dark rounded">Comments management</a></li>
                  <li><a href="/bucket/${principal.id}" class="link-dark rounded">Shopping bucket</a></li>
                  <li><a href="/payment/${principal.id}" class="link-dark rounded">Payment list</a></li>
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
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                Account
              </button>
              <div class="collapse" id="account-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <!-- <li><a href="#" class="link-dark rounded">New...</a></li> -->
                  <li><a href="#" class="link-dark rounded">Profile modification</a></li>
                  <li><a href="#" class="link-dark rounded">Settings</a></li>
                  <li><a href="#" class="link-dark rounded">Sign out</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
    <!--side bar End-->

    <!--컨텐츠 영역 section-->
      <section class="section">
        <div>
          <h2>Payment list</h2>
          <!-- <hr/> -->
        </div>

        

        <div>
          <!-- <h4>내가 쓴 상품평</4> -->
        </div>
        <!-- 고객 상품평 -->
        <section class="bucket-box">
          <!-- 모달 사용해서 상품평 바로 테이블에 넣기 -->
          <!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->
          
         
          <div class="input-comments">
            <!-- Button trigger modal -->
            <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >
              상품평 쓰기
            </button> -->

            <!-- Modal -->
            <!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    ...
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
          </div> -->

          <!-- 장바구니 테이블 -->
          <!-- DB에서 가져와서 던져줌 -->
          <table class="table">
            <thead>
              <tr>
                <th scope="col">구매 일자</th>
                <th class="th-align" scope="col">
                  상품정보
                </th>
                <th scope="col">판매가</th>
                <th scope="col">수량</th>
                <th scope="col">합계</th>
                <th scope="col"></th>
                
              </tr>
            </thead>
            <tbody>
            
            <c:forEach var="buy" items="${buyEntity}">
              <!-- 한줄 시작 -->  
              <tr>
                <!-- th, for문으로 돌립니다 -->
                <!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
                <th scope="row">
                  <!-- 여기에 EL로 구매일자 넣습니다 -->

                  <!-- 체크박스 -->
                  <!-- <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div> -->
                </th>


                <!-- 상품정보 -->
                <!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- 이미지 -->
                      <img id="img1" src="/upload/${buy.product.image}" class="rounded float" alt="...">
                    </div>

                    <!-- 제품 이름 -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      ${buy.product.productname}
                    </div>

                    <!-- 사이즈 추가 -->
                    <!-- 사이즈 컴포넌트 추가 -->
                    <div class="product-size">
                      size
                      <!-- 여기에 사이즈 EL 표현식 -->
                      <input class="num-wrap" value="${buy.product.size}" readonly>
                    </div>
                    <!-- 상품 페이지 버튼 -->
                    <!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
                    <!-- <div class="product-button"> -->
                      <!-- <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>    -->
                    <!-- </div> -->
                  </div>

                </td>
         
                <div class="info-align">
                  <!-- 가격 -->
                  <td>
                    <div class="info-align-box">
                      <!-- 여기에 EL표현식으로 가격을 받아옵니다 -->
                     ${buy.product.price}$
                    </div>
                  </td>
                  <!-- 수량 -->
                  <!-- 수량 컴포넌트 추가 -->
                  <td>
                    <div class="info-align-box">
                      
                        <!-- 여기에 수량 박스 추가 -->
                        <div>
                          <input class="num-wrap" value="2" readonly>
                        </div>
                        
                        <!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->
                      
                    </div>
                  </td>
                  <!-- 합계 -->
                  <!-- 계산되어서 되는 합계 추가 -->
                  <td>
                    <div class="info-align-box">
                      <div>
                        <input class="all-count" value="47.98$" readonly>
                      </div>
                      
                    </div>
                  </td>
                  <!-- <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        삭제

                      </button>
                    </div>
                  </td> -->

                </div>
              </tr>
              </c:forEach>
              
              <!-- 한줄 종료 -->

              

              <!-- 한줄 시작 -->
              <tr>
                <!-- th, for문으로 돌립니다 -->
                <!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
                <th scope="row">
                  <!-- 체크박스 -->
                  <div class="info-align-box">
                    <!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div> -->
                  </div>
                </th>



                <!-- 상품정보 -->
                <!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- 이미지 -->
                      <img id="img1" src="https://images.unsplash.com/photo-1577155848406-b53ebd277c72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="rounded float" alt="...">
                    </div>

                    <!-- 제품 이름 -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      red checked pattern skirts
                    </div>

                    <!-- 사이즈 추가 -->
                    <!-- 사이즈 컴포넌트 추가 -->
                    <div class="product-size">
                      size
                      <!-- 여기에 사이즈 EL 표현식 -->
                      <input class="num-wrap" value="M">
                    </div>
                    <!-- 상품 페이지 버튼 -->
                    <!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
                    <!-- <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>   
                    </div> -->
                  </div>

                </td>
                
                
                
                <div class="info-align">
                  <!-- 가격 -->
                  <td>
                    <div class="info-align-box">
                      <!-- 여기에 EL표현식으로 가격을 받아옵니다 -->
                      23.99$
                    </div>
                  </td>
                  <!-- 수량 -->
                  <!-- 수량 컴포넌트 추가 -->
                  <td>
                    <div class="info-align-box">
                      
                        <!-- 여기에 수량 박스 추가 -->
                        <div>
                          <input class="num-wrap" value="2" readonly>
                        </div>
                        
                        <!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->
                      
                    </div>
                  </td>
                  <!-- 합계 -->
                  <!-- 계산되어서 되는 합계 추가 -->
                  <td>
                    <div class="info-align-box">
                      <div>
                        <input class="all-count" value="47.98$" readonly>
                      </div>
                      
                    </div>
                  </td>
                  <td>
                    <!-- <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        삭제

                      </button>
                    </div> -->
                  </td>

                </div>
              </tr>
              <!-- 한줄 종료 -->


              <!-- 한줄 시작 -->
              <tr>
                <!-- th, for문으로 돌립니다 -->
                <!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
                <th scope="row">
                  <!-- 체크박스 -->
                  <div class="info-align-box">
                    <!-- <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div> -->
                  </div>
                </th>



                <!-- 상품정보 -->
                <!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- 이미지 -->
                      <img id="img1" src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" class="rounded float" alt="...">
                    </div>

                    <!-- 제품 이름 -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      white skirts
                    </div>

                    <!-- 사이즈 추가 -->
                    <!-- 사이즈 컴포넌트 추가 -->
                    <div class="product-size">
                      size
                      <!-- 여기에 사이즈 EL 표현식 -->
                      <input class="num-wrap" value="M">
                    </div>
                    <!-- 상품 페이지 버튼 -->
                    <!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
                    <!-- <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>   
                    </div> -->
                  </div>

                </td>
                
                
                
                <div class="info-align">
                  <!-- 가격 -->
                  <td>
                    <div class="info-align-box">
                      23.99$
                    </div>
                  </td>
                  <!-- 수량 -->
                  <!-- 수량 컴포넌트 추가 -->
                  <td>
                    <div class="info-align-box">
                      
                        <!-- 여기에 수량 박스 추가 -->
                        <div>
                          <input class="num-wrap" value="2" readonly>
                        </div>
                        
                        <!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->
                      
                    </div>
                  </td>
                  <!-- 합계 -->
                  <!-- 계산되어서 되는 합계 추가 -->
                  <td>
                    <div class="info-align-box">
                      <div>
                        <input class="all-count" value="47.98$" readonly>
                      </div>
                      
                    </div>
                  </td>
                  <td>
                    <!-- <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        삭제

                      </button>
                    </div> -->
                  </td>

                </div>
              </tr>
              <!-- 한줄 종료 -->



              
              <!-- 구버전 -->
              <!-- 한줄 시작 -->
              
              <!-- 한줄 종료 -->

            </tbody>
          </table>

          <!-- 테이블 end  -->

          <!-- <div class="checkbox-area"> -->
            <!-- 체크박스 -->
            <!-- <div class="info-align-box"> -->
              <!-- <div class="form-check">
                <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
                <label class="form-check-label" for="flexCheckDefault">
                  <div>전체선택</div>
                </label>
              </div>
              <button type="button" class="btn btn-danger">
                삭제

              </button> -->
            <!-- </div> -->
            
          <!-- </div> -->


        </section>
        <!-- comments box end -->


        
      </section>

    
    
    
    
    
    </main>

<%@ include file="../layout/footer.jsp" %>