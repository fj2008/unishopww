function goLogin() {
	location.href = "/auth/loginForm";
}

function buy() {
			// 체크 박스 전체 겟수
//			$('input:checkbox[name="id"]').length

			//체크된 박스 겟수
//			$('input:checkbox[name="id"]:checked').length

			// 물건 넘기기!
			$('input:checkbox[name="id"]').each (
				async function checked(){
				if(this.checked){

					// 체크 된 것들 each로 각각의 value 값을 던져주게 만든다
		            alert(this.value); 
					let id = this.value;
					// fetch로 value에 담으면 될듯!
					let postDto = {
							id: id
					};
					
				// 저장만 하기 때문에 response로 String을 안받았음
				// 왜냐하면 여러개를 던져주기 때문에!
				await fetch("/bucket/buy", {
					method: "post",
					body: JSON.stringify(postDto),
					headers: {
						"Content-Type": "application/json;charset=utf-8"
					}
				});
				
				console.log(id+" : id 번째 물건 저장되었어요!");
		      }
				
			});
			// end forEach문
			
			
			//물건을 넘겨 줬으면 이제 View컨트롤러를 때릴 url
			location.href="/";
			
			
		}
		// end buy 함수

async function inputBucket(userId, productname, image, size, price) {

	console.log("나실행됨?");

	let postDto = {
		productname: productname,
		image: image,
		size: size,
		price: price
	};

	let response = await fetch("/bucket", {
		method: "post",
		body: JSON.stringify(postDto),
		headers: {
			"Content-Type": "application/json;charset=utf-8"
		}
	});

	let parseResponse = await response.text();

	console.log(parseResponse);

	if (parseResponse === "ok") {

		if (confirm("선택한 상품이 장바구니에 담겼습니다, 장바구니로 가시겠습니까?") == true) {
			location.href = "/bucket/" + userId;

		} else {
			return;
		}
	}

	if (parseResponse === "no") {

		if (confirm("선택한 상품이 장바구니에 담겼습니다, 장바구니로 가시겠습니까?") == true) {
			location.href = "/bucket/" + userId;

		} else {
			return;
		}
	}

}

function selectProductDelete(userId) {

	if (confirm("정말 선택하신 물품을 장바구니에서 삭제 하시겠습니까?") == true) {
		$('input:checkbox[name="id"]').each(
			async function checked() {
				if (this.checked) {

					// 체크 된 것들 each로 각각의 value 값을 던져주게 만든다

					// alert는 확인용!
					//		            alert(this.value); 
					let id = this.value;
					// fetch로 value에 담으면 될듯!
					let postDto = {
						id: id
					};

					// 저장만 하기 때문에 response로 String을 안받았음
					// 왜냐하면 여러개를 던져주기 때문에!
					await fetch("/bucket/delete", {
						method: "delete",
						body: JSON.stringify(postDto),
						headers: {
							"Content-Type": "application/json;charset=utf-8"
						}
					});

					console.log(id + " : id 번째 물건 삭제되었어요!");
				}

			});
		location.href = "/bucket/" + userId;

	} else {
		return;
	}
}


//location.reload();
//}



function selectAll(selectAll) {
	const checkboxes
		= document.querySelectorAll('input[type="checkbox"]');

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked
	})
}