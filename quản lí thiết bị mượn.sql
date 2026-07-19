CREATE DATABASE QuanLyMuonThietBi;
GO

USE QuanLyMuonThietBi;
GO

/* ============================================================
   1. BẢNG NGUOI_MUON
   ============================================================ */

CREATE TABLE NGUOI_MUON (
    ma_nguoi_muon    VARCHAR(10)     NOT NULL,
    ho_ten           NVARCHAR(100)   NOT NULL,
    email            VARCHAR(100)    NOT NULL,
    sdt              VARCHAR(15)     NULL,
    lop              NVARCHAR(50)    NULL,
    khoa             NVARCHAR(100)   NULL,

    CONSTRAINT PK_NGUOI_MUON PRIMARY KEY (ma_nguoi_muon),
    CONSTRAINT UQ_NGUOI_MUON_email UNIQUE (email),
    CONSTRAINT UQ_NGUOI_MUON_sdt UNIQUE (sdt)
);
GO
/* ============================================================
   2. BẢNG LOAI_THIET_BI
   ============================================================ */

CREATE TABLE LOAI_THIET_BI (
    ma_loai_tb      VARCHAR(10)     NOT NULL,
    ten_loai_tb     NVARCHAR(100)   NOT NULL,

    CONSTRAINT PK_LOAI_THIET_BI PRIMARY KEY (ma_loai_tb)
);
GO
/* ============================================================
   3. BẢNG THIET_BI
   ============================================================ */

CREATE TABLE THIET_BI (
    ma_thiet_bi     VARCHAR(10)     NOT NULL,
    ten_thiet_bi    NVARCHAR(100)   NOT NULL,
    ma_loai_tb      VARCHAR(10)     NOT NULL,
    so_luong        INT             NOT NULL DEFAULT 0,
    tinh_trang      NVARCHAR(50)    NOT NULL DEFAULT N'Tốt',
    ngay_nhap       DATE            NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_THIET_BI PRIMARY KEY (ma_thiet_bi),

    CONSTRAINT FK_THIETBI_LOAITB FOREIGN KEY (ma_loai_tb)
        REFERENCES LOAI_THIET_BI (ma_loai_tb),

    CONSTRAINT CK_THIETBI_soluong CHECK (so_luong >= 0),

    CONSTRAINT CK_THIETBI_tinhtrang
        CHECK (tinh_trang IN (N'Tốt', N'Hỏng', N'Đang sửa chữa'))
);
GO
/* ============================================================
   4. BẢNG PHIEU_MUON
   ============================================================ */

CREATE TABLE PHIEU_MUON (
    ma_phieu            VARCHAR(10)     NOT NULL,
    ma_nguoi_muon       VARCHAR(10)     NOT NULL,
    ngay_muon           DATE            NOT NULL DEFAULT GETDATE(),
    ngay_tra_du_kien    DATE            NOT NULL,
    ngay_tra_thuc_te    DATE            NULL,
    trang_thai          NVARCHAR(50)    NOT NULL DEFAULT N'Đang mượn',

    CONSTRAINT PK_PHIEU_MUON PRIMARY KEY (ma_phieu),

    CONSTRAINT FK_PHIEUMUON_NGUOIMUON FOREIGN KEY (ma_nguoi_muon)
        REFERENCES NGUOI_MUON (ma_nguoi_muon),

    CONSTRAINT CK_PHIEUMUON_ngaytra
        CHECK (ngay_tra_du_kien >= ngay_muon),

    CONSTRAINT CK_PHIEUMUON_trangthai
        CHECK (trang_thai IN (N'Đang mượn', N'Đã trả', N'Quá hạn'))
);
GO
/* ============================================================
   5. BẢNG CHI_TIET_PHIEU_MUON (khóa chính kép PK, FK)
   ============================================================ */

CREATE TABLE CHI_TIET_PHIEU_MUON (
    ma_phieu        VARCHAR(10)     NOT NULL,
    ma_thiet_bi     VARCHAR(10)     NOT NULL,
    so_luong_muon   INT             NOT NULL,

    CONSTRAINT PK_CHITIET_PHIEUMUON PRIMARY KEY (ma_phieu, ma_thiet_bi),

    CONSTRAINT FK_CHITIET_PHIEUMUON FOREIGN KEY (ma_phieu)
        REFERENCES PHIEU_MUON (ma_phieu),

    CONSTRAINT FK_CHITIET_THIETBI FOREIGN KEY (ma_thiet_bi)
        REFERENCES THIET_BI (ma_thiet_bi),

    CONSTRAINT CK_CHITIET_soluongmuon
        CHECK (so_luong_muon > 0)
);
GO
