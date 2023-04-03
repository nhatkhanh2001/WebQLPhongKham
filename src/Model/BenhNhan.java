package Model;

public class BenhNhan {
	private String MaBN;
	private String HoTenBN;
	private String NgaySinh;
	private String GioiTinh;
	private String DiaChi;
	private String Sdt;
	private String GhiChu;
	public BenhNhan() {}
	public BenhNhan(String maBN, String hoTenBN, String ngaySinh, String gioiTinh, String diaChi, String sdt,
			String ghiChu) {
		MaBN = maBN;
		HoTenBN = hoTenBN;
		NgaySinh = ngaySinh;
		GioiTinh = gioiTinh;
		DiaChi = diaChi;
		Sdt = sdt;
		GhiChu = ghiChu;
	}
	public String getMaBN() {
		return MaBN;
	}
	public void setMaBN(String maBN) {
		MaBN = maBN;
	}
	public String getHoTenBN() {
		return HoTenBN;
	}
	public void setHoTenBN(String hoTenBN) {
		HoTenBN = hoTenBN;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
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
	public String getGhiChu() {
		return GhiChu;
	}
	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	
	
}
