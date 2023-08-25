-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 05:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory`
--

CREATE TABLE `tblinventory` (
  `productID` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `price` int(15) DEFAULT NULL,
  `itemsold` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemdesc1` varchar(100) NOT NULL,
  `itemdesc2` varchar(100) NOT NULL,
  `itemdesc3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblinventory`
--

INSERT INTO `tblinventory` (`productID`, `photo`, `productName`, `type`, `category`, `subcategory`, `price`, `itemsold`, `quantity`, `itemdesc1`, `itemdesc2`, `itemdesc3`) VALUES
(1, 'honda civic hatch.png', 'Honda Civic Type R', 'Hot', 'Cars', '', 2500000, 1, 24, 'Sporty and stylish hatchback', 'High performance hot hatch', 'Iconic Honda Civic variant'),
(2, 'nissan skyline blue.png', 'Nissan Skyline GTR R34 V spec', 'Hot', 'Cars', '', 3000000, 1, 220, 'Classic blue powerhouse', 'Legendary Skyline performance', 'Refined GTR V-Spec model'),
(3, 'nissan 180sx.png', 'Nissan 180sx Type X', 'Hot', 'Cars', '', 800000, 0, 197, 'Sleek drift-ready coupe', 'Stylish Nissan sports car', 'Affordable performance option'),
(4, 'nissan r34 black.png', 'Nissan Skyline R34 GTR M-Spec S Tune', 'Hot', 'Cars', '', 3500000, 0, 481, 'Black beauty with power', 'Limited edition Skyline GTR', 'M-Spec performance enhancements'),
(5, 'mazda rx7 veilside.png', 'Mazda Rx7 Veilside', 'Hot', 'Cars', '', 2500000, 1, 332, 'Stunning Veilside body kit', 'Rotary-powered Japanese legend', 'Head-turning sports coupe'),
(6, 'lancer evo final edition.png', 'Lancer Evolution Final Edition', 'Hot', 'Cars', '', 2000000, 0, 385, 'Last of the Evo series', 'Rally-bred performance sedan', 'Impressive handling and power'),
(7, 'subaru impreza sti black.png', 'Subaru Impreza STI', 'Hot', 'Cars', '', 2000000, 0, 52, 'Iconic Subaru performance sedan', 'Aggressive styling, AWD capability', 'Turbocharged rally heritage'),
(8, 'nissan skyline white.png', 'Nissan Skyline GTR R34', 'Hot', 'Cars', '', 2500000, 2, 215, 'JDM Masterpiece', 'Legendary Skyline performance', 'Classic Godzilla'),
(9, 'nissan skyline red.png', 'Nissan Skyline GTR R33', 'Hot', 'Cars', '', 2000000, 0, 374, 'Classic red GTR variant', 'Powerful Skyline heritage', 'Driver-focused performance'),
(10, 'nissan silvia blue.png', 'Nissan Silvia S15', 'Hot', 'Cars', '', 1500000, 0, 496, 'Stylish blue Silvia coupe', 'Drift-friendly sports car', 'Affordable performance option'),
(11, 'nissan silvia s15.png', 'Nissan Silvia S15 Spec R', 'Hot', 'Cars', '', 1800000, 2, 286, 'High-performance Silvia variant', 'Spec R model highlights', 'Exciting rear-wheel-drive experience'),
(12, 'mazda rx7 white.png', 'Mazda Rx7 White', 'Hot', 'Cars', '', 2000000, 0, 482, 'Clean white Rx7 beauty', 'Iconic rotary-powered sports car', 'Striking design and performance'),
(13, 'subaru impreza white.png', 'Subaru Impreza', 'Hot', 'Cars', '', 1500000, 0, 381, 'Elegant white Impreza sedan', 'All-wheel-drive versatility', 'Reliable and practical choice'),
(14, 'nissan sileighty.png', 'Nissan Sileighty', 'Hot', 'Cars', '', 1000000, 0, 0, 'Unique Sileighty conversion', 'Silvia and 180sx hybrid', 'Drift-ready street machine'),
(15, 'toyota supra mk4.png', 'Toyota Supra MK4', 'Hot', 'Cars', '', 2500000, 0, 279, 'Classic Supra sports car', 'Timeless design, iconic name', 'Turbocharged performance beast'),
(16, 'honda civic.png', 'Honda Civic', 'New', 'Cars', '', 1100000, 0, 248, 'Stylish and reliable sedan', 'Efficient performance and features', 'Modern design and technology'),
(17, 'toyota vios.png', 'Toyota Vios', 'New', 'Cars', '', 800000, 0, 365, 'Affordable and practical choice', 'Fuel-efficient and spacious sedan', 'Trusted Toyota reliability'),
(18, 'hyundai elantra.png', 'Hyundai Elantra', 'New', 'Cars', '', 1000000, 0, 478, 'Sleek and sophisticated design', 'Comfortable and well-equipped sedan', 'Advanced safety features'),
(19, 'mitsubishi mirage.png', 'Mitsubishi Mirage', 'New', 'Cars', '', 700000, 0, 42, 'Compact and economical hatchback', 'Great fuel efficiency', 'Easy maneuverability and affordability'),
(20, 'honda jazz.png', 'Honda Jazz', 'New', 'Cars', '', 1000000, 0, 56, 'Versatile and spacious hatchback', 'Fun-to-drive and efficient', 'Innovative interior features'),
(21, 'honda city.png', 'Honda City', 'New', 'Cars', '', 900000, 0, 24, 'Reliable and practical sedan', 'Comfortable and spacious cabin', 'Good fuel efficiency and safety'),
(22, 'suzuki jimny.png', 'Suzuki Jimny', 'New', 'Cars', '', 1000000, 0, 468, 'Compact and capable off-roader', 'Iconic design and ruggedness', 'Nimble and adventurous'),
(23, 'toyota raize.png', 'Toyota Raize', 'New', 'Cars', '', 900000, 0, 327, 'Stylish and compact SUV', 'Fuel-efficient and agile', 'Versatile and modern features'),
(24, 'ford ranger.png', 'Ford Ranger', 'New', 'Cars', '', 1100000, 0, 169, 'Tough and powerful pickup truck', 'Reliable and capable off-road', 'Spacious and comfortable cabin'),
(25, 'ford everest.png', 'Ford Everest', 'New', 'Cars', '', 1600000, 0, 0, 'Robust and versatile SUV', 'Excellent off-road capability', 'Comfortable and family-friendly'),
(26, 'toyota fortuner.png', 'Toyota Fortuner', 'New', 'Cars', '', 1500000, 0, 212, 'Stylish and rugged SUV', 'Powerful performance and towing capacity', 'Advanced safety features'),
(27, 'montero sport.png', 'Mitsubishi Montero Sports', 'New', 'Cars', '', 1600000, 1, 135, 'Sporty and capable SUV', 'Comfortable and spacious interior', 'Strong performance and off-road capability'),
(31, 'Anime Girl Keychain.png', 'Anime Girl Keychain', 'Best', 'Merch', '', 500, 1, 396, 'Cute anime accessory', 'Keychain merchandise', 'Anime-themed collectible'),
(32, 'Camber Gang Inspection Sticker.png', 'Camber Gang Inspection Sticker', 'Best', 'Merch', '', 300, 0, 317, 'JDM car decal', 'Camber Gang design', 'Automotive accessory'),
(33, 'Embroidered Anime Keychain.png', 'Embroidered Anime Keychain', 'Best', 'Merch', '', 450, 1, 136, 'Detailed anime keychain', 'Embroidered design', 'Anime merchandise'),
(34, 'Drive safe glow panel.png', 'Drive Safe Glow Panel', 'Best', 'Merch', '', 800, 3, 174, 'Safety-themed car accessory', 'Glow-in-the-dark panel', 'Encourages safe driving'),
(35, 'Touge Mountain Blend Air Freshener.png', 'Touge Mountain Blend Air Freshener', 'Best', 'Merch', '', 350, 0, 413, 'JDM-inspired air freshener', 'Touge Mountain scent', 'Car interior fragrance'),
(36, 'JDM Initial D Fujiwara 13-394 AE86 Trueno.png', 'JDM Initial D Fujiwara 13-394 AE86 Trueno', 'Best', 'Merch', '', 1000, 0, 343, 'Initial D-inspired merchandise', 'AE86 Trueno design', 'JDM car collectible'),
(37, 'JDM Culture! Soft Phone Cases.png', 'JDM Culture! Soft Phone Case', 'Best', 'Merch', '', 600, 0, 0, 'JDM-themed phone case', 'Soft and protective', 'Japanese car culture design'),
(38, 'Kawaii Cute Anime Car Sticker Charm Accessories Decor Japan JDM.png', 'Kawaii Cute Anime Car Sticker', 'Best', 'Merch', '', 200, 0, 110, ' Cute anime car sticker', 'Kawaii design', 'Decorative accessory'),
(39, 'Magic Water Air Freshener.png', 'Magic Water Air Freshener', 'Best', 'Merch', '', 400, 0, 483, 'Unique water-based air freshener', 'Refreshing fragrance', 'Long-lasting scent'),
(40, 'Ruthless Til Death Windshield Rear Window Decal.png', 'Ruthless Til Death Rear Window Decal', 'Best', 'Merch', '', 350, 0, 315, 'Bold rear window decal', 'Ruthless Til Death design', 'Expressive car accessory'),
(41, '80s Aesthetic Car Posters.png', '80s Aesthetic Car Posters', 'Best', 'Merch', '', 250, 0, 291, 'Retro-inspired car posters', '80s aesthetic design', 'Ideal for car enthusiasts'),
(42, 'Midnight GT Holographic Sticker.png', 'Midnight GT Holographic Sticker', 'Best', 'Merch', '', 300, 0, 378, 'GT-inspired holographic sticker', 'Midnight theme', 'Eye-catching design'),
(43, 'Japanese license plates.png', 'Japanese license plates', 'Best', 'Merch', '', 800, 0, 149, 'Authentic Japanese license plates', 'Unique and collectible', 'Adds JDM touch to vehicles'),
(44, 'Infinity Endless Rearview Mirror.png', 'Infinity Endless Rearview Mirror', 'Best', 'Merch', '', 700, 1, 386, 'Stylish rearview mirror', 'Infinity Endless design', 'Enhances car\'s interior look'),
(45, 'JDM Car Stickers.png', 'JDM Car Stickers', 'Best', 'Merch', '', 150, 0, 230, 'Assortment of JDM-themed stickers', 'Customizable car decoration', 'Adds personal touch to vehicles'),
(46, 'Anime Goku Car Air Freshener.png', 'Anime Goku Car Air Freshener', 'Accessories', 'Merch', '', 250, 0, 86, 'Anime-inspired scent', 'Vibrant design', 'Automotive freshness'),
(47, 'Drift Build Sticker.png', 'Drift Build Sticker', 'Accessories', 'Merch', '', 100, 0, 487, 'Drift enthusiast\'s choice', 'Bold and stylish', 'Show your passion'),
(48, 'Track Build Sticker.png', 'Track Build Sticker', 'Accessories', 'Merch', '', 100, 0, 226, 'Track-ready aesthetics', 'Racing-inspired design', 'Express your speed'),
(49, 'FF Drivetrain Holographic Sticker.png', 'FF Drivetrain Holographic Sticker', 'Accessories', 'Merch', '', 150, 0, 271, 'Eye-catching holographic effect', 'Front-wheel drive pride', 'Unique drivetrain representation'),
(50, 'GTR Jdm Keychain.png', 'GTR Jdm Keychain', 'Accessories', 'Merch', '', 300, 0, 449, 'Iconic GTR emblem', 'JDM enthusiast\'s accessory', 'Carry your passion'),
(51, 'Dynamic DRL Car Light Strips.png', 'Dynamic DRL Car Light Strips.png', 'Accessories', 'Merch', '', 500, 0, 208, 'Striking daytime running lights', 'Sleek and modern look', 'Enhance your vehicle\'s style'),
(52, 'Translucent Flower Gravity Phone Holder.png', 'Translucent Flower Gravity Phone Holder', 'Accessories', 'Merch', '', 200, 0, 454, 'Elegant flower design', 'Secure phone holder', 'Convenient and stylish'),
(53, 'Japanese Geisha Floor Mat.png', 'Japanese Geisha Floor Mat', 'Accessories', 'Merch', '', 400, 0, 0, 'Traditional Japanese art', 'Protects your car\'s floor', 'Cultural touch in your vehicle'),
(54, 'Honda Acty Cup Holder.png', 'Honda Acty Cup Holder', 'Accessories', 'Merch', '', 150, 0, 337, 'Specifically designed for Honda Acty', 'Practical cup holder solution', 'Perfect fit and functionality'),
(55, 'JDM Drift Charm.png', 'JDM Drift Charm', 'Accessories', 'Merch', '', 250, 0, 0, 'Drift-themed accessory', 'Hang it with style', 'Showcase your drifting spirit'),
(56, 'Kawaii panda Car Seat Cover.png', 'Kawaii Panda Car Seat Cover', 'Accessories', 'Merch', '', 800, 0, 363, 'Cute panda design', 'Protects your car seats', 'Adorable car interior touch'),
(57, 'Night Runner Rearview Hang Charm.png', 'Night Runner Rearview Hang Charm', 'Accessories', 'Merch', '', 150, 0, 424, 'Stylish rearview mirror accessory', 'Night runner design', 'Add flair to your car\'s interior'),
(58, 'Project D Car Air Freshener.png', 'Project D Car Air Freshener', 'Accessories', 'Merch', '', 200, 0, 282, 'Inspired by \"Initial D\"', 'Fresh scent for your car', 'Relive the racing vibes'),
(59, 'Shift Pattern Epoxy Sticker.png', 'Shift Pattern Epoxy Sticker.png', 'Accessories', 'Merch', '', 100, 0, 324, 'Classic shift pattern design', 'Durable epoxy material', 'Stick it anywhere you like'),
(60, 'Night Drive Decal.png', 'Night Drive Decal', 'Accessories', 'Merch', '', 150, 0, 113, 'Reflective decal for night driving', 'Enhances visibility and safety', 'Cool and functional accessory'),
(61, 'JDM Legends T-Shirt.png', 'JDM Legends T-Shirt', 'Clothes', 'Merch', '', 1055, 0, 246, 'Classic JDM Design', 'Retro Vibes', 'Legendary Style'),
(62, 'Initial D Toyota AE86 Unisex T-Shirt.png', 'Initial D Toyota AE86 T-Shirt', 'Clothes', 'Merch', '', 1400, 0, 443, 'Iconic AE86', 'Street Racing Anime', 'Drift King\'s Car'),
(63, 'JDM Kanjo Honda Civic Unisex.png', 'JDM Kanjo Honda Civic T-Shirt', 'Clothes', 'Merch', '', 1450, 0, 0, 'Kanjo Racing Style', 'Honda Civic Love', 'Urban Racing Culture'),
(64, 'White R34 GTR T-shirt.png', 'Godzilla R34 GTR T-shirt', 'Clothes', 'Merch', '', 1690, 0, 219, 'Legendary Godzilla', 'Skyline R34 Power', 'JDM Performance Beast'),
(65, 'JDM Toyota AE86 CLassic Unisex T-Shirt.png', 'JDM Toyota AE86 CLassic T-Shirt', 'Clothes', 'Merch', '', 1950, 2, 451, 'Timeless AE86 Design', 'JDM Cult Classic', 'Pure Driving Joy'),
(66, 'Toyota Supra T-Shirt.png', 'Toyota Supra T-Shirt', 'Clothes', 'Merch', '', 1100, 0, 423, 'Supra Enthusiast\'s Pick', 'Speed and Style', 'JDM Powerhouse'),
(67, 'AE86 Classic T-shirt.png', 'AE86 Classic T-shirt', 'Clothes', 'Merch', '', 1950, 0, 332, 'AE86 Enthusiast\'s Pick', 'Drift Icon', 'JDM Legend'),
(68, 'Audi Time Attack T-Shirt.png', 'Audi Time Attack T-Shirt', 'Clothes', 'Merch', '', 1650, 0, 218, 'Audi Performance Style', 'Track Ready Design', 'Time Attack Inspiration'),
(69, 'JDM Nissan GTR R34 Classic Unisex T-Shirt.png', 'White GTR R34 Classic T-Shirt', 'Clothes', 'Merch', '', 1790, 0, 448, 'R34 GTR Elegance', 'Clean and Classic Look', 'JDM Power Statement'),
(70, 'JDM Honda Civic Unisex T-Shirt.png', 'JDM Honda Civic T-Shirt', 'Clothes', 'Merch', '', 1790, 0, 306, 'Honda Civic Pride', 'JDM Heritage', 'Stylish and Sporty'),
(71, 'Initial D Racing Shirt.png', 'Initial D Racing Shirt', 'Clothes', 'Merch', '', 1450, 0, 453, 'Racing Spirit of Initial D', 'Takumi\'s Inspiration', 'Speed and Skill'),
(72, 'JDM RWB Classic Unisex T-shirt.png', 'JDM RWB Classic T-shirt', 'Clothes', 'Merch', '', 1720, 0, 404, 'RWB Porsche Love', 'JDM Custom Masterpiece', 'Aggressive Style'),
(73, 'JDM Initial Drift Hoodie.png', 'JDM Initial Drift Hoodie', 'Clothes', 'Merch', '', 2290, 0, 159, 'Drift Culture Influence', 'JDM Streetwear Essential', 'Cozy and Stylish'),
(74, 'D Rising Jap Hoodie.png', 'D-Rising Hoodie', 'Clothes', 'Merch', '', 2290, 0, 233, 'Rising Sun Motif', 'D-Brand Style', 'JDM Passion'),
(75, 'S14 Nissan Hoodie.png', 'S14 Nissan Hoodie', 'Clothes', 'Merch', '', 2290, 0, 379, 'S14 Silvia Fan\'s Choice', 'JDM Tuning Culture', 'V-necklineSleek and Sporty'),
(115, 'Stay Safe License Plate Frames.png', 'Stay Safe License Plate Frames', 'Best', 'Merch', '', 500, 0, 490, 'Jdm-themed license plate frames', 'Anime concept plate', 'Durable and stylish'),
(151, 'toyota soarer.png', 'Toyota Soarer', 'Classic', 'Cars', '', 1450000, 0, 352, 'Luxurious GT Coupe', 'Powerful Performance Cruiser', 'Classic Japanese Elegance'),
(152, 'honda city classic.png', 'Honda City Turbo', 'Classic', 'Cars', '', 375000, 0, 250, 'Sporty Compact Hatchback', 'Turbocharged Powerhouse', 'Iconic \'80s City Car'),
(153, 'lancia delta.png', 'Lancia Delta', 'Classic', 'Cars', '', 3100000, 0, 300, 'Rally Legend Champion', 'Italian Performance Hatchback', 'Sleek and Agile Design'),
(154, 'nissan hakosuka.png', 'Nissan Hakosuka', 'Classic', 'Cars', '', 3950000, 0, 420, 'Iconic Skyline GT-R', 'First Generation GT-R', 'Classic JDM Legend'),
(155, 'nissan kenmeri white.png', 'Nissan Kenmeri', 'Classic', 'Cars', '', 3625000, 0, 400, 'Rare Skyline GT-R', 'Second Generation GT-R', 'Stylish and Powerful Coupe'),
(156, 'nissan sunny.png', 'Nissan Sunny Truck', 'Classic', 'Cars', '', 775000, 0, 300, 'Compact Pickup Utility', 'Reliable Workhorse', 'Versatile and Practical'),
(157, 'nissan silvia classic.png', 'Nissan Silvia CSP311', 'Classic', 'Cars', '', 5500000, 0, 160, 'Vintage Sports Coupe', 'Timeless Design Icon', 'Spirited Performance Car'),
(158, 'nissan familia.png', 'Mazda Familia', 'Classic', 'Cars', '', 462500, 0, 250, 'Compact Family Car', 'Dependable Daily Driver', 'Fuel-efficient and Practical'),
(159, 'nissan figaro.png', 'Nissan Figaro', 'Classic', 'Cars', '', 675000, 0, 400, 'Retro-style Convertible', 'Quirky and Charming', 'Nostalgic City Cruiser'),
(160, 'mazda rx3.png', 'Mazda Rx3', 'Classic', 'Cars', '', 2200000, 0, 0, 'Rotary-powered Coupe', 'Lightweight Performance Car', 'Legendary Rotary Engine'),
(161, 'lancia delta evo.png', 'Lancia Delta Evo', 'Classic', 'Cars', '', 2250000, 0, 268, 'Rally-bred Performance', 'High-performance Hatchback', 'Italian Racing Heritage'),
(162, 'nissan skyline.png', 'Nissan Skyline Kenmeri', 'Classic', 'Cars', '', 3625000, 1, 220, 'Classic Skyline GT-R', '\'70s Iconic Muscle Car', 'Legendary Performance Beast'),
(193, 'Drift Charm oni mask.png', 'Drift Charm Oni Mask', 'Accessories', 'Merch', '', 250, 0, 82, 'Oni mask design', 'Symbol of Japanese folklore', 'Show your love for drifting'),
(194, 'White Rx7 Hoodie.png', 'Mazda Rx7 Hoodie', 'Clothes', 'Merch', '', 2290, 0, 67, 'Rotary Power Icon', 'RX-7 Fan\'s Delight', 'JDM Legend');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblinventory`
--
ALTER TABLE `tblinventory`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblinventory`
--
ALTER TABLE `tblinventory`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
