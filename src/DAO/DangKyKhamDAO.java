package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import DB.DBConnect;
import Model.DangKyKham;

public class DangKyKhamDAO{
public static List<DangKyKham> getListDangKyKham() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM DangKyKham";
    List<DangKyKham> list = new ArrayList<DangKyKham>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
        	DangKyKham dk = new DangKyKham();
            dk.setHoTenBN(rs.getString("HoTenBN"));
            dk.setEmail(rs.getString("Email"));
            dk.setNgaySinh(rs.getDate("NgaySinh"));
            dk.setSdt(rs.getString("Sdt"));
            dk.setGioiTinh(rs.getString("GioiTinh"));
            dk.setDiaChi(rs.getString("DiaChi"));
            dk.setXetNghiem(rs.getString("XetNghiem"));
            dk.setNgayKham(rs.getDate("NgayKham"));
            dk.setBuoiKham(rs.getString("BuoiKham"));
            dk.setTrieuChung(rs.getString("TrieuChung"));      
            list.add(dk);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

	public static boolean insertDangKyKham(DangKyKham dk) 
	{
		Connection conn=DBConnect.CreateConnection();
		String sql="INSERT INTO DangKyKham VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps= conn.prepareStatement(sql);			
			ps.setString(1,dk.getHoTenBN());
			ps.setString(2,dk.getEmail());
			ps.setDate(3,dk.getNgaySinh());
			ps.setString(4,dk.getSdt());
			ps.setString(5,dk.getGioiTinh());
			ps.setString(6,dk.getDiaChi());
			ps.setString(7,dk.getXetNghiem());
			ps.setDate(8,dk.getNgayKham());
			ps.setString(9,dk.getBuoiKham());
			ps.setString(10,dk.getTrieuChung());
			ps.executeUpdate();
			return true;
		}
		catch (SQLException ex){
			Logger.getLogger(DangKyKhamDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
		
	}

}

