<%@page import="DAO.PhieuKhamBenhDAO"%>
<%@page import="Model.PhieuKhamBenh"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Phiếu Khám Bệnh | Trang Admin</title>
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
			<h3>Quản Lý Phiếu Khám Bệnh</h3>
			<table class="data">
				<tr class="data">
					<th class="data" width="30px">STT</th>
					<th class="data">Mã Phiếu</th>
					<th class="data">Tình Trạng</th>
					<th class="data">Dị Ứng Thuốc</th>
					<th class="data">Khám Lâm Sàng</th>
					<th class="data">Bệnh Kèm Theo</th>
					<!-- <th class="data">Nhịp Tim</th>
					<th class="data">Nhịp Thở</th>
					<th class="data">Huyết Áp</th>
					<th class="data">Nhiệt Độ</th>
					<th class="data">Cân Nặng</th>
					<th class="data">Chiều Cao</th> -->
					<th class="data">Chẩn Đoán</th>
					<th class="data">Tiền Khám</th>
					<th class="data">Ngày Khám</th>
					<th class="data" width="75px">Tùy chọn</th>
				</tr>
				<%
				int i = 1;
				for (PhieuKhamBenh pkb:PhieuKhamBenhDAO.getListPhieuKhamBenh()) {
				%>
				<tr class="data">
					<td class="data" width="30px"><%=i++%></td>
					<td class="data"><%=pkb.getMaPhieu()%></td>
					<td class="data"><%=pkb.getTinhTrangBN()%></td>
					<td class="data"><%=pkb.getDiUngThuoc()%></td>
					<td class="data"><%=pkb.getKhamLamSang()%></td>
					<td class="data"><%=pkb.getBenhKemTheo()%></td>
					<%-- <td class="data"><%=pkb.getNhipTim()%></td>
					<td class="data"><%=pkb.getNhipTho()%></td>
					<td class="data"><%=pkb.getHuyetAp()%></td>
					<td class="data"><%=pkb.getNhietDo()%></td>
					<td class="data"><%=pkb.getCanNang()%></td>
					<td class="data"><%=pkb.getChieuCao()%></td> --%>
					<td class="data"><%=pkb.getChanDoan()%></td>
					<td class="data"><%=pkb.getTienKham()%></td>
					<td class="data"><%=pkb.getNgayKham()%></td>
					<td class="data" width="75px">
						<center>
				<a href="Update_TaiKhoan?command=update&ID=<%=pkb.getID()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
				<a href="qlTaiKhoan?command=delete&ID=<%=pkb.getID()%>">Xóa</a>
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

