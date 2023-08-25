-- Tao Database
create database quanlydiem;

-- Tao bang lop
create table lop(
malop varchar(10) primary key,
tenlop varchar(100)
);

-- Them du lieu vao lop
insert into LOP values('PT13301','Ứng dụng phần mềm 1');
insert into LOP values('PT13302','Ứng dụng phần mềm 2');
insert into LOP values('PT13303','Ứng dụng phần mềm 3');
insert into LOP values('PT13304','Ứng dụng phần mềm 4');
insert into LOP values('PT13305','Ứng dụng phần mềm 5');
insert into LOP values('PT13306','Ứng dụng phần mềm 6');
insert into LOP values('PT13307','Ứng dụng phần mềm 6');
insert into LOP values('PT13308','Ứng dụng phần mềm 7');
insert into LOP values('PT13309','Ứng dụng phần mềm 9');

-- Tao bang mon hoc
create table monhoc(
mamh varchar(10) primary key,
tenmh nvarchar(100),
sotiet int
);

-- Them du lieu vao bang

insert into MONHOC values('mob1013','lập trình java1',36);
insert into MONHOC values('mob1022','lập trình java2',36);
insert into MONHOC values('sof203','lập trình java3',36);
insert into MONHOC values('com2012','Cơ sở dữ liệu',36);
insert into MONHOC values('com2032','Hệ quản trị CSDL',30);

-- Tao bang sinh vien
create table sinhvien
(
masv varchar(10) primary key,
hoten nvarchar(100),
ngaysinh date,
quequan nvarchar(100),
Gioitinh varchar(5),
malop varchar(10),
foreign key(malop) references lop(malop)
);

-- Them du lieu vao bang
Insert into SINHVIEN values('ph06230','Trần Lê Huy','2000-06-07','Hà Nội','Nam','PT13302');
Insert into SINHVIEN values('ph06231','Nguyễn Thị Mỹ Duyên','2001-07-07','Hà Nội','Nữ','PT13302');
Insert into SINHVIEN values('ph06232','Võ Tá Nhật Anh','2003-09-07','Hà Tĩnh','Nam','PT13302');
Insert into SINHVIEN values('ph06233','Trần Thị Thùy Trang','2000-06-03','Hải Phòng','Nữ','PT13302');
Insert into SINHVIEN values('ph06234','Nguyễn Thị Mừng','2000-06-02','Hà Nội','Nữ','PT13305');
Insert into SINHVIEN values('ph06235','Nguyễn Xuân Trường','2000-06-06','Hà Nội','Nam','PT13305');
Insert into SINHVIEN values('ph06236','Nguyễn Lê Huy','2005-06-07','Hà Nội','Nam','PT13306');
Insert into SINHVIEN values('ph06237','Nguyễn An','2003-06-07','Hà Nội','Nam','PT13306');
Insert into SINHVIEN values('ph06238','Nguyễn An','2003-06-07','Hà Nội','Nam','PT13301');

-- Tao bang ketqua

create table ketqua(
masv varchar(10) ,
mamh varchar(10) ,
lanthi int ,
diemthi double,
primary key(masv,mamh,lanthi),
foreign key(masv) references sinhvien(masv),
foreign key(mamh) references monhoc(mamh)
);

-- Them du lieu vao bang ket qua
insert into KETQUA values('ph06230','sof203',1,3);
insert into KETQUA values('ph06230','sof203',2,6);
insert into KETQUA values('ph06230','com2012',1,8);
insert into KETQUA values('ph06233','sof203',1,7);
insert into KETQUA values('ph06234','sof203',1,9);
select * from lop
