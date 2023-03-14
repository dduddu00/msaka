function CheckShippingInfo() {

	var phone3 = document.getElementById("phone3");
	var phone4 = document.getElementById("phone4");
	


	// 전화번호 체크
	if (phone3.value.length == 0 || isNaN(phone3.value)) {
		alert("[전화번호]\n숫자만 입력하세요");
		phone3.select();
		phone3.focus();
		return false;
	}
		// 전화번호 체크
	if (phone4.value.length == 0 || isNaN(phone4.value)) {
		alert("[전화번호]\n숫자만 입력하세요");
		phone4.select();
		phone4.focus();
		return false;
	}
	


	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newProduct.submit()
}
