

	
	
	async function commentDelete(id){
	
	event.preventDefault();
	
	let response =await fetch("/comment/"+id,{
		method:"delete",
		body:JSON.stringify(updateDto),
		headers:{
			"Content-Type":"application/json; charset=utf-8"
		}
	});
	let parseResponse =await response.text();//json()or text()
	console.log(parseResponse);
	
	if(parseResponse ==="ok"){
		location.reload;// location는 화면전환을 해주는 객체
	}
}
	



async function commentUpdate(id){
	
	
	


	let image = document.querySelector("#image").value;
	let score = document.querySelector("#score").value;
	let sizecs = document.querySelector("#sizecs").value;
	let colorcs = document.querySelector("#colorcs").value;
	let productcs = document.querySelector("#productcs").value;
	
	
	console.log(image);
	console.log(sizecs);
	
	let updateDto ={
			id : id,
			image : image,
			score : score,
			sizecs : sizecs,
			colorcs :colorcs,
			productcs : productcs
	};
	
	let response =await fetch("/commentUpdate",{
		method:"put",
		body:JSON.stringify(updateDto),
		headers:{
			"Content-Type":"application/json; charset=utf-8"
		}
	});
	
	let parseResponse =await response.text();//json()or text()
	console.log(parseResponse);
	
	if(parseResponse ==="ok"){
		location.reload;// location는 화면전환을 해주는 객체
	}
}