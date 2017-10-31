-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2017 at 06:05 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdc_staging`
--
CREATE DATABASE IF NOT EXISTS `tdc_staging` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tdc_staging`;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
CREATE TABLE `detalle_ventas` (
  `cod_venta` int(10) NOT NULL,
  `cod_producto` smallint(5) NOT NULL,
  `cantidad` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `cod_vendedor` int(11) NOT NULL,
  `nombre` varchar(445) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mayoristas`
--

DROP TABLE IF EXISTS `mayoristas`;
CREATE TABLE `mayoristas` (
  `nombre` varchar(150) DEFAULT NULL,
  `cod_cliente` int(11) NOT NULL,
  `fecha_nac` date NOT NULL,
  `cod_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `minoristas`
--

DROP TABLE IF EXISTS `minoristas`;
CREATE TABLE `minoristas` (
  `cod_cliente` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `cod_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `cod_producto` int(11) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `presentacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
CREATE TABLE `regiones` (
  `cod_region` int(11) NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `cod_venta` int(10) NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `cod_sucursal` int(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `cod_cliente` smallint(5) DEFAULT NULL,
  `cod_empleado` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`cod_venta`,`cod_producto`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`cod_vendedor`);

--
-- Indexes for table `mayoristas`
--
ALTER TABLE `mayoristas`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indexes for table `minoristas`
--
ALTER TABLE `minoristas`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cod_producto`);

--
-- Indexes for table `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`cod_region`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`cod_venta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
