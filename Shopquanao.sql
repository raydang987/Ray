CREATE DATABASE Shopquanao
go
use Shopquanao
go

CREATE TABLE Danhmucsanpham (
    MaDanhMuc INT PRIMARY KEY,	
    TenDanhMuc VARCHAR(255) NOT NULL
);
CREATE TABLE SanPham (
    MaSanPham INT PRIMARY KEY,
    TenSanPham VARCHAR(255) NOT NULL,
    Gia DECIMAL(10, 2) NOT NULL,
    MaDanhMuc INT,
    FOREIGN KEY (MaDanhMuc) REFERENCES Danhmucsanpham(MaDanhMuc)
);
CREATE TABLE KhachHang (
    MaKH INT PRIMARY KEY,
    TenKH VARCHAR(255) NOT NULL,
	GioiTinh varchar(10) NOT NULL,
	SDT varchar(10),
	DiaChi varchar (100),
	NgaySinh date NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL
);
CREATE TABLE DonHang (
    MaDonHang INT PRIMARY KEY,
    MaKH INT,
    NgayMuaHang DATETIME NOT NULL,
    TongSL DECIMAL(10, 2) NOT NULL,
	DiaChi varchar (100),
	SDT varchar(10),
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
);
CREATE TABLE ChiTietDonHang (
    MaCTDH INT PRIMARY KEY,
    MaDonHang INT,
    MaSanPham INT,
    Gia DECIMAL(10, 2) NOT NULL,
	SoLuong int,
    FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);
