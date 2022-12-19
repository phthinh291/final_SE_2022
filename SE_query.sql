create database SE_final

use SE_final

create table Storage (
	sto_ID int identity(1,1),
	prod_name nvarchar(30),
	prod_price float,
	prod_quantity int,
	sold int default 0,
	ImagePath nvarchar(200) default null,
	primary key(prod_name)
);

create table Requests (
	req_ID int identity(1,1),
	agent_name nvarchar(30),
	deli_addr nvarchar(100) default null,
	prod_name nvarchar(30),
	prod_quantity int,
	payment_method nvarchar(30),
	primary key(req_ID)
);

create table Transactions (
	trans_ID int identity(1,1),
	agent_name nvarchar(30),
	deli_addr nvarchar(100) default null,
	prod_name nvarchar(30),
	prod_quantity int,
	price float,
	trans_status nvarchar(30),
	pay_check nvarchar(30),
	primary key(trans_ID),
	foreign key(prod_name) references Storage(prod_name)
);

create table UserLogin(
	employee_name nvarchar(30),
	username varchar(25),
	password varchar(25)
	primary key(employee_name, username)
);

create table MonthlyIncome(
	month int,
	income float,
	primary key(month)
);

insert into Storage(prod_name, prod_price, prod_quantity, sold, ImagePath) values
(N'Men giảm cân SUKACHE', 150000, 120, 220, '~/Content/images/sukache.jpg'),
(N'Đông Trùng Hạ Thảo Real Chill', 280000, 150, 230, '~/Content/images/rilchil.jpg'),
(N'Yến sào Thu Hà', 420000, 125, 50, '~/Content/images/thuha.jpg'),
(N'Men tiêu hóa Thành Vinh', 60000, 260, 235, '~/Content/images/thanhvin.jpeg'),
(N'Viên uống Collagen Yashino', 99000, 180, 180, '~/Content/images/yashino.jpg'),
(N'Kẹo dẻo mọc tóc Hairy Buddy', 160000, 145, 100, '~/Content/images/keotoc.jpg'),
(N'Nước dinh dưỡng Anokiro', 95000, 0, 450, '~/Content/images/anokiro.jpg'),
(N'Thuốc tăng cân Ngọc Tú', 160000, 45, 155, '~/Content/images/ngoctu.jpg'),
(N'Bánh bổ mắt OnlyC', 25000, 80, 120, '~/Content/images/onlyc.jpg'),
(N'Kẹo chiết xuất nhân sâm Hà Nam', 75000, 45, 225, '~/Content/images/hanam.jpg')

insert into Transactions(agent_name, deli_addr, prod_name, prod_quantity, price, trans_status, pay_check) values
(N'Nhà thuốc Mỹ Hảo', N'106 Nguyễn Minh Châu Q.Tân Phú TP.HCM', N'Men tiêu hóa Thành Vinh', 55, 55*60000, N'Đã giao', N'Đã thanh toán'),
(N'Cửa hàng Long Phát', N'25 Võ Văn Kiệt Q7 TP.HCM', N'Kẹo dẻo mọc tóc Hairy Buddy', 20, 20*160000, N'Đang giao', N'Đã thanh toán'),
(N'Cửa hàng Long Phát', N'25 Võ Văn Kiệt Q7 TP.HCM', N'Viên uống Collagen Yashino', 50, 50*99000, N'Đang giao', N'Đã thanh toán'),
(N'Đại lý Bảo Toàn', N'2A/45 Lý Thường Kiệt Q10 Tp.HCM', N'Men giảm cân SUKACHE', 30, 30*150000, N'Đang giao', N'Chưa thanh toán'),
(N'Nhà thuốc Mỹ Hảo', N'106 Nguyễn Minh Châu Q.Tân Phú TP.HCM',  N'Kẹo chiết xuất nhân sâm Hà Nam', 40, 40*75000, N'Đã giao', N'Đã thanh toán'),
(N'Đại lý Hồng Ngọc', N'Block 3E Tòa nhà New Sun Q.4 TP.HCM', N'Kẹo dẻo mọc tóc Hairy Buddy', 100, 100*160000, N'Đang giao', N'Đã thanh toán'),
(N'Cửa hàng MedIt', N'34 Cống Quỳnh Q.1 TP.HCM', N'Men giảm cân SUKACHE', 40, 40*150000, N'Đang giao', N'Đã thanh toán'),
(N'Đại lý Bảo Toàn', N'2A/45 Lý Thường Kiệt Q10 TP.HCM', N'Thuốc tăng cân Ngọc Tú', 80, 80*160000, N'Đã giao', N'Đã thanh toán'),
(N'Nhà thuốc An Tâm', N'178 Trần Bình Trọng Q.5 TP.HCM', N'Đông Trùng Hạ Thảo Real Chill', 50, 50*280000, N'Đã giao', N'Chưa thanh toán'),
(N'Đại lý Bảo Toàn', N'2A/45 Lý Thường Kiệt Q10 Tp.HCM', N'Men tiêu hóa Thành Vinh', 30, 30*60000, N'Đang giao', N'Đã thanh toán')

insert into UserLogin(employee_name, username, password) values
(N'Lê Phước Thịnh', 'phuocthinh', '123456'),
(N'Trần Trung Dũng', 'trungdung', '654321'),
(N'Nguyễn Chí Thanh', 'demo', '123')


insert into MonthlyIncome(month, income) values
(1, 60250000),
(2, 55600000),
(3, 38050000),
(4, 110895000),
(5, 61250000),
(6, 37020000),
(7, 59156000),
(8, 43578000),
(9, 60580000),
(10, 124670000),
(11, 72060000),
(12, 39980000)

insert into Requests(agent_name, deli_addr, prod_name, prod_quantity, payment_method) values
(N'Đại lý Bảo Toàn', N'2A/45 Lý Thường Kiệt Q10 Tp.HCM', N'Bánh bổ mắt OnlyC', 30, N'MoMo'),
(N'Nhà thuốc Nam Hiệu', N'662 Ngô Bá Khá Q.3 TP.HCM', N'Men tiêu hóa Thành Vinh', 40, N'Cash'),
(N'Cửa hàng Long Phát', N'25 Võ Văn Kiệt Q7 TP.HCM', N'Đông Trùng Hạ Thảo Real Chill', 50, N'Online Banking'),
(N'Đại lý Bảo Toàn', N'2A/45 Lý Thường Kiệt Q10 Tp.HCM', N'Kẹo dẻo mọc tóc Hairy Buddy', 30, N'MoMo'),
(N'Cửa hàng AdinMedicine', N'3 Lô B Cư xá Bình Thới Q.11 TP.HCM', N'Thuốc tăng cân Ngọc Tú', 60, N'Online Banking')
