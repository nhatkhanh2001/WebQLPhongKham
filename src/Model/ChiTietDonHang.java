package Model;

import java.sql.Date;

public class ChiTietDonHang{

	private int ID;
	private String MaPhieu;
	private String TinhTrangBN;
	private String DiUngThuoc;
	private String KhamLamSang;
	private String BenhKemTheo;
	private String NhipTim;
	private String NhipTho;
	private String HuyetAp;
	private String NhietDo;
	private String CanNang;
	private String ChieuCao;
	private String ChanDoan;
	private float TienKham;
	private Date NgayKham;
	public ChiTietDonHang() {}
	public ChiTietDonHang(int iD, String maPhieu, String tinhTrangBN, String diUngThuoc, String khamLamSang, String benhKemTheo, String nhipTim, String nhipTho, String huyetAp, String nhietDo, String canNang, String chieuCao, String chanDoan, Float tienKham, Date ngayKham) {
		ID = iD;
		MaPhieu = maPhieu;
		DiUngThuoc = diUngThuoc;
		KhamLamSang = khamLamSang;
		BenhKemTheo = benhKemTheo;
		NhipTim = nhipTim;
		NhipTho = nhipTho;
		HuyetAp = huyetAp;
		NhietDo = nhietDo;
		ChieuCao = chieuCao;
		ChanDoan = chanDoan;
		TienKham = tienKham;
		NgayKham = ngayKham;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getMaPhieu() {
		return MaPhieu;
	}
	public void setMaPhieu(String maPhieu) {
		MaPhieu = maPhieu;
	}
	public String getTinhTrangBN() {
		return TinhTrangBN;
	}
	public void setTinhTrangBN(String tinhTrangBN) {
		TinhTrangBN = tinhTrangBN;
	}
	public String getKhamLamSang() {
		return KhamLamSang;
	}
	public void setKhamLamSang(String khamLamSang) {
		KhamLamSang = khamLamSang;
	}
	
	public String getDiUngThuoc() {
		return DiUngThuoc;
	}
	public void setDiUngThuoc(String diUngThuoc) {
		DiUngThuoc = diUngThuoc;
	}
	public String getBenhKemTheo() {
		return BenhKemTheo;
	}
	public void setBenhKemTheo(String benhKemTheo) {
		BenhKemTheo = benhKemTheo;
	}
	public String getNhipTim() {
		return NhipTim;
	}
	public void setNhipTim(String nhipTim) {
		NhipTim = nhipTim;
	}
	public String getNhipTho() {
		return NhipTho;
	}
	public void setNhipTho(String nhipTho) {
		NhipTho = nhipTho;
	}
	public String getHuyetAp() {
		return HuyetAp;
	}
	public void setHuyetAp(String huyetAp) {
		HuyetAp = huyetAp;
	}
	public String getNhietDo() {
		return NhietDo;
	}
	public void setNhietDo(String nhietDo) {
		NhietDo = nhietDo;
	}
	public String getCanNang() {
		return CanNang;
	}
	public void setCanNang(String canNang) {
		CanNang = canNang;
	}
	public String getChieuCao() {
		return ChieuCao;
	}
	public void setChieuCao(String chieuCao) {
		ChieuCao = chieuCao;
	}
	public String getChanDoan() {
		return ChanDoan;
	}
	public void setChanDoan(String chanDoan) {
		ChanDoan = chanDoan;
	}
	public float getTienKham() {
		return TienKham;
	}
	public void setTienKham(float tienKham) {
		TienKham = tienKham;
	}
	public Date getNgayKham() {
		return NgayKham;
	}
	public void setNgayKham(Date ngayKham) {
		NgayKham = ngayKham;
	}
}