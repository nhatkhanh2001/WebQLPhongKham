package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import DB.DBConnect;
import Model.ChiTietDonHang;

public class ChiTietDonHangDAO{
public static ArrayList<ChiTietDonHang> getListChiTietDonHang() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM phieukhambenh";
    ArrayList<ChiTietDonHang> list = new ArrayList<>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
        	ChiTietDonHang ctdh= new ChiTietDonHang();
            ctdh.setID(rs.getInt("ID"));
            ctdh.setMaPhieu(rs.getString("MaPhieu"));
            ctdh.setTinhTrangBN(rs.getString("TinhTrangBN"));
            ctdh.setDiUngThuoc(rs.getString("DiUngThuoc"));
            ctdh.setKhamLamSang(rs.getString("KhamLamSang"));
            ctdh.setBenhKemTheo(rs.getString("BenhKemTheo"));
            ctdh.setNhipTim(rs.getString("NhipTim"));
            ctdh.setNhipTho(rs.getString("NhipTho"));
            ctdh.setHuyetAp(rs.getString("HuyetAp"));
            ctdh.setNhietDo(rs.getString("NhietDo"));
            ctdh.setCanNang(rs.getString("CanNang"));
            ctdh.setChieuCao(rs.getString("ChieuCao"));
            ctdh.setChanDoan(rs.getString("ChanDoan"));
            ctdh.setTienKham(rs.getFloat("TienKham"));
            ctdh.setNgayKham(rs.getDate("NgayKham"));
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

	public static boolean insertChiTietDonHang(ChiTietDonHang ctdh) 
	{
		Connection conn=DBConnect.CreateConnection();
		String sql="INSERT INTO ChiTietDonHang VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps= conn.prepareStatement(sql);			
			ps.setInt(1,ctdh.getID());
			ps.setString(2,ctdh.getMaPhieu());
			ps.setString(3,ctdh.getTinhTrangBN());
			ps.setString(4,ctdh.getDiUngThuoc());
			ps.setString(5,ctdh.getKhamLamSang());
			ps.setString(6,ctdh.getBenhKemTheo());
			ps.setString(7,ctdh.getNhipTim());
			ps.setString(8,ctdh.getNhipTho());
			ps.setString(9,ctdh.getHuyetAp());
			ps.setString(10,ctdh.getNhietDo());
			ps.setString(11,ctdh.getCanNang());
			ps.setString(12,ctdh.getChieuCao());
			ps.setString(13,ctdh.getChanDoan());
			ps.setFloat(14,ctdh.getTienKham());
			ps.setDate(15,ctdh.getNgayKham());
			ps.executeUpdate();
			return true;
		}
		catch (SQLException ex){
			Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
		
	}

}