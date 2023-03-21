<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Thông tin cá nhân</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div class="container">
	<div class="d-flex justify-content-center " style="width: 800px; height: 800px;">
		
		<form action="/PS24487_NgocHoai_Lab3/home-bai2" Method="post" enctype="multipart/form-data">
			<div class="form-group">
				<h2>Đăng Kí</h2>
			</div>
			<div class="form-group">
				<label for="validationDefault01" >Tên : </label> <input class="form-control"
					placeholder="Nhập Tên..." id="validationDefault01"  name="fullname" required>
			</div>
			<div class="form-group">
				<label for="validationCustom02" >Hình ảnh: </label> 
				<input type="file" name="photo_file"/>
			</div>
			<div class="mb-3">
					<label for="validationTextarea" class="form-label">
						Birthday: </label> <input name="birthday" class="form-control"
						placeholder="Your Birthday" required>
					<div class="invalid-feedback">Please enter your birthday</div>
					<br>
				</div>
			
			<div class="form-group">
				<label>Giới Tính:</label> 
				<input type="radio" 
					 name="gender" value="true" 
					 checked>Nam
					 <input type="radio" 
					 name="gender" value="false">Nữ
			</div>
			<div>
				<label>Tình trạng hôn nhân:</label> 
				<input type="checkbox" name="married"> Đã có gia đình?
			</div>
			<div>
				<label>Sở thích: </label>
				<input type="checkbox" name="hobbies" value="R"> Đọc sách
				<input type="checkbox" name="hobbies" value="T"> Du lịch
				<input type="checkbox" name="hobbies" value="M"> Âm Nhạc
				<input type="checkbox" name="hobbies" value="O"> Khác
			</div>
			<div>
				<label>Quốc tịch:</label>
				<select name="country">
					<option value="VN">Việt Name</option>
					<option value="US">United States</option>
				</select>
			</div>
			<div>
				<label>Ghi chú:</label>
				<textarea name="notes" rows="3" cols="30"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Thêm mới</button>
			
		</form>
	</div>
	
		
	</div>

</body>
</html>