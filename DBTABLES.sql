-- MySQL Administrator dump 1.4
--

--
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;

--
--


DROP TABLE IF EXISTS `books`;
DROP TABLE IF EXISTS `booksauthor`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `bookcategory`;
DROP TABLE IF EXISTS `keywords`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `readers`;
DROP TABLE IF EXISTS `employees`;
DROP TABLE IF EXISTS `purchases`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `searchnumber`;

CREATE TABLE `books` (
  bookid int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `language` varchar(45) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `tableofcontents` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `visibility` int NOT NULL default 1,
  PRIMARY KEY  (bookid)
);

CREATE TABLE `booksauthor` (
  bookid int NOT NULL,
  `author` varchar(45) NOT NULL,
  PRIMARY KEY  (bookid)
);

CREATE TABLE `categories` (
 `category` varchar(45) NOT NULL,
 `genre` varchar(45) NOT NULL,
  PRIMARY KEY  (`category`,`genre`)
);

CREATE TABLE `bookcategory` (
  bookid int NOT NULL,
 `category` varchar(45) NOT NULL,
 `genre` varchar(45),
  PRIMARY KEY  (bookid,`category`)
);

CREATE TABLE `keywords` (
  bookid int NOT NULL,
 `keyword` varchar(45) NOT NULL,
  PRIMARY KEY  (bookid,`keyword`)
);

CREATE TABLE `users` (
 `username` varchar(45) NOT NULL,
 `password` varchar(45) NOT NULL,
 `firstname` varchar(45) NOT NULL,
 `lastname` varchar(45) NOT NULL,
 `ssn` varchar(45) NOT NULL,
 `type` int DEFAULT 0,
  `isloggedin` int DEFAULT 0,
  PRIMARY KEY  (`username`)
);

CREATE TABLE `readers` (
 `username` varchar(45) NOT NULL,
 `paymentmethod` varchar(45) ,
 `subscription` varchar(45) ,
 `date` varchar (45),
 `isfrozen` int DEFAULT 1,
  PRIMARY KEY  (`username`)
);

CREATE TABLE `employees` (
 `username` varchar(45) NOT NULL,
 `employeeid` varchar(45) NOT NULL,
 `email` varchar(45) NOT NULL,
 `department` varchar(45) NOT NULL,
 `role` varchar(45) NOT NULL,
  PRIMARY KEY  (`username`)
);

CREATE TABLE `purchases` (
 `username` varchar(45) NOT NULL,
 bookid int not null,
 `date` varchar(45) NOT NULL,
  PRIMARY KEY  (`username`, bookid)
);

CREATE TABLE `reviews` (
 `username` varchar(45) NOT NULL,
  bookid int not null,
 `review` varchar(255) NOT NULL,
  `visibility` int DEFAULT 0,
  PRIMARY KEY  (`username`, bookid)
);

CREATE TABLE `searchnumber` (
  bookid int not null,
  `date` date NOT NULL,
  `numberofclicks` int DEFAULT 0,
  PRIMARY KEY  (bookid, `date`)
);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
