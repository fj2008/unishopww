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
                  <li><a href="/admin/userLog" class="link-dark rounded">New</a></li>
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
      <section class="admin-section">
        <div>
          <h2 id="h2">Overview</h2>
        </div>

        <hr id="hr"/>

        <div class="contents-container">
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>
          
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>

          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>
        
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>
          
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>

          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>
        
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>

          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>
          
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>

          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>
        
          <div class="contents">
            
            <p>contents</p>
            <!--DB에서 가져와서 for문 돌림-->
            <!--img-->
            <div>
              <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80">
            </div>
            <!--information(Code for clothes, clothes name)-->
            <div>
              <p>${ProductCode}</p>
            </div>
            <!--price-->
            <div>
              <p>${ProductPrice}</p>
            </div>
            <hr/>
          </div>




        </div>

      </section>

    </main>

<%@ include file="../layout/footer.jsp" %>
