<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bank Application</title>
<link rel="stylesheet" href="styles.css">
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #e9ecef; /* Light grey background */
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	text-align: center;
	background-color: #ffffff; /* White background for container */
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Subtle shadow effect */
	max-width: 700px;
	width: 90%;
}

h1 {
	color: #343a40; /* Dark grey heading color */
	margin-bottom: 20px; /* Added margin bottom for spacing */
}

.buttons {
	margin-top: 30px;
}

.btn {
	display: inline-block;
	padding: 12px 24px;
	margin: 10px;
	font-size: 18px;
	color: #ffffff;
	background-color: #007bff; /* Blue button background */
	border: none;
	border-radius: 5px;
	text-decoration: none;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Button shadow */
	transition: background-color 0.3s ease, transform 0.2s ease;
}

.btn:hover {
	background-color: #0056b3; /* Darker blue on hover */
	transform: translateY(-2px); /* Lift the button on hover */
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Increased shadow on hover */
}
</style>
</head>
<body>
	<div class="container">
		<h1>Welcome to the Bank Application</h1>
		<div class="buttons">
			<a href="customerLogin.jsp" class="btn">Customer Login</a>
			<a href="adminLogin.jsp" class="btn">Admin Login</a>
		</div>
	</div>
</body>
</html>
