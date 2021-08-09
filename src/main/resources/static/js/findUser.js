async function acceptNumber(){
	alert("주소");
	
	let phoneNumber = document.querySelector("#textsms").value;
	alert(phoneNumber);
	
	fetch("/auth/findIdsms?phoneNumber="+phoneNumber);
}