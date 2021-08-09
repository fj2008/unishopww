<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>



    <main>
      <div class="main-box">
        <section class="top">
          <!-- 상품 정보 -->
          <section class="information">
            <h3>${postEntity.productname}</h3>
            <p>size: S M L</p>
            <p>${postEntity.price}</p>
          </section>

          <!-- 상품 이미지 -->
          <section class="product-img">
            
            <img id="img1" src="/upload/${postEntity.image}" class="rounded float" alt="...">
            
          </section>


          <section>
          
          <c:choose>
          	<c:when test="${empty sessionScope.principal}">
            <div class="button-group">
              <div class="button-wrap">
                <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" onclick="goLoginCheck()">Buy</button>
              </div>
              <div class="button-wrap">
                <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" onclick="goLoginCheck()" >Input bucket</button>
              </div>
            </div>
            </c:when>
            <c:otherwise>
            <div class="button-group">
              <div class="button-wrap">
                <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" onclick="goPayment()">Buy</button>
              </div>
              <div class="button-wrap">
                <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" onclick="goBucket()" >Input bucket</button>
              </div>
            </div>
            </c:otherwise>
            </c:choose>
          </section>
        </section>
        

        
      
        <!-- 고객 상품평 -->
        <section class="member-comments-box">
          <!-- 모달 사용해서 상품평 바로 테이블에 넣기 -->
          <!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->
          
          <!-- 상품평 쓰기 -->
          <div class="input-comments">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >
              상품평 쓰기
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
          </div>

          <!-- 댓글 테이블 -->
          <!-- DB에서 가져와서 던져줌 -->
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">만족도</th>
                <th scope="col">상품평</th>
                <th scope="col">등록자</th>
                <th scope="col">등록일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">3</th>
                <td>Mark</td>
                <td>죽입니다..</td>
                <td>@mdo</td>
                <td>21-07-27</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>넘이뻐요</td>
                <td>@fat</td>
                <td>21-07-23</td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Larry the Bird</td>
                <td>사랑합니다~</td>
                <td>@twitter</td>
                <td>21-07-21</td>
              </tr>
            </tbody>
          </table>
        </section>
      </div>
    </main>

<%@ include file="../layout/footer.jsp"%>