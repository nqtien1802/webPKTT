<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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


<title>NHSHOP</title>

</head>

<body>
	<div class="wrapper">
		<!--Begin Header-->
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8088/ShopPK/index.htm"
					title="Chào mừng bạn đến với NHSHOP"> <img
					src="./images/homelogo.png" width="258" height="90" />
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
					<div class="txtMenu active">Trang chủ</div>
				</a>
				<div class="txtMenu">
					<div>
						<a>Balo, Túi xách <i class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						<a href="http://localhost:8088/ShopPK/product/1.htm">Balo thời
							trang </a> <a href="http://localhost:8088/ShopPK/product/2.htm">Túi
							xách</a>

					</div>
				</div>
				<div class="txtMenu">
					<div>
						<a> Khác <i class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">

						<a href="http://localhost:8088/ShopPK/product/3.htm">Kính thời
							trang</a> <a href="http://localhost:8088/ShopPK/product/4.htm">Vớ</a>

					</div>
				</div>
				<a href="http://localhost:8088/ShopPK/product.htm">
					<div class="txtMenu ">Sản phẩm</div>
				</a>

			</div>
			<!--Dang ki dang nhap-->
			<div class="txtMenu">
				<div>
					<i class="fa fa-list"></i>
				</div>
				<div class="dropdown-content login">
					<a href="http://localhost:8088/ShopPK/admin/login.htm">Đăng
						nhập</a> <a href="http://localhost:8088/ShopPK/contact.htm">
						<div class="txtMenu">Liên hệ</div>
					</a>
				</div>
			</div>


		</div>
		<!--End Header-->
		<!--Begin Slide-->

		<div class="slide">

			<div class="" style="max-width: 100%;">
				<img class="mySlides" src="images/banner1.jpg"> <img
					class="mySlides" src="images/banner2.jpg">
				<div class="sliderContainer">
					<div class="iconPre" onclick="plusDivs(-1)">&#10094;</div>
					<div class="iconNext" onclick="plusDivs(1)">&#10095;</div>



				</div>

			</div>

		</div>
		<!--End Slide-->

		<!--Begin line-->
		<div class="lineContainer">
			<div class="line"></div>
			<div class="txtLine">
				<span>SẢN PHẨM BÁN CHẠY</span>
			</div>
			<div class="line"></div>
		</div>
		<!--End line-->
		<!--Begin Products-->
		<div class="productWrapper">
			<!--Begin Product Container-->
			<div class="productContainer">
				<c:forEach var="item" items="${listBanChay}">
					<!--Begin product-->
					<div class="product">
						<div class="productImage">
							<a href="http://localhost:8088/ShopPK/detail/${item.id}.htm">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="${item.discount !=0.0 ? 'percent': ''}">
									<f:formatNumber value="${item.discount}" type="percent" />
								</div>

							</a>
						</div>
						<div class="productTitle">
							<span>${item.name }</span>
						</div>
						<div class="productPrice">
							<div class="txtPrice">
								${item.discount !=0.0 ? item.price: ''}<span
									style="text-decoration: underline;">${ item.discount !=0.0 ?'đ':''}</span>
							</div>
							<div class="txtPriceSale">
								<f:formatNumber value="${item.price-item.price*item.discount}"
									type="currency" />
								<span style="text-decoration: underline;"></span>
							</div>
						</div>
						<div class="productButton">
							<a href="http://localhost:8088/ShopPK/cart/${item.id}.htm">
								<div class="button">
									<span class="textButton">Mua ngay</span>
								</div>
							</a>
						</div>
					</div>
					<!--End product-->
				</c:forEach>

			</div>
			<!--End ProductContainer-->

			<!--Button Xem them-->
			<div class="productButton btnXemThem">
				<a href="http://localhost:8088/ShopPK/product.htm">
					<div class="button">
						<span class="textButton">Xem thêm</span>
					</div>
				</a>
			</div>
			<!--End button xem them-->
			<!--End ProductContainer-->
		</div>
		<!--End Products-->
		<!--Begin line-->
		<div class="lineContainer">
			<div class="line"></div>
			<div class="txtLine">
				<span>SẢN PHẨM MỚI VỀ</span>
			</div>
			<div class="line"></div>
		</div>
		<!--End line-->
		<!--Begin Products-->
		<div class="productWrapper">
			<!--Begin Product Container-->
			<div class="productContainer">
				<c:forEach var="item" items="${listNew}">
					<!--Begin product-->
					<div class="product">
						<div class="productImage">
							<a href="http://localhost:8088/ShopPK/detail/${item.id}.htm">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="${item.discount !=0.0 ? 'percent': ''}">
									<f:formatNumber value="${item.discount}" type="percent" />
								</div>

							</a>
						</div>
						<div class="productTitle">
							<span>${item.name }</span>
						</div>
						<div class="productPrice">
							<div class="txtPrice">
								${item.discount !=0.0 ? item.price: ''}<span
									style="text-decoration: underline;">${ item.discount !=0.0 ?'đ':''}</span>
							</div>
							<div class="txtPriceSale">
								<f:formatNumber value="${item.price-item.price*item.discount}"
									type="currency" />
								<span style="text-decoration: underline;"></span>
							</div>
						</div>
						<div class="productButton">
							<a href="http://localhost:8088/ShopPK/cart/${item.id}.htm">
								<div class="button">
									<span class="textButton">Mua ngay</span>
								</div>
							</a>
						</div>
					</div>
					<!--End product-->
				</c:forEach>

			</div>
			<!--End ProductContainer-->

			<!--Button Xem them-->
			<div class="productButton btnXemThem">
				<a href="http://localhost:8088/ShopPK/product.htm">
					<div class="button">
						<span class="textButton">Xem thêm</span>
					</div>
				</a>
			</div>
			<!--End button xem them-->
			<!--End ProductContainer-->
		</div>
		<!--End Products-->
		<!--Begin line-->
		<div class="lineContainer">
			<div class="line"></div>
			<div class="txtLine">
				<span>SẢN PHẨM ĐANG SALE</span>
			</div>
			<div class="line"></div>
		</div>
		<!--End line-->
		<!--Begin Products-->
		<div class="productWrapper">
			<!--Begin Product Container-->
			<div class="productContainer">
				<c:forEach var="item" items="${listSale}">
					<!--Begin product-->
					<div class="product">
						<div class="productImage">
							<a href="http://localhost:8088/ShopPK/detail/${item.id}.htm">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="${item.discount !=0.0 ? 'percent': ''}">
									<f:formatNumber value="${item.discount}" type="percent" />
								</div>

							</a>
						</div>
						<div class="productTitle">
							<span>${item.name }</span>
						</div>
						<div class="productPrice">
							<div class="txtPrice">
								${item.discount !=0.0 ? item.price: ''}<span
									style="text-decoration: underline;">${ item.discount !=0.0 ?'đ':''}</span>
							</div>
							<div class="txtPriceSale">
								<f:formatNumber value="${item.price-item.price*item.discount}"
									type="currency" />
								<span style="text-decoration: underline;"></span>
							</div>
						</div>
						<div class="productButton">
							<a href="http://localhost:8088/ShopPK/cart/${item.id}.htm">
								<div class="button">
									<span class="textButton">Mua ngay</span>
								</div>
							</a>
						</div>
					</div>
					<!--End product-->
				</c:forEach>

			</div>
			<!--End ProductContainer-->

			<!--Button Xem them-->
			<div class="productButton btnXemThem">
				<a href="http://localhost:8088/ShopPK/product.htm">
					<div class="button">
						<span class="textButton">Xem thêm</span>
					</div>
				</a>
			</div>
			<!--End button xem them-->
			<!--End ProductContainer-->
		</div>
		<!--End Products-->


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
						<i class="fa fa-telegram"></i> Đặt hàng và ship COD toàn quốc
					</p>
					<p>
						<i class="fa fa-telegram"></i> Cam kết bảo hành 1 đổi 1 trong
						tháng đầu tiên
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