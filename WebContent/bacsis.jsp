<%@page import="DAO.BacSiDAO"%>
<%@page import="Model.BacSi"%>
<%@page import="Model.Cart"%>
<%@page import="Controller.CartController"%>
<%@page import="Model.TaiKhoan"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Các Bác Sĩ Của Phòng Khám</title>
</head>
<body>
<head>
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
	<%
	BacSiDAO bsd = new BacSiDAO();
	String MaCM = "";
	if (request.getParameter("ChuyenMuc") != null) {
		MaCM = request.getParameter("ChuyenMuc");
	}
	Cart cart = (Cart) session.getAttribute("cart");
	if (cart == null) {
		cart = new Cart();
		session.setAttribute("cart", cart);
	}
	%>

	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="products">
			<div class="breadcrumb_main">
					<div class="breadcrumb" itemscope=""
						itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="." itemprop="url"> <span itemprop="title">Trang
								Chủ</span></a>&nbsp;›
					</div>
					<div class="breadcrumb" itemscope=""
						itemtype="http://data-vocabulary.org/Breadcrumb">
						<span itemprop="title">Danh sách bác sĩ phòng khám đa khoa
							Đại Việt</span>
					</div>
					<div class="clear"></div>
				</div>
			<div class="content">
				<div class="content-top">
					<div class="content-top-in">
						<%
						for (BacSi bs : BacSiDAO.getListBacSi()) {
						%>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.jbs?Mabs=<%=bs.getMaBS()%>"><img
									src="images/<%=bs.getHinhAnh()%>"
									style="height: 220px; width: 238px" /></a>
								<div class="top-content">
									<%-- <center>
										<h5>
											<a href="single.jbs?Mabs=<%=bs.getMaBS()%>"><%=bs.getHotenBS()%></a>
										</h5>
									</center> --%>
									<!-- <div style="padding-top: 10px; text-align: right: ;" class="white">
											<p style="margin: 10px">Lượt đánh giá:</p>
										<span href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">YÊU THÍCH</span>
										<div class="clearfix"></div>
									</div> -->
									<div style="display: flex; justify-content: space-between; align-items: center; margin: 0 auto;" class="white">
										<p style="margin: 10px">Lượt đánh giá:</p>
										<span href="#"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">YÊU THÍCH</span>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
						<%
						}
						%>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- footer -->
</body>
</html>
