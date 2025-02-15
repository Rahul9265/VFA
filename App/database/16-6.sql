-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 11:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Hardik Kanajariya', 'hardik', '123'),
(2, 'Rahul Kanajariya', 'rahul', '123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `msg`) VALUES
(62, 'Hardik Kanajariya', '6353485415', 'What sprays/pesticides/herbicides do you use?'),
(64, 'Yash Kanajariya', '9909520639', 'Hey Brandon, we’ve stocked our shelves with assorted mint cookie treats for you. Visit your local KookieU store. Hurry! This flavor is for a limited time only.'),
(65, 'Rahul Kanajariya', '8200058835', 'They’re supposed to interest and engage your subscribers immediately. There’s no time to beat around the bush — you have a few seconds to catch their attention before they move on. '),
(66, 'Abhay Kachhadiya', '9865321245', 'Mr. Chris, your package has been shipped - ETA: 9-10 A.M. on 18th October at your residence. To track your parcel, visit www.trackmypkg.com.');

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`id`, `name`, `description`, `image`, `time`) VALUES
(1, 'onion', 'The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. The shallot is a botanical variety of the onion which was classified as a separate species until 2010. Its close relatives include garlic, scallion, leek, and chive.', 'sincerely-media-GrHWJVA1KTA-unsplash.jpg', '2022-05-27 14:35:03'),
(2, 'soybean', 'soybean, (Glycine max), also called soja bean or soya bean, annual legume of the pea family (Fabaceae) and its edible seed. The soybean is economically the most important bean in the world, providing vegetable protein for millions of people and ingredients for hundreds of chemical products.', 'kelly-sikkema-k1cpHnqBuMM-unsplash.jpg', '2022-06-06 14:25:08'),
(3, 'Cotton ', 'Cotton is a Kharif crop in the major parts of the country viz. Punjab, Haryana, Rajasthan, Uttar Pradesh, Madhya Pradesh, Gujarat, Maharashtra and parts of Andhra Pradesh & Karnataka.', 'karl-wiggers--X401Lkrm0g-unsplash.jpg', '2022-06-06 14:27:06'),
(4, 'Paddy', 'A paddy field is a flooded field of arable land used for growing semiaquatic crops, most notably rice and taro. It originates from the Neolithic rice-farming cultures of the Yangtze River basin in southern China, associated with pre-Austronesian and Hmong-Mien cultures.', 'sreehari-devadas-WDI95CIPW00-unsplash.jpg', '2022-06-06 14:27:41'),
(5, 'Sugar Cane', 'Sugarcane or sugar cane is a species of tall, perennial grass that is used for sugar production. The plants are 2–6 m tall with stout, jointed, fibrous stalks that are rich in sucrose, which accumulates in the stalk internodes.', 'victoria-priessnitz-IPuuhSmsFIc-unsplash.jpg', '2022-06-06 14:32:19'),
(6, 'Wheat', 'The crop is grown mostly across Bhal region of Gujarat, including Ahmedabad, Anand, Kheda, Bhavanagar, Surendranagar, Bharuch districts. The unique characteristic of the wheat variety is that grown in rainfed conditions and cultivated in about two lakh hectares in Gujarat.', 'evi-radauscher-NLlvBb9sLts-unsplash.jpg', '2022-06-06 14:35:05'),
(7, 'Strawberry', 'Strawberry, a fruit traditionally flourishing in cold and hilly places, has wonderfully adapted itself even to the harsh and arid terrains of Kutch. A farmer in Bhuj taluka of Kutch district was hugely surprised last week when he saw sweet success budding in the plants that he had planted on a trial mode.', 'massimiliano-martini-IeEFsajuORc-unsplash.jpg', '2022-06-06 14:35:29'),
(8, 'Brocolli', 'Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable. Broccoli is classified in the Italica cultivar group of the species Brassica oleracea.', 'hans-ripa-4cEmT3AsoVc-unsplash.jpg', '2022-06-06 14:36:21'),
(9, 'Banana', 'A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called \"plantains\", distinguishing them from dessert bananas.', 'rodrigo-dos-reis-DkTuGvgPotA-unsplash.jpg', '2022-06-06 14:36:50'),
(10, 'Peanut ', 'The peanut also known as the groundnut, goober, pindar or monkey nut, is a legume crop grown mainly for its edible seeds. It is widely grown in the tropics and subtropics, being important to both small and large commercial producers.', 'vladislav-nikonov-13lLAWadKwU-unsplash.jpg', '2022-06-06 14:37:51'),
(11, 'Lemon', 'The lemon is a species of small evergreen trees in the flowering plant family Rutaceae, native to Asia, primarily Northeast India, Northern Myanmar or China', 'ernest-porzi-Z-Y6I45f9kQ-unsplash.jpg', '2022-06-06 14:38:46'),
(12, 'Potato', 'The potato is a starchy tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas. The plant is a perennial in the nightshade family Solanaceae. Potato. Potato cultivars appear in a variety of colors, shapes, and sizes. Scientific classification.', 'jeshoots-com-fp1x-X7DwDs-unsplash.jpg', '2022-06-06 14:39:17'),
(13, 'Brinjal', 'Eggplant, aubergine or brinjal is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit. Most commonly purple, the spongy, absorbent fruit is used in several cuisines. Typically used as a vegetable in cooking, it is a berry by botanical definition.', 'piyush-patil-vHTcsb4LbYU-unsplash.jpg', '2022-06-06 14:40:23'),
(14, 'Garlic', 'Garlic is a species of bulbous flowering plant in the genus Allium. Its close relatives include the onion, shallot, leek, chive, Welsh onion and Chinese onion.', 'shelley-pauls-MSJMH0zW64c-unsplash.jpg', '2022-06-06 14:42:16'),
(15, 'Coriander ', 'Coriander is a plant. Both the leaves and fruit (seeds) of coriander are used as food and medicine. However, the term \"coriander\" is typically used to refer to the fruit. Coriander leaves are usually referred to as cilantro. In the following sections, the term \"coriander\" will be used to describe the fruit.', 'chandan-chaurasia-N73L0EzbJ8Y-unsplash.jpg', '2022-06-06 14:42:41'),
(16, 'Water Melon', 'Watermelon is a flowering plant species of the Cucurbitaceae family and the name of its edible fruit. A scrambling and trailing vine-like plant, it is a highly cultivated fruit worldwide, with more than 1,000 varieties.', 'juven-dunn-hUkZv0Y47Ic-unsplash.jpg', '2022-06-06 14:43:03'),
(17, 'Cabbage', 'Cabbage, comprising several cultivars of Brassica oleracea, is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads.', 'dan-cristian-padure-4jHCWfX3_G4-unsplash.jpg', '2022-06-06 14:43:29'),
(30, 'Hardik Kanjariya', 'Some Description of Crop goes here', 'c3.jpg', '2022-06-15 10:48:45'),
(31, 'new crop ', 'new crop description', 'Humaaans - 2 Characters.png', '2022-06-15 16:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `crop-disease`
--

CREATE TABLE `crop-disease` (
  `id` int(11) NOT NULL,
  `crop-id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `symptoms` varchar(500) NOT NULL,
  `solution` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop-disease`
--

INSERT INTO `crop-disease` (`id`, `crop-id`, `title`, `description`, `symptoms`, `solution`, `image`, `time`) VALUES
(1, 1, 'title ', 'desc', 'symptoms ', 'solutions/preventive', 'image ', '2022-06-15 16:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `crop-faq`
--

CREATE TABLE `crop-faq` (
  `id` int(11) NOT NULL,
  `crop-id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop-faq`
--

INSERT INTO `crop-faq` (`id`, `crop-id`, `question`, `ans`) VALUES
(1, 7, 'can you listen me?', 'Yes, I can listen you..');

-- --------------------------------------------------------

--
-- Table structure for table `crop-info`
--

CREATE TABLE `crop-info` (
  `id` int(11) NOT NULL,
  `crop-id` int(11) NOT NULL,
  `ex-exp` longtext NOT NULL,
  `ex-harvest` longtext NOT NULL,
  `ex-inc` longtext NOT NULL,
  `fav-cli` longtext NOT NULL,
  `fav-temp` longtext NOT NULL,
  `fav-water` longtext NOT NULL,
  `rq-soil-type` longtext NOT NULL,
  `rq-soil-ph` longtext NOT NULL,
  `sowing-info` longtext NOT NULL,
  `lp` longtext NOT NULL,
  `sppc` longtext NOT NULL,
  `rdt` longtext NOT NULL,
  `transplant` longtext NOT NULL,
  `nm-timely-sow` longtext NOT NULL,
  `nm-late-sow` longtext NOT NULL,
  `nm-rain-sow` longtext NOT NULL,
  `irrigation` longtext NOT NULL,
  `yield` longtext NOT NULL,
  `harvesting` longtext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop-info`
--

INSERT INTO `crop-info` (`id`, `crop-id`, `ex-exp`, `ex-harvest`, `ex-inc`, `fav-cli`, `fav-temp`, `fav-water`, `rq-soil-type`, `rq-soil-ph`, `sowing-info`, `lp`, `sppc`, `rdt`, `transplant`, `nm-timely-sow`, `nm-late-sow`, `nm-rain-sow`, `irrigation`, `yield`, `harvesting`, `timestamp`) VALUES
(10, 7, '90808', '08098', '7789', 'winter', '67', 'high', 'red ', '78', 'some infpo', 'land preparationb', 'spacing and plant preparation', 'root info ', 'transplanting info ', 'timely data ', 'late data ', 'rainfed data ', 'irrigation data ', 'yield data ', 'harvesting data ', '2022-06-15 16:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `crop-tracking`
--

CREATE TABLE `crop-tracking` (
  `id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `sowing_date` date NOT NULL,
  `farm_area` decimal(10,0) NOT NULL,
  `area_type` varchar(100) NOT NULL,
  `soil` varchar(100) NOT NULL,
  `water` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `taluka` varchar(100) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `name`, `mobile`, `email`, `state`, `district`, `taluka`, `village`, `pincode`, `username`, `password`, `timestamp`) VALUES
(1, 'Hardik Kanajariya', '6353485415', 'hcollege0@gmail.com', 'Gujarat', 'Dwarka', 'Kalyanpur', 'kalyanpur', 361320, 'hardik', '202cb962ac59075b964b07152d234b70', '2022-05-26 19:22:27'),
(2, 'Yash Kanajariya', '9909520639', 'yash2001@steamoh.com', NULL, NULL, NULL, NULL, NULL, 'yash', '202cb962ac59075b964b07152d234b70', '2022-05-28 12:26:28'),
(4, 'Rahul Kanajariya', '6353485414', 'witetas414@oceore.com', 'Gujarat', 'Dwarka', 'Kalyanpur', 'Kenedi', 361320, 'rahul112', '52746115ed4579e191e8a82c2c6682b5', '2022-06-09 15:56:09'),
(5, 'Jay Bhatt', '6548965655', 'legirag2001@steamoh.com', NULL, NULL, NULL, NULL, NULL, 'jay', 'baba327d241746ee0829e7e88117d4d5', '2022-06-09 17:55:39'),
(7, 'Dhaval Kargathra', '6353485412', 'legirag2002@steamoh.com', NULL, NULL, NULL, NULL, NULL, 'dhaval', '975ef70ce2dd7ae8dd7de7c930d90d0d', '2022-06-09 18:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `krishi-book`
--

CREATE TABLE `krishi-book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panting-material`
--

CREATE TABLE `panting-material` (
  `id` int(11) NOT NULL,
  `crop-id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `special` varchar(500) NOT NULL,
  `yield` varchar(200) NOT NULL,
  `season` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recent-updates`
--

CREATE TABLE `recent-updates` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recent-updates`
--

INSERT INTO `recent-updates` (`id`, `image`, `msg`, `time`) VALUES
(8, 'jed-owen-1JgUGDdcWnM-unsplash.jpg', 'Welcome to VFA: The farmer is the only man in our economy who buys everything at retail, sells everything at wholesale, and pays the freight both ways.', '2022-06-06 18:34:41'),
(10, 'farmer1.png', '\"हम सिर्फ अपना घर ही नहीं पूरा देश चलाते है, हम किसान है साहब हम मिटटी का कर्ज चुकाते है।\"', '2022-06-11 16:13:17'),
(11, 'icons8-summer.gif', 'some updates', '2022-06-15 16:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `seeds`
--

CREATE TABLE `seeds` (
  `id` int(11) NOT NULL,
  `crop-id` int(11) NOT NULL,
  `seed-name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `yield` varchar(500) NOT NULL,
  `season` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `crop`
--
ALTER TABLE `crop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image` (`image`);

--
-- Indexes for table `crop-disease`
--
ALTER TABLE `crop-disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop-faq`
--
ALTER TABLE `crop-faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop-info`
--
ALTER TABLE `crop-info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crop-id` (`crop-id`);

--
-- Indexes for table `crop-tracking`
--
ALTER TABLE `crop-tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crop_id` (`crop_id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile-no` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `krishi-book`
--
ALTER TABLE `krishi-book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail` (`thumbnail`);

--
-- Indexes for table `panting-material`
--
ALTER TABLE `panting-material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crop-id` (`crop-id`);

--
-- Indexes for table `recent-updates`
--
ALTER TABLE `recent-updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seeds`
--
ALTER TABLE `seeds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `crop`
--
ALTER TABLE `crop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `crop-disease`
--
ALTER TABLE `crop-disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crop-faq`
--
ALTER TABLE `crop-faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crop-info`
--
ALTER TABLE `crop-info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crop-tracking`
--
ALTER TABLE `crop-tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `krishi-book`
--
ALTER TABLE `krishi-book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `panting-material`
--
ALTER TABLE `panting-material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recent-updates`
--
ALTER TABLE `recent-updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `seeds`
--
ALTER TABLE `seeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crop-tracking`
--
ALTER TABLE `crop-tracking`
  ADD CONSTRAINT `crop-tracking_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crop` (`id`),
  ADD CONSTRAINT `crop-tracking_ibfk_2` FOREIGN KEY (`farmer_id`) REFERENCES `farmer` (`id`);

--
-- Constraints for table `panting-material`
--
ALTER TABLE `panting-material`
  ADD CONSTRAINT `panting-material_ibfk_1` FOREIGN KEY (`crop-id`) REFERENCES `crop` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
