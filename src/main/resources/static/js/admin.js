
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