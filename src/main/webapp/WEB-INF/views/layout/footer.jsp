<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--footer-->
<div class="jumbotron text-center" style="margin-bottom: 0">
	<p>하하하</p>
</div>
<script src="/js/header.js"></script>
<script>

		function selectAll(selectAll)  {
		    const checkboxes 
		      = document.querySelectorAll('input[type="checkbox"]');
		    
		    checkboxes.forEach((checkbox) => {
		      checkbox.checked = selectAll.checked
		    })
		  }
		
	



		
		function goPayment(){
			alert("결제화면으로 이동하시겠습니까?");
			location.href = "/product/payment/${postEntity.id}";
		}
		
		function goBucket() {
			location.href = "/bucket";
		}

		function logout() {
			alert("로그아웃 실행되냐?");
			
			location.href = "/user/logout";
		}
		
		function goLoginCheck(){
			alert("로그인하셔야 들어갈수 있는 페이지입니다.");
			location.href = "/auth/loginForm";
		}
		
		
		function goLogin(){
			alert("실행됨?");
			location.href = "/auth/loginForm";
		}
		 
		
		
// 		const img = document.getElementById('img');
// 		  img.addEventListener('mouseover', (event)=> {
// 		    img.src="https://images.unsplash.com/photo-1583846717393-dc2412c95ed7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80";
// 		  });
// 		  img.addEventListener('mouseout', (event) => {
// 		    img.src="https://images.unsplash.com/photo-1583846783214-7229a91b20ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80";
// 		  });
		  
// 		  const img1 = document.getElementById('img1');
// 		  img1.addEventListener('mouseover', (event)=> {
// 		    img1.src="https://images.unsplash.com/photo-1552027933-f034ba955d49?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80";
// 		  });
// 		  img1.addEventListener('mouseout', (event) => {
// 		    img1.src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80";
// 		  });

// 		  const img2 = document.getElementById('img2');
// 		  img2.addEventListener('mouseover', (event)=> {
// 		    img2.src="https://images.unsplash.com/photo-1561932850-4b65ce092609?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80";
// 		  });
// 		  img2.addEventListener('mouseout', (event) => {
// 		    img2.src="https://images.unsplash.com/photo-1561932850-f13404855e53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=313&q=80";
// 		  });
		  
// 		  function selectAll(selectAll)  {
// 			    const checkboxes 
// 			      = document.querySelectorAll('input[type="checkbox"]');
			    
// 			    checkboxes.forEach((checkbox) => {
// 			      checkbox.checked = selectAll.checked
// 			    })
// 			  }
		  
		
		

	</script>
</body>
</html>