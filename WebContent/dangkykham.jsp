<%@page import="DAO.DangKyKhamDAO"%>
<%@page import="Model.DangKyKham"%>
<%@page import="DAO.BacSiDAO"%>
<%@page import="Model.BacSi"%>
<%@page import="Model.TaiKhoan"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng Ký Khám</title>
</head>
<body>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/css-temp.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/main.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/custom.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/plugin.min.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Bonfire Rebsonsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 















</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
</head>
<body>
	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>

	<main class="main">
		<div id="ctl00_divCenter" class="middle-fullwidth">
			<section class="booking-examination">
				<div class="container">
					<div class="Module Module-176">
						<div class="ModuleContent">
							<div class="section-title">
								<span>Đăng ký khám</span><em class="mdi mdi-gamepad"><span></span><span></span></em>
							</div>
						</div>
					</div>
					<div class="row border">
						<div class="col w-full lg:w-4/12">
							<div class="item-bg">
								<div class="content">
									<div class="Module Module-177">
										<div class="ModuleContent">
											<strong>Lưu ý :</strong>
											<p>Lịch hẹn có hiệu lực sau khi có xác nhận chính thức từ
												Phòng khám Đa Khoa Đại Việt</p>
											<p>Quý khánh hàng vui lòng cung cấp thông tin chính xác
												để được phục vụ tốt nhất. Trong trường hợp cung cấp sai
												thông tin email &amp; điện thoại, việc xác nhận cuộc hẹn sẽ
												không hiệu lực.</p>
											<p>Quý khách sử dụng dịch vụ đặt hẹn trực tuyến, xin vui
												lòng đặt trước ít nhất là 24 giờ trước khi đến khám.</p>
											<p>Trong trường hợp khẩn cấp hoặc nghi ngờ có các triệu
												chứng nguy hiểm, quý khách vui lòng ĐẾN TRỰC TIẾP Phòng khám
												hoặc các trung tâm y tế gần nhất để kịp thời xử lý.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col w-full lg:w-8/12">
							<div class="medical-booking" id="medical-booking-form">
								<div class="Module Module-210">
									<div class="ModuleContent">
										<div class="container">
											<div class="icon-wrap">
												<div class="custom-form"></div>
											</div>
											<div class="medical-form-wrapper">
												<div class="icon-close"></div>
												<div class="Module Module-161">
													<div class="ModuleContent">
														<div class="caption">vui lòng điền thông tin vào
															form bên dưới để đẩ đăng ký khám bệnh theo yêu cầu</div>
													</div>
												</div>
												<div class="Module Module-160">
													<div class="ModuleContent">
														<div id="ctl00_mainContent_ctl02_pnlForm"
															class="wrap-form">
															<div class="row">

																<form action="DangKyKhamController" method="POST">
																	<div class="control-group">
																		<label class="control-label" for="inputhoten">Họ
																			và tên</label>
																		<div class="controls">
																			<input type="text" class="span3"
																				placeholder="Mời nhập Họ và tên" name="hoten" />
																		</div>
																	</div>
																	<div class="control-group">
																		<label class="control-label" for="inputEmail">Email</label>
																		<div class="controls">
																			<input type="email" class="span3"
																				placeholder="Mời nhập Email" name="email" />
																		</div>
																	</div>
																	<div class="control-group">
																		<label class="control-label" for="inputngaysinh">Ngày
																			Sinh</label>
																		<div class="controls">
																			<input type="text" class="span3"
																				placeholder="Mời nhập Ngày sinh" name="ngaysinh" />
																		</div>
																	</div>
																	<div class="control-group">
																		<label class="control-label" for="inputsdt">Số
																			điện thoại</label>
																		<div class="controls">
																			<input type="text" class="span3"
																				placeholder="Mời nhập Số điện thoại" name="sdt" />
																		</div>
																	</div>
																	<div class="control-group">
																		<label class="control-label" for="inputgioitinh">Giới
																			tính</label> <select name="gioitinh"
																			id="ctl00_mainContent_ctl02_ddlGender">
																			<option value="Nữ">Nữ</option>
																			<option value="Nam">Nam</option>
																		</select>
																	</div>
																	<br>
																	<div class="control-group">
																		<label class="control-label" for="inputsdt">Địa
																			chỉ</label>
																		<div class="controls">
																			<input type="text" class="span3"
																				placeholder="Mời nhập Địa chỉ" name="diachi" />
																		</div>
																	</div>
																	<div class="control-group">
																		<label class="control-label" for="inputxetnghiem">Xét
																			nghiệm</label> <select name="xetnghiem"
																			id="ctl00_mainContent_ctl02_slSpecial">
																			<option value="Nhi khoa">Nhi khoa</option>
																			<option value="Sản Phụ khoa">Sản Phụ khoa</option>
																			<option value="Cơ - xương - khớp">Cơ - xương
																				- khớp</option>
																			<option value="Khoa Ngoại">Khoa Ngoại</option>
																			<option value="Tai Mũi Họng">Tai Mũi Họng</option>
																			<option value="Tim mạch">Tim mạch</option>
																			<option value="Tiêu Hoa Gan Mật">Tiêu Hoa
																				Gan Mật</option>
																			<option value="Nội tổng quát">Nội tổng quát</option>
																			<option value="Mắt">Mắt</option>
																			<option value="Răng - Hàm - Mặt">Răng - Hàm
																				- Mặt</option>
																			<option value="Cơ Xương Khớp">Cơ Xương Khớp</option>
																			<option value="Nội Thần Kinh">Nội Thần Kinh</option>
																			<option value="Tâm Thể">Tâm Thể</option>
																			<option value="Nội Tiết">Nội Tiết</option>
																			<option value="Dị ứng miễn dịch ">Dị ứng
																				miễn dịch</option>
																			<option value="Hô Hấp">Hô Hấp</option>
																			<option value="Tư vấn giấc ngủ">Tư vấn giấc
																				ngủ</option>
																			<option value="Khám sức khoẻ tổng quát">Khám
																				sức khoẻ tổng quát</option>
																			<option value="Khám sức khoẻ hậu Covid-19">Khám
																				sức khoẻ hậu Covid-19</option>
																			<option value="Da Liễu">Da Liễu</option>
																		</select>
																	</div>
																	<br>
																	<div class="control-group">
																		<label class="control-label" for="inputngaykham">Ngày
																			khám</label>
																		<div class="controls">
																			<input type="text" class="span3"
																				placeholder="Mời nhập Ngày khám" name="ngaykham" />
																		</div>
																	</div>
																	<div class="control-group">
																		<label class="control-label" for="inputbuoikham">Buổi
																			khám</label> <select name="buoikham"
																			id="ctl00_mainContent_ctl02_slTime">
																			<option value="Buổi sáng">Buổi sáng</option>
																			<option value="Buổi chiều">Buổi chiều</option>
																		</select>
																	</div>
																	<br>
																	<div class="control-group">
																		<label class="control-label" for="inputtrieuchung">Triệu
																			chứng</label>
																		<div class="controls">
																			<input type="text" class="span3"
																				placeholder="Mời nhập Triệu chứng" name="trieuchung" />
																		</div>
																	</div>
																	<br>
																	<div class="control-group">
																		<div class="controls">
																			<button type="submit" class="defaultBtn"
																				style="color: blue;">Đăng ký khám</button>
																		</div>
																	</div>

																</form>
															</div>
															<div class="clear"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			</section>
		</div>
	</main>
	<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
	<!-- footer -->
</body>
</html>
