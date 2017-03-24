<?php
session_start();
?>
<!DOCTYPE html>
<!--My First task in PHP-->
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/layout.css">
<title> Feedback Registration!!! </title>
</head>
<body class="text">
	<?php if(isset($_SESSION["error_message"])): ?>
		<span class="error"><?php echo $_SESSION["error_message"];?></span><br>
	<?php endif; ?>
	<h2>Please Enter Your Details For Our Website!</h2>
	<form name="form1" action= "error.php" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>Your General details</legend>
			<label for="name"> Name:</label>
			<input type="text" name="name" placeholder="Your Full name" required=""> <br>
			
			<label for="Gender"> Gender: </label>
			<input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female <br>

			<label for="Age">Age:</label>
			<input type="number" min ="13" max="100" step="1" value="11" id ="age" name="age" required=""><br>

			<label for="Date of birth">Date of birth:</label>
			<input type="date" id="birthday" placeholder="dd/mm/yyyy" name="birthday" required=""><br>

			<label for="color">Favorite color:</label>
			<input type="color" id="color" name="color" value="0-9"/> <br>

			<label for="countries">Which country:</label>
			<select name="countries">
				<option value="In">India</option>
				<option value="Mal">Malaysia</option> 
				<option value="Ch">China</option> 
				<option value="Aus">Australia</option> 
				<option value="New">New Zealand</option> 
				<option value="no">No selection</option> 
			</select>                       
		</fieldset> 
		<br>

		<fieldset>
			<legend>Your Indicators</legend>
			<label for="Height">Height:</label>Short<input type="range" id="height" name="height" min="0" max="100" step="10" value="35" class="range">Tall<br>
			<label for="Salary">Salary:</label>Poor<input type="range" id="salary" name="salary" min="0" max="100" step="10" value="45" >Rich<br>
		</fieldset>
		<br>
		
		<fieldset>
			<legend>Your Contact Information</legend>
			<label for="email"> Email: </label>
			<input type="email" name="email" autofocus=""><br><br>
			<label for="Mobile">Mobile:</label>
			<input type="tel" name="number" autofocus=""><br><br>
			<label for="address">Address:</label>
			<textarea name ="address" cols="20" rows="5"></textarea><br><br>
			<label for="contact">Method to contact you:</label>
			<input type="checkbox" name="contact" value="Email">Email 
			<input type="checkbox" name="contact" value="Whatsapp">Whatsapp 
		</fieldset>
		<br>
		<input type="submit" name ="submit" value="submit">
	</form>
	<?php
		session_destroy();
	?>
</body>
</html>