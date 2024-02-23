/*
This SQL script inserts new rows into the 'publishers' table with the names of different publishing companies.
*/
INSERT INTO [publishers]
VALUES 
('NXB Hội Nhà Văn'),
('NXB Lao Động'),
('NXB Trẻ'),
('NXB Phụ Nữ Việt Nam'),
('Báo Sinh Viên Việt Nam - Hoa Học Trò'),
('Công Thương'),
('Giáo Dục Việt Nam'),
('NXB Đại Học Quốc Gia TP.HCM'),
('NXB Tổng Hợp TPHCM');

INSERT INTO [categories] 
VALUES 
(N'VĂN HỌC'),
(N'KINH TẾ'),
(N'TÂM LÝ - KĨ NĂNG SỐNG'),
(N'NUÔI DẠY CON'),
(N'SÁCH THIẾU NHI'),
(N'TIỂU SỬ - HỒI KÝ'),
(N'GIÁO KHOA - THAM KHẢO'),
(N'SÁCH HỌC NGOẠI NGỮ');

INSERT INTO [authors] 
VALUES 
(N'José Mauro de Vasconcelos'),
(N'Paulo Coelho'),
(N'Jim Collins'),
(N'Robert Greene'),
(N'Minh Niệm'),
(N'Hachun Lyonnet'),
(N'B R O Group'),
(N'Walter Isaacson'),
(N'Paul Kalanithi'),
(N'Bộ Giáo Dục Và Đào Tạo'),
(N'ThS Phan Hoàng Văn'),
(N'Khương lệ Bình'),
(N'Avinash K Dixit'),
(N'Trạch Quế Vinh');

INSERT INTO [books]
VALUES
    (N'Cây Cam Ngọt Của Tôi', 108000, 100, 1, 1, 1),
    (N'Nhà Giả Kim (Tái Bản 2020)', 79000, 100, 1, 1, 2),
    (N'Nghệ Thuật Tư Duy Chiến Lược', 239000, 100, 2, 2, 13),
    (N'Từ Tốt Đến Vĩ Đại - Jim Collins (Tái Bản 2021)', 130000, 100, 2, 3, 3),
    (N'48 Nguyên Tắc Chủ Chốt Của Quyền Lực (Tái Bản 2020)', 200000, 100, 3, 3, 4),
    (N'Hiểu Về Trái Tim (Tái Bản 2023)', 158000, 100, 3, 9, 5),
    (N'Thai Giáo Theo Chuyên Gia - 280 Ngày - Mỗi Ngày Đọc Một Trang (Tái Bản 2021)', 115000, 100, 4, 4, 14),
    (N'Nuôi Con Không Phải Là Cuộc Chiến 2 - E.A.S.Y - Nếp Sinh Hoạt Cho Bé Yêu (Tái Bản 2021)', 129000, 100, 4, 2, 6),
    (N'Lớp Học Mật Ngữ Phiên Bản Mới - Tập 7 - Tặng Kèm 1 Standee Lớp Học Mật Ngữ', 25000, 100, 5, 5, 7),
    (N'Lớp Học Mật Ngữ Phiên Bản Mới - Tập 2 - Tặng Kèm 1 Standee Lớp Học Mật Ngữ', 25000, 100, 5, 5, 7),
    (N'Tiểu Sử Elon Musk - Bìa Cứng - Tặng Kèm Số Tay Elon Musk', 499000, 100, 6, 6, 8),
    (N'Khi Hơi Thở Hóa Thinh Không (Tái Bản 2020)', 109000, 100, 6, 2, 9),
    (N'Atlat Địa Lí Việt Nam (2023)', 31000, 100, 7, 7, 10),
    (N'500 Bài Tập Vật Lí Trung Học Cơ Sở', 145000, 100, 7, 8, 11),
    (N'Giáo Trình Chuẩn HSK 1 (Tái Bản 2022)', 198000, 100, 8, 9, 12),
    (N'Giáo Trình Chuẩn HSK 1 - Sách Bài Tập (2021)', 158000, 100, 8, 9, 12);

INSERT INTO [book_images]
VALUES
    (N'vh1.png', 1),
    (N'vh2.png', 2),
    (N'kt1.png', 3),
    (N'kt2.png', 4),
    (N'tl1.png', 5),
    (N'tl2.png', 6),
    (N'ndc1.png', 7),
    (N'ndc2.png', 8),
    (N'stn1.png', 9),
    (N'stn2.png', 10),
    (N'ts1.png', 11),
    (N'ts2.png', 12),
    (N'gk1.png', 13),
    (N'gk2.png', 14),
    (N'nn1.png', 15),
    (N'nn2.png', 16);

	INSERT INTO [accounts] VALUES
	(N'kat1002',N'123',1,'','');