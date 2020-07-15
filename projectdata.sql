-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 16, 2020 at 12:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `ass_id` int(11) NOT NULL,
  `due_date` date DEFAULT NULL,
  `subject` varchar(25) DEFAULT NULL,
  `turned_in` enum('Y','N') DEFAULT NULL,
  `Ateach_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`ass_id`, `due_date`, `subject`, `turned_in`, `Ateach_id`) VALUES
(101, '2019-12-05', 'Writing ', 'N', 101),
(190, '2019-12-17', 'Writing', 'N', 499),
(199, '2019-12-19', 'Math', 'N', 401),
(200, '2019-12-09', 'Reading', 'N', 444),
(410, '2019-12-01', 'Writing', 'N', 678),
(560, '2019-12-20', 'Math', 'N', 178),
(791, '2019-12-04', 'Reading', 'N', 545),
(889, '2019-12-02', 'Math', 'N', 312),
(896, '2019-12-01', 'Reading', 'N', 809),
(950, '2019-12-02', 'Reading', 'N', 267);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `days_missed` int(11) DEFAULT NULL,
  `att_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`days_missed`, `att_id`) VALUES
(0, 1),
(1, 2),
(1, 3),
(3, 4),
(3, 5),
(4, 6),
(5, 7),
(8, 8),
(14, 9),
(29, 10);

-- --------------------------------------------------------

--
-- Table structure for table `attends`
--

CREATE TABLE `attends` (
  `Aschool_id` int(11) NOT NULL,
  `Astu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attends`
--

INSERT INTO `attends` (`Aschool_id`, `Astu_id`) VALUES
(1, 116784321),
(4, 117812903),
(12, 110090664),
(23, 110026533),
(29, 113457891),
(40, 119809337),
(58, 110741967),
(60, 115629012),
(78, 116766654),
(91, 119035789);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Vehicle_id` int(11) NOT NULL,
  `Num_stops` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Vehicle_id`, `Num_stops`) VALUES
(4223, 4),
(5103, 8),
(5555, 10);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Vehicle_id`) VALUES
(5983),
(6776),
(7709),
(9011),
(9899);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EStu_id` int(11) NOT NULL,
  `Exam_num` int(11) NOT NULL,
  `Read_score` int(11) DEFAULT NULL,
  `Write_score` int(11) DEFAULT NULL,
  `Math_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EStu_id`, `Exam_num`, `Read_score`, `Write_score`, `Math_score`) VALUES
(119035789, 5, 81, 75, 79),
(110026533, 11, 78, 67, 94),
(119809337, 12, 82, 81, 86),
(110090664, 19, 87, 92, 74),
(116784321, 22, 66, 74, 54),
(113457891, 32, 88, 72, 79),
(110741967, 35, 92, 91, 95),
(115629012, 75, 80, 76, 81),
(116766654, 90, 87, 83, 90),
(117812903, 99, 67, 76, 81);

-- --------------------------------------------------------

--
-- Table structure for table `exam_prep`
--

