-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2020 at 06:04 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oecn_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Admin_Helani', 'helani@gmail.com', '1234', 'o-ecn-info.jpg', 'Srilanka', 'This application is created by O-ECN Media, if you willing to contact me, please click this link.\nO-ECN-Media\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam', '071234567', 'Web Developer'),
(2, 'Admin_Madu', 'madu@gmail.com', 'madu', 'CI.jpg', 'Sri Lanka', 'This application is created by O-ECN Media, if you willing to contact me, please click this link.\r\nO-ECN-Media\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam', '071234567', 'Mobile Developer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Best Products', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam, harum ducimus expedita nesciunt reiciendis adipisci doloremque incidunt eveniet minima minus quibusdam suscipit cumque facilis consequatur dolorum sed, beatae consectetur tenetur.'),
(2, 'Best Offers', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam, harum ducimus expedita nesciunt reiciendis adipisci doloremque incidunt eveniet minima minus quibusdam suscipit cumque facilis consequatur dolorum sed, beatae consectetur tenetur.'),
(3, '100% Satisfy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam, harum ducimus expedita nesciunt reiciendis adipisci doloremque incidunt eveniet minima minus quibusdam suscipit cumque facilis consequatur dolorum sed, beatae consectetur tenetur.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(17, '::1', 1, '', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'yes', 'men.jpg'),
(2, 'Women', 'yes', 'women.jpg'),
(3, 'Kids', 'no', 'kids.jpg'),
(4, 'Other', 'no', 'others.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(2, 5, 'Coupon For Black Swan Blouse', '95', 'kupon28183774', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, 'Helani Waidyarathne', 'helaniwaidyarathne@gmail.com', '3456', 'Sri Lanka', 'Rajagiriya', '071234567', '1st lane, Rajagiriya', 'helani.jpeg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 7, 9, 1832353176, 1, 'Medium', '2020-05-07', 'pending'),
(12, 7, 26, 1832353176, 1, 'Large', '2020-05-07', 'pending'),
(13, 7, 189, 1832353176, 3, 'Small', '2020-05-07', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Name_1', 'yes', 'man_1.jpg'),
(2, 'Name_2', 'no', 'man_2.jpg'),
(3, 'Name_3', 'no', 'man_3.jpg'),
(4, 'Name_4', 'no', 'man_4.jpg'),
(5, 'Name_5', 'yes', 'man_5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 2020672, 190, 'Back Code', 123, 32, '08/06/2020');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(7, 7, 1832353176, '7', 1, 'Medium', 'pending'),
(8, 7, 1832353176, '8', 1, 'Large', 'pending'),
(9, 7, 1832353176, '9', 3, 'Small', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`, `product_label`, `product_sale`) VALUES
(1, 5, 2, 3, '2020-05-21 14:34:33', 'Light Brown Front Tie Up Top', 'product_1', 'Front-Tie-Top-1.jpeg', 'Front-Tie-Top-2.jpeg', 'Front-Tie-Top-3.jpeg', 18, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, dolorem tempore deleniti delectus numquam quam magni quidem veniam sequi nostrum sed eaque. Reiciendis quisquam totam nobis corrupti ullam at debitis!</p>', 'Top', 'sale', '16'),
(2, 5, 1, 3, '2020-05-21 14:34:48', 'BLRMT_AC Cut Sew Cut Sew Polo Mineral Black', 'product_2', 'Polo-Mineral-1.jpeg', 'Polo-Mineral-2.jpeg', 'Polo-Mineral-3.jpeg', 36, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Polos', 'new', '0'),
(3, 5, 2, 5, '2020-05-21 14:34:54', 'StarWars Yellow Sketch Top', 'product_3', 'StarWars-Top-1.jpeg', 'StarWars-Top-2.jpeg', 'StarWars-Top-3.jpeg', 10, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a</p>', 'Disney', 'new', '0'),
(4, 5, 1, 2, '2020-05-21 14:35:05', 'Jpr Cate Ss Polo - Jack & Jones', 'product_4', 'Ss-Polo-1.jpeg', 'Ss-Polo-2.jpeg', 'Ss-Polo-3.jpeg', 36, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Jack & Jones', 'sale', '32'),
(5, 5, 2, 1, '2020-05-21 14:35:10', 'Biconic Vneck Crop T-Shirt', 'product_5', 'Biconic-Tshirt-1.jpeg', 'Biconic-Tshirt-2.jpeg', 'Biconic-Tshirt-3.jpeg', 5, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Biconic', 'new', '0'),
(6, 5, 1, 2, '2020-05-21 14:35:16', 'StarWars Grey Head T-shirt', 'product_6', 'StarWars-T-shirt-1.jpeg', 'StarWars-T-shirt-2.jpeg', 'StarWars-T-shirt-3.jpeg', 14, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Disney', 'new', '0'),
(7, 5, 2, 4, '2020-05-21 14:35:23', 'BICONIC Christmas Red Top', 'product_7', 'Biconic-Red-Top-1.jpeg', 'Biconic-Red-Top-2.jpeg', 'Biconic-Red-Top-3.jpeg', 9, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Biconic', 'new', '0'),
(8, 5, 1, 3, '2020-05-21 14:35:29', 'Foil Outline Batwing T-shirt', 'product_8', 'Batwing-T-shirt-1.jpeg', 'Batwing-T-shirt-2.jpeg', 'Batwing-T-shirt-3.jpeg', 26, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Levis', 'sale', '23'),
(9, 3, 1, 4, '2020-05-21 14:35:39', 'Men''s Brown Color Shoes', 'product_9', 'Brown-Color-Shoes-1.jpeg', 'Brown-Color-Shoes-2.jpeg', 'Brown-Color-Shoes-3.jpeg', 63, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, dolorem tempore deleniti delectus numquam quam magni quidem veniam sequi nostrum sed eaque. Reiciendis quisquam totam nobis corrupti ullam at debitis!', 'Footwear\r\n', 'sale', '60'),
(10, 2, 2, 5, '2020-05-21 14:41:41', 'Multi TSL Blet - Backstage', 'product_10', 'Multi-TSL-Blet-1.jpeg', 'Multi-TSL-Blet-2.jpeg', 'Multi-TSL-Blet-3.jpeg', 13, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Backstage', 'new', '0'),
(11, 5, 3, 2, '2020-05-21 14:41:48', 'Mothercare Navy T-Shirt', 'product_11', 'Mothercare-Navy-T-Shirt-1.jpeg', 'Mothercare-Navy-T-Shirt-2.jpeg', 'Mothercare-Navy-T-Shirt-3.jpeg', 9, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Mothercare', 'new', '0'),
(12, 5, 2, 3, '2020-05-21 14:41:56', 'White Collared Top', 'product_12', 'White-Collared-Top-1.jpeg', 'White-Collared-Top-2.jpeg', 'White-Collared-Top-3.jpeg', 23, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Tops', 'sale', '20'),
(13, 3, 2, 4, '2020-05-21 14:42:11', 'Vizzano Heel Sandal', 'product_13', 'Vizzano-Sandal-1.jpeg', 'Vizzano-Sandal-2.jpeg', 'Vizzano-Sandal-3.jpeg', 47, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Vizzano', 'sale', '40'),
(14, 2, 2, 3, '2020-05-21 14:42:16', 'Backstage Earrings', 'product_14', 'Backstage-Earrings-1.jpeg', 'Backstage-Earrings-2.jpeg', 'Backstage-Earrings-3.jpeg', 13, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Backstage', 'new', '0'),
(16, 2, 1, 2, '2020-05-21 14:42:28', 'Silver Colour Cufflink', 'product_15', 'Silver-Colour-Cufflink-1.jpeg', 'Silver-Colour-Cufflink-2.jpeg', 'Silver-Colour-Cufflink-3.jpeg', 12, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Cufflinks', 'sale', '10'),
(17, 5, 2, 1, '2020-05-21 14:42:33', 'Biconic Pink Tshirt', 'product_16', 'Not-Today-Pink-Tshirt1.jpeg', 'Not-Today-Pink-Tshirt2.jpeg', 'Not-Today-Pink-Tshirt3.jpeg', 26, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Biconic', 'new', '0'),
(18, 5, 1, 3, '2020-05-21 14:42:38', 'Seen the Future Tshirt', 'product_17', 'Levis-Seen-the-Future-Tshirt1.jpeg', 'Levis-Seen-the-Future-Tshirt2.jpeg', 'Levis-Seen-the-Future-Tshirt3.jpeg', 58, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', 'Levis', 'new', '0'),
(19, 3, 3, 2, '2020-05-21 14:43:25', 'Girls Novelty Mothercare', 'product_18', 'fw_mothercare1.jpeg', 'fw_mothercare2.jpeg', 'fw_mothercare3.jpeg', 21, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', 'Pram Shoes', 'new', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Jackets', 'yes', 'jacket.jpg'),
(2, 'Accessories', 'no', 'acc.jpg'),
(3, 'Shoes', 'no', 'shoes.jpg'),
(4, 'Coats', 'yes', 'coat.jpg'),
(5, 'T-Shirt', 'no', 'tshirt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(9, 'slide number 5', 'slide-5.jpg', 'http://localhost/O-ECN-Store/index.php'),
(10, 'slide number 6', 'slide-6.jpg', 'http://localhost/O-ECN-Store/shop.php'),
(11, 'slide number 7', 'slide-7.jpg', 'http://localhost/O-ECN-Store/contact.php'),
(14, 'slide number 8', 'slide-9.jpg', 'www.anything.com');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(9, 'Rules & Regulations', 'link_1', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(10, 'Promo & Regulations', 'link_2', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(11, 'Refund Condition Policy', 'link_3', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
