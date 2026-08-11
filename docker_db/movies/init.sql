-- MySQL dump for TFI Heroes and their upcoming movies
-- Generated for demonstration purposes - includes fictional data for completeness

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- --------------------------------------------------------
-- Table structure for table `heroes`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `heroes`;
CREATE TABLE `heroes` (
  `hero_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`hero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Table structure for table `movies`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `hero_id` int DEFAULT NULL,
  `movie_name` varchar(255) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `music_director` varchar(255) DEFAULT NULL,
  `heroine` varchar(255) DEFAULT NULL,
  `budget_crores` decimal(10,2) DEFAULT NULL COMMENT 'Budget in Indian Crores',
  `expected_release_date` date DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `hero_id` (`hero_id`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`hero_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Insert data for heroes (20 heroes)
-- --------------------------------------------------------

INSERT INTO `heroes` (`hero_id`, `name`) VALUES
(1, 'Mahesh Babu'),
(2, 'Ram Charan'),
(3, 'Jr NTR'),
(4, 'Pawan Kalyan'),
(5, 'Allu Arjun'),
(6, 'Naga Chaitanya'),
(7, 'Akhil Akkineni'),
(8, 'Nandamuri Balakrishna'),
(9, 'Sai Dharam Tej'),
(10, 'Ravi Teja'),
(11, 'Sharwanand'),
(12, 'Vishwak Sen'),
(13, 'Siddhu Jonnalagadda'),
(14, 'Nithiin'),
(15, 'Sree Vishnu'),
(16, 'Karthikeya Gummakonda'),
(17, 'Kiran Abbavaram'),
(18, 'Ashok Galla'),
(19, 'Bellamkonda Sreenivas'),
(20, 'Ram Pothineni');

-- --------------------------------------------------------
-- Insert data for 20 upcoming movies
-- --------------------------------------------------------

INSERT INTO `movies` (`movie_id`, `hero_id`, `movie_name`, `director`, `music_director`, `heroine`, `budget_crores`, `expected_release_date`) VALUES
(1, 1, 'Varanasi', 'SS Rajamouli', 'MM Keeravaani', 'Priyanka Chopra', 1300.00, '2027-01-15'),
(2, 1, 'Guntur Kaaram 2', 'Trivikram Srinivas', 'Thaman S', 'Pooja Hegde', 150.00, '2027-06-20'),
(3, 2, 'Peddi', 'Buchi Babu Sana', 'AR Rahman', 'Janhvi Kapoor', 250.00, '2026-06-04'),
(4, 2, 'Rudra', 'Sukumar', 'Devi Sri Prasad', 'Samantha Ruth Prabhu', 300.00, '2026-12-10'),
(5, 3, 'Devara 2', 'Koratala Siva', 'Anirudh Ravichander', 'Janhvi Kapoor', 400.00, '2027-05-01'),
(6, 3, 'NTR 31', 'Prashanth Neel', 'Ravi Basrur', 'Nayanthara', 350.00, '2027-09-15'),
(7, 4, 'Hari Hara Veera Mallu Part 2', 'Krish', 'MM Keeravaani', 'Nidhhi Agerwal', 250.00, '2026-08-20'),
(8, 5, 'Pushpa 2: The Rule', 'Sukumar', 'Devi Sri Prasad', 'Rashmika Mandanna', 500.00, '2026-12-05'),
(9, 5, 'Allu Arjun 24', 'Trivikram Srinivas', 'Thaman S', 'Pooja Hegde', 200.00, '2027-03-10'),
(10, 6, 'Thank You 2', 'Vikram K Kumar', 'Anup Rubens', 'Raashii Khanna', 80.00, '2026-07-15'),
(11, 6, 'NC 24', 'Chandoo Mondeti', 'Mickey J Meyer', 'Sai Pallavi', 100.00, '2027-02-01'),
(12, 7, 'Lenin', 'Krishna Chaitanya', 'Anirudh Ravichander', 'Bhagyashri Borse', 60.00, '2026-03-20'),
(13, 7, 'Akhil 6', 'Bommarillu Bhaskar', 'Gopi Sundar', 'Samantha Ruth Prabhu', 70.00, '2027-08-05'),
(14, 8, 'NBK112', 'Koratala Siva', 'Anirudh Ravichander', 'Sreeleela', 180.00, '2027-01-01'),
(15, 8, 'Balakrishna 114', 'Boyapati Srinu', 'Thaman S', 'Tamannaah Bhatia', 150.00, '2027-07-01'),
(16, 9, 'Sai Dharam Tej 16', 'Kishore Tirumala', 'Mani Sharma', 'Sreeleela', 50.00, '2026-09-10'),
(17, 10, 'Ravi Teja 76', 'Harish Shankar', 'Bheems Ceciroleo', 'Malavika Mohanan', 80.00, '2026-10-25'),
(18, 11, 'Sharwanand 40', 'Prabhu Solomon', 'Rahul Raj', 'Krithi Shetty', 45.00, '2026-11-05'),
(19, 12, 'Vishwak Sen 12', 'Venu Yeldandi', 'Vivek Sagar', 'Aishwarya Rajesh', 30.00, '2026-12-15'),
(20, 13, 'Siddhu Jonnalagadda 2', 'Tharun Bhascker', 'Vivek Sagar', 'Neha Shetty', 25.00, '2026-08-30');

-- Add 5 more movies to reach 20+ (total 25 movies now)
INSERT INTO `movies` (`movie_id`, `hero_id`, `movie_name`, `director`, `music_director`, `heroine`, `budget_crores`, `expected_release_date`) VALUES
(21, 14, 'Nithiin 35', 'Ravikanth Perepu', 'Anirudh Ravichander', 'Nabha Natesh', 35.00, '2027-04-10'),
(22, 15, 'Sree Vishnu 13', 'Vijay Kanakamedala', 'Prasanth Varma', 'Aishwarya Lekshmi', 20.00, '2027-06-05'),
(23, 16, 'Karthikeya 5', 'Anand Deverakonda', 'Sweekar Agasthi', 'Sharon Ananya', 15.00, '2026-09-15'),
(24, 17, 'Kiran Abbavaram 8', 'Ravindra Sagar', 'Sudharshan P', 'Apsara Rani', 10.00, '2026-10-01'),
(25, 18, 'Ashok Galla 3', 'Vishal', 'Samantha choreographer', 'Meenakshi Chowdary', 8.00, '2026-11-20');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;