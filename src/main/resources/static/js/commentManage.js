

	
	
	async function commentDelete(id){
	
	event.preventDefault();
	
	let response =await fetch("/comment/"+id,{
		method:"delete"
	});
	let parseResponse =await response.text();//json()or text()
	console.log(parseResponse);
	
	if(parseResponse ==="ok"){
		
		let deleteEL = document.querySelector("#reply-"+id);
		deleteEL.remove();
		// location는 화면전환을 해주는 객체
	}
}
	



async function commentUpdate(){
	
	event.preventDefault();
	

	let form = document.querySelector("#my-form");
	const formData = new FormData(form);

	let response =await fetch("/commentUpdate",{
		method:"put",
		body:formData,
		headers: {}
	});
	
	let parseResponse =await response.text();//json()or text()
	console.log(parseResponse);
	
	if(parseResponse ==="ok"){
		location.href = "/CommentsManagement";// location는 화면전환을 해주는 객체
	}
}