<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Liên Hệ</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/css-temp.css" rel="stylesheet" type="text/css"
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
	content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
	<!--header-->

	<div class="container">
		<div class="contact">
			<h2 class=" contact-in">Chăm sóc khách hàng</h2>

			<div class="col-md-6 contact-top">
				<h3>Thông tin</h3>
				<div class="map">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2771.2438264547095!2d106.71477104954016!3d10.801307729712695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528a459cb43ab%3A0x6c3d29d370b52a7e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVFAuSENNIC0gSFVURUNI!5e0!3m2!1svi!2s!4v1649994797885!5m2!1svi!2s"
						width="600" height="450" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>


				<ul class="social ">
					<li><span><i> </i>Developer: Nhật Khánh, Thành Nguyễn, Đức Thịnh, Khắc Đan</span></li>
					<li><span><i> </i>475A Điện Biên Phủ, Phường 25, Quận
							Bình Thạnh, TP.HCM</span></li>
					<li><span><i class="down"> </i>ĐT: (028) 5445 7777 -
							Fax: (028) 5445 4444</span></li>
					<li><a><i class="mes"> </i>hutech@hutech.edu.vn</a></li>
				</ul>
			</div>
			<div class="col-md-6 contact-top">
				<h3>Ban muốn làm việc với tôi?</h3>
				<div>
					<span>Tên của bạn </span> <input type="text" value="">
				</div>
				<div>
					<span>Email của bạn </span> <input type="text" value="">
				</div>
				<div>
					<span>Vấn đề</span> <input type="text" value="">
				</div>
				<div>
					<span>Tin nhắn của bạn</span>
					<textarea> </textarea>
				</div>
				<input type="submit" value="Gửi">
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!---->

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- footer -->
</body>
</html>