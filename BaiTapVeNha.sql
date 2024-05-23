create Database databaseClassList;

create table databaseClassList.POINT (
	id_point varchar(255)PRIMARY KEY,
	idStudent varchar(255) Not null,
	Maths float(10),
    Physics float(10),
    Chemistry float(10),
    Literature float(10),
    RankStudent varchar(255),
	FOREIGN KEY (idStudent) REFERENCES Student(idStudent)

);

create table databaseClassList.Class (
    Classname varchar(255) PRIMARY KEY,
    coach varchar(255)
);

create table databaseClassList.Student (
	idStudent varchar(255) PRIMARY KEY,
	Firstname varchar(30) Not null,
	Lastname varchar(30) Not null,
    Gender varchar(30) Not null,
    Datename date,
    Class varchar(50) Not null,
    note varchar(255),
    FOREIGN KEY (Class) REFERENCES Class(Classname)
);

INSERT INTO Class(Classname,coach) value('A1','Erik Ten Hag');
INSERT INTO Class(Classname,coach) value('A2','Mikel Arteta');
INSERT INTO Class(Classname,coach) value('A3','Pep Guardiola');
INSERT INTO Class(Classname,coach) value('A4','Nguyễn Văn Khoa');
INSERT INTO Class(Classname,coach) value('A5','Phạm Hoàng An');
INSERT INTO Class(Classname,coach) value('A6','Park Hang-seo');
INSERT INTO Class(Classname,coach) value('A7','Hà Bảo Ân');
INSERT INTO Class(Classname,coach) value('A8','Vũ Thị Kiều Anh');
INSERT INTO Class(Classname,coach) value('A9','Nguyễn Thị Hồng Anh');
INSERT INTO Class(Classname,coach) value('A10','Hà Bảo Ân');


INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M1','Trần','Văn Sỷ','Nam','1998-07-31','A1','đẹp trai');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M2','Nguyễn','Ngọc Hiếu','Nam','2002-10-30','A2','học giỏi');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M3','Nguyễn ','Đức Dũng','Nam','1992-12-27','A3','nhà giàu');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M4','Hà','Duy Nam','Nam','1994-02-10','A4','ga lăng');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M5','Lê','Văn Cường','Nam','2001-01-06','A5','gia trưởng');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M6','Ngô','Minh Tiến','Nam','1998-11-11','A6','chăm');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M7','Lê ','Hữu Minh Tuyên','Nam','1998-08-24','A7','cần cù');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M8','Trần','Văn nhân','Nam','1994-04-1','A8','bảo lưu');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M9','Trần','Văn nga','Nam','1999-05-3','A9','vp');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M10','Trần','Văn ngà','Nam','1989-07-20','A1','premium');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M11','Trần','Văn Chính','Nam','1989-07-20','A1','premium');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M12','Lê','Văn Nhân','Nam','1989-07-20','A1','premium');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M13','Lê','Thị Nhi','Nữ','1999-08-21','A1','premium');
INSERT INTO Student(idStudent,Firstname,Lastname,Gender,Datename,Class,note) value('M14','Nguyễn','Thị Đào','Nữ','1999-08-20','A1','premium');

INSERT INTO databaseClassList.POINT (id_point, idStudent, Maths, Physics, Chemistry, Literature, RankStudent) VALUES
('P001', 'M1', 8.5, 7.0, 6.5, 9.0, 'Good'),
('P002', 'M2', 9.0, 8.5, 8.0, 7.5, 'Very Good'),
('P003', 'M3', 5.0, 6.0, 5.5, 6.5, 'Average'),
('P004', 'M4', 7.0, 7.5, 7.0, 8.0, 'Good'),
('P005', 'M5', 9.5, 8.0, 7.5, 9.0, 'Very Good'),
('P006', 'M6', 6.5, 7.0, 6.0, 7.5, 'Good'),
('P007', 'M7', 8.0, 8.5, 9.0, 7.0, 'Very Good'),
('P008', 'M8', 7.5, 6.5, 8.0, 6.0, 'Good'),
('P009', 'M9', 6.0, 5.5, 6.0, 7.0, 'Average'),
('P010', 'M10', 8.5, 7.5, 7.5, 8.5, 'Very Good');

-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), ngày sinh.
SELECT idStudent, 
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename
FROM databaseClassList.Student;

-- 2.Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), sinh ngày 20
SELECT idStudent, 
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename
FROM databaseClassList.Student
WHERE DAY(Datename) = 20;

-- 3.Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), ngày sinh là 6/9/1999
SELECT idStudent, 
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename
FROM databaseClassList.Student
WHERE Datename = '1998-07-31';

-- 4.Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), tên là NA
SELECT idStudent, 
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename
FROM databaseClassList.Student
WHERE Lastname = 'Văn Sỷ';

-- 5.Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), tên bắt đầu bằng chữ N
SELECT idStudent, 
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename
FROM databaseClassList.Student
WHERE Lastname LIKE '%V%';

-- 6.Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), trong tên có NA
SELECT idStudent, 
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename
FROM databaseClassList.Student
WHERE Lastname LIKE '%Van%';

