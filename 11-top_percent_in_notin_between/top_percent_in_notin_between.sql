-- =============================================
-- TOP, TOP PERCENT, IN, NOT IN, BETWEEN
-- =============================================

-- Ornekler icin kullandigimiz tablo:
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FullName  NVARCHAR(50),
    City      NVARCHAR(30),
    Grade     INT,
    GPA       DECIMAL(3,2)
);

INSERT INTO Students VALUES
(1, 'Ayse Yilmaz',   'Istanbul', 3, 3.45),
(2, 'Mehmet Demir',  'Ankara',   4, 2.80),
(3, 'Zeynep Kaya',   'Izmir',    2, 3.90),
(4, 'Ali Can',       'Istanbul', 4, 2.10),
(5, 'Elif Sahin',    'Bursa',    1, 3.60),
(6, 'Burak Aydin',   'Ankara',   3, 2.95),
(7, 'Selin Arslan',  'Istanbul', 2, 3.75),
(8, 'Kerem Ozturk',  'Izmir',    4, 2.50),
(9, 'Deniz Yildiz',  'Bursa',    3, 3.15),
(10,'Cansu Koc',     'Ankara',   1, 2.65);


-- =============================================
-- 1) TOP
-- =============================================
-- TOP, sonuc kumesinden belirli sayida satir getirir.
-- ORDER BY olmadan "ilk N satir" anlamsizdir, cunku SQL Server
-- verileri istedigi fiziksel sirada dondurebilir.

-- GPA'si en yuksek 3 ogrenciyi getir
SELECT TOP 3 FullName, GPA
FROM Students
ORDER BY GPA DESC;

-- Onemli: TOP yazim olarak ORDER BY'dan once gelir,
-- ama mantiksal olarak once siralama yapilir, sonra TOP uygulanir.


-- TOP ... WITH TIES
-- Sinirdaki esit degerleri de dahil etmek icin kullanilir.
SELECT TOP 3 WITH TIES FullName, Grade
FROM Students
ORDER BY Grade DESC;
-- Grade = 4 olan ogrenci sayisi 3'ten fazlaysa hepsini getirir.


-- =============================================
-- 2) TOP PERCENT
-- =============================================
-- Sabit sayi yerine yuzdelik dilim belirtmek icin kullanilir.
-- Veri miktari zamanla degisiyorsa (yeni kayit eklendikce)
-- sabit sayi yerine yuzde kullanmak daha esnektir.

-- Ogrencilerin GPA'ya gore en yuksek %20'sini getir
SELECT TOP 20 PERCENT FullName, GPA
FROM Students
ORDER BY GPA DESC;
-- 10 ogrenci var -> %20'si = 2 ogrenci.
-- Sonuc tam sayi cikmazsa SQL Server yukari yuvarlar.


-- =============================================
-- 3) IN
-- =============================================
-- Bir sutunun degerinin belirli bir listede olup olmadigini kontrol eder.
-- Coklu OR kosulunu kisa yazmanin yoludur.

-- IN kullanmadan (uzun yol)
SELECT FullName, City
FROM Students
WHERE City = 'Istanbul' OR City = 'Ankara' OR City = 'Izmir';

-- IN ile (kisa ve okunakli yol) - ayni sonucu verir
SELECT FullName, City
FROM Students
WHERE City IN ('Istanbul', 'Ankara', 'Izmir');

-- IN, alt sorgu (subquery) ile de kullanilabilir
-- GPA'si 3.00'in uzerinde olan sehirlerdeki ogrencileri getir
SELECT FullName, City
FROM Students
WHERE City IN (
    SELECT City FROM Students WHERE GPA > 3.00
);


-- =============================================
-- 4) NOT IN
-- =============================================
-- IN'in tersi: listede OLMAYAN degerleri getirir.

-- Istanbul ve Ankara disindaki ogrencileri getir
SELECT FullName, City
FROM Students
WHERE City NOT IN ('Istanbul', 'Ankara');

-- DIKKAT / TUZAK:
-- Alt sorgu ile NOT IN kullanirken, alt sorgu sonucunda
-- NULL deger varsa TUM SORGU BOS SONUC doner!
-- Cunku SQL, NULL ile karsilastirmayi UNKNOWN olarak degerlendirir.
-- Bu yuzden alt sorguda NOT IN yerine NOT EXISTS tercih etmek daha guvenlidir.

-- Ornek (Grade sutununda NULL varsa hicbir satir donmez):
-- SELECT FullName
-- FROM Students
-- WHERE Grade NOT IN (SELECT Grade FROM Students WHERE Grade IS NULL);


-- =============================================
-- 5) BETWEEN
-- =============================================
-- Bir degerin iki sinir arasinda olup olmadigini kontrol eder.
-- Her iki uc deger de DAHILDIR (kapali aralik).

-- GPA'si 2.50 ile 3.50 arasinda (dahil) olan ogrencileri getir
SELECT FullName, GPA
FROM Students
WHERE GPA BETWEEN 2.50 AND 3.50;

-- Yukaridaki sorgu asagidakiyle aynidir:
SELECT FullName, GPA
FROM Students
WHERE GPA >= 2.50 AND GPA <= 3.50;

-- BETWEEN tarih araliklarinda da calisir (ornek, EnrollDate sutunu varsayimsal):
-- SELECT FullName
-- FROM Students
-- WHERE EnrollDate BETWEEN '2023-01-01' AND '2023-12-31';

-- NOT BETWEEN: araligin DISINDAKI degerleri getirir
SELECT FullName, GPA
FROM Students
WHERE GPA NOT BETWEEN 2.50 AND 3.50;


-- =============================================
-- PRATIK SORULAR
-- =============================================
-- 1) GPA'si en dusuk 3 ogrenciyi listele.
-- 2) Grade'i en yuksek %30'luk dilimdeki ogrencileri getir.
-- 3) Sadece Istanbul ve Bursa'da yasayan ogrencileri IN ile getir.
-- 4) Grade degeri 2 veya 3 OLMAYAN ogrencileri NOT IN ile getir.
-- 5) GPA'si 3.00 ile 3.80 arasinda olan ogrencileri BETWEEN ile getir,
--    sonra ayni sorguyu >= ve <= kullanarak tekrar yaz.
