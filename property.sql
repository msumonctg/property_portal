-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2017 at 09:38 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_division`
--

CREATE TABLE `city_division` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `city` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_division`
--

INSERT INTO `city_division` (`id`, `name`, `city`) VALUES
(1, 'Dhaka South City', 'Dhaka'),
(2, 'Dhaka North City', 'Dhaka'),
(3, 'Gazipur City', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `city_division_description`
--

CREATE TABLE `city_division_description` (
  `id` int(11) NOT NULL,
  `fk_city_division_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_division_description`
--

INSERT INTO `city_division_description` (`id`, `fk_city_division_id`, `description`, `img`) VALUES
(1, 1, 'Dhaka South City consists of 57 wards covering the thanas of Maghbazar, Sabujbagh, Motijheel, Malibagh, Dhaka Kotwali, Sutrapur, Bangsal, Wari, Ramna, Gendaria, Lalbagh, Hazaribagh, Dhanmondi, Shahbagh, New Market, Khilgaon, Kamrangirchar.', 'resource/img/dhakaSouth.jpg'),
(2, 2, 'Dhaka North City Corporation consists of 36 wards covering the thanas of Mirpur, Mohammadpur, Sher-E-Bangla Nagar, Pallabi, Adabor, Kafrul, Dhaka Cantonment, Tejgaon, Gulshan, Rampura, Banani, Khilkhet, Vatara, Turag, Badda, Uttara, Uttarkhan, Dakkshinkhan.', 'resource/img/dhakaNorth.jpg'),
(3, 3, 'Gazipur City has 57 wards and total area is 329.23 square kilometers with approximately has the population of 25,00,000 people in the city area.. Various establishments such as IUT, BSMRAU, BRRI, BARI, Dhaka Univeristy of Engineering & Technology and others are located there.', 'resource/img/gazipur.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `fk_city_division_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `monthly_charge` varchar(10) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `fk_city_division_id`, `name`, `address`, `monthly_charge`, `img`) VALUES
(1, 1, 'Probashi Palli Tower', 'Bangladesh Banani, Dhaka-1213, Bangladesh ', '20,000', 'resource/img/1.jpg'),
(2, 2, 'Finlay Tower', 'Gulshan, Dhaka-1212, Bangladesh', '70,000', 'resource/img/2.jpg'),
(3, 3, 'Genetic Heights', 'Gazipur Fulbari, Dhaka, Bangladesh ', '33,000', 'resource/img/3.jpg'),
(4, 1, 'Reflection Villa', 'Dhaka-1213, Bangladesh ', '23,000', 'resource/img/4.jpg'),
(5, 2, 'R.K Assets', 'Motijheel, Dhaka-1000, Bangladesh', '46,000', 'resource/img/5.jpg'),
(6, 3, 'Nasim Real Arena', 'Gazipur Mouchak, Dhaka, Bangladesh', '65,000', 'resource/img/6.jpg'),
(7, 1, 'Best Security Tower', 'Baridhara , Dhaka-1212, Bangladesh', '54,000', 'resource/img/7.jpg'),
(8, 2, 'Articulation Tower', 'Mirpur, Dhaka-1215, Bangladesh', '73,000', 'resource/img/8.jpg'),
(9, 3, 'Pacific Heights', 'Gazipur, Konabari, Dhaka, Bangladesh', '15,000', 'resource/img/9.jpg'),
(10, 1, 'Brac Concord City', 'Banani , Dhaka-1213, Bangladesh', '96,000', 'resource/img/10.jpg'),
(11, 2, 'BIT Tower', 'Gulshan, Dhaka-1212, Bangladesh', '89,000', 'resource/img/11.jpg'),
(12, 3, 'Globe Construction Tower', 'Board Bazar, Gazipur, Dhaka', '44,000', 'resource/img/12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `property_details`
--

CREATE TABLE `property_details` (
  `id` int(11) NOT NULL,
  `fk_properties_id` int(11) NOT NULL,
  `floor_space` varchar(20) NOT NULL,
  `access` varchar(200) NOT NULL,
  `utility` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `room_img` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_details`
--

INSERT INTO `property_details` (`id`, `fk_properties_id`, `floor_space`, `access`, `utility`, `description`, `room_img`) VALUES
(1, 1, '1,200', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(2, 2, '3,000', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(3, 3, '4,000', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(4, 4, '3,100', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(5, 5, '6,000', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(6, 6, '2,900', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(7, 7, '4,900', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(8, 8, '1,100', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(9, 9, '3,100', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.\n', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(10, 10, '2,500', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(11, 11, '1,900', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg'),
(12, 12, '1,400', 'Rooftop Garden | Rooftop Restaurant | Gym | Medical Center | Pharmacy | Seminar Hall | Car Parking', 'Standby Generator | Broadband Internet | Lift | CCTV Surveillance | 24/7 Gate Security ', 'Apartment occupancy varies from six to ten residents. All rooms are single-occupancy rooms, while size varies considerably. The size of the rooms ranges from 9 to 18,5 square meters. All rooms are furnished with writing desk, chair, bookshelves, bed, mattress and curtains. Students supply any linens, rugs and decorations needed.\n\nEach occupant may freely use the apartments communal area: livingroom, bathroom and kitchen. Apartments have facilities which include some comfortable seating in the living room, a dining table and chairs in the kitchen or dining room; a stove, a microwave oven, two refridgerators and a freezer in the kitchen and a drying cupboard. Students provide their own dishes and cooking utensils. Occupants usually have some kind of arrangement on the communal use of pots and pans, coffeemakers etc.', 'resource/img/r1.jpg | resource/img/r2.jpg | resource/img/r3.jpg | resource/img/r4.jpg | resource/img/r5.jpg | resource/img/r6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city_division`
--
ALTER TABLE `city_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_division_description`
--
ALTER TABLE `city_division_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_details`
--
ALTER TABLE `property_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city_division`
--
ALTER TABLE `city_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `city_division_description`
--
ALTER TABLE `city_division_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `property_details`
--
ALTER TABLE `property_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
