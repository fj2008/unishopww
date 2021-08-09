<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

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
                  <li><a href="/bucket" class="link-dark rounded">Shopping bucket</a></li>
                  <li><a href="/paymentList" class="link-dark rounded">Payment list</a></li>
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

    <!--ì»¨íì¸  ìì­ section-->
      <section class="section">
        <div class="title">
          <h2>Shopping bucket</h2>
          <!-- <hr/> -->
        </div>

        

        <div>
          <!-- <h4>ë´ê° ì´ ìíí</4> -->
        </div>
        <!-- ì¥ë°êµ¬ë -->
        <section class="bucket-box">
          <!-- ëª¨ë¬ ì¬ì©í´ì ìíí ë°ë¡ íì´ë¸ì ë£ê¸° -->
          <!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->
          
         
          <div class="input-comments">
            <!-- Button trigger modal -->
            <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >
              ìíí ì°ê¸°
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

          <!-- ì¥ë°êµ¬ë íì´ë¸ -->
          <!-- DBìì ê°ì ¸ìì ëì ¸ì¤ -->
          <table class="table">
            <thead>
              <tr>
                <th scope="col"></th>
                <th class="th-align" scope="col">
                  ìíì ë³´
                </th>
                <th scope="col">íë§¤ê°</th>
                <th scope="col">ìë</th>
                <th scope="col">í©ê³</th>
                <th scope="col">ì­ì </th>
                
              </tr>
            </thead>
            <tbody>
              <!-- íì¤ ìì -->  
              <tr>
                <!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
                <!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
                <th scope="row">
                  <!-- ì²´í¬ë°ì¤ -->
                  <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div>
                </th>



                <!-- ìíì ë³´ -->
                <!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- ì´ë¯¸ì§ -->
                      <img id="img1" src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" class="rounded float" alt="...">
                    </div>

                    <!-- ì í ì´ë¦ -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      white skirts
                    </div>

                    <!-- ì¬ì´ì¦ ì¶ê° -->
                    <!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
                    <div class="product-size">
                      size
                      <!-- ì¬ê¸°ì ì¬ì´ì¦ EL ííì -->
                      <input class="num-wrap" value="M" readonly>
                    </div>
                    <!-- ìí íì´ì§ ë²í¼ -->
                    <!-- ì¬ê¸°ì DBì°ëí´ì ìí íì´ì§ ì ë³´ë¥¼ ë°ìì ë°ë¡ ê° ì ìê² í©ëë¤ -->
                    <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>   
                    </div>
                  </div>

                </td>
                
                
                
                <div class="info-align">
                  <!-- ê°ê²© -->
                  <td>
                    <div class="info-align-box">
                      <!-- ì¬ê¸°ì ELííìì¼ë¡ ê°ê²©ì ë°ììµëë¤ -->
                      23.99$
                    </div>
                  </td>
                  <!-- ìë -->
                  <!-- ìë ì»´í¬ëí¸ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      
                        <!-- ì¬ê¸°ì ìë ë°ì¤ ì¶ê° -->
                        <div>
                          <input class="num-wrap" value="2" readonly>
                        </div>
                        
                        <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div>
                      
                    </div>
                  </td>
                  <!-- í©ê³ -->
                  <!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      <div>
                        <input class="all-count" value="47.98$" readonly>
                      </div>
                      
                    </div>
                  </td>
                  <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div>
                  </td>

                </div>
              </tr>
              <!-- íì¤ ì¢ë£ -->

              

              <!-- íì¤ ìì -->
              <tr>
                <!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
                <!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
                <th scope="row">
                  <!-- ì²´í¬ë°ì¤ -->
                  <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div>
                </th>



                <!-- ìíì ë³´ -->
                <!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- ì´ë¯¸ì§ -->
                      <img id="img1" src="https://images.unsplash.com/photo-1577155848406-b53ebd277c72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="rounded float" alt="...">
                    </div>

                    <!-- ì í ì´ë¦ -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      red checked pattern skirts
                    </div>

                    <!-- ì¬ì´ì¦ ì¶ê° -->
                    <!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
                    <div class="product-size">
                      size
                      <!-- ì¬ê¸°ì ì¬ì´ì¦ EL ííì -->
                      <input class="num-wrap" value="M">
                    </div>
                    <!-- ìí íì´ì§ ë²í¼ -->
                    <!-- ì¬ê¸°ì DBì°ëí´ì ìí íì´ì§ ì ë³´ë¥¼ ë°ìì ë°ë¡ ê° ì ìê² í©ëë¤ -->
                    <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>   
                    </div>
                  </div>

                </td>
                
                
                
                <div class="info-align">
                  <!-- ê°ê²© -->
                  <td>
                    <div class="info-align-box">
                      <!-- ì¬ê¸°ì ELííìì¼ë¡ ê°ê²©ì ë°ììµëë¤ -->
                      23.99$
                    </div>
                  </td>
                  <!-- ìë -->
                  <!-- ìë ì»´í¬ëí¸ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      
                        <!-- ì¬ê¸°ì ìë ë°ì¤ ì¶ê° -->
                        <div>
                          <input class="num-wrap" value="2" readonly>
                        </div>
                        
                        <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div>
                      
                    </div>
                  </td>
                  <!-- í©ê³ -->
                  <!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      <div>
                        <input class="all-count" value="47.98$" readonly>
                      </div>
                      
                    </div>
                  </td>
                  <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div>
                  </td>

                </div>
              </tr>
              <!-- íì¤ ì¢ë£ -->


              <!-- íì¤ ìì -->
              <tr>
                <!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
                <!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
                <th scope="row">
                  <!-- ì²´í¬ë°ì¤ -->
                  <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div>
                </th>



                <!-- ìíì ë³´ -->
                <!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- ì´ë¯¸ì§ -->
                      <img id="img1" src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" class="rounded float" alt="...">
                    </div>

                    <!-- ì í ì´ë¦ -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      white skirts
                    </div>

                    <!-- ì¬ì´ì¦ ì¶ê° -->
                    <!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
                    <div class="product-size">
                      size
                      <!-- ì¬ê¸°ì ì¬ì´ì¦ EL ííì -->
                      <input class="num-wrap" value="M">
                    </div>
                    <!-- ìí íì´ì§ ë²í¼ -->
                    <!-- ì¬ê¸°ì DBì°ëí´ì ìí íì´ì§ ì ë³´ë¥¼ ë°ìì ë°ë¡ ê° ì ìê² í©ëë¤ -->
                    <div class="product-button">
                      <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>   
                    </div>
                  </div>

                </td>
                
                
                
                <div class="info-align">
                  <!-- ê°ê²© -->
                  <td>
                    <div class="info-align-box">
                      23.99$
                    </div>
                  </td>
                  <!-- ìë -->
                  <!-- ìë ì»´í¬ëí¸ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      
                        <!-- ì¬ê¸°ì ìë ë°ì¤ ì¶ê° -->
                        <div>
                          <input class="num-wrap" value="2" readonly>
                        </div>
                        
                        <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div>
                      
                    </div>
                  </td>
                  <!-- í©ê³ -->
                  <!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      <div>
                        <input class="all-count" value="47.98$" readonly>
                      </div>
                      
                    </div>
                  </td>
                  <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div>
                  </td>

                </div>
              </tr>
              <!-- íì¤ ì¢ë£ -->



              
              <!-- êµ¬ë²ì  -->
              <!-- íì¤ ìì -->
              <tr>
                <!-- th, forë¬¸ì¼ë¡ ëë¦½ëë¤ -->
                <!-- ëì¤ì ì¬ê¸°ì EL ííìì¼ë¡ ë¿ë ¤ì¤ëë¤ -->
                <th scope="row">
                  <!-- ì²´í¬ë°ì¤ -->
                  <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div>
                </th>



                <!-- ìíì ë³´ -->
                <!-- ì¬ê¸°ìì ìí ì´ë¦ì í´ë¦­íë©´ ê·¸ ìíì í´ë¹íë detailì ë¿ë¦¬ë ê¸°ë¥ ì¶ê° -->
                <td>
                  <div class="product-info-box">
                    <div class="minibox-img">
                      <!-- ì´ë¯¸ì§ -->
                      <img id="img1" src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" class="rounded float" alt="...">
                    </div>

                    <!-- ì í ì´ë¦ -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      white skirts
                    </div>

                    <!-- ì¬ì´ì¦ ì¶ê° -->
                    <!-- ì¬ì´ì¦ ì»´í¬ëí¸ ì¶ê° -->
                    <div class="product-size">

                      size
                    </div>
                  </div>

                </td>
                
                
                
                <div class="info-align">
                  <!-- ê°ê²© -->
                  <td>
                    <div class="info-align-box">
                      23.99$
                    </div>
                  </td>
                  <!-- ìë -->
                  <!-- ìë ì»´í¬ëí¸ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      2
                    </div>
                  </td>
                  <!-- í©ê³ -->
                  <!-- ê³ì°ëì´ì ëë í©ê³ ì¶ê° -->
                  <td>
                    <div class="info-align-box">
                      47.98$
                    </div>
                  </td>
                  <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div>
                  </td>

                </div>
              </tr>
              <!-- íì¤ ì¢ë£ -->

            </tbody>
          </table>

          <!-- íì´ë¸ end  -->

          <div class="checkbox-area">
            <!-- ì²´í¬ë°ì¤ -->
            <div class="info-align-box">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
                <label class="form-check-label" for="flexCheckDefault">
                  <div>ì ì²´ì í</div>
                </label>
              </div>
              <button type="button" class="btn btn-danger">
                ì­ì 

              </button>
            </div>
            
          </div>


        </section>
        <!-- bucket end -->

        <!-- ë²í¼ div -->
        <!-- ëª¨ë ì í ë²í¼ ìì­ -->


        <!-- ëª¨ë ì­ì  ë²í¼ ìì­ -->
        <div class="delete-button">
          <!-- <button type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >ëª¨ë ì­ì </button>
         -->
        </div>
        <!-- <div class="delete-button">
          <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >ëª¨ë ì í</button>
        </div> -->


      </section>   
    
    </main>

<%@ include file="../layout/footer.jsp"%>