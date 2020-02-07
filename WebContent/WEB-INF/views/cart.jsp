<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf8">
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<link href="font/font.css" rel="stylesheet">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
body {
  background: url("./images/giohang.jpg") no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  font-family: "Open Sans", serif;
}

</style>
<title>Cart</title>
</head>
<body>
	<div style="text-align: center;">
		<h1 style="color: yellow;align-self: center;">Kính chào quý khách</h1>
		<form class="formContact" action="buy.htm" method="get">

			<h2 style="align-self: center; color: yellow;">Mua Hàng</h2>
			<input class="inputContact" name="name"
				placeholder="Họ tên của bạn..." /> <input class="inputContact"
				name="phone" placeholder="Số điện thoại..." /> <input
				class="inputContact" name="quantity" placeholder="Số lượng..." />

			<div class="contactButton">
				<button class="button contactButton">
						<span class="textButton">Mua Ngay</span>
				</button>
			</div>
				${message}
		</form>
	</div>
    <div class="productButton">
          <a href="http://localhost:8088/ShopPK/index.htm">
          <div  class="button" >
          <span class ="textButton">Home</span>
          </div>
          </a>
    
    
    </div>

</body>
</html>