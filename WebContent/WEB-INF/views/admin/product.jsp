<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sánh sản phẩm</title>

</head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: orange;
}
</style>

<body>
<h1>QUẢN LÝ CỬA HÀNG</h1>
	<div>
		<div>
			<div>Xin Chào: <b>${user.name}</b>  /  <a href="http://localhost:8088/ShopPK/admin/login.htm">Đăng Xuất</a></div>
			<div>
				<a href="http://localhost:8088/ShopPK/admin/product.htm">SẢN PHẨM</a>
				/
				<a href="http://localhost:8088/ShopPK/admin/cart.htm">GIỎ HÀNG</a>
			</div>
		</div>
		<a href="admin/insert.htm">Thêm mới</a>
		
		<table class="table table-hover">
		<br>
			<tr>
				<th>id</th>
				<th>image</th>
				<th>name</th>				
				<th>type</th>
				<th>price</th>
				<th>description</th>
				<th>discount</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.id}</td>
					<td><img style="width: 200px;height:150px;" src="images/products/${item.link}" /></td>
					<td>${item.name}</td>					
					<td>${item.product_type.name}</td>
					<td>${item.price}</td>
					<td>${item.description}</td>
					<td>${item.discount}</td>
					<td><a href="admin/delete/${item.id}.htm">Xóa</a></td>
					<td><a href="admin/edit/${item.id}.htm">Sửa</a></td>
				</tr>
			</c:forEach>
		</table>
		
		<div>${message}</div>
	</div>
</body>
</html>