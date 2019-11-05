<?php 
session_start();

// connect to database
$db = mysqli_connect('localhost', 'root', '', 'multi_login');

// variable declaration
$username = "";
$email    = "";
$errors   = array(); 

// call the register() function if register_btn is clicked
if (isset($_POST['register_btn'])) {
	register();
}

// REGISTER USER
function register(){
	// call these variables with the global keyword to make them available in function
	global $db, $errors, $username, $email;

	$username    =  ($_POST['username']);
	$team       =  ($_POST['team']);
	$bet  =  ($_POST['bet']);

	// form validation: ensure that the form is correctly filled
	if (empty($username)) { 
		array_push($errors, "Username is required"); 
	}
	if (empty($team)) { 
		array_push($errors, "Team name is required"); 
	}
	if (empty($bet)) { 
		array_push($errors, "Bet is required"); 
	}

		if (isset($_POST['username'])) {
			$username = ($_POST['username']);
			$query = "INSERT INTO basketball (username, team, bet) 
					  VALUES('$username', '$team', '$bet')";
			mysqli_query($db, $query);
			$_SESSION['success']  = "You placed your bet! Goodluck!!!";
			header('location: basketballindex.php');
		}else{
			$query = "INSERT INTO basketball (username, team, bet) 
					  VALUES('$username', '$team', '$bet')";
			mysqli_query($db, $query);			
		}
	}
	?>