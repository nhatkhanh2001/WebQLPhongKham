<%@page import="DAO.DangKyKhamDAO"%>
<%@page import="Model.DangKyKham"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng Ký Khám | Trang Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Copyright" content="arirusmanto.com">
<meta name="description" content="Admin MOS Template">
<meta name="keywords" content="Admin Page">
<meta name="author" content="Ari Rusmanto">
<meta name="language" content="Bahasa Indonesia">

<link rel="shortcut icon" href="stylesheet/img/devil-icon.png">
<!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="mos-css/mos-style.css">
<!--pemanggilan file css-->
</head>

<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- header -->

	<div id="wrapper">
		<!-- memnu -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- memnu -->
		<div id="rightContent">
			<h3>Quản Lý Đăng Ký Khám Bệnh Của Bệnh Nhân</h3>
			<table class="data">
				<tr class="data">
					<th class="data" width="30px">STT</th>
					<th class="data">Họ Tên</th>
					<th class="data">Email</th>
					<th class="data">Ngày Sinh</th>
					<th class="data">SĐT</th>
					<th class="data">Giới Tính</th>
					<th class="data">Địa Chỉ</th>
					<th class="data">Xét Nghiệm</th>
					<th class="data">Ngày Khám</th>
					<th class="data">Buổi Khám</th>
					<th class="data">Triệu Chứng</th>
					<th class="data" width="75px">Tùy chọn</th>
				</tr>
				<%
				int i = 1;
				for (DangKyKham dk:DangKyKhamDAO.getListDangKyKham()) {
				%>
				<tr class="data">
					<td class="data" width="30px"><%=i++%></td>
					<td class="data"><%=dk.getHoTenBN()%></td>
					<td class="data"><%=dk.getEmail()%></td>
					<td class="data"><%=dk.getNgaySinh()%></td>
					<td class="data"><%=dk.getSdt()%></td>
					<td class="data"><%=dk.getGioiTinh()%></td>
					<td class="data"><%=dk.getDiaChi()%></td>
					<td class="data"><%=dk.getXetNghiem()%></td>
					<td class="data"><%=dk.getNgayKham()%></td>
					<td class="data"><%=dk.getBuoiKham()%></td>
					<td class="data"><%=dk.getTrieuChung()%></td>
					<td class="data" width="75px">
						<center>
				<a href="Update_TaiKhoan?command=update&ID=<%=dk.getEmail()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
				<a href="qlTaiKhoan?command=delete&ID=<%=dk.getEmail()%>">Xóa</a>
				</center>
				</td>

					<%
					}
					%>
				</tr>
			</table>
		</div>
		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- footer -->
	</div>
	</div>
</body>
</html> 

