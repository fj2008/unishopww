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
        <!-- log ????????? -->
        <!-- DB?????? ???????????? ????????? -->
        <table class="table">
          <thead>
            <tr>
              <th scope="col"></th>
              
              <th scope="col">#</th>
              <th scope="col">UserId</th>
              <th scope="col">UserName</th>
              <th scope="col">Address</th>
              <th scope="col">order-date-time</th>

              <!-- modal ?????? product ?????? ?????? -->
              <th scope="col">product</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="buyEntity" items="${buyEntity}">
            <tr>
            
              <th scope="row">
                <!-- ???????????? -->
                <div class="info-align-box">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="id" value="${buyEntity.id}" id="${buyEntity.id}">
                    <label class="form-check-label" for="flexCheckDefault">
                    
                    </label>
                  </div>
                </div>
              </th>
              <!-- increment number -->
              <th scope="row">3</th>
              <!-- id -->
               <!-- id -->
              <td>${buyEntity.user.username}</td>
              <!-- real name -->
              <td>${buyEntity.user.name}</td>
              <!-- address -->
              <td>${buyEntity.user.address}</td>
              <!-- time -->
              <td>${buyEntity.paymenttime}</td>

			

              <!-- ?????? ?????? -->
              <td>
                <div id="modal">
    
                  <div id="root">
                    <button type="button" class="btn btn-light" id="modal_open_btn">product list</button>
                    <!-- <button type="button" id="modal_open_btn"></button> -->
                       
                  </div>


                  <!-- ????????? DB?????? product ?????? ????????? ???????????????. -->
                  <div class="modal_content">
                      
                    <!-- ???????????? -->
                      <p>productName: ${buyEntity.product.productname}</p>
                      <!-- ?????? ?????? -->
                      <p>productCode: ${buyEntity.product.id}</p>
                      
                      <!-- ?????? ????????? -->
                      <p>productSize: ${buyEntity.product.size}</p>
                      
                      <button type="button" class="btn btn-light" id="modal_close_btn">close</button>
                    
                      <!-- <button type="button" id="modal_close_btn">close</button> -->
                    
                  </div>
                
                  <div class="modal_layer"></div>
                </div>
              </td>

            </tr>
           
</c:forEach>
           
          </tbody>
        </table>

        <div>
          <!-- ???????????? -->
          <div class="checkbox-area">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
              <label class="form-check-label" for="flexCheckDefault">
                <div>????????????</div>
              </label>
            </div>
            <button type="button" onclick="deleteCheck()" class="btn btn-danger">
              ????????????

            </button>
          </div>
       
        </div>
       
      </section>
    </main>
       
<script src="/js/admin.js"></script>
    
<%@ include file="../layout/footer.jsp"%>