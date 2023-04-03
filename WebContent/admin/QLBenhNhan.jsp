<%@page import="DAO.BenhNhanDAO"%>
<%@page import="Model.BenhNhan"%>
<%@page import="Controller.qlBenhNhan"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Bệnh Nhân | Trang Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Copyright" content="arirusmanto.com">
<meta name="description" content="Admin MOS Template">
<meta name="keywords" content="Admin Page">
<meta name="author" content="Ari Rusmanto">
<meta name="language" content="Bahasa Indonesia">

<link rel="shortcut icon" href="stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="mos-css/mos-style.css"> <!--pemanggilan file css-->
</head>

<body>
<%
 		BenhNhanDAO benhnhanDAO = new BenhNhanDAO();
		ArrayList <BenhNhan> listBenhNhan = BenhNhanDAO.getListBenhNhan();
%>
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header -->

<div id="wrapper">
	<!-- memnu -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- memnu -->
	<div id="rightContent">
	<h3>Quản Lý Bệnh Nhân</h3>
	<a href = "addBenhNhan">Thêm Bệnh Nhân</a>
		<table class="data">
			<tr class="data">
				<th class="data" width="30px">STT</th>
				<th class="data">Mã Bệnh Nhân</th>
				<th class="data">Tên Bệnh Nhân</th>					
				<th class="data">Ngày Sinh</th>
				<th class="data">Giới Tính</th>
				<th class="data">Địa Chỉ</th>
				<th class="data">SĐT</th>
				<th class="data">Ghi Chú</th>
				<th class="data" width="75px">Tùy chọn</th>
			</tr>
			<% int i=1;
							for(BenhNhan bn : BenhNhanDAO.getListBenhNhan()){ 
								%>
								<tr class="data">
				<td class="data" width="30px"><%=i++%></td>
				<td class="data"><%=bn.getMaBN()%></td>
				<td class="data"><%=bn.getHoTenBN()%></td>
				<td class="data"><%=bn.getNgaySinh()%></td>		
				<td class="data"><%=bn.getGioiTinh()%></td>				
				<td class="data"><%=bn.getDiaChi()%></td>
				<td class="data"><%=bn.getSdt()%></td>
				<td class="data"><%=bn.getGhiChu()%></td>
				<td class="data" width="75px">
			<center>
				<a href="Update_BenhNhan?command=update&MaBN=<%=bn.getMaBN()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
				<a href="qlBenhNhan?command=delete&MaBN=<%=bn.getMaBN() %>">Xóa</a>
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
