<%@page import="DAO.ChiTietDonHangDAO"%>
<%@page import="Model.ChiTietDonHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
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
			<h3>Danh Sách Phiếu Khám Bệnh</h3>
			<table class="data">
				<tr class="data">
					<th class="data" width="30px">STT</th>
					<th class="data">Mã Phiếu</th>
					<th class="data">Tình Trạng</th>
					<th class="data">Dị Ứng Thuốc</th>
					<th class="data">Khám Lâm Sàng</th>
					<th class="data">Bệnh Kèm Theo</th>
					<th class="data">Nhịp Tim</th>
					<th class="data">Nhịp Thở</th>
					<th class="data">Huyết Áp</th>
					<th class="data">Nhiệt Độ</th>
					<th class="data">Cân Nặng</th>
					<th class="data">Chiều Cao</th>
					<th class="data">Chẩn Đoán</th>
					<th class="data">Tiền Khám</th>
					<th class="data">Ngày Khám</th>
				</tr>
				<%
				int i = 1;
				for (ChiTietDonHang ctdh : ChiTietDonHangDAO.getListChiTietDonHang()) {
				%>
				<tr class="data">
					<td class="data" width="30px"><%=ctdh.getID()%></td>
					<td class="data"><%=ctdh.getMaPhieu()%></td>
					<td class="data"><%=ctdh.getTinhTrangBN()%></td>
					<td class="data"><%=ctdh.getDiUngThuoc()%></td>
					<td class="data"><%=ctdh.getKhamLamSang()%></td>
					<td class="data"><%=ctdh.getBenhKemTheo()%></td>
					<td class="data"><%=ctdh.getNhipTim()%></td>
					<td class="data"><%=ctdh.getNhipTho()%></td>
					<td class="data"><%=ctdh.getHuyetAp()%></td>
					<td class="data"><%=ctdh.getNhietDo()%></td>
					<td class="data"><%=ctdh.getCanNang()%></td>
					<td class="data"><%=ctdh.getChieuCao()%></td>
					<td class="data"><%=ctdh.getChanDoan()%></td>
					<td class="data"><%=ctdh.getTienKham()%></td>
					<td class="data"><%=ctdh.getNgayKham()%></td>
					<td class="data" width="75px">
						<center>
							<a href="#"><img src="mos-css/img/oke.png"></a>&nbsp;&nbsp;&nbsp;
							<a href="#"><img src="mos-css/img/detail.png"></a>
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
