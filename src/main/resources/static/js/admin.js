
function deleteCheck() {
	const checkNull = $('input:checkbox[name="id"]:checked').val();
	console.log(checkNull);

	if (checkNull == undefined) {
		alert("배송완료할 상품을 선택해 주세요");

	} else {
		if (confirm("선택한 상품을 배송완료 합니다.") == true) {



			$('input:checkbox[name="id"]').each(
				async function checked() {
					if (this.checked) {
						let id = this.value;

						await fetch("/admin/" + id, {
							method: "delete"
						});
						//						let parseResponse = await response.text();//json()or text()
						//						console.log(parseResponse);

						console.log(id);


						// location는 화면전환을 해주는 객체

					}
				});

			location.reload();


		}//end if 

		else {
			return;
		}

	}//end else
}



//상품 수정 요청하는 자바스크립트
async function productUpdate(){
	event.preventDefault();
	console.log("실행됨?")

	let form = document.querySelector("#my-form");
	const formData = new FormData(form);

	let response =await fetch("/admin/productUpdate",{
		method:"put",
		body:formData,
		headers: {}
	});
	
	let parseResponse =await response.text();//json()or text()
	console.log(parseResponse);
	
	if(parseResponse ==="ok"){
		location.reload();
	}
}

//상품 삭제 요청하는 자바스크립트
async function productDelete(id){
	console.log(id);
	let response = await fetch("/admin/productDelete/"+id,{
		method:"delete"
	});
	let parseResponse = await response.text();
	console.log(parseResponse);
	if(parseResponse ==="ok"){
		location.reload();
	}
}
