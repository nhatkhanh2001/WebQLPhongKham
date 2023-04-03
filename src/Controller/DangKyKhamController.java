package Controller;

import java.io.IOException;
import DAO.DangKyKhamDAO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.DangKyKham;

@WebServlet("/DangKyKhamController")
public class DangKyKhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DangKyKhamController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String url = "";
		if (request.getParameter("hoten") == "" || request.getParameter("email") == ""
				|| request.getParameter("ngaysinh") == "" || request.getParameter("sdt") == ""
				|| request.getParameter("gioitinh") == "" || request.getParameter("diachi") == ""
				|| request.getParameter("xetnghiem") == "" || request.getParameter("ngaykham") == ""
				|| request.getParameter("buoi") == "" || request.getParameter("trieuchung") == "") {
			url = "/DangKyKham.jsp";
			HttpSession session = request.getSession();
			session.setAttribute("error", "Đăng Ký Không Thành công!!");
		} else {
			DangKyKham dk = new DangKyKham();
			dk.setHoTenBN(request.getParameter("hoten"));
			dk.setEmail(request.getParameter("email"));
			dk.setNgaySinh(request.getParameter("ngaysinh"));
			dk.setSdt(request.getParameter("sdt"));
			dk.setGioiTinh(request.getParameter("gioitinh"));
			dk.setDiaChi(request.getParameter("diachi"));
			dk.setXetNghiem(request.getParameter("xetnghiem"));
			dk.setNgayKham(request.getParameter("ngaykham"));
			dk.setBuoiKham(request.getParameter("buoikham"));
			dk.setTrieuChung(request.getParameter("trieuchung"));
			DangKyKhamDAO.insertDangKyKham(dk);
			url = "/login.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