-- 7.Đếm số sinh viên tên bắt đầu bằng chữ N
SELECT COUNT(*) AS NumberOfStudents
FROM databaseClassList.Student
WHERE Lastname LIKE 'Văn%';

-- 8.Hiện danh sách sinh viên: họ và tên (là 1 cột), ngày sinh, tên lớp, tên GVCN.
SELECT idStudent,
       CONCAT(Firstname, ' ', Lastname) AS FullName, 
       Datename,Class,coach
FROM databaseClassList.Student, databaseClassList.Class;

-- 9.Hiện danh sách sinh viên: họ và tên (là 1 cột), ngày sinh, điểm trung bình, xếp loại
SELECT CONCAT(s.Firstname, ' ', s.Lastname) AS FullName, 
       s.Datename, 
       (p.Maths + p.Physics + p.Chemistry + p.Literature) / 4 AS AverageScore, 
       p.RankStudent
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent;

-- 10.Đếm số học sinh của mỗi lớp
SELECT Class, COUNT(*) AS NumberOfStudents
FROM databaseClassList.Student
GROUP BY Class;

-- 11.Hiện ra lớp có số lượng sinh viên > 5
SELECT Class, COUNT(*) AS NumberOfStudents
FROM databaseClassList.Student
GROUP BY Class
HAVING COUNT(*) > 5;

-- 12.Hiện thông lớp có số lượng sinh viên nhiều nhất
SELECT Class, COUNT(*) AS NumberOfStudents
FROM databaseClassList.Student
GROUP BY Class
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 13.Tìm học sinh có điểm lớn nhất
SELECT s.idStudent, 
       CONCAT(s.Firstname, ' ', s.Lastname) AS FullName, 
       MAX(p.Maths + p.Physics + p.Chemistry + p.Literature) AS MaxScore
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
GROUP BY s.idStudent, s.Firstname, s.Lastname
ORDER BY MaxScore DESC
LIMIT 1;

-- 14.Hiện ra danh sách các học sinh có điểm tb > 8
SELECT CONCAT(s.Firstname, ' ', s.Lastname) AS FullName, 
       s.Datename, 
       (p.Maths + p.Physics + p.Chemistry + p.Literature) / 4 AS AverageScore
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
HAVING AverageScore > 8;

-- 15. Tổng điểm tb của các bạn có tên bắt đầu bằng chữ NA
SELECT SUM((p.Maths + p.Physics + p.Chemistry + p.Literature) / 4) AS TotalAverageScore
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
WHERE s.Lastname LIKE 'Văn%';

-- 16.Hiện ra danh sách các học sinh có điểm tb > 5 và điểm toán > 8
SELECT CONCAT(s.Firstname, ' ', s.Lastname) AS FullName, 
       s.Datename, 
       p.Maths,
       (p.Maths + p.Physics + p.Chemistry + p.Literature) / 4 AS AverageScore
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
WHERE (p.Maths + p.Physics + p.Chemistry + p.Literature) / 4 > 5
AND p.Maths > 8;

-- 17.Hiện ra danh sách các học sinh có xếp loại là giỏi
SELECT CONCAT(s.Firstname, ' ', s.Lastname) AS FullName, 
       s.Datename, 
       p.RankStudent
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
WHERE p.RankStudent LIKE '%Good%';

-- 18.Đếm số lượng học sinh giỏi
SELECT COUNT(*) AS NumberOfGoodStudents
FROM databaseClassList.POINT
WHERE RankStudent LIKE '%Good%';

-- 19.Đếm số lượng học sinh giỏi của từng lớp
SELECT c.Classname, COUNT(p.id_point) AS NumberOfGoodStudents
FROM databaseClassList.Class c
LEFT JOIN databaseClassList.Student s ON c.Classname = s.Class
LEFT JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
WHERE p.RankStudent LIKE '%Good%'
GROUP BY c.Classname;

-- 20.In ra các học sinh chưa tham gia thi
SELECT CONCAT(Firstname, ' ', Lastname) AS FullName, Datename
FROM databaseClassList.Student
LEFT JOIN databaseClassList.POINT ON databaseClassList.Student.idStudent = databaseClassList.POINT.idStudent
WHERE databaseClassList.POINT.id_point IS NULL;

-- 21. In ra học sinh có điểm trung bình lớn nhất của từng lớp
SELECT s.idStudent, 
       CONCAT(s.Firstname, ' ', s.Lastname) AS FullName, 
       s.Datename, 
       (p.Maths + p.Physics + p.Chemistry + p.Literature) / 4 AS AverageScore,
       s.Class
FROM databaseClassList.Student s
JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
JOIN (
    SELECT s.Class, MAX((p.Maths + p.Physics + p.Chemistry + p.Literature) / 4) AS MaxAverage
    FROM databaseClassList.Student s
    JOIN databaseClassList.POINT p ON s.idStudent = p.idStudent
    GROUP BY s.Class
) AS MaxScores ON s.Class = MaxScores.Class AND (p.Maths + p.Physics + p.Chemistry + p.Literature) / 4 = MaxScores.MaxAverage;

