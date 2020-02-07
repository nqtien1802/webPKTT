<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
	margin-left: 400px;
	margin-right: 400px;
	margin-top: 60px;
	box-shadow: 1px 3px 6px 3px rgba(15, 15, 15, 0.219);
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #FDC215;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>

<body>


	<form action="admin/login.htm" method="post">
		<div class="imgcontainer">
			<img src="./images/logo.png" style="width: 100px; height: 100px;"
				alt="Avatar" class="avatar">
		</div>

		<div class="container">
			<label for="uname"><b>Tài Khoản</b></label> <input type="text"
				placeholder="Emai hoặc tài khoản" name="uname" required> <label
				for="psw"><b>Mật khẩu</b></label> <input type="password"
				placeholder="Mật Khẩu" name="psw" required>
			<div style="color:red;">${message }</div>
			<button type="submit">Đăng nhập</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>

		<div class="container" style="background-color: #f1f1f1">
			<button type="reset" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>
	</form>

</body>

</html>