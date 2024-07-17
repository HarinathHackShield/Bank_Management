<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register Customer</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f4f7;
	color: #333;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px;
	max-width: 500px;
	width: 100%;
	box-sizing: border-box;
}

h2 {
	color: #3498db;
	margin-bottom: 20px;
	text-align: center;
}

form {
	display: flex;
	flex-direction: column;
	gap: 15px;
}

label {
	font-weight: bold;
	margin-bottom: 5px;
	color: #555;
}

input, select {
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 16px;
}

select {
	background-color: #fff;
	color: #333;
}

button {
	background-color: #3498db;
	border: none;
	color: #fff;
	padding: 12px 20px;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.3s ease;
	margin-top: 10px;
}

button:hover {
	background-color: #2980b9;
	transform: scale(1.05);
}

.error {
	color: #e74c3c;
	margin-top: 10px;
	text-align: center;
}
</style>
<script>
	function validateForm() {
		const mobileNo = document.getElementById('mobileNo').value;
		const email = document.getElementById('email').value;
		const idProof = document.getElementById('idProof').value;

		const mobileNoPattern = /^[0-9]{10}$/;
		const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		const idProofPattern = /^[0-9]{12}$/;

		if (!mobileNoPattern.test(mobileNo)) {
			alert('Please enter a valid 10-digit mobile number.');
			return false;
		}

		if (!emailPattern.test(email)) {
			alert('Please enter a valid email address.');
			return false;
		}

		if (!idProofPattern.test(idProof)) {
			alert('ID Proof must be a 12-digit number.');
			return false;
		}

		// Perform additional server-side checks for uniqueness
		return true;
	}
</script>
</head>
<body>
	<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("adminLogin.jsp");
		return;
	}
	%>
	<div class="container">
		<h2>Register Customer</h2>
		<form action="registerCustomer" method="post"
			onsubmit="return validateForm()">
			<label for="fullName">Full Name:</label> <input type="text"
				id="fullName" name="fullName" required> <label for="address">Address:</label>
			<input type="text" id="address" name="address" required> <label
				for="mobileNo">Mobile No:</label> <input type="text" id="mobileNo"
				name="mobileNo" required> <label for="email">Email:</label>
			<input type="email" id="email" name="email" required> <label
				for="accountType">Account Type:</label> <select id="accountType"
				name="accountType" required>
				<option value="Savings">Saving</option>
				<option value="Checking">Current</option>
			</select> <label for="initialBalance">Initial Balance:</label> <input
				type="number" id="initialBalance" name="initialBalance" step="0.01"
				required> <label for="dob">Date of Birth:</label> <input
				type="date" id="dob" name="dob" required> <label
				for="idProof">ID Proof:</label> <input type="text" id="idProof"
				name="idProof" required>

			<button type="submit">Register</button>

			<%
			if (request.getAttribute("error") != null) {
			%>
			<p class="error"><%=request.getAttribute("error")%></p>
			<%
			}
			%>
		</form>
	</div>
</body>
</html>
