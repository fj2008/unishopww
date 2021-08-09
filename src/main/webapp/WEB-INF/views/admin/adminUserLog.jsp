<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<main>
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
                Product Management
              </button>
              <div class="collapse show" id="home-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="/admin/main" class="link-dark rounded">Overview</a></li>
                  <li><a href="/admin/productRegister" class="link-dark rounded">New</a></li>
                  <li><a href="#" class="link-dark rounded">Delete</a></li>
                  <li><a href="#" class="link-dark rounded">Reports</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1">
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
            </li>
            <li class="border-top my-3"></li>
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                Account
              </button>
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
      
      <section class="section">
        <div>
          <h2>New Orders</h2>
        </div>

        <hr/>
        <!-- <br>
        <div>
          <h4>New</h4>
        </div> -->
        <br>
        <!-- log 테이블 -->
        <!-- DB에서 가져와서 던져줌 -->
        <table class="table">
          <thead>
            <tr>
              <th scope="col"></th>
              
              <th scope="col">#</th>
              <th scope="col">UserId</th>
              <th scope="col">UserName</th>
              <th scope="col">Address</th>
              <th scope="col">order-date-time</th>

              <!-- modal 써서 product 목록 완성 -->
              <th scope="col">product</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">
                <!-- 체크박스 -->
                <div class="info-align-box">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                    
                    </label>
                  </div>
                </div>
              </th>
              <!-- increment number -->
              <th scope="row">3</th>
              <!-- id -->
              <td>lovepeople</td>
              <!-- real name -->
              <td>Nick</td>
              <!-- address -->
              <td>S. F 36349</td>
              <!-- time -->
              <td>21-07-27</td>

              <!-- 모달 영역 -->
              <td>
                <div id="modal">
    
                  <div id="root">
                    <button type="button" class="btn btn-light" id="modal_open_btn">product list</button>
                    <!-- <button type="button" id="modal_open_btn"></button> -->
                       
                  </div>


                  <!-- 여기에 DB에서 product 주문 목록을 가져옵니다. -->
                  <div class="modal_content">
                      
                    <!-- 상품이름 -->
                      <p>productName: ${orderProductListEntity.productName}</p>
                      <!-- 상품 코드 -->
                      <p>productCode: ${orderProductListEntity.productCode}</p>
                      <!-- 상품 갯수 -->
                      <p>productCount: ${orderProductListEntity.productCount}</p>
                      <!-- 상품 사이즈 -->
                      <p>productSize: ${orderProductListEntity.productSize}</p>
                      
                      <button type="button" class="btn btn-light" id="modal_close_btn">close</button>
                    
                      <!-- <button type="button" id="modal_close_btn">close</button> -->
                    
                  </div>
                
                  <div class="modal_layer"></div>
                </div>
              </td>

            </tr>
            <tr>
              <th scope="row">
                <!-- 체크박스 -->
                <div class="info-align-box">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                    
                    </label>
                  </div>
                </div>
              </th>
              <!-- increment number -->
              <th scope="row">2</th>
              <!-- id -->
              <td>markgod</td>
              <!-- real name -->
              <td>Mark</td>
              <!-- address -->
              <td>L. A street 30349</td>
              <!-- time -->
              <td>21-07-25</td>


              <!-- 모달 영역 -->
              <td>
                <div id="modal">
    
                  <div id="root">
                    <button type="button" class="btn btn-light" id="modal_open_btn">product list</button>
                    <!-- <button type="button" id="modal_open_btn"></button> -->
                       
                  </div>


                  <!-- 여기에 DB에서 product 주문 목록을 가져옵니다. -->
                  <div class="modal_content">
                      
                    <!-- 상품이름 -->
                      <p>productName: ${orderProductListEntity.productName}</p>
                      <!-- 상품 코드 -->
                      <p>productCode: ${orderProductListEntity.productCode}</p>
                      <!-- 상품 갯수 -->
                      <p>productCount: ${orderProductListEntity.productCount}</p>
                      <!-- 상품 사이즈 -->
                      <p>productSize: ${orderProductListEntity.productSize}</p>
                      
                      <button type="button" class="btn btn-light" id="modal_close_btn">close</button>
                    
                      <!-- <button type="button" id="modal_close_btn">close</button> -->
                    
                  </div>
                
                  <div class="modal_layer"></div>
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">
                <!-- 체크박스 -->
                <div class="info-align-box">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                    
                    </label>
                  </div>
                </div>
              </th>
              <!-- increment number -->
              <th scope="row">1</th>
              <!-- id -->
              <td>markgod</td>
              <!-- real name -->
              <td>Mark</td>
              <!-- address -->
              <td>L.A street 30349</td>
              <!-- time -->
              <td>21-07-23</td>

              <!-- 모달 영역 -->
              <td>
                <div id="modal">
    
                  <div id="root">
                    <button type="button" class="btn btn-light" id="modal_open_btn">product list</button>
                    <!-- <button type="button" id="modal_open_btn"></button> -->
                       
                  </div>


                  <!-- 여기에 DB에서 product 주문 목록을 가져옵니다. -->
                  <div class="modal_content">
                      
                    <!-- 상품이름 -->
                      <p>productName: ${orderProductListEntity.productName}</p>
                      <!-- 상품 코드 -->
                      <p>productCode: ${orderProductListEntity.productCode}</p>
                      <!-- 상품 갯수 -->
                      <p>productCount: ${orderProductListEntity.productCount}</p>
                      <!-- 상품 사이즈 -->
                      <p>productSize: ${orderProductListEntity.productSize}</p>
                      
                      <button type="button" class="btn btn-light" id="modal_close_btn">close</button>
                    
                      <!-- <button type="button" id="modal_close_btn">close</button> -->
                    
                  </div>
                
                  <div class="modal_layer"></div>
                </div>
              </td>
            </tr>
           
          </tbody>
        </table>

        <div>
          <!-- 체크박스 -->
          <div class="checkbox-area">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
              <label class="form-check-label" for="flexCheckDefault">
                <div>전체선택</div>
              </label>
            </div>
            <button type="button" class="btn btn-danger">
              배송완료

            </button>
          </div>
          
        </div>
      </section>






    </main>
<%@ include file="../layout/footer.jsp"%>