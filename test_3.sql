CREATE TABLE karyawan(
    id_karyawan INT AUTO_INCREMENT PRIMARY KEY,
    nik VARCHAR(10) UNIQUE,
    nama VARCHAR(100),
    ttl DATE,
    alamat TEXT,
    id_jabatan INT,
    id_dept INT
);

CREATE TABLE `jabatan`(
    id_jabatan INT AUTO_INCREMENT PRIMARY KEY,
    nama_jabatan VARCHAR(100),
    id_level INT

);

CREATE TABLE `level`(
    id_level INT AUTO_INCREMENT PRIMARY KEY,
    nama_level varchar(100)

);

CREATE TABLE `department`(
    id_dept INT AUTO_INCREMENT PRIMARY KEY,
    nama_dept VARCHAR(100)
);

INSERT INTO `karyawan`(
    nik,nama,ttl,alamat,id_jabatan
) VALUES('1920001','Titih Aji kurniawan','1998-05-22','Cileungsi jawa barat','2'),('1920002','Aditya Hermanto','1990-04-22','Jagakarsa, Jakarta Selatan','1'),('192003','Septian david maulana','1999-01-10','Bekasi Jawa barat','3');

INSERT INTO `jabatan`(nama_jabatan,id_level) VALUES('Web Developer','3'),('IT Manager','2'),('HR','2');

INSERT INTO `level`(nama_level) VALUES('Junior'),('Middle'),('Senior');

INSERT INTO  `department`(nama_dept) VALUES('IT'),('Sales'),('Accounting');

UPDATE `karyawan` SET nama = 'Ferdinand Sinaga', alamat = 'Bandung, Jawa Barat' WHERE id_karyawan = 3;

DELETE FROM `karyawan` WHERE id_karyawan = 3;

SELECT `karyawan`.`nama`, `jabatan`.`nama_jabatan`,`level`.`nama_level`,`department`.`nama_dept`
FROM `karyawan`
LEFT JOIN `jabatan` ON `karyawan`.`id_jabatan` = `jabatan`.`id_jabatan`
LEFT JOIN `level` ON `jabatan`.`id_level` = `level`.`id_level`
LEFT JOIN `department` ON `karyawan`.`id_dept` = `department`.`id_dept`;
