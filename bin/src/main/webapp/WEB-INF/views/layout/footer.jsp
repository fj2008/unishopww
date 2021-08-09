<!--footer-->
<div class="jumbotron text-center" style="margin-bottom: 0">
	<p>Footer</p>
</div>
<script>


function goPaymentAPI(name){
	console.log(name);
	event.preventDefault();

	
	 let IMP = window.IMP;
    IMP.init("imp55496891");
    IMP.request_pay({
        pg: "html5_inicis",//이니시스 웹표준 결제창
        pay_method: "card",//결제방법
        merchant_uid: "ORD20180131-0000013",//주문번호
        name: "청바지",//상품명
        amount: 19000,//가격
        buyer_email: "ssar@gmail.com",//이메일
        buyer_name: "이호겸",//이름
        buyer_tel: "010-4242-4242",//연락처
        buyer_addr: "서울특별시 강남구 신사동",//주소
        buyer_postcode: "01181"//상품코드
    }, function (rsp) {
        console.log(rsp);
        if (rsp.success) {
        	
            let msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;//아임포트 거래고유번호
            msg += '상점 거래ID : ' + rsp.merchant_uid;//주문번호
            msg += '결제 금액 : ' + rsp.paid_amount;//결제금액
            msg += '카드 승인번호 : ' + rsp.apply_num;
            
            fetch()
        } else {
            let msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
    });

}



		// DBìì íë§¤ê°ë¥¼ ë³ìë¡ ë´ììì ìëê³¼ í©ê³ê° ë³íê° ë©ëë¤.
		function selectAll(selectAll)  {
		    const checkboxes 
		      = document.querySelectorAll('input[type="checkbox"]');
		    
		    checkboxes.forEach((checkbox) => {
		      checkbox.checked = selectAll.checked
		    })
		  }
		
	



		//ê²°ì  íì´ì§
		function goPayment(){
			alert("ê²°ì  íì´ì§ë¡ ì´ëíìê² ìµëê¹?")
			location.href = "/post/payment/${postEntity.id}";
		}
		
		//ì¥ë°êµ¬ë
		function goBucket() {
			alert("ì¥ë°êµ¬ëë¡ ì´ë íìê² ìµëê¹?");
			location.href = "/bucket";
		}

		function logout() {
			alert("ë¡ê·¸ììíìê² ìµëê¹Â?");
			location.href = "/auth/loginForm";
		}
		
		function goLoginCheck(){
			alert("ë¡ê·¸ì¸ì íìì¼ ì´ì©íì¤ì ìë íì´ì§ ìëë¤");
			location.href = "/auth/loginForm";
		}
		
		
		function goLogin(){
			location.href = "/auth/loginForm";
		}
		 
		async function acceptNumber(){
			alert("ì£¼ìì°¾ê¸°");
			
			let phoneNumber = document.querySelector("#textsms").value;
			alert(phoneNumber);
			
			fetch("/auth/findIdsms?phoneNumber="+phoneNumber);
		}
		
		function goPopup() {

			var pop = window.open("/juso", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");

		}

		function jusoCallBack(roadFullAddr) {
			let addressEL = document.querySelector("#address");
			addressEL.value = roadFullAddr;
			console.log(addressEL)
		}
		
		const img = document.getElementById('img');
		  img.addEventListener('mouseover', (event)=> {
		    img.src="https://images.unsplash.com/photo-1583846717393-dc2412c95ed7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80";
		  });
		  img.addEventListener('mouseout', (event) => {
		    img.src="https://images.unsplash.com/photo-1583846783214-7229a91b20ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80";
		  });
		  
		  const img1 = document.getElementById('img1');
		  img1.addEventListener('mouseover', (event)=> {
		    img1.src="https://images.unsplash.com/photo-1552027933-f034ba955d49?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80";
		  });
		  img1.addEventListener('mouseout', (event) => {
		    img1.src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80";
		  });

		  const img2 = document.getElementById('img2');
		  img2.addEventListener('mouseover', (event)=> {
		    img2.src="https://images.unsplash.com/photo-1561932850-4b65ce092609?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80";
		  });
		  img2.addEventListener('mouseout', (event) => {
		    img2.src="https://images.unsplash.com/photo-1561932850-f13404855e53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=313&q=80";
		  });
		  
		  function selectAll(selectAll)  {
			    const checkboxes 
			      = document.querySelectorAll('input[type="checkbox"]');
			    
			    checkboxes.forEach((checkbox) => {
			      checkbox.checked = selectAll.checked
			    })
			  }
		  
		// DBÃ¬ÂÂÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤ÃªÂ°ÂÃ«Â¥Â¼ Ã«Â³ÂÃ¬ÂÂÃ«Â¡Â Ã«ÂÂ´Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃ«ÂÂÃªÂ³Â¼ Ã­ÂÂ©ÃªÂ³ÂÃªÂ°Â Ã«Â³ÂÃ­ÂÂÃªÂ°Â Ã«ÂÂ©Ã«ÂÂÃ«ÂÂ¤.

		

	</script>
</body>
</html>