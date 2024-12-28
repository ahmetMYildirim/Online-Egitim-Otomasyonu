USE Online_EDU;
/*INSERT INTO Users (id,first_name, last_name, e_mail, password, role_id, reg_date, addres_id)
VALUES
(4,'Emre', 'Çelik', 'emre.celik@example.com', 'hashed_password_4', 1, '2023-09-20 12:05:15', 4),
(5,'Fatma', 'Aydýn', 'fatma.aydin@example.com', 'hashed_password_5', 2, '2023-10-15 09:15:25', 5),
(6,'Seda', 'Özdemir', 'seda.ozdemir@example.com', 'hashed_password_6', 3, '2023-11-01 13:25:30', 6),
(7,'Ali', 'Koç', 'ali.koc@example.com', 'hashed_password_7', 1, '2023-06-18 07:55:45', 7),
(8,'Zeynep', 'Demir', 'zeynep.demir@example.com', 'hashed_password_8', 2, '2023-07-28 15:35:50', 8),
(9,'Can', 'Bakan', 'can.bakan@example.com', 'hashed_password_9', 3, '2023-08-12 11:15:30', 9),
(10,'Büþra', 'Gül', 'busra.gul@example.com', 'hashed_password_10', 1, '2023-09-22 16:10:40', 10),
(11,'Mehmet', 'Yalçýn', 'mehmet.yalcin@example.com', 'hashed_password_11', 2, '2023-06-25 18:30:25', 11),
(12,'Nisa', 'Kuþ', 'nisa.kus@example.com', 'hashed_password_12', 3, '2023-07-15 14:00:10', 12),
(13,'Ömer', 'Sarý', 'omer.sari@example.com', 'hashed_password_13', 1, '2023-08-02 10:45:20', 13),
(14,'Ebru', 'Öztürk', 'ebru.ozturk@example.com', 'hashed_password_14', 2, '2023-09-10 17:05:00', 14),
(15,'Baran', 'Kara', 'baran.kara@example.com', 'hashed_password_15', 3, '2023-10-18 19:15:55', 15),
(16,'Aylin', 'Karaca', 'aylin.karaca@example.com', 'hashed_password_16', 1, '2023-11-05 13:30:40', 16),
(17,'Okan', 'Bayram', 'okan.bayram@example.com', 'hashed_password_17', 2, '2023-06-08 16:25:10', 17),
(18,'Leyla', 'Yüce', 'leyla.yuce@example.com', 'hashed_password_18', 3, '2023-07-18 12:35:30', 18),
(19,'Gökhan', 'Tunc', 'gokhan.tunc@example.com', 'hashed_password_19', 1, '2023-08-22 14:40:50', 19),
(20,'Murat', 'Baþaran', 'murat.basaran@example.com', 'hashed_password_20', 2, '2023-09-03 09:25:05', 20);*/


/*INSERT INTO Courses (id,course_name, description, instructor_id)
VALUES
(1,'Kiþisel Geliþim', 'Kiþisel geliþim ve motivasyon üzerine bir kurs.', 1),
(2,'Yazýlým Geliþtirme', 'Modern yazýlým geliþtirme teknikleri ve araçlarý.', 2),
(3,'Veritabaný Yönetimi', 'Veritabaný tasarýmý ve yönetimi hakkýnda eðitim.', 3),
(4,'Ýleri Seviye Python', 'Python programlamaya derinlemesine bir bakýþ.', 1),
(5,'Web Tasarýmý', 'Web sayfalarý oluþturma ve tasarlama eðitimleri.', 2),
(6,'Makine Öðrenmesi', 'Makine öðrenmesi algoritmalarýnýn uygulanmasý.', 3);*/

/*INSERT INTO CourseReviews (Course_Id, User_Id, Rating, Review, Review_Date)
VALUES
(1, 1, 4.5, 'Çok faydalý bir kurs, kendimi geliþtirdim.', '2023-06-20 14:10:10'),
(2, 2, 5.0, 'Gerçekten çok öðretici ve kapsamlý bir kurs.', '2023-07-14 11:20:25'),
(3, 3, 3.8, 'Ýçeriði iyi ama bazý kýsýmlar eksikti.', '2023-08-30 13:40:40'),
(1, 4, 4.0, 'Kurs genel olarak iyi ama bazý konular daha ayrýntýlý olabilirdi.', '2023-09-05 10:30:15'),
(2, 5, 5.0, 'Mükemmel bir kurs, her seviyeye hitap ediyor.', '2023-09-20 12:15:45');*/

/*INSERT INTO CourseContent (Course_Id, Title, File_Path, Type)
VALUES
(1, 'Kiþisel Geliþim 101', '/files/personal_development_intro.pdf', 'PDF'),
(2, 'Yazýlým Geliþtirme Temelleri', '/files/software_development_basics.mp4', 'Video'),
(3, 'Veritabaný Tasarýmý', '/files/db_design_basics.pdf', 'PDF'),
(4, 'Python Temelleri', '/files/advanced_python_basics.mp4', 'Video'),
(5, 'HTML ve CSS Baþlangýç', '/files/web_design_intro.pdf', 'PDF'),
(6, 'Makine Öðrenmesi 101', '/files/machine_learning_intro.mp4', 'Video');

INSERT INTO Certificate (User_Id, Course_Id, Issue_Date, Certificate_Code, Status)
VALUES
(1, 1, '2023-07-01 10:00:00', 'CD20230701', 'Verildi'),
(2, 2, '2023-08-01 11:00:00', 'SD20230801', 'Verildi'),
(3, 3, '2023-09-10 12:00:00', 'DB20230910', 'Verildi'),
(4, 4, '2023-09-15 14:00:00', 'PY20230915', 'Verildi'),
(5, 5, '2023-09-20 09:00:00', 'WD20230920', 'Verildi');*/

INSERT INTO Categories (id,Categories_Name, description)
VALUES
(1,'Kiþisel Geliþim', 'Kiþisel geliþim ve motivasyon üzerine eðitimler'),
(2,'Yazýlým', 'Yazýlým geliþtirme ve programlama eðitimleri'),
(3,'Veritabaný', 'Veritabaný yönetimi ve SQL dersleri'),
(4,'Makine Öðrenmesi', 'Makine öðrenmesi ve veri bilimi kurslarý'),
(5,'Web Tasarýmý', 'Web tasarýmý ve geliþtirme kurslarý');

INSERT INTO Sub_Categories (id,categories_id, Sub_Categories_Name, description)
VALUES
(1,1, 'Kiþisel Geliþim Teknikleri', 'Kiþisel geliþim alanýnda temel teknikler'),
(2,2, 'Web Yazýlýmý', 'Web uygulamalarý geliþtirme eðitimleri'),
(3,3, 'SQL Veri Tabaný Yönetimi', 'SQL kullanýmý ve veri tabaný yönetimi eðitimleri'),
(4,4, 'Derin Öðrenme', 'Derin öðrenme tekniklerine giriþ'),
(5,5, 'UI/UX Tasarýmý', 'Kullanýcý arayüzü ve deneyimi tasarýmý');

/*INSERT INTO Address (City, District, Address_Details)
VALUES
('Ýstanbul', 'Kadýköy', 'Fenerbahçe Mahallesi, No:45'),
('Ankara', 'Çankaya', 'Kocatepe Mahallesi, No:12'),
('Ýzmir', 'Konak', 'Alsancak Mahallesi, No:7'),
('Bursa', 'Nilüfer', 'Ýhsaniye Mahallesi, No:32'),
('Adana', 'Seyhan', 'Yüreðir Mahallesi, No:18');

INSERT INTO UserAddresses (User_Id, Address_Id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO Enrollment (User_Id, Course_Id, Enrollment_Date)
VALUES
(1, 1, '2023-06-20 10:00:00'),
(2, 2, '2023-07-10 11:00:00'),
(3, 3, '2023-08-15 12:00:00'),
(4, 4, '2023-09-05 13:00:00'),
(5, 5, '2023-09-20 14:00:00');

INSERT INTO Purchase (User_Id, Course_Id, Payment_Amount, Payment_Date)
VALUES
(1, 1, 199.99, '2023-06-20 09:00:00'),
(2, 2, 249.99, '2023-07-15 10:30:00'),
(3, 3, 179.99, '2023-08-22 12:00:00'),
(4, 4, 299.99, '2023-09-10 14:15:00'),
(5, 5, 229.99, '2023-09-25 16:00:00');

INSERT INTO UserRoles (User_Id, Role_Id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2);*/