CREATE TABLE `exam_prep` (
  `prep_id` int(11) NOT NULL,
  `completed` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_prep`
--

INSERT INTO `exam_prep` (`prep_id`, `completed`) VALUES
(1, 'Y'),
(2, 'Y'),
(3, 'N'),
(4, 'Y'),
(5, 'N'),
(6, 'Y'),
(7, 'Y'),
(8, 'Y'),
(9, 'N'),
(10, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `gets`
--

CREATE TABLE `gets` (
  `Gavg_hrs` int(11) NOT NULL,
  `Gstu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gets`
--

INSERT INTO `gets` (`Gavg_hrs`, `Gstu_id`) VALUES
(3, 116784321),
(4, 119809337),
(5, 110026533),
(6, 110090664),
(7, 119035789),
(8, 110741967),
(9, 113457891),
(11, 116766654),
(11, 117812903),
(12, 115629012);

-- --------------------------------------------------------

--
-- Table structure for table `lunch`
--

CREATE TABLE `lunch` (
  `Lstu_id` int(11) NOT NULL,
  `L_id` int(11) NOT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lunch`
--

INSERT INTO `lunch` (`Lstu_id`, `L_id`, `cost`) VALUES
(110090664, 2, 3),
(119809337, 6, 5),
(119035789, 9, 5),
(110026533, 15, 8),
(116784321, 22, 0),
(116766654, 23, 14),
(110741967, 29, 5),
(113457891, 41, 0),
(115629012, 44, 7),
(117812903, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `edu_level` varchar(25) DEFAULT NULL,
  `ssn` int(11) NOT NULL,
  `income` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`edu_level`, `ssn`, `income`) VALUES
('Bachlors', 126489112, 78900),
('Some College', 126773901, 42000),
('Some College', 551289032, 67800),
('Bachlors', 695836188, 122980),
('High School', 721067291, 52000),
('Bachlors', 851029909, 86000),
('Some College', 851109376, 49500),
('Masters', 901222326, 98700),
('HighSchool', 901254386, 37000),
('Masters', 910075312, 89120);

-- --------------------------------------------------------

--
-- Table structure for table `private_school`
--

CREATE TABLE `private_school` (
  `PrSchool_num` int(11) NOT NULL,
  `school_name` varchar(90) DEFAULT NULL,
  `price_per_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `private_school`
--

INSERT INTO `private_school` (`PrSchool_num`, `school_name`, `price_per_year`) VALUES
(4, 'Highsmith Academy', 40000),
(12, 'Tuppers Academy', 12000),
(40, 'Rights Academy', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `public_school`
--

CREATE TABLE `public_school` (
  `PuSchool_num` int(11) NOT NULL,
  `school_name` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_school`
--

INSERT INTO `public_school` (`PuSchool_num`, `school_name`) VALUES
(1, 'Feather Highschool'),
(23, 'Dogmount Highschool'),
(29, 'Tohicken Highschool'),
(58, 'Quaker Highschool'),
(60, 'Northridge Highschool'),
(78, 'Kensington Highschool'),
(91, 'Rockside Highschool');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `Ratt_id` int(11) NOT NULL,
  `Rstu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`Ratt_id`, `Rstu_id`) VALUES
(1, 110741967),
(2, 116766654),
(3, 110090664),
(4, 113457891),
(5, 119809337),
(6, 115629012),
(7, 119035789),
(8, 117812903),
(9, 110026533),
(10, 116784321);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `School_num` int(11) NOT NULL,
  `Address` varchar(90) DEFAULT NULL,
  `State` varchar(60) DEFAULT NULL,
  `Num_students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`School_num`, `Address`, `State`, `Num_students`) VALUES
(1, '7717 Crater Road', 'South Carolina', 400),
(4, '8914 Cheifs Drive', 'Alabama', 280),
(12, '9099 Peachtree Way', 'Pennsylvania', 675),
(23, '6766 Doumount Road', 'Texas', 1340),
(29, '1211 Waywerd Drive', 'Texas', 860),
(40, '9065 Forest Court', 'Vermont', 190),
(58, '5358 Maple Drive', 'Texas', 520),
(60, '4421 North Avenue', 'New York', 600),
(78, '7877 Heatway Road', 'Oaklahoma', 355),
(91, '1090 Springapple Way', 'Georgia', 480);

-- --------------------------------------------------------

--
-- Table structure for table `school_records`
--

CREATE TABLE `school_records` (
  `rec_num` int(11) NOT NULL,
  `passing` enum('Y','N') DEFAULT NULL,
  `overall_grade` int(11) DEFAULT NULL,
  `Rschool_num` int(11) NOT NULL,
  `Rstu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_records`
--

INSERT INTO `school_records` (`rec_num`, `passing`, `overall_grade`, `Rschool_num`, `Rstu_id`) VALUES
(4, 'N', 65, 1, 116784321),
(12, 'Y', 78, 91, 119035789),
(15, 'Y', 80, 23, 110026533),
(17, 'Y', 83, 40, 119809337),
(20, 'Y', 84, 12, 110090664),
(22, 'Y', 80, 29, 113457891),
(35, 'Y', 93, 58, 110741967),
(38, 'Y', 80, 60, 115629012),
(39, 'Y', 87, 78, 116766654),
(74, 'Y', 75, 4, 117812903);

-- --------------------------------------------------------

--
-- Table structure for table `sleep`
--

CREATE TABLE `sleep` (
  `avg_hrs` int(11) NOT NULL,
  `hrs_before_test` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sleep`
--

INSERT INTO `sleep` (`avg_hrs`, `hrs_before_test`) VALUES
(3, 2),
(4, 5),
(5, 4),
(6, 4),
(7, 7),
(8, 8),
(9, 7),
(10, 8),
(11, 10),
(12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `F_name` varchar(25) DEFAULT NULL,
  `L_name` varchar(25) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Ed_level` int(11) DEFAULT NULL,
  `race` varchar(25) DEFAULT NULL,
  `P_ssn` int(11) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `F_name`, `L_name`, `State`, `Address`, `Ed_level`, `race`, `P_ssn`, `gender`) VALUES
(110026533, 'Colin', 'Dotson', 'Texas', '1209 Springlake Drive', 2, 'white', 551289032, 'M'),
(110090664, 'Alex', 'Nugyen', 'Pennsylvania', '3301 Fairmont Drive', 1, 'asian', 695836188, 'M'),
(110741967, 'Michael', 'Anthony', 'Texas', '8901 Oakwood Drive', 2, 'black', 126489112, 'M'),
(113457891, 'Richard ', 'Lewis', 'Texas', '9001 Appleseed Court', 4, 'white', 721067291, 'M'),
(115629012, 'Samantha', 'Roads', 'New York', '5644 Riverside Road', 4, 'black', 126773901, 'F'),
(116766654, 'Kevin', 'Lang', 'Oaklahoma', '9012 Peachview Court', 3, 'asian', 851109376, 'M'),
(116784321, 'Kendra', 'Jones', 'South Carolina ', '4144 Seeder Drive', 1, 'black', 901254386, 'F'),
(117812903, 'Sarah ', 'Flax', 'Alabama', '6767 Ceder Way', 3, 'white', 851029909, 'F'),
(119035789, 'Ashley', 'Mack', 'Georgia', '1425 Roundrock Pass', 2, 'white', 910075312, 'F'),
(119809337, 'Amanda', 'Keys', 'Vermont', '1142 College Way', 3, 'white', 901222326, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `Tstu_id` int(11) NOT NULL,
  `Tprep_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`Tstu_id`, `Tprep_id`) VALUES
(110026533, 7),
(110090664, 3),
(110741967, 4),
(113457891, 2),
(115629012, 9),
(116766654, 6),
(116784321, 5),
(117812903, 10),
(119035789, 8),
(119809337, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `subject` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `num_students` int(11) DEFAULT NULL,
  `Tschool_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `subject`, `address`, `num_students`, `Tschool_num`) VALUES
(101, 'Alice Meeps', 'Writing ', '1290 Staple Way', 17, 60),
(178, 'Fredrick Graham', 'Math', '8967 Colison Drive', 28, 58),
(267, 'Thresa Booker', 'Reading ', '5599 Slue Court', 25, 23),
(312, 'Malik Jackson', 'Math', '5505 Ridgeway Ct', 22, 91),
(401, 'Chris Carter', 'Math', '6553 Foxhole Road', 45, 78),
(444, 'Chris Wright', 'Reading', '9099 Ashford Road', 34, 29),
(499, 'Allen Smith ', 'Writing ', '4300 Berrybush Ridge', 19, 4),
(545, 'Jay Jackson', 'Reading', '4454 Reading Road', 30, 1),
(678, 'Devonte Gerry', 'Writing ', '3000 Cattenbarry Court', 25, 40),
(809, 'Mary Lue', 'Reading', '9041 Steelhead Road', 32, 12);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `Vehicle_id` int(11) NOT NULL,
  `Ticket_cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`Vehicle_id`, `Ticket_cost`) VALUES
(1217, 3),
(1923, 4);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `Vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`Vehicle_id`) VALUES
(1217),
(1923),
(4223),
(5103),
(5555),
(5983),
(6776),
(7709),
(9011),
(9899);

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `Ustu_id` int(11) NOT NULL,
  `Uvehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`Ustu_id`, `Uvehicle_id`) VALUES
(110026533, 5103),
(110090664, 1217),
(110741967, 6776),
(113457891, 7709),
(115629012, 9011),
(116766654, 5983),
(116784321, 5555),
(117812903, 9899),
(119035789, 4223),
(119809337, 1923);

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `Wstu_id` int(11) NOT NULL,
  `Wexam_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`Wstu_id`, `Wexam_num`) VALUES
(110026533, 11),
(110090664, 19),
(110741967, 35),
(113457891, 32),
(115629012, 75),
(116766654, 90),
(116784321, 22),
(117812903, 99),
(119035789, 5),
(119809337, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ass_id`),
  ADD KEY `Ateach_id` (`Ateach_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `attends`
--
ALTER TABLE `attends`
  ADD PRIMARY KEY (`Aschool_id`,`Astu_id`),
  ADD KEY `Astu_id` (`Astu_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Vehicle_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Vehicle_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`Exam_num`),
  ADD KEY `EStu_id` (`EStu_id`);

--
-- Indexes for table `exam_prep`
--
ALTER TABLE `exam_prep`
  ADD PRIMARY KEY (`prep_id`);

--
-- Indexes for table `gets`
--
ALTER TABLE `gets`
  ADD PRIMARY KEY (`Gavg_hrs`,`Gstu_id`),
  ADD KEY `Gstu_id` (`Gstu_id`);

--
-- Indexes for table `lunch`
--
ALTER TABLE `lunch`
  ADD PRIMARY KEY (`L_id`),
  ADD KEY `Lstu_id` (`Lstu_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `private_school`
--
ALTER TABLE `private_school`
  ADD PRIMARY KEY (`PrSchool_num`);

--
-- Indexes for table `public_school`
--
ALTER TABLE `public_school`
  ADD PRIMARY KEY (`PuSchool_num`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`Ratt_id`,`Rstu_id`),
  ADD KEY `Rstu_id` (`Rstu_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`School_num`);

--
-- Indexes for table `school_records`
--
ALTER TABLE `school_records`
  ADD PRIMARY KEY (`rec_num`),
  ADD KEY `Rschool_num` (`Rschool_num`),
  ADD KEY `Rstu_id` (`Rstu_id`);

--
-- Indexes for table `sleep`
--
ALTER TABLE `sleep`
  ADD PRIMARY KEY (`avg_hrs`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `P_ssn` (`P_ssn`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`Tstu_id`,`Tprep_id`),
  ADD KEY `takes_ibfk_2` (`Tprep_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `Tschool_num` (`Tschool_num`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`Vehicle_id`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`Vehicle_id`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`Ustu_id`,`Uvehicle_id`),
  ADD KEY `Uvehicle_id` (`Uvehicle_id`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`Wstu_id`,`Wexam_num`),
  ADD KEY `Wexam_num` (`Wexam_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`Ateach_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `attends`
--
ALTER TABLE `attends`
  ADD CONSTRAINT `attends_ibfk_1` FOREIGN KEY (`Astu_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `attends_ibfk_2` FOREIGN KEY (`Aschool_id`) REFERENCES `school` (`School_num`);

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `transportation` (`Vehicle_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `transportation` (`Vehicle_id`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`EStu_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `gets`
--
ALTER TABLE `gets`
  ADD CONSTRAINT `gets_ibfk_1` FOREIGN KEY (`Gavg_hrs`) REFERENCES `sleep` (`avg_hrs`),
  ADD CONSTRAINT `gets_ibfk_2` FOREIGN KEY (`Gstu_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `lunch`
--
ALTER TABLE `lunch`
  ADD CONSTRAINT `lunch_ibfk_1` FOREIGN KEY (`Lstu_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `private_school`
--
ALTER TABLE `private_school`
  ADD CONSTRAINT `private_school_ibfk_1` FOREIGN KEY (`PrSchool_num`) REFERENCES `school` (`School_num`);

--
-- Constraints for table `public_school`
--
ALTER TABLE `public_school`
  ADD CONSTRAINT `public_school_ibfk_1` FOREIGN KEY (`PuSchool_num`) REFERENCES `school` (`School_num`);

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`Ratt_id`) REFERENCES `attendance` (`att_id`),
  ADD CONSTRAINT `records_ibfk_2` FOREIGN KEY (`Rstu_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `school_records`
--
ALTER TABLE `school_records`
  ADD CONSTRAINT `school_records_ibfk_1` FOREIGN KEY (`Rschool_num`) REFERENCES `school` (`School_num`),
  ADD CONSTRAINT `school_records_ibfk_2` FOREIGN KEY (`Rstu_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`P_ssn`) REFERENCES `parent` (`ssn`);

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`Tstu_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`Tprep_id`) REFERENCES `exam_prep` (`prep_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`Tschool_num`) REFERENCES `school` (`School_num`);

--
-- Constraints for table `train`
--
ALTER TABLE `train`
  ADD CONSTRAINT `train_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `transportation` (`Vehicle_id`);

--
-- Constraints for table `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`Ustu_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `uses_ibfk_2` FOREIGN KEY (`Uvehicle_id`) REFERENCES `transportation` (`Vehicle_id`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`Wstu_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`Wexam_num`) REFERENCES `exam` (`Exam_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
