<%@page import="DAO.BacSiDAO"%>
<%@page import="Model.BacSi"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Bác Sĩ | Trang Admin</title>
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
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header -->

<div id="wrapper">
	<!-- memnu -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- memnu -->
	<div id="rightContent">
	<h3>Quản Lý Bác Sĩ<h3>
	<a href = "addSanPham">Thêm Bác Sĩ</a>
		<table class="data">
			<tr class="data">
				<th class="data" width="30px">STT</th>
				<th class="data">Mã Bác Sĩ</th>
				<th class="data">Tên Bác Sĩ</th>					
				<th class="data">Ngày Sinh</th>
				<th class="data">Giới Tính</th>
				<th class="data">Địa Chỉ</th>
				<th class="data">SĐT</th>
				<th class="data" width="75px">Tùy chọn</th>
			</tr>
			<% int i=1;
							for(BacSi bs : BacSiDAO.getListBacSi()){ 
								%>
								<tr class="data">
				<td class="data" width="30px"><%=i++%></td>
				<td class="data"><%=bs.getMaBS()%></td>
				<td class="data"><%=bs.getHotenBS()%></td>
				<td class="data"><%=bs.getNgaySinh()%></td>	
				<td class="data"><%=bs.getGioiTinh()%></td>			
				<td class="data"><%=bs.getDiaChi()%></td>
				<td class="data"><%=bs.getSdt()%></td>
				<%-- <td class="data"><img src="./images/<%=sp.getHinhAnh()%>" with="70px" height="40px"></td> --%>
				<td class="data" width="75px">
			<center>
				<a href="Update_SanPham?command=update&MaSP=<%=bs.getMaBS()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
				<a href="qlSanPham?command=delete&MaSP=<%=bs.getMaBS() %>">Xóa</a>
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
