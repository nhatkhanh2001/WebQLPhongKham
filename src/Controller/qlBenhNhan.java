package Controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BenhNhanDAO;
import Model.BenhNhan;


@WebServlet("/qlBenhNhan")
public class qlBenhNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BenhNhanDAO BenhNhanDAO = new BenhNhanDAO();

    public qlBenhNhan() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    
		String command = request.getParameter("command");
		String maBN = request.getParameter("maBN");
		
		
		String url ="";
		try {
			
				switch (command) {
				case "delete":
					DAO.BenhNhanDAO.delete_BenhNhan(maBN);
					url = "/BenhNhanQL";
					break;
				}
			
		} catch (Exception e) {
			
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		String mabn = request.getParameter("mabn");
		String hoTenbn = request.getParameter("hoTenbn");
		String ngaysinh = request.getParameter("ngaysinh");
		String gioitinh = request.getParameter("gioitinh");
		String diachi = request.getParameter("diachi");
		String sdt = request.getParameter("sdt");
		String ghichu = request.getParameter("ghichu");
		String maBN = request.getParameter("maBN");
		String url = "";
		if(request.getParameter("MaBN")=="") {
			HttpSession session =request.getSession();
			session.setAttribute("error","Các thông tin không được phép để trống");
			url="/admin/themBenhNhan.jsp";
		}
		else {
		try  {
				switch (command) {
				case "insert":
				DAO.BenhNhanDAO.insert_BenhNhan(new BenhNhan(mabn,hoTenbn,ngaysinh,gioitinh,diachi,sdt,ghichu));
				url = "/BenhNhanQL";
				break;
				case "update":
					DAO.BenhNhanDAO.update_BenhNhan(new BenhNhan(hoTenbn,ngaysinh,gioitinh,diachi,sdt,ghichu,maBN));
					url = "/BenhNhanQL";
					break;
				}
			}
		 catch (Exception e) {
			 HttpSession session =request.getSession();
				session.setAttribute("error","Mã bệnh nhân đã tồn tại, vui lòng kiểm tra lại!");
			 url="/admin/themBenhNhan.jsp";
		}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
