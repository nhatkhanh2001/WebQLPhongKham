<%@page import="java.util.Map"%>
<%@page import="DAO.ChuyenMucDAO"%>
<%@page import="Model.ChuyenMuc"%>
<%@page import="Model.TaiKhoan"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Items"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<body>
	<%
	TaiKhoan tk = null;
	if (session.getAttribute("user") != null) {
		tk = (TaiKhoan) session.getAttribute("user");
	}

	Cart cart = (Cart) session.getAttribute("cart");
	if (cart == null) {
		cart = new Cart();
		session.setAttribute("cart", cart);
	}
	%>

	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-top-in">
					<div class="logo">
						<a href="home.jsp"><img src="images/Logo_final.png"
							style="width: 200px; height: auto;"></a>

					</div>
					<div class="header-in">
						<ul class="icon1 sub-icon1">

							<%
							if (tk != null) {
							%>
							<li><a href="info.jsp"><%=tk.getUserEmail()%></a></li>
							<%
							}
							%>
							<%
							if (tk == null) {
							%>
							<li><a href="login.jsp"> Đăng nhập</a></li>

							<li><a href="Register.jsp">Đăng ký</a></li>
							<%
							}
							%>
							<%
							if (tk != null) {
							%>
							<li><a href="LoginController?action=Logout">Đăng xuất</a></li>
							<%
							}
							%>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>

	</div>

	<!----------

	menu

------------>
	<nav>

		<div class="w1000">
			<ul class="list_ngang">
				<li><a href=".">DANH MỤC</a>
					<ul class="menuong">

						<%
						if (tk == null) {
						%>
						<li><a href="bacsis.jsp">Bác Sĩ</a></li>
						<li><a href="phongkham.jsp">Phòng Khám</a></li>
						<li><a href="login.jsp">Đăng Ký Khám</a></li>
						<%
						}
						%>
						<%
						if (tk != null) {
						%>
						<li><a href="bacsis.jsp">Bác Sĩ</a></li>
						<li><a href="phongkham.jsp">Phòng Khám</a></li>
						<li><a href="dangkykham.jsp">Đăng Ký Khám</a></li>
						<%
						}
						%>

					</ul></li>
				<li><a href="gioithieu.jsp">GIỚI THIỆU</a></li>
				<li><a href="csvcpk.jsp">CƠ SỞ VẬT CHẤT</a></li>
				<li><a href="contact.jsp">LIÊN HỆ</a></li>
				<li class="position_r"><input type="text"
					placeholder="Tìm kiếm bệnh" class="timkiem" fdprocessedid="rzzxdi">
					<div id="bt-s"></div></li>
				<div class="clear"></div>
			</ul>
		</div>
	</nav>
</body>
</html>