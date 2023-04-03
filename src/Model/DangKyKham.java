package Model;

import java.sql.Date;

public class DangKyKham {
	private String HoTenBN;
	private String Email;
	private Date NgaySinh;
	private String Sdt;
	private String GioiTinh;
	private String DiaChi;
	private String XetNghiem;
	private Date NgayKham;
	private String BuoiKham;
	private String TrieuChung;
	
	public DangKyKham() {}
	public DangKyKham(String hoTenBN, String email, Date ngaySinh, String sdt, String gioiTinh, String diaChi, String xetNghiem,
			Date ngayKham, String buoiKham, String trieuChung) {
		HoTenBN = hoTenBN;
		Email = email;
		NgaySinh = ngaySinh;
		Sdt = sdt;
		GioiTinh = gioiTinh;
		DiaChi = diaChi;
		XetNghiem = xetNghiem;
		NgayKham = ngayKham;
		BuoiKham = buoiKham;
		TrieuChung = trieuChung;
	}
	public String getHoTenBN() {
		return HoTenBN;
	}
	public void setHoTenBN(String hoTenBN) {
		HoTenBN = hoTenBN;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date string) {
		NgaySinh = string;
	}
	public String getSdt() {
		return Sdt;
	}
	public void setSdt(String sdt) {
		Sdt = sdt;
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
	public String getXetNghiem() {
		return XetNghiem;
	}
	public void setXetNghiem(String xetNghiem) {
		XetNghiem = xetNghiem;
	}
	public Date getNgayKham() {
		return NgayKham;
	}
	public void setNgayKham(Date string) {
		NgayKham = string;
	}
	public String getBuoiKham() {
		return BuoiKham;
	}
	public void setBuoiKham(String buoiKham) {
		BuoiKham = buoiKham;
	}
	public String getTrieuChung() {
		return TrieuChung;
	}
	public void setTrieuChung(String trieuChung) {
		TrieuChung = trieuChung;
	}
	public void setNgaySinh(String parameter) {
		// TODO Auto-generated method stub
		
	}
	public void setNgayKham(String parameter) {
		// TODO Auto-generated method stub
		
	}
}
