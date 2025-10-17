-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2018 at 11:10 AM
-- Server version: 5.5.45
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL,
  `class_name` varchar(500) NOT NULL,
  `class_id` varchar(100) NOT NULL,
  `credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_name`, `class_id`, `credits`) VALUES
(1, 'Physics', 'PHY101', 3),
(2, 'Chemistry', 'CHM101', 3),
(3, 'Intro to Computer Science', 'CS101', 3),
(4, 'Calculus I', 'MA241', 3),
(5, 'Calculus II', 'MA242', 3),
(6, 'History of the World', 'HU402', 2),
(7, 'Psychology', 'HU305', 2),
(8, 'Sociology', 'HU306', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `student_id`, `phone`) VALUES
(1, 'Henry', 'George', '6484', '352-530-8042'),
(2, 'Solomon', 'Beck', '9321', '564-390-9001'),
(3, 'Kelsie', 'Todd', '5907', '908-583-6519'),
(4, 'Raymond', 'Zamora', '5605', '685-337-6856'),
(5, 'Ulric', 'Rojas', '8031', '434-767-6311'),
(6, 'Quail', 'Wilkerson', '5132', '330-516-1300'),
(7, 'Kaitlin', 'Woods', '2129', '441-683-4707'),
(8, 'Tate', 'Bonner', '3161', '904-419-6217'),
(9, 'Brett', 'Mcintosh', '6447', '664-339-0123'),
(10, 'Ivory', 'Craft', '3267', '232-505-2968'),
(11, 'Dante', 'Sullivan', '8898', '678-836-6679'),
(12, 'Colt', 'Robinson', '2241', '724-293-4164'),
(13, 'Keelie', 'Steele', '2581', '944-847-7436'),
(14, 'Keaton', 'Glover', '1803', '780-758-6830'),
(15, 'Giselle', 'Chan', '3817', '175-111-7400'),
(16, 'Hedy', 'Fisher', '4971', '691-707-3691'),
(17, 'Skyler', 'Ruiz', '4263', '882-256-1866'),
(18, 'Uta', 'Tyler', '7154', '437-129-3326'),
(19, 'Kyla', 'Lowery', '5796', '128-686-2832'),
(20, 'Lunea', 'Barnett', '6842', '194-920-2955'),
(21, 'Octavius', 'Norman', '1500', '448-574-7336'),
(22, 'Nevada', 'Little', '8692', '484-709-8709'),
(23, 'Francesca', 'Todd', '4839', '871-990-7948'),
(24, 'Hillary', 'Sullivan', '3137', '751-682-2265'),
(25, 'Deacon', 'Franco', '9162', '961-364-9335'),
(26, 'Baker', 'Thomas', '8987', '961-154-8249'),
(27, 'Guinevere', 'Ortiz', '6641', '714-910-0054'),
(28, 'Carissa', 'Vaughan', '8131', '770-242-6086'),
(29, 'Uriah', 'Carpenter', '9030', '354-325-9058'),
(30, 'Indira', 'Rodriguez', '5116', '731-687-6837'),
(31, 'Autumn', 'Sanford', '2531', '507-721-8371'),
(32, 'Yoshio', 'Peterson', '8475', '321-147-1468'),
(33, 'Duncan', 'Alston', '4447', '273-930-4052'),
(34, 'Ezra', 'Quinn', '4964', '753-944-8737'),
(35, 'Geraldine', 'Heath', '9448', '147-342-5142'),
(36, 'Robert', 'Terrell', '5785', '381-720-8034'),
(37, 'Eric', 'Gill', '9055', '394-618-9160'),
(38, 'Uma', 'Padilla', '3100', '512-318-0564'),
(39, 'Lawrence', 'Boyer', '7992', '378-598-9397'),
(40, 'Wayne', 'Guy', '9847', '640-366-4994'),
(41, 'Ashton', 'English', '4491', '816-319-8160'),
(42, 'Rajah', 'Burke', '5284', '610-949-0183'),
(43, 'Aurelia', 'Whitley', '7506', '852-459-5970'),
(44, 'Carly', 'Best', '4280', '285-907-5815'),
(45, 'Vielka', 'Dennis', '9353', '983-573-8879'),
(46, 'Barrett', 'Valdez', '8354', '928-118-0796'),
(47, 'Felix', 'Stone', '7291', '102-362-9428'),
(48, 'Jael', 'Freeman', '9151', '972-336-7647'),
(49, 'Kyle', 'Randall', '8447', '729-286-5201'),
(50, 'Ciaran', 'Bryant', '5200', '385-191-1803'),
(51, 'Lane', 'Miles', '1146', '783-558-1438'),
(52, 'Sawyer', 'Collins', '3031', '383-298-6955'),
(53, 'Regan', 'David', '6853', '457-965-3987'),
(54, 'Nicholas', 'Colon', '2248', '181-374-7390'),
(55, 'Francis', 'Britt', '8973', '281-379-8640'),
(56, 'Reese', 'Santiago', '6723', '973-949-3038'),
(57, 'Matthew', 'Holloway', '5209', '307-110-4728'),
(58, 'Salvador', 'Logan', '8472', '466-533-7819'),
(59, 'Oren', 'Barnett', '9234', '315-409-3247'),
(60, 'Emmanuel', 'Randall', '9943', '847-530-5716'),
(61, 'Chaim', 'Hawkins', '4933', '568-504-2723'),
(62, 'Britanni', 'Rivas', '9913', '563-465-0456'),
(63, 'Xerxes', 'Jensen', '1669', '115-432-9587'),
(64, 'Hashim', 'Pittman', '1789', '627-578-7611'),
(65, 'Callum', 'Leon', '1162', '392-565-5636'),
(66, 'Vernon', 'Harrington', '3121', '147-183-4194'),
(67, 'Delilah', 'Medina', '1141', '607-328-7691'),
(68, 'Otto', 'Nixon', '7338', '431-262-6583'),
(69, 'Oliver', 'Holcomb', '7612', '957-397-7365'),
(70, 'Lila', 'Mccarty', '4732', '671-811-5326'),
(71, 'Steven', 'Mendoza', '3635', '506-236-9247'),
(72, 'Judith', 'Delaney', '2836', '880-362-0981'),
(73, 'Rooney', 'Mcclain', '9571', '432-202-4264'),
(74, 'Lamar', 'Pruitt', '1337', '663-570-4805'),
(75, 'Rama', 'Alston', '9326', '893-828-6731'),
(76, 'Rana', 'Kennedy', '4466', '537-262-2679'),
(77, 'Idola', 'Valencia', '3001', '943-568-2985'),
(78, 'Zane', 'Clark', '2478', '835-841-6713'),
(79, 'Benedict', 'Byrd', '6537', '381-478-1184'),
(80, 'Charles', 'Barnes', '5700', '485-366-1462'),
(81, 'Charissa', 'Pate', '9442', '564-640-9330'),
(82, 'Elvis', 'Graham', '8185', '163-157-9027'),
(83, 'Ann', 'Mcclure', '7905', '622-385-4249'),
(84, 'Hiram', 'Duffy', '1126', '972-416-4758'),
(85, 'Baker', 'Stephenson', '2638', '265-708-7438'),
(86, 'Hyacinth', 'Acosta', '2028', '318-715-3784'),
(87, 'Mason', 'Schneider', '2160', '219-910-9105'),
(88, 'Vivien', 'Lang', '1447', '946-858-9619'),
(89, 'Ralph', 'Harrell', '9306', '136-932-3792'),
(90, 'Lane', 'Nunez', '3048', '591-820-9798'),
(91, 'Alyssa', 'Hogan', '2698', '178-240-5143'),
(92, 'Carissa', 'Hardin', '2331', '667-155-4911'),
(93, 'Zelenia', 'Knight', '6911', '953-412-7779'),
(94, 'Lacey', 'Henson', '3338', '193-211-7590'),
(95, 'Plato', 'Rosario', '6560', '680-787-3306'),
(96, 'Lyle', 'Brewer', '4866', '762-694-7672'),
(97, 'Nicole', 'Noel', '8299', '702-622-9971'),
(98, 'Amir', 'Marsh', '9722', '870-587-2637'),
(99, 'Quemby', 'Prince', '2371', '434-225-2847'),
(100, 'Kieran', 'Tyler', '8379', '658-601-4360');

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) NOT NULL,
  `student` bigint(20) NOT NULL,
  `class` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `student`, `class`) VALUES
(1, 11, 4),
(2, 49, 4),
(3, 46, 4),
(4, 47, 4),
(5, 61, 4),
(6, 75, 4),
(7, 29, 4),
(8, 32, 4),
(9, 8, 4),
(10, 41, 4),
(11, 28, 1),
(12, 65, 1),
(13, 67, 1),
(14, 43, 1),
(15, 29, 1),
(16, 49, 1),
(17, 75, 1),
(18, 31, 3),
(19, 79, 3),
(20, 90, 3),
(21, 49, 3),
(22, 26, 3),
(23, 7, 3),
(24, 80, 3),
(25, 25, 3),
(26, 68, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class` (`class`),
  ADD KEY `fk_student` (`student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`student`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`class`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
