package Model;

import java.sql.Date;

public class BacSi {
	private int id;
	private int MaBS;
	private String HotenBS;
	private Date NgaySinh;
	private String GioiTinh;
	private String DiaChi;
	private String Sdt;
	private String HinhAnh;
	public BacSi() {}
	public BacSi(int id, int maBS, String hotenBS, Date ngaySinh, String gioiTinh, String diaChi, String sdt, String hinhAnh) {
		super();
		this.id = id;
		MaBS = maBS;
		HotenBS = hotenBS;
		NgaySinh = ngaySinh;
		GioiTinh = gioiTinh;
		DiaChi = diaChi;
		Sdt = sdt;
		HinhAnh = hinhAnh;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMaBS() {
		return MaBS;
	}
	public void setMaBS(int maBS) {
		MaBS = maBS;
	}
	public String getHotenBS() {
		return HotenBS;
	}
	public void setHotenBS(String hotenBS) {
		HotenBS = hotenBS;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getSdt() {
		return Sdt;
	}
	public void setSdt(String sdt) {
		Sdt = sdt;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}
}
