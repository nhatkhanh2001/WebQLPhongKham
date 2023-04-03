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
import Model.PhieuKhamBenh;

public class PhieuKhamBenhDAO{
public static List<PhieuKhamBenh> getListPhieuKhamBenh() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM phieukhambenh";
    List<PhieuKhamBenh> list = new ArrayList<PhieuKhamBenh>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
        	PhieuKhamBenh pkb = new PhieuKhamBenh();
            pkb.setID(rs.getInt("ID"));
            pkb.setMaPhieu(rs.getString("MaPhieu"));
            pkb.setTinhTrangBN(rs.getString("TinhTrangBN"));
            pkb.setDiUngThuoc(rs.getString("DiUngThuoc"));
            pkb.setKhamLamSang(rs.getString("KhamLamSang"));
            pkb.setBenhKemTheo(rs.getString("BenhKemTheo"));
            pkb.setNhipTim(rs.getString("NhipTim"));
            pkb.setNhipTho(rs.getString("NhipTho"));
            pkb.setHuyetAp(rs.getString("HuyetAp"));
            pkb.setNhietDo(rs.getString("NhietDo"));
            pkb.setCanNang(rs.getString("CanNang"));
            pkb.setChieuCao(rs.getString("ChieuCao"));
            pkb.setChanDoan(rs.getString("ChanDoan"));
            pkb.setTienKham(rs.getFloat("TienKham"));
            pkb.setNgayKham(rs.getDate("NgayKham"));
            list.add(pkb);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

	public static boolean insertPhieuKhamBenh(PhieuKhamBenh pkb) 
	{
		Connection conn=DBConnect.CreateConnection();
		String sql="INSERT INTO PhieuKhamBenh VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps= conn.prepareStatement(sql);			
			ps.setInt(1,pkb.getID());
			ps.setString(2,pkb.getMaPhieu());
			ps.setString(3,pkb.getTinhTrangBN());
			ps.setString(4,pkb.getDiUngThuoc());
			ps.setString(5,pkb.getKhamLamSang());
			ps.setString(6,pkb.getBenhKemTheo());
			ps.setString(7,pkb.getNhipTim());
			ps.setString(8,pkb.getNhipTho());
			ps.setString(9,pkb.getHuyetAp());
			ps.setString(10,pkb.getNhietDo());
			ps.setString(11,pkb.getCanNang());
			ps.setString(12,pkb.getChieuCao());
			ps.setString(13,pkb.getChanDoan());
			ps.setFloat(14,pkb.getTienKham());
			ps.setDate(15,pkb.getNgayKham());
			ps.executeUpdate();
			return true;
		}
		catch (SQLException ex){
			Logger.getLogger(PhieuKhamBenhDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
		
	}

}
