<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<link href="font/font.css" rel="stylesheet">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/style.css">
<title>Liên hệ</title>


</head>

<body>
	<div class="wrapper">
		<!--Begin Header-->
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8088/ShopPK/index.htm"
					title="Liên hệ">
					<img src="./images/homelogo.png" width="258" height="90" />
				</a>
			</div>
			<!--form search-->
			<div class="search">
				<form action="search.htm" method="GET">
					<input name="s" type="search" placeholder="Tìm kiếm..." value="" />
					<button class="btnSearch" type="submit">
						<i class="fa fa-search fa-2x"></i>
					</button>
				</form>
			</div>
			<!--list Menu-->
			<div class="listMenu">
				<a href="http://localhost:8088/ShopPK/index.htm">
					<div class="txtMenu ">Trang chủ</div>
				</a>
				<div class="txtMenu">
					<div>
						<a >Balo, Túi xách <i
							class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						<a href="http://localhost:8088/ShopPK/product/1.htm">Balo thời trang </a> 
						<a href="http://localhost:8088/ShopPK/product/2.htm">Túi xách</a>
						
					</div>
				</div>
				<div class="txtMenu">
					<div>
						<a> Khác <i
							class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						
						 <a href="http://localhost:8088/ShopPK/product/3.htm">Kính thời trang</a>
						  <a href="http://localhost:8088/ShopPK/product/4.htm">Vớ</a>
						
					</div>
				</div>
				<a href="http://localhost:8088/ShopPK/product.htm">
				<div  class="txtMenu"> Sản phẩm</div></a>

			</div>
			<!--Dang ki dang nhap-->
			<div class="txtMenu">
				<div>
					<i class="fa fa-list"></i>
				</div>
				<div class="dropdown-content login">
					 <a
						href="http://localhost:8088/ShopPK/admin/login.htm">Đăng nhập</a>
						<a href="http://localhost:8088/ShopPK/contact.htm">
					<div class="txtMenu ">Liên hệ</div>
				</a>
				</div>
			</div>


		</div>
		<!--End Header-->
		<!--Contact container-->
		<div class="contactWrapper">
			<div class="googleMap">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.5163067808994!2d106.78507091474961!3d10.848279592272803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175271369fa2111%3A0x3e77061a5cdf2f11!2zMTAwIMSQxrDhu51uZyBNYW4gVGhp4buHbiwgSGnhu4dwIFBow7osIFF14bqtbiA5LCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1574594496906!5m2!1svi!2s"
					width="2200" height="550" frameborder="0" style="border: 0;"
					allowfullscreen=""></iframe>
			</div>
			<div class="contactContainer">
	

				<form class="formContact" action="contact/send.htm">

					<h2 style="align-self: center; color: #5C2200;">LIÊN HỆ TƯ VẤN
						KHÁCH HÀNG</h2>
					<input class="inputContact" name="name"
						placeholder="Họ tên của bạn..." required /> <input
						class="inputContact" name="phone" placeholder="Số điện thoại..."
						required />
					<textarea class="areaContact" name="content"
						placeholder="Nội dung cần tư vấn..."></textarea>
					<div class="contactButton">
						<button class="button contactButton">
							<span class="textButton">Gửi liên hệ</span>
						</button>
						</button>
						<div>${message}</div>
					</div>
				</form>

			</div>
		</div>
		<!--Contact container-->
		<!--FOOTER-->
		<div class="footerWrapper">
			<div class="footerContainer">
				<div class="txtFooter">

					<h3 class="titleFooter">Về NHSHOP</h3>
					<p>
						<span style="font-size: 100%;">NHSHOP là Shop online bắt
							đầu bán các mặt hàng phụ kiện thời trang từ năm 2019 , chúng tôi
							cung cấp những mặt hàng chủ yếu đáp ứng nhu cầu cho khách hàng,
							sản phẩm của chúng tôi luôn được yêu thích và được mọi người ủng
							hộ trong suốt thời gian qua, hàng hóa chúng tôi luôn đảm bảo về
							chất lượng về những sản phẩm được bán ra được feedback rất tốt từ
							khách hàng trong suốt thời gian qua. </span>
					</p>
				</div>
				<div class="txtFooter" style="line-height: 30px;">


					<h4 class="titleFooter">
						LIÊN HỆ<br>
					</h4>
					<p>
						<i class="fa fa-address-square"></i> 100 MAN THIỆN, QUẬN 9,TPHCM
					</p>
					<p>
						<i class="fa fa-phone-square"></i> 0337566668
					</p>
					<p>
						<a href="https://www.facebook.com/tiendev.designer"
							style="color: white;"> <i class="fa fa-facebook-square"></i>FACEBOOK.COM/NHSHOP
						</a>
					</p>
	                <div>
						<i class="fa fa-envelope-square"></i>
						nguyenquangtien1802@gmail.com
					</div>

				</div>
				<div class="txtFooter" style="line-height: 30px;">
					<h3 class="titleFooter">Mua hàng &amp; Thanh toán</h3>
					<p>
							<i class="fa fa-telegram"></i> Đặt hàng và ship COD
						toàn quốc
					</p>
					<p>
						<i class="fa fa-telegram"></i> Cam kết bảo hành 1 đổi 1 trong tháng đầu tiên
					</p>
					<p>
						<i class="fa fa-telegram"></i> Hotline: 0337566668
					</p>
				</div>

			</div>
		</div>
		<div class="end">Copyright 2019 © NHSHOP.VN</div>
	</div>
	<!--FOOTER-->


	</div>
	<script src="js/swiper.min.js"></script>
	<script src="js/index.js"></script>
</body>

</html>