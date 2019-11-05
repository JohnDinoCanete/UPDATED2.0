<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
    <link rel="stylesheet" href="reg.css">
</head>
<?php include('functions.php') ?>

<body>
<style>

body{
	background-image:url('basketball.jfif');
	background-attachment:fixed;
	background-size:cover;
}
</style>
<div class="header">
	<h2>Bet</h2>
</div>
<form method="post" action="basketballbetadd.php">
<?php echo display_error(); ?>
	<div class="input-group">
		<label>Username</label>
		<input type="text" name="username" value="" required>
	</div>
	<div class="input-group">
		<label>Team</label>
		<input type="text" name="team" value="" required>
	</div>
	<div class="input-group">
		<label>Bet</label>
		<input type="text" name="bet" required>
	</div>
	<center>
	<div class="input-group">
		<button type="submit" class="btn" name="register_btn">Bet</button>
	</div>
	</center>
</form>
</body>
</html>