package DAO;

import DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.BacSi;

public class BacSiDAO{

//Danh sách Bác sĩ
public static ArrayList<BacSi> getListBacSi() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM BacSi";
    ArrayList<BacSi> list = new ArrayList<>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            BacSi bs = new BacSi();
            bs.setId(rs.getInt("id"));
            bs.setMaBS(rs.getInt("MaBS"));
            bs.setHotenBS(rs.getString("HotenBS"));
            bs.setNgaySinh(rs.getDate("NgaySinh"));
            bs.setGioiTinh(rs.getString("GioiTinh"));
            bs.setDiaChi(rs.getString("DiaChi"));
            bs.setSdt(rs.getString("Sdt"));
            bs.setHinhAnh(rs.getString("HinhAnh"));
            list.add(bs);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

}