-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Haz 2020, 01:18:43
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogretimgorevlileri`
--

CREATE TABLE `ogretimgorevlileri` (
  `OgrNO` int(10) UNSIGNED NOT NULL,
  `AD` varchar(50) NOT NULL,
  `SOYAD` varchar(50) NOT NULL,
  `UNVAN` varchar(50) DEFAULT NULL,
  `BOLUM` varchar(50) NOT NULL,
  `MAIL` varchar(50) DEFAULT NULL,
  `ODANO` varchar(50) DEFAULT NULL,
  `TARIH` date NOT NULL,
  `NOTE` text DEFAULT NULL,
  `SICILNO` int(30) NOT NULL,
  `DURUM` varchar(50) DEFAULT NULL,

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `ogretimgorevlileri`
--

INSERT INTO `ogretimgorevlileri` (`OgrNO`, `AD`, `SOYAD`, `UNVAN`, `BOLUM`, `MAIL`, `ODANO`, `TARIH`, `NOTE`, `SICILNO`, `DURUM`) VALUES
(1, 'Mahmut', 'Kaya', 'Ogr. Gor. Dr.', 'Bilp', NULL, NULL, '2020-06-02', 'Deneme Notu', 123, 'AKTIF'),
(15, 'Yunus', 'Kaya', 'Ord. Prof. Doc. Dr.', 'Turizm Otelcilik', '', 'B-019', '2020-06-03', 'Kral', 19, 'INAKTIF'),

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ogretimgorevlileri`
--
ALTER TABLE `ogretimgorevlileri`
  ADD PRIMARY KEY (`OgrNO`,`SICILNO`),
  ADD UNIQUE KEY `OgrNO` (`OgrNO`,`SICILNO`),
  ADD UNIQUE KEY `MAIL` (`MAIL`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ogretimgorevlileri`
--
ALTER TABLE `ogretimgorevlileri`
  MODIFY `OgrNO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
