/**
 * Student Registration & Modify Details form validation
 */
function validate(frm) {

	document.getElementById("spanRoll").innerHTML = "";
	document.getElementById("spanfname").innerHTML = "";
	document.getElementById("spanmname").innerHTML = "";
	document.getElementById("spanlname").innerHTML = "";
	document.getElementById("spanemail").innerHTML = "";
	document.getElementById("spanmobile").innerHTML = "";
	document.getElementById("spanpasswrd").innerHTML = "";
	document.getElementById("spanadd1").innerHTML = "";
	document.getElementById("spanadd2").innerHTML = "";
	document.getElementById("spangender").innerHTML = "";
	document.getElementById("spandob").innerHTML = "";
	document.getElementById("spanstandard").innerHTML = "";
	document.getElementById("spancheckboxterms").innerHTML = "";
	
	var fnam = frm.fname.value;
	var mnam = frm.mname.value;
	var lnam = frm.lname.value;
	var mail = frm.email.value;
	var mobil = frm.mobile.value;
	var passwr = frm.passwrd.value;
	var addres1 = frm.address1.value;
	var addres2 = frm.address2.value;
	var gendr = frm.gender.selected.value;
	var db = frm.dob.value;
	var curentStandard = frm.currentStandard.value;
	var c1 = frm.getElementById("cb1").checked;

	if (fnam == "") {
		document.getElementById("spanfname").innerHTML = "Student first name is required.";
		return false;
	}
	if (mnam == "") {
		document.getElementById("spanmname").innerHTML = "Student middle name is required.";
		return false;
	}
	if (mnam.length <1) {
		document.getElementById("spanmname").innerHTML = "Student middle name must be greater than or equal to 1 character.";
		return false;
	}
	if (lnam == "") {
		document.getElementById("spanlname").innerHTML = "Student last name is required.";
		return false;
	}
	if (mail == "") {
		document.getElementById("spanemail").innerHTML = "Student email id is required.";
		return false;
	}
	if (mobil == "") {
		document.getElementById("spanmobile").innerHTML = "Student mobile no. is required.";
		return false;
	}else if (mobil.length <10) {
		document.getElementById("spanmobile").innerHTML = "Student mobile no. must be greater than or equal to 10 digit.";
		return false;
	}
	else if (isNaN(mobil)) {
		document.getElementById("spanmobile").innerHTML = "Student mobile no. must be numeric.";
		return false;
	}
	
	if (passwr == "") {
		document.getElementById("spanpasswrd").innerHTML = "Student password is required.";
		return false;
	}else if (passwr.length <5) {
		document.getElementById("spanpasswrd").innerHTML = "Student password must be greater than or equal to 5 character.";
		return false;
	}
	
	if (addres1 == "") {
		document.getElementById("spanadd1").innerHTML = "Student address1 line is required.";
		return false;
	}else if (addres1.length <5) {
		document.getElementById("spanadd1").innerHTML = "Student address line1 must be greater than or equal to 5 character.";
		return false;
	}
	if (addres2 == "") {
		document.getElementById("spanadd2").innerHTML = "Student address2 line is required.";
		return false;
	}else if (addres2.length <5) {
		document.getElementById("spanadd2").innerHTML = "Student address line2 must be greater than or equal to 5 character.";
		return false;
	}
	

	if (db == "") {
		document.getElementById("spandob").innerHTML = "Student date of birth is required.";
		return false;
	}
	if (curentStandard == "") {
		document.getElementById("spanstandard").innerHTML = "Student currentStandard  is required.";
		return false;
	}
	if (c1) {}
	else{
		document.getElementById("spancheckboxterms").innerHTML = "Please accept Terms & Conditions.";
		return false;
	}
	
	if (gendr == "") {
		document.getElementById("spangender").innerHTML = "Student gender is required.";
		return false;
	}
	frm.vflag.value="Y";
	return true;
}