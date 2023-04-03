package DAO;

import DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.BenhNhan;

public class BenhNhanDAO {
	public static ArrayList<BenhNhan> getListBenhNhan() {
		Connection cons = DBConnect.CreateConnection();
		String sql = "SELECT * FROM BenhNhan";
		ArrayList<BenhNhan> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BenhNhan bn = new BenhNhan();
				bn.setMaBN(rs.getString("MaBN"));
				bn.setHoTenBN(rs.getString("HoTenBN"));
				bn.setNgaySinh(rs.getString("NgaySinh"));
				bn.setGioiTinh(rs.getString("GioiTinh"));
				bn.setDiaChi(rs.getString("DiaChi"));
				bn.setSdt(rs.getString("Sdt"));
				bn.setGhiChu(rs.getString("GhiChu"));
				list.add(bn);
			}
			cons.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static boolean insert_BenhNhan(BenhNhan bn) throws SQLException {
		try {
			Connection connection = DBConnect.CreateConnection();
			String sql = "INSERT INTO BenhNhan VALUE(?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, bn.getMaBN());
			ps.setString(2, bn.getHoTenBN());
			ps.setString(3, bn.getNgaySinh());
			ps.setString(4, bn.getGioiTinh());
			ps.setString(5, bn.getDiaChi());
			ps.setString(6, bn.getSdt());
			ps.setString(7, bn.getGhiChu());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

//f5
	public static boolean update_BenhNhan(BenhNhan bn) throws SQLException {
		try {
			Connection connection = DBConnect.CreateConnection();
			String sql = "UPDATE BenhNhan SET HoTenBN = ?, NgaySinh = ?, GioiTinh = ?, DiaChi = ?, Sdt = ?, GhiChu = ? WHERE MaBN = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, bn.getMaBN());
			ps.setString(2, bn.getHoTenBN());
			ps.setString(3, bn.getNgaySinh());
			ps.setString(4, bn.getGioiTinh());
			ps.setString(5, bn.getDiaChi());
			ps.setString(6, bn.getSdt());
			ps.setString(7, bn.getGhiChu());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean delete_BenhNhan(String MaBN) throws SQLException {
		try {
			Connection connection = DBConnect.CreateConnection();
			String sql = "DELETE FROM BenhNhan WHERE MaBN = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, MaBN);
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}
}
