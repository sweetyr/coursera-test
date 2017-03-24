<?php

//define variables and set to empty values 
		  
$errorMessage = '';
if($_SERVER["REQUEST_METHOD"] == "POST") {
	
	$formValues = array_map('trim', $_POST); // Trim of array values
	$errorMessage = "Name is required";
	if(empty($formValues["name"])) {
		$errorMessage = "Name is required";
	} else if(!preg_match("/^[a-zA-Z ]*$/",input_validatation($formValues["name"]))) {
		$errorMessage = "Only letters and white space allowed"; 
	} else if(empty($formValues["gender"])) {
		$errorMessage = "Gender is required";
	} else if(empty($formValues["age"])) {
		$errorMessage = "Age is required";
	} else if(empty($formValues["birthday"])) {
		$errorMessage = "DOB is required";
	} else if(empty($formValues["countries"])) {
		$errorMessage = "Country is required";
	} else if(empty($formValues["email"])) {
		$errorMessage = "Email is required";
	} else if(!filter_var($formValues["email"],FILTER_VALIDATE_EMAIL)) {
		$errorMessage = "Invalid email format";
	} else if(empty($formValues["number"])) {
		$errorMessage = "Contact no is required";
	} else if(!preg_match("/^[0-9]{10}$/", $formValues["number"])) {
		$errorMessage = "Invalid Contact no";
	} else {
		header('Location:http://localhost/sri-pjt/feedback.php');
		die();
		// Redirect to form page
	}
	//exit;
	if(!empty($errorMessage)) {
		session_start();
		$_SESSION["error_message"] = $errorMessage;
		header('Location:http://localhost/sri-pjt/feedback.php');
		die();
	}
 } //close for $_SERVER["REQUEST_METHOD"]
  
function input_validatation($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}                               

?>