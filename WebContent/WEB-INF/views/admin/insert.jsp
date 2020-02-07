<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Upload file</title>
<style>
.form-group {
	margin: 10px;
}
</style>
</head>
<body>
	<h2>Thêm sản phẩm mới</h2>
	${message}
	<form action="admin/insert.htm" method="post"
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Name</div>
			<input type="text" name="name" required>
		</div>
		<div class="form-group">
			<div class="form-group">
				<form-group>
				<div>Loại</div>
				<select name="id_type" required>
					<option value="1">Balo thời trang</option>
					<option value="2">Túi xách</option>
					<option value="3">Kính thời trang</option>
					<option value="4">Vớ</option>
					<option value="5">SP bán chạy</option>
					<option value="6">SP mới về</option>
					<option value="7">SP đang Sale</option>

				</select> </form-group>
			</div>
		</div>
		<div class="form-group">
			<div>Giá</div>
			<input type="text" name="price" required />
		</div>
		<div class="form-group">
			<div>Đánh giá</div>
			<textarea name="description">
						</textarea>
		</div>
		<div class="form-group">
			<div>Discount</div>
			<input type="text" name="discount" required />
		</div>
		<div class="form-group">
			<div>Hình ảnh</div>
			<input type="file" name="photo" required />
		</div>

		<div class="form-group">
			<button>Upload</button>
		</div>
		<div>${message}</div>
	</form>
</body>
</html>