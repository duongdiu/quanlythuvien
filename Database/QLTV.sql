CREATE DATABASE QuanLyThuVien;
GO
USE QuanLyThuVien;
CREATE TABLE Sach (
    MaSach NVARCHAR(50) PRIMARY KEY,
    TenSach NVARCHAR(255),
    TacGia NVARCHAR(255),
    TheLoai NVARCHAR(100),
    NhaXuatBan NVARCHAR(255),
    NamXuatBan INT,
    SoLuong INT,
    GhiChu NVARCHAR(MAX)
);
CREATE TABLE DocGia (
    MaDocGia NVARCHAR(50) PRIMARY KEY,
    HoTen NVARCHAR(255),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    DiaChi NVARCHAR(255),
    Email NVARCHAR(255),
    NgayDangKy DATE
);
CREATE TABLE PhieuMuon (
    MaPhieuMuon NVARCHAR(50) PRIMARY KEY,
    MaDocGia NVARCHAR(50) FOREIGN KEY REFERENCES DocGia(MaDocGia),
    NgayMuon DATE,
    NgayTra DATE,
    TinhTrang NVARCHAR(50)
);
CREATE TABLE ChiTietPhieuMuon (
    MaChiTiet INT PRIMARY KEY IDENTITY,
    MaPhieuMuon NVARCHAR(50) FOREIGN KEY REFERENCES PhieuMuon(MaPhieuMuon),
    MaSach NVARCHAR(50) FOREIGN KEY REFERENCES Sach(MaSach),
    SoLuongMuon INT
);
CREATE TABLE NguoiDung (
    TenDangNhap NVARCHAR(50) PRIMARY KEY,
    MatKhau NVARCHAR(255),
    HoTen NVARCHAR(255),
    VaiTro NVARCHAR(50) -- Quản trị viên, Thủ thư
);