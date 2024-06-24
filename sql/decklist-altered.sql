-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 20 juin 2024 à 06:51
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `decklist-altered`
--

-- --------------------------------------------------------

--
-- Structure de la table `card`
--

CREATE TABLE `card` (
  `id` int NOT NULL,
  `card_type_id` int DEFAULT NULL,
  `main_faction_id` int DEFAULT NULL,
  `rarity_id` int DEFAULT NULL,
  `altered_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_set_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `card`
--

INSERT INTO `card` (`id`, `card_type_id`, `main_faction_id`, `rarity_id`, `altered_id`, `name`, `reference`, `created_at`, `updated_at`, `picture`, `image_path`, `card_set_id`) VALUES
(1, 5, 1, 2, '01HKAFJNH8NN6Q06P4R44WNCSM', 'Sierra & Oddball', 'ALT_CORE_B_AX_01_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'e9cf4439f25391d9fc21300cce1bbe44.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_01/JPG/en_US/e9cf4439f25391d9fc21300cce1bbe44.jpg', NULL),
(2, 5, 1, 2, '01HKAFJNHAGP5G093V0GPX6XE3', 'Treyst & Rossum', 'ALT_CORE_B_AX_02_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'e8d562c8402df1d8ba79d70139706d11.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_02/JPG/en_US/e8d562c8402df1d8ba79d70139706d11.jpg', NULL),
(3, 5, 1, 2, '01HKAFJNHBQ56YXGF3BESZT83G', 'Subhash & Marmo', 'ALT_CORE_B_AX_03_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '05ba21398ad2dce1eb30beccc957a1c2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_03/JPG/en_US/05ba21398ad2dce1eb30beccc957a1c2.jpg', NULL),
(4, 4, 1, 2, '01HKAFJNHECG82PAA2SXSTBKQ1', 'Kelon Elemental', 'ALT_CORE_B_AX_04_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'fca50447c3db9ed73203afbacdd8cabf.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_04/JPG/en_US/fca50447c3db9ed73203afbacdd8cabf.jpg', NULL),
(5, 4, 1, 3, '01HKAFJNHG4PN8JTMHCFFRCBXE', 'Kelon Elemental', 'ALT_CORE_B_AX_04_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '4187ecad6c030eae62446f153489f11e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_04/JPG/en_US/4187ecad6c030eae62446f153489f11e.jpg', NULL),
(6, 4, 6, 3, '01HKAFJNHHJ1HJ95Y9THZVCRQE', 'Kelon Elemental', 'ALT_CORE_B_AX_04_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'cff8936711c411ea60dcc47433a94616.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_04/JPG/en_US/cff8936711c411ea60dcc47433a94616.jpg', NULL),
(7, 4, 1, 2, '01HKAFJNHTPQ9BSTJFW2DHDD8R', 'Foundry Mechanic', 'ALT_CORE_B_AX_07_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'c00690f154c2173bc26f6802812f5f3f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_07/JPG/en_US/c00690f154c2173bc26f6802812f5f3f.jpg', NULL),
(8, 4, 1, 3, '01HKAFJNHVC8XD672W2W07MYCK', 'Foundry Mechanic', 'ALT_CORE_B_AX_07_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '7afba116182d4c7d95beaad7b8a4659f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_07/JPG/en_US/7afba116182d4c7d95beaad7b8a4659f.jpg', NULL),
(9, 4, 4, 3, '01HKAFJNHX8F5P5WWKYW1WQW8E', 'Foundry Mechanic', 'ALT_CORE_B_AX_07_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '1892f5acf095f12ae21d434971245249.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_07/JPG/en_US/1892f5acf095f12ae21d434971245249.jpg', NULL),
(10, 4, 1, 2, '01HKAFJNHYMTQ379XADMW17MM1', 'Axiom Salvager', 'ALT_CORE_B_AX_08_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '3f97f3f54502ce702524e05aed7774a5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_08/JPG/en_US/3f97f3f54502ce702524e05aed7774a5.jpg', NULL),
(11, 4, 1, 3, '01HKAFJNHZYCM51XFNXHSS6E38', 'Axiom Salvager', 'ALT_CORE_B_AX_08_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '389b02630b427344972f8ffc1ddc61f8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_08/JPG/en_US/389b02630b427344972f8ffc1ddc61f8.jpg', NULL),
(12, 4, 2, 3, '01HKAFJNJ1B7568EV1C9VVY5QM', 'Axiom Salvager', 'ALT_CORE_B_AX_08_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '9f87b61c0161ac7e91b314d67b765f70.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_08/JPG/en_US/9f87b61c0161ac7e91b314d67b765f70.jpg', NULL),
(13, 4, 1, 2, '01HKAFJNJ6S2WR2VDA7DSRY8MQ', 'Jian, Assembly Overseer', 'ALT_CORE_B_AX_10_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '8a71802fe71a6a48e19317c6892d388a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_10/JPG/en_US/8a71802fe71a6a48e19317c6892d388a.jpg', NULL),
(14, 4, 1, 3, '01HKAFJNJ7558PPJYXX3MH5GYE', 'Jian, Assembly Overseer', 'ALT_CORE_B_AX_10_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'd79c2a5e09e02d48c60d3f756adf1ba7.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_10/JPG/en_US/d79c2a5e09e02d48c60d3f756adf1ba7.jpg', NULL),
(15, 4, 4, 3, '01HKAFJNJ8N9T73F0NM286MNZP', 'Jian, Assembly Overseer', 'ALT_CORE_B_AX_10_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'ebd9ded5d0a1541ee8f3ec85e66983f0.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_10/JPG/en_US/ebd9ded5d0a1541ee8f3ec85e66983f0.jpg', NULL),
(16, 4, 1, 2, '01HKAFJNJAK8M6VPA6ZGFRME93', 'Amelia Earhart', 'ALT_CORE_B_AX_11_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '57757c194241d10245fe2877fd386070.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_11/JPG/en_US/57757c194241d10245fe2877fd386070.jpg', NULL),
(17, 4, 1, 3, '01HKAFJNJBS9MFSE4Z3B7WPB3Y', 'Amelia Earhart', 'ALT_CORE_B_AX_11_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '5b395f4de20c210417afc908ecf6ee4c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_11/JPG/en_US/5b395f4de20c210417afc908ecf6ee4c.jpg', NULL),
(18, 4, 4, 3, '01HKAFJNJCX621YSH6S8D06P9Z', 'Amelia Earhart', 'ALT_CORE_B_AX_11_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'b987694f1e17d4870272b444b7f090c5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_11/JPG/en_US/b987694f1e17d4870272b444b7f090c5.jpg', NULL),
(19, 4, 1, 2, '01HKAFJNJDMGENH07WWWP8CDAF', 'Three Little Pigs', 'ALT_CORE_B_AX_12_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'ba4616a6d4fc186c6924dcb4ec50ff91.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_12/JPG/en_US/ba4616a6d4fc186c6924dcb4ec50ff91.jpg', NULL),
(20, 4, 1, 3, '01HKAFJNJFX7JX4VA9ZRPBAPGY', 'Three Little Pigs', 'ALT_CORE_B_AX_12_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', 'ba4f5db97b78e2fbbf905230032e9c0e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_12/JPG/en_US/ba4f5db97b78e2fbbf905230032e9c0e.jpg', NULL),
(21, 4, 2, 3, '01HKAFJNJG3SSW7KG1MBHYJP90', 'Three Little Pigs', 'ALT_CORE_B_AX_12_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '60e9d8dee9aab6e8ae886aaf154dda10.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_12/JPG/en_US/60e9d8dee9aab6e8ae886aaf154dda10.jpg', NULL),
(22, 4, 1, 2, '01HKAFJNJHN45HVQ5DKR30D845', 'Ada Lovelace', 'ALT_CORE_B_AX_13_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '7104951bbacd35e201ac32a15084d66c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_13/JPG/en_US/7104951bbacd35e201ac32a15084d66c.jpg', NULL),
(23, 4, 1, 3, '01HKAFJNJJSEKYBZ5X1Y2H0PCJ', 'Ada Lovelace', 'ALT_CORE_B_AX_13_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '019182f51d9bacc7cab4355f30889d32.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_13/JPG/en_US/019182f51d9bacc7cab4355f30889d32.jpg', NULL),
(24, 4, 5, 3, '01HKAFJNJMQAKKVTPCJX665GZ5', 'Ada Lovelace', 'ALT_CORE_B_AX_13_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '5ae824b1f9780204fab4b2b9c1d3a5b2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_13/JPG/en_US/5ae824b1f9780204fab4b2b9c1d3a5b2.jpg', NULL),
(25, 4, 1, 2, '01HKAFJNJS736EK88B1ZHFYDJ6', 'Axiom Scrambler', 'ALT_CORE_B_AX_15_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '2cd5d87a1e31a134a4adcf304d5a67ec.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_15/JPG/en_US/2cd5d87a1e31a134a4adcf304d5a67ec.jpg', NULL),
(26, 4, 1, 3, '01HKAFJNJTEVQ9BWEJSH5ZSJWN', 'Axiom Scrambler', 'ALT_CORE_B_AX_15_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '9d20c4fe0f80a8fd59fcbfb3e532a600.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_15/JPG/en_US/9d20c4fe0f80a8fd59fcbfb3e532a600.jpg', NULL),
(27, 4, 6, 3, '01HKAFJNJV2MEZY75RYZEM2ZZS', 'Axiom Scrambler', 'ALT_CORE_B_AX_15_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '8166411cb956beb57e9fdd2aa90d714b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_15/JPG/en_US/8166411cb956beb57e9fdd2aa90d714b.jpg', NULL),
(28, 4, 1, 2, '01HKAFJNJXQSP2XEK6PKGGA6HY', 'Foundry Armorer', 'ALT_CORE_B_AX_16_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '52b09611562cb1ece4e551498e196419.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_16/JPG/en_US/52b09611562cb1ece4e551498e196419.jpg', NULL),
(29, 4, 1, 3, '01HKAFJNJY2JWZ9PEMB3K2QP55', 'Foundry Armorer', 'ALT_CORE_B_AX_16_R1', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '63397d924d65ec81e05e09ad0aafb006.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_16/JPG/en_US/63397d924d65ec81e05e09ad0aafb006.jpg', NULL),
(30, 4, 2, 3, '01HKAFJNJZN3KF3R64QWRHRB8H', 'Foundry Armorer', 'ALT_CORE_B_AX_16_R2', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '94cdcc37f9b29773095ef84e53da421a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_16/JPG/en_US/94cdcc37f9b29773095ef84e53da421a.jpg', NULL),
(31, 1, 1, 2, '01HKAFJNKQ7TCZR9ED919Y87B1', 'Kelon Burst', 'ALT_CORE_B_AX_23_C', '2024-04-04 16:37:11', '2024-04-04 16:37:11', '917efaa663dbfe67c758bd2a9a5a1ff2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_23/JPG/en_US/917efaa663dbfe67c758bd2a9a5a1ff2.jpg', NULL),
(32, 1, 1, 3, '01HKAFJNKRVMT163CEQ2DV63RT', 'Kelon Burst', 'ALT_CORE_B_AX_23_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '86f8fb8f2e00afdf3ab27fafbaea7174.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_23/JPG/en_US/86f8fb8f2e00afdf3ab27fafbaea7174.jpg', NULL),
(33, 1, 4, 3, '01HKAFJNKSCXR05YD232CYSNA3', 'Kelon Burst', 'ALT_CORE_B_AX_23_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '0dd636213cc0ee2b31666b7e0e503442.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_23/JPG/en_US/0dd636213cc0ee2b31666b7e0e503442.jpg', NULL),
(34, 2, 1, 2, '01HKAFJNKTSTA641HRHQPA5FPM', 'Brassbug Hub', 'ALT_CORE_B_AX_24_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '051df7dd8dea4f41e2ad9e2dc8cae8f6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_24/JPG/en_US/051df7dd8dea4f41e2ad9e2dc8cae8f6.jpg', NULL),
(35, 2, 1, 3, '01HKAFJNKWKR5ZH3Q2A3G6T8RC', 'Brassbug Hub', 'ALT_CORE_B_AX_24_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'a8ee79ddda8a613389331b370ad70300.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_24/JPG/en_US/a8ee79ddda8a613389331b370ad70300.jpg', NULL),
(36, 2, 4, 3, '01HKAFJNKXV950MVWSZV4E26CQ', 'Brassbug Hub', 'ALT_CORE_B_AX_24_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '04b9b169b495eeeffdb5a4c918dfa3d9.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_24/JPG/en_US/04b9b169b495eeeffdb5a4c918dfa3d9.jpg', NULL),
(37, 2, 1, 2, '01HKAFJNKYRVMES7T8VFY9G1MW', 'Axiom Reprocessor', 'ALT_CORE_B_AX_25_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '2fc883285eb7f31bc75481cffe1dadef.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_25/JPG/en_US/2fc883285eb7f31bc75481cffe1dadef.jpg', NULL),
(38, 2, 1, 3, '01HKAFJNKZ36CEFYFVVDS27NVR', 'Axiom Reprocessor', 'ALT_CORE_B_AX_25_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '215bfd61f1f1fb94935d4c36121b2318.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_25/JPG/en_US/215bfd61f1f1fb94935d4c36121b2318.jpg', NULL),
(39, 2, 6, 3, '01HKAFJNM1NBM0H29KK5T1VVJG', 'Axiom Reprocessor', 'ALT_CORE_B_AX_25_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '2de0348b26e1359359c8b4df9416c087.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_25/JPG/en_US/2de0348b26e1359359c8b4df9416c087.jpg', NULL),
(40, 2, 1, 2, '01HKAFJNM6JWG74TFFYYHJ0KB1', 'Kelonic Generator', 'ALT_CORE_B_AX_27_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'ea759aa0efcf6595d085a114a6b2b6b8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_27/JPG/en_US/ea759aa0efcf6595d085a114a6b2b6b8.jpg', NULL),
(41, 2, 1, 3, '01HKAFJNM7BYRDPYF70YGRK0VG', 'Kelonic Generator', 'ALT_CORE_B_AX_27_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '9a0a1b787bc3821588218f69652fc7d6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_27/JPG/en_US/9a0a1b787bc3821588218f69652fc7d6.jpg', NULL),
(42, 2, 4, 3, '01HKAFJNM8HSN2CVJ1MQWWK2DG', 'Kelonic Generator', 'ALT_CORE_B_AX_27_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'c64583e83bcf8ecdbaeabd237530145f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_27/JPG/en_US/c64583e83bcf8ecdbaeabd237530145f.jpg', NULL),
(43, 2, 1, 2, '01HKAFJNMH18X9SA7EZY5YAQR3', 'Brassbug Hive', 'ALT_CORE_B_AX_30_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'a881eda7713c62972c326b479fa5376d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_30/JPG/en_US/a881eda7713c62972c326b479fa5376d.jpg', NULL),
(44, 2, 1, 3, '01HKAFJNMJMVGY9RR07VP5H7D7', 'Brassbug Hive', 'ALT_CORE_B_AX_30_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '86a31a53002e53522cd97a08bf09ca54.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_30/JPG/en_US/86a31a53002e53522cd97a08bf09ca54.jpg', NULL),
(45, 2, 5, 3, '01HKAFJNMKKNDACYEM0WH26R8Z', 'Brassbug Hive', 'ALT_CORE_B_AX_30_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'c5ba409f8e3260f3232bbe3fc04a3778.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_30/JPG/en_US/c5ba409f8e3260f3232bbe3fc04a3778.jpg', NULL),
(46, 3, 1, 2, '01HKAFJNMNGK46X8QT6X9WQ112', 'Brassbug', 'ALT_CORE_B_AX_31_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'c67d65a3ce286b238da10aea203e7775.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_AX_31/JPG/en_US/c67d65a3ce286b238da10aea203e7775.jpg', NULL),
(47, 5, 2, 2, '01HKAFJNMQBWA7WHAW59M2AEKN', 'Kojo & Booda', 'ALT_CORE_B_BR_01_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '1776853df06bc4d6eabc21e2aa9b478e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_01/JPG/en_US/1776853df06bc4d6eabc21e2aa9b478e.jpg', NULL),
(48, 5, 2, 2, '01HKAFJNMR2FWT0S2QB83HR09S', 'Atsadi & Surge', 'ALT_CORE_B_BR_02_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'ae00b0c9f33eb5a9191fff575288bade.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_02/JPG/en_US/ae00b0c9f33eb5a9191fff575288bade.jpg', NULL),
(49, 5, 2, 2, '01HKAFJNMSVFS2WW580N4EVJ54', 'Basira & Kaizaimon', 'ALT_CORE_B_BR_03_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'b27b8cb40203be36c7b02facdc3406b7.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_03/JPG/en_US/b27b8cb40203be36c7b02facdc3406b7.jpg', NULL),
(50, 4, 2, 2, '01HKAFJNMT4DSWSCDK0AFGYE16', 'Ratatoskr', 'ALT_CORE_B_BR_04_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '3450814142dec76e795545a4e18b0f7b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_04/JPG/en_US/3450814142dec76e795545a4e18b0f7b.jpg', NULL),
(51, 4, 2, 3, '01HKAFJNMWPTAKCBY75WKFE19E', 'Ratatoskr', 'ALT_CORE_B_BR_04_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '885db49a5a06c01fbed9b36a22682474.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_04/JPG/en_US/885db49a5a06c01fbed9b36a22682474.jpg', NULL),
(52, 4, 4, 3, '01HKAFJNMXTAGHBZA4J78N6F1S', 'Ratatoskr', 'ALT_CORE_B_BR_04_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'd9b6911299747ba971c985d959187e22.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_04/JPG/en_US/d9b6911299747ba971c985d959187e22.jpg', NULL),
(53, 4, 2, 2, '01HKAFJNMYFH8RA39411PM7J1P', 'Issun-bōshi', 'ALT_CORE_B_BR_05_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'd9fc98c1ef0664766b2359bea983dc22.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_05/JPG/en_US/d9fc98c1ef0664766b2359bea983dc22.jpg', NULL),
(54, 4, 2, 3, '01HKAFJNMZRES2VA30Z6RZSCXE', 'Issun-bōshi', 'ALT_CORE_B_BR_05_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '03b974e2aab040a405ee3dc5fbaa57da.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_05/JPG/en_US/03b974e2aab040a405ee3dc5fbaa57da.jpg', NULL),
(55, 4, 6, 3, '01HKAFJNN192HXB0WE8K1PFSWT', 'Issun-bōshi', 'ALT_CORE_B_BR_05_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'fe78216d6b26ff2620a577ba5d7dfa2c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_05/JPG/en_US/fe78216d6b26ff2620a577ba5d7dfa2c.jpg', NULL),
(56, 4, 2, 2, '01HKAFJNN63N7PRAE63HR2T2VK', 'Bravos Tracer', 'ALT_CORE_B_BR_07_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '155a1a778e68760688939a5f83c82f5e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_07/JPG/en_US/155a1a778e68760688939a5f83c82f5e.jpg', NULL),
(57, 4, 2, 3, '01HKAFJNN7NKZ9K0SJ7SV4ZJBJ', 'Bravos Tracer', 'ALT_CORE_B_BR_07_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '15c35cc422cc7732606cc1d9b04953f5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_07/JPG/en_US/15c35cc422cc7732606cc1d9b04953f5.jpg', NULL),
(58, 4, 1, 3, '01HKAFJNN8J6RK1PP4YZK45WJT', 'Bravos Tracer', 'ALT_CORE_B_BR_07_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '2476f1fdddf9bf314563dc721c4623e4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_07/JPG/en_US/2476f1fdddf9bf314563dc721c4623e4.jpg', NULL),
(59, 4, 2, 2, '01HKAFJNN9WX6R6TPZP4W4J0TJ', 'Bravos Pathfinder', 'ALT_CORE_B_BR_08_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '48100018839b5151611f95de05b49516.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_08/JPG/en_US/48100018839b5151611f95de05b49516.jpg', NULL),
(60, 4, 2, 3, '01HKAFJNNBDYR1W9C0CFNFQS84', 'Bravos Pathfinder', 'ALT_CORE_B_BR_08_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '561508b9075df58274d64748ebad7a1b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_08/JPG/en_US/561508b9075df58274d64748ebad7a1b.jpg', NULL),
(61, 4, 3, 3, '01HKAFJNNCR4NVQNW9V5W6V8B2', 'Bravos Pathfinder', 'ALT_CORE_B_BR_08_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '5af945251a79f8dee8d177d60e68a4f1.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_08/JPG/en_US/5af945251a79f8dee8d177d60e68a4f1.jpg', NULL),
(62, 4, 2, 2, '01HKAFJNNEF7XGX9N6P81HE1VD', 'Haven Trainee', 'ALT_CORE_B_BR_09_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '1474025f3fba7faabcd82b449d25ca11.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_09/JPG/en_US/1474025f3fba7faabcd82b449d25ca11.jpg', NULL),
(63, 4, 2, 3, '01HKAFJNNFFMKQVD6F9CHXEASN', 'Haven Trainee', 'ALT_CORE_B_BR_09_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'acfcb3b8b93d8af42fbd99d1a108d04a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_09/JPG/en_US/acfcb3b8b93d8af42fbd99d1a108d04a.jpg', NULL),
(64, 4, 4, 3, '01HKAFJNNGFAT028JTDE9N3W5Z', 'Haven Trainee', 'ALT_CORE_B_BR_09_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'f480ba5d470e7e2e0119c89ddc2757ee.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_09/JPG/en_US/f480ba5d470e7e2e0119c89ddc2757ee.jpg', NULL),
(65, 4, 2, 2, '01HKAFJNNZS2622KB6AK31BWP6', 'Kappa', 'ALT_CORE_B_BR_13_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '492402e3178c42d06fe23930574251ac.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_13/JPG/en_US/492402e3178c42d06fe23930574251ac.jpg', NULL),
(66, 4, 2, 3, '01HKAFJNP05F57QJ16X7PDJP1N', 'Kappa', 'ALT_CORE_B_BR_13_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'b9aa32471e12ad2665e77a2a35df2c0f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_13/JPG/en_US/b9aa32471e12ad2665e77a2a35df2c0f.jpg', NULL),
(67, 4, 3, 3, '01HKAFJNP1KK0EVDR3KPBBGY3A', 'Kappa', 'ALT_CORE_B_BR_13_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'a800c1890b169c8cedea2c73676760ad.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_13/JPG/en_US/a800c1890b169c8cedea2c73676760ad.jpg', NULL),
(68, 4, 2, 2, '01HKAFJNP791GY5NP55YFVQP65', 'Haven Bouncer', 'ALT_CORE_B_BR_15_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'f13f7a7ecdcd03a32feff2cafdad133f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_15/JPG/en_US/f13f7a7ecdcd03a32feff2cafdad133f.jpg', NULL),
(69, 4, 2, 3, '01HKAFJNP8ZQED0PFAKQ39EA3J', 'Haven Bouncer', 'ALT_CORE_B_BR_15_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'e02f57cc4a4c86cb20be8309dce7ea66.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_15/JPG/en_US/e02f57cc4a4c86cb20be8309dce7ea66.jpg', NULL),
(70, 4, 1, 3, '01HKAFJNP9D2FV0GCXFZ91FCW7', 'Haven Bouncer', 'ALT_CORE_B_BR_15_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '55c6620eec33dfdbbc82357282f4e68a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_15/JPG/en_US/55c6620eec33dfdbbc82357282f4e68a.jpg', NULL),
(71, 4, 2, 2, '01HKAFJNPFCYRAX2F5CGZ6HHVQ', 'Haven Warrior', 'ALT_CORE_B_BR_17_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'ef04549008764b4cb8080b41ee880044.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_17/JPG/en_US/ef04549008764b4cb8080b41ee880044.jpg', NULL),
(72, 4, 2, 3, '01HKAFJNPGAEKZGKS7QZHK9WWA', 'Haven Warrior', 'ALT_CORE_B_BR_17_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'b024ae3302db46737741a7b4895838e5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_17/JPG/en_US/b024ae3302db46737741a7b4895838e5.jpg', NULL),
(73, 4, 4, 3, '01HKAFJNPH8E3YN9Z6P933NT4S', 'Haven Warrior', 'ALT_CORE_B_BR_17_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '989d2cd2e010b70de9cc663c76696745.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_17/JPG/en_US/989d2cd2e010b70de9cc663c76696745.jpg', NULL),
(74, 4, 2, 2, '01HKAFJNPJTD06BY92NJSXVA0B', 'Sun Wukong', 'ALT_CORE_B_BR_18_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '341ef3a6b54caa79b6aaa77849bdc949.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_18/JPG/en_US/341ef3a6b54caa79b6aaa77849bdc949.jpg', NULL),
(75, 4, 2, 3, '01HKAFJNPMY2G357WDJQJMY4Q0', 'Sun Wukong', 'ALT_CORE_B_BR_18_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '70f6c2a984923717203ab334def98b7c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_18/JPG/en_US/70f6c2a984923717203ab334def98b7c.jpg', NULL),
(76, 4, 6, 3, '01HKAFJNPNA30HVXM6XM52FNB4', 'Sun Wukong', 'ALT_CORE_B_BR_18_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '7c1219fc9e3e29456d0fd8fcebc5034b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_18/JPG/en_US/7c1219fc9e3e29456d0fd8fcebc5034b.jpg', NULL),
(77, 4, 2, 2, '01HKAFJNPPYYCZQVYA91EPK3SK', 'Mighty Jinn', 'ALT_CORE_B_BR_19_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '05bcbcd92d923c4388f760fc30ee48e3.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_19/JPG/en_US/05bcbcd92d923c4388f760fc30ee48e3.jpg', NULL),
(78, 4, 2, 3, '01HKAFJNPQRVXY2WYECAA963YP', 'Mighty Jinn', 'ALT_CORE_B_BR_19_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '98ca783a4d678e2a7840c2ee7af1e1f4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_19/JPG/en_US/98ca783a4d678e2a7840c2ee7af1e1f4.jpg', NULL),
(79, 4, 3, 3, '01HKAFJNPSVBX1DC1K0QVS55RZ', 'Mighty Jinn', 'ALT_CORE_B_BR_19_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '1447c2fa39d525e6315e92117e702204.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_19/JPG/en_US/1447c2fa39d525e6315e92117e702204.jpg', NULL),
(80, 4, 2, 2, '01HKAFJNPT9H2BP5V08AZ7EKE2', 'Atlas', 'ALT_CORE_B_BR_20_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'c1fbd958f973af3de273e7a387bfa108.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_20/JPG/en_US/c1fbd958f973af3de273e7a387bfa108.jpg', NULL),
(81, 4, 2, 3, '01HKAFJNPVJQ3D3YEZ8H5WM2Q9', 'Atlas', 'ALT_CORE_B_BR_20_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '856dd5310325dae5daa73c2645c5e4fc.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_20/JPG/en_US/856dd5310325dae5daa73c2645c5e4fc.jpg', NULL),
(82, 4, 4, 3, '01HKAFJNPXXMF3G8T7XEN6FCEF', 'Atlas', 'ALT_CORE_B_BR_20_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'fc669a899b27487427944484a97c25a3.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_20/JPG/en_US/fc669a899b27487427944484a97c25a3.jpg', NULL),
(83, 4, 2, 2, '01HKAFJNQ2MJ12NM3546H4TFTK', 'Shenlong', 'ALT_CORE_B_BR_22_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'b8fc4b5fbea4e1f62ecbcb6419f5313d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_22/JPG/en_US/b8fc4b5fbea4e1f62ecbcb6419f5313d.jpg', NULL),
(84, 4, 2, 3, '01HKAFJNQ3K58C591WE6BBCHAB', 'Shenlong', 'ALT_CORE_B_BR_22_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'cea93fdd713f5af7bfc0ea964760871c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_22/JPG/en_US/cea93fdd713f5af7bfc0ea964760871c.jpg', NULL),
(85, 4, 3, 3, '01HKAFJNQ6T0MY7SZ58F2K2BHG', 'Shenlong', 'ALT_CORE_B_BR_22_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '785dc539d9c213bf3678a9c988695f3b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_22/JPG/en_US/785dc539d9c213bf3678a9c988695f3b.jpg', NULL),
(86, 1, 2, 2, '01HKAFJNQK029K48Y1FD0P8Y9Q', 'Physical Training', 'ALT_CORE_B_BR_26_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '6789dfdd0db0886aa0888d5d6190ee82.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_26/JPG/en_US/6789dfdd0db0886aa0888d5d6190ee82.jpg', NULL),
(87, 1, 2, 3, '01HKAFJNQMHP7HDXQN3YVA445Z', 'Physical Training', 'ALT_CORE_B_BR_26_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '5cc7d9635a8f863ac65b3b06eb20880e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_26/JPG/en_US/5cc7d9635a8f863ac65b3b06eb20880e.jpg', NULL),
(88, 1, 6, 3, '01HKAFJNQPAZK24YWPG749K5BV', 'Physical Training', 'ALT_CORE_B_BR_26_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '372979dbfd7d5c5c29f3a21d224f6891.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_26/JPG/en_US/372979dbfd7d5c5c29f3a21d224f6891.jpg', NULL),
(89, 1, 2, 2, '01HKAFJNQVJQGZ7JRYY3MKJ2JD', 'Intimidation', 'ALT_CORE_B_BR_28_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'b964eb04798be810b32bc61807070019.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_28/JPG/en_US/b964eb04798be810b32bc61807070019.jpg', NULL),
(90, 1, 2, 3, '01HKAFJNQWJKHG49ANW52SQTMP', 'Intimidation', 'ALT_CORE_B_BR_28_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '7a5ebdac3d9c39d8b4bd03f63200969f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_28/JPG/en_US/7a5ebdac3d9c39d8b4bd03f63200969f.jpg', NULL),
(91, 1, 5, 3, '01HKAFJNQXP5HJSN0C880PQB2J', 'Intimidation', 'ALT_CORE_B_BR_28_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '56fda4a991a0fd3f6c98478ccad18721.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_28/JPG/en_US/56fda4a991a0fd3f6c98478ccad18721.jpg', NULL),
(92, 2, 2, 2, '01HKAFJNR2DXMWEAHB9C3RVJJ8', 'Haven, Bravos Bastion', 'ALT_CORE_B_BR_30_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '80b1055eb4f10650999b6beb0ad98114.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_30/JPG/en_US/80b1055eb4f10650999b6beb0ad98114.jpg', NULL),
(93, 2, 2, 3, '01HKAFJNR47NFQ0M5WDFWYPDV7', 'Haven, Bravos Bastion', 'ALT_CORE_B_BR_30_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'b7c7a4ff1dcfd5fb4748e626012efb52.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_30/JPG/en_US/b7c7a4ff1dcfd5fb4748e626012efb52.jpg', NULL),
(94, 2, 1, 3, '01HKAFJNR513GHT5HC6HS3AB73', 'Haven, Bravos Bastion', 'ALT_CORE_B_BR_30_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '3a3176c93887b2d57d845dd9423aca91.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_30/JPG/en_US/3a3176c93887b2d57d845dd9423aca91.jpg', NULL),
(95, 3, 2, 2, '01HKAFJNR513GHT5HC6HS3AB7B', 'Booda', 'ALT_CORE_B_BR_31_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '9b4cf8d59d25a2bf69796892057788c3.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_BR_31/JPG/en_US/9b4cf8d59d25a2bf69796892057788c3.jpg', NULL),
(96, 5, 3, 2, '01HKAFJNR7FQ4V2CWRWG1ZWVW5', 'Nevenka & Blotch', 'ALT_CORE_B_LY_01_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '01629e62f492c4861737f49ff45f57e2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_01/JPG/en_US/01629e62f492c4861737f49ff45f57e2.jpg', NULL),
(97, 5, 3, 2, '01HKAFJNR9Q01Y1N7HWWZJGC95', 'Auraq & Kibble', 'ALT_CORE_B_LY_02_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '3bcc90462a140aded512c9d1f208336c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_02/JPG/en_US/3bcc90462a140aded512c9d1f208336c.jpg', NULL),
(98, 5, 3, 2, '01HKAFJNRA3YZ6YZZ4S724E4B9', 'Fen & Crowbar', 'ALT_CORE_B_LY_03_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'f7f9659f979a9861432990c14323d0af.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_03/JPG/en_US/f7f9659f979a9861432990c14323d0af.jpg', NULL),
(99, 4, 3, 2, '01HKAFJNRJ05D5J6M8MP1ZS8Z4', 'Ouroboros Trickster', 'ALT_CORE_B_LY_06_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'df5a482ab68149db53e005bcd11e07fe.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_06/JPG/en_US/df5a482ab68149db53e005bcd11e07fe.jpg', NULL),
(100, 4, 3, 3, '01HKAFJNRM02Q64JVBG1QMD7E8', 'Ouroboros Trickster', 'ALT_CORE_B_LY_06_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'ed9d3263237ee6120dd92834d52edce1.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_06/JPG/en_US/ed9d3263237ee6120dd92834d52edce1.jpg', NULL),
(101, 4, 2, 3, '01HKAFJNRN3022D9Z2H5A327YV', 'Ouroboros Trickster', 'ALT_CORE_B_LY_06_R2', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '0610ab90790c9a5220e475c227f4fd8a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_06/JPG/en_US/0610ab90790c9a5220e475c227f4fd8a.jpg', NULL),
(102, 4, 3, 2, '01HKAFJNRPK5QXPGYFP1QA531T', 'Hathor', 'ALT_CORE_B_LY_07_C', '2024-04-04 16:37:12', '2024-04-04 16:37:12', '96b0b190cf2c2ab3d8d4e26951ff9b93.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_07/JPG/en_US/96b0b190cf2c2ab3d8d4e26951ff9b93.jpg', NULL),
(103, 4, 3, 3, '01HKAFJNRRKTMHNVHH21AQ1044', 'Hathor', 'ALT_CORE_B_LY_07_R1', '2024-04-04 16:37:12', '2024-04-04 16:37:12', 'e4581f5c812200cda0baa68abb1d5f90.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_07/JPG/en_US/e4581f5c812200cda0baa68abb1d5f90.jpg', NULL),
(104, 4, 5, 3, '01HKAFJNRS2TRTN4MHB83HBVTE', 'Hathor', 'ALT_CORE_B_LY_07_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '473a28ea3ad8115f581e2e17ab743d52.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_07/JPG/en_US/473a28ea3ad8115f581e2e17ab743d52.jpg', NULL),
(105, 4, 3, 2, '01HKAFJNRT9BS4DHQ8YD6C5DXV', 'Lyra Skald', 'ALT_CORE_B_LY_08_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'a3e0882de5289360a6783b085d641a47.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_08/JPG/en_US/a3e0882de5289360a6783b085d641a47.jpg', NULL),
(106, 4, 3, 3, '01HKAFJNRVD4NQ4ZE41SET9HNV', 'Lyra Skald', 'ALT_CORE_B_LY_08_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '5d116a2a2925e7eda9ed4a6a5e95eae4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_08/JPG/en_US/5d116a2a2925e7eda9ed4a6a5e95eae4.jpg', NULL),
(107, 4, 5, 3, '01HKAFJNRXVEFWR9AVDN9GYXPR', 'Lyra Skald', 'ALT_CORE_B_LY_08_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '19804117b5c5eb408049efef49dc9ac7.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_08/JPG/en_US/19804117b5c5eb408049efef49dc9ac7.jpg', NULL),
(108, 4, 3, 2, '01HKAFJNRYNF0NFR07RBAK583R', 'Tanuki', 'ALT_CORE_B_LY_09_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'd58471ce0ab23976756aea72db557c3a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_09/JPG/en_US/d58471ce0ab23976756aea72db557c3a.jpg', NULL),
(109, 4, 3, 3, '01HKAFJNRZM5AJJ9S4W583ZFXG', 'Tanuki', 'ALT_CORE_B_LY_09_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '6802e8b03fcf6e4dc17ab8247e0149bd.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_09/JPG/en_US/6802e8b03fcf6e4dc17ab8247e0149bd.jpg', NULL),
(110, 4, 2, 3, '01HKAFJNS0F8A303Y1H0JTFK5B', 'Tanuki', 'ALT_CORE_B_LY_09_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '98c3defb22467647c370e0f73b1792e0.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_09/JPG/en_US/98c3defb22467647c370e0f73b1792e0.jpg', NULL),
(111, 4, 3, 2, '01HKAFJNS2VZX7XXD9K4KMM5BS', 'Ouroboros Inkcaster', 'ALT_CORE_B_LY_10_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '51c1b22b5141cc648e0d68929f53729b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_10/JPG/en_US/51c1b22b5141cc648e0d68929f53729b.jpg', NULL),
(112, 4, 3, 3, '01HKAFJNS3HEXD782DX4CMTBSJ', 'Ouroboros Inkcaster', 'ALT_CORE_B_LY_10_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '95a269c64e88a1f6fad109ad7a441861.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_10/JPG/en_US/95a269c64e88a1f6fad109ad7a441861.jpg', NULL),
(113, 4, 1, 3, '01HKAFJNS4GPKW5BKN5P122NDG', 'Ouroboros Inkcaster', 'ALT_CORE_B_LY_10_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '245dbcd1f7b7f4df98bec4b46d078fdc.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_10/JPG/en_US/245dbcd1f7b7f4df98bec4b46d078fdc.jpg', NULL),
(114, 4, 3, 2, '01HKAFJNS6GV5SDW92XNAMFBAB', 'Esmeralda', 'ALT_CORE_B_LY_11_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'a540fb4aaaacf905ca7c0c2243cc29c8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_11/JPG/en_US/a540fb4aaaacf905ca7c0c2243cc29c8.jpg', NULL),
(115, 4, 3, 3, '01HKAFJNS7CZXXN07P6P34BEYQ', 'Esmeralda', 'ALT_CORE_B_LY_11_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '410d25c58ecde45650e2005f9cf9f2eb.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_11/JPG/en_US/410d25c58ecde45650e2005f9cf9f2eb.jpg', NULL),
(116, 4, 6, 3, '01HKAFJNS83YS7GJMCRSNPCAGJ', 'Esmeralda', 'ALT_CORE_B_LY_11_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '2b20bda6dad21be24e2f7f52c622a870.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_11/JPG/en_US/2b20bda6dad21be24e2f7f52c622a870.jpg', NULL),
(117, 4, 3, 2, '01HKAFJNS9H7TYP6KC8XF54X9H', 'Lyra Navigator', 'ALT_CORE_B_LY_12_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'feef363522115a5f8351ea466ad89f01.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_12/JPG/en_US/feef363522115a5f8351ea466ad89f01.jpg', NULL),
(118, 4, 3, 3, '01HKAFJNSBPWVAYB25ADVZS6KA', 'Lyra Navigator', 'ALT_CORE_B_LY_12_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '5d38b42da99343e93bd21d0e1711f32f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_12/JPG/en_US/5d38b42da99343e93bd21d0e1711f32f.jpg', NULL),
(119, 4, 2, 3, '01HKAFJNSCBPHMZWCR2SM3DJR3', 'Lyra Navigator', 'ALT_CORE_B_LY_12_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '0dc599706d897fbafaa2d0f5d2424b6f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_12/JPG/en_US/0dc599706d897fbafaa2d0f5d2424b6f.jpg', NULL),
(120, 4, 3, 2, '01HKAFJNSH2SJPAJRZ06FSFEVN', 'Lyra Cloth Dancer', 'ALT_CORE_B_LY_14_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '884a738030805c8d70ed4ed77fde1378.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_14/JPG/en_US/884a738030805c8d70ed4ed77fde1378.jpg', NULL),
(121, 4, 3, 3, '01HKAFJNSJVEAHBQPFV72EHYAC', 'Lyra Cloth Dancer', 'ALT_CORE_B_LY_14_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'd5dd6a0ce934f5febdd822d536aeb011.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_14/JPG/en_US/d5dd6a0ce934f5febdd822d536aeb011.jpg', NULL),
(122, 4, 6, 3, '01HKAFJNSKAN2Q96DCSA6C0WPB', 'Lyra Cloth Dancer', 'ALT_CORE_B_LY_14_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '229c5602f2b4f47eb0025c669283b925.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_14/JPG/en_US/229c5602f2b4f47eb0025c669283b925.jpg', NULL),
(123, 4, 3, 2, '01HKAFJNSSMHH7SMRF247QQJGG', 'Lyra Chronicler', 'ALT_CORE_B_LY_16_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'f62cad9e3e52c0f849a30ec726f5b81b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_16/JPG/en_US/f62cad9e3e52c0f849a30ec726f5b81b.jpg', NULL),
(124, 4, 3, 3, '01HKAFJNSTZV398AQ95F3HNEAC', 'Lyra Chronicler', 'ALT_CORE_B_LY_16_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'e18223a6edd0b1278425710c56949c6d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_16/JPG/en_US/e18223a6edd0b1278425710c56949c6d.jpg', NULL),
(125, 4, 1, 3, '01HKAFJNSVRYWCHAYZR7ZA8TF1', 'Lyra Chronicler', 'ALT_CORE_B_LY_16_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'd8f7b92d589a96e4121458a7af79d36f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_16/JPG/en_US/d8f7b92d589a96e4121458a7af79d36f.jpg', NULL),
(126, 4, 3, 2, '01HKAFJNSW9GTXJQTNKPE1PPB8', 'Ouroboros Croupier', 'ALT_CORE_B_LY_17_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'eb6bbff212d2490e78efc7f81956c56d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_17/JPG/en_US/eb6bbff212d2490e78efc7f81956c56d.jpg', NULL),
(127, 4, 3, 3, '01HKAFJNSYB8PGR0BNG6N98MT3', 'Ouroboros Croupier', 'ALT_CORE_B_LY_17_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '9c248f74c54652982d60072771bda4fa.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_17/JPG/en_US/9c248f74c54652982d60072771bda4fa.jpg', NULL),
(128, 4, 1, 3, '01HKAFJNSZ2KW62ACV1P9PHF34', 'Ouroboros Croupier', 'ALT_CORE_B_LY_17_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '454bdf00c89085420d1ac1d6e96b5687.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_17/JPG/en_US/454bdf00c89085420d1ac1d6e96b5687.jpg', NULL),
(129, 4, 3, 2, '01HKAFJNT0VS4HZFNRE806FPG6', 'The Hatter', 'ALT_CORE_B_LY_18_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '3d10345a94eabb922b7590285aab7046.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_18/JPG/en_US/3d10345a94eabb922b7590285aab7046.jpg', NULL),
(130, 4, 3, 3, '01HKAFJNT211WA6YKPKMKK3D3B', 'The Hatter', 'ALT_CORE_B_LY_18_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '4c431baec7df1bc6835e9480330f458a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_18/JPG/en_US/4c431baec7df1bc6835e9480330f458a.jpg', NULL),
(131, 4, 2, 3, '01HKAFJNT3W24Y53XMCTDJYVMQ', 'The Hatter', 'ALT_CORE_B_LY_18_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'fabd40ce96f42ae4a91c5627d0f8f7d5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_18/JPG/en_US/fabd40ce96f42ae4a91c5627d0f8f7d5.jpg', NULL),
(132, 4, 3, 2, '01HKAFJNT8J5APJTKJ06DK7JRV', 'Asmodeus', 'ALT_CORE_B_LY_20_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '49348f2439bf0ab45e6fcfd92313c0ea.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_20/JPG/en_US/49348f2439bf0ab45e6fcfd92313c0ea.jpg', NULL),
(133, 4, 3, 3, '01HKAFJNT9F7ZPBDEN7ZWP12KQ', 'Asmodeus', 'ALT_CORE_B_LY_20_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '0fdeca5d4a57b107447522c535a1b6c6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_20/JPG/en_US/0fdeca5d4a57b107447522c535a1b6c6.jpg', NULL),
(134, 4, 2, 3, '01HKAFJNTAJJ2WWCX17E3ZACQY', 'Asmodeus', 'ALT_CORE_B_LY_20_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'ec27da87bfa907708b994929cab21711.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_20/JPG/en_US/ec27da87bfa907708b994929cab21711.jpg', NULL),
(135, 1, 3, 2, '01HKAFJNTFYQ8A3GJM31J0288S', 'A Cappella Training', 'ALT_CORE_B_LY_22_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '02f06d08e67e9a4fbbbcdbc30865bd4c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_22/JPG/en_US/02f06d08e67e9a4fbbbcdbc30865bd4c.jpg', NULL),
(136, 1, 3, 3, '01HKAFJNTHZR71NY0PQ69ZK7C1', 'A Cappella Training', 'ALT_CORE_B_LY_22_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'c6ba22e5ac126b7e01515d757bff9768.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_22/JPG/en_US/c6ba22e5ac126b7e01515d757bff9768.jpg', NULL),
(137, 1, 6, 3, '01HKAFJNTJRKQSRTMKP80DAGS1', 'A Cappella Training', 'ALT_CORE_B_LY_22_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '2723e898ca01cdb5e567096bbaf2772e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_22/JPG/en_US/2723e898ca01cdb5e567096bbaf2772e.jpg', NULL),
(138, 1, 3, 2, '01HKAFJNTVHPAY602NNAR47PXK', 'All In!', 'ALT_CORE_B_LY_25_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'b9bebd8514db410547a9c7a3be40242f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_25/JPG/en_US/b9bebd8514db410547a9c7a3be40242f.jpg', NULL),
(139, 1, 3, 3, '01HKAFJNTWSQ82B87FT87F3MAD', 'All In!', 'ALT_CORE_B_LY_25_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '80a400e12356131c26d2219f7c5c8d26.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_25/JPG/en_US/80a400e12356131c26d2219f7c5c8d26.jpg', NULL),
(140, 1, 2, 3, '01HKAFJNTXY3EQ7B15QSA5TBPX', 'All In!', 'ALT_CORE_B_LY_25_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '2ccdc6aa787a349414d0ed77c305d46e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_25/JPG/en_US/2ccdc6aa787a349414d0ed77c305d46e.jpg', NULL),
(141, 1, 3, 2, '01HKAFJNTZDY2HEFBY7P2MQVR2', 'Paint Prison', 'ALT_CORE_B_LY_26_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'a82da0b9c75a82a9cb429456f3d1733f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_26/JPG/en_US/a82da0b9c75a82a9cb429456f3d1733f.jpg', NULL),
(142, 1, 3, 3, '01HKAFJNV08Q5EX0PD5P4KXG55', 'Paint Prison', 'ALT_CORE_B_LY_26_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '69e8e563c638a96f4b2eb5d16050f47c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_26/JPG/en_US/69e8e563c638a96f4b2eb5d16050f47c.jpg', NULL),
(143, 1, 6, 3, '01HKAFJNV1KKNWWPK4DNZPYH8R', 'Paint Prison', 'ALT_CORE_B_LY_26_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '93572f26822eb30132222e90eaecefd6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_26/JPG/en_US/93572f26822eb30132222e90eaecefd6.jpg', NULL),
(144, 2, 3, 2, '01HKAFJNVE38T73ZM5KSRFZEAA', 'The Ouroboros, Lyra Bastion', 'ALT_CORE_B_LY_30_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '3dfb180e43fa88c5baa6b094e8e4a9f6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_30/JPG/en_US/3dfb180e43fa88c5baa6b094e8e4a9f6.jpg', NULL),
(145, 2, 3, 3, '01HKAFJNVFMC9N8GSX9VAB8R7W', 'The Ouroboros, Lyra Bastion', 'ALT_CORE_B_LY_30_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '54a3e18b5a74901c2f304fc2059edaf6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_30/JPG/en_US/54a3e18b5a74901c2f304fc2059edaf6.jpg', NULL),
(146, 2, 1, 3, '01HKAFJNVHVRVXE10YHES3GSYV', 'The Ouroboros, Lyra Bastion', 'ALT_CORE_B_LY_30_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '28cecb5043083b18ef076e078e043428.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_LY_30/JPG/en_US/28cecb5043083b18ef076e078e043428.jpg', NULL),
(147, 5, 6, 2, '01HKAFJP60XPBBEKX3MV3SJ8HH', 'Teija & Nauraa', 'ALT_CORE_B_MU_01_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'f7a75cbde161ca62bd43d53f1b7ba46f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_01/JPG/en_US/f7a75cbde161ca62bd43d53f1b7ba46f.jpg', NULL),
(148, 5, 6, 2, '01HKAFJP62TD3J97G732DPM1TA', 'Arjun & Spike', 'ALT_CORE_B_MU_02_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'c1c6a294343b3ae9c7ce4b9773eac4cc.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_02/JPG/en_US/c1c6a294343b3ae9c7ce4b9773eac4cc.jpg', NULL),
(149, 5, 6, 2, '01HKAFJP63PYSKCM61GJX4RC4G', 'Rin & Orchid', 'ALT_CORE_B_MU_03_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '28a7ab8d0bfbc92f031293d005c610e5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_03/JPG/en_US/28a7ab8d0bfbc92f031293d005c610e5.jpg', NULL),
(150, 4, 6, 2, '01HKAFJP68TMN2B0BC20KNHJB0', 'Kitsune', 'ALT_CORE_B_MU_05_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '71083af2e6704097a3c54ebe5fb5af73.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_05/JPG/en_US/71083af2e6704097a3c54ebe5fb5af73.jpg', NULL),
(151, 4, 6, 3, '01HKAFJP69FN84B18QJJ89KGVW', 'Kitsune', 'ALT_CORE_B_MU_05_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'eefc8f5701fcd8fb3abe3053a87b44c8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_05/JPG/en_US/eefc8f5701fcd8fb3abe3053a87b44c8.jpg', NULL),
(152, 4, 2, 3, '01HKAFJP6AD9SZYG6JPDQ0CGWK', 'Kitsune', 'ALT_CORE_B_MU_05_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '4512c72219d508415905cb3f2e7fd6fd.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_05/JPG/en_US/4512c72219d508415905cb3f2e7fd6fd.jpg', NULL),
(153, 4, 6, 2, '01HKAFJP6B8WPEHW3MQDQ86C1Z', 'Spindle Harvesters', 'ALT_CORE_B_MU_06_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '6ba762d4e94127b3d5102814f69da664.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_06/JPG/en_US/6ba762d4e94127b3d5102814f69da664.jpg', NULL),
(154, 4, 6, 3, '01HKAFJP6D1KDKXM7JJGQAXA8N', 'Spindle Harvesters', 'ALT_CORE_B_MU_06_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '75569a16faa66f7cfb10eeb8114c58a8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_06/JPG/en_US/75569a16faa66f7cfb10eeb8114c58a8.jpg', NULL),
(155, 4, 5, 3, '01HKAFJP6EPT18K3EFX4D7C236', 'Spindle Harvesters', 'ALT_CORE_B_MU_06_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '018cd18475e235a87262b7c81d824eba.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_06/JPG/en_US/018cd18475e235a87262b7c81d824eba.jpg', NULL),
(156, 4, 6, 2, '01HKAFJP6KEGHR5NG4898VAABN', 'Sneezer Shroom', 'ALT_CORE_B_MU_08_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'f967565147fca4c5c1b467a5ff765d29.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_08/JPG/en_US/f967565147fca4c5c1b467a5ff765d29.jpg', NULL),
(157, 4, 6, 3, '01HKAFJP6MWRE6CZTH46K7CXBQ', 'Sneezer Shroom', 'ALT_CORE_B_MU_08_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '38030ac2b2e4832bc920ab22d2ddd188.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_08/JPG/en_US/38030ac2b2e4832bc920ab22d2ddd188.jpg', NULL),
(158, 4, 5, 3, '01HKAFJP6NMKS5F5K9FYZFRHQW', 'Sneezer Shroom', 'ALT_CORE_B_MU_08_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'c8e971c332d20b9bb8835a4c020fad51.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_08/JPG/en_US/c8e971c332d20b9bb8835a4c020fad51.jpg', NULL),
(159, 4, 6, 2, '01HKAFJP6TXCTJQ38SQSVJT1DY', 'Yong-Su, Verdant Weaver', 'ALT_CORE_B_MU_10_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'f424adb779d387b484b28d3b2b0af1d9.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_10/JPG/en_US/f424adb779d387b484b28d3b2b0af1d9.jpg', NULL),
(160, 4, 6, 3, '01HKAFJP6WG85VKHHQWF9E3PJM', 'Yong-Su, Verdant Weaver', 'ALT_CORE_B_MU_10_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '16e3f1d3e098b19e4402f50ef7970cef.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_10/JPG/en_US/16e3f1d3e098b19e4402f50ef7970cef.jpg', NULL),
(161, 4, 3, 3, '01HKAFJP6XCWTCBF2A0RJ148FE', 'Yong-Su, Verdant Weaver', 'ALT_CORE_B_MU_10_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '8709ad87586e57ce817950221d5594d4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_10/JPG/en_US/8709ad87586e57ce817950221d5594d4.jpg', NULL),
(162, 4, 6, 2, '01HKAFJP6YED8JQ7KYDKBN4B5A', 'Inari', 'ALT_CORE_B_MU_11_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'd9d76dc1f9e413abc27d32bfe9da8add.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_11/JPG/en_US/d9d76dc1f9e413abc27d32bfe9da8add.jpg', NULL),
(163, 4, 6, 3, '01HKAFJP6Z0JYFVTJ3H5QJ8W6C', 'Inari', 'ALT_CORE_B_MU_11_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '286e63550ebdc255b6c4bc1c2cad9917.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_11/JPG/en_US/286e63550ebdc255b6c4bc1c2cad9917.jpg', NULL),
(164, 4, 1, 3, '01HKAFJP71RD5S4FM209A9D2GG', 'Inari', 'ALT_CORE_B_MU_11_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'af5e8f32ec8aa78e9ee754eab0df2449.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_11/JPG/en_US/af5e8f32ec8aa78e9ee754eab0df2449.jpg', NULL),
(165, 4, 6, 2, '01HKAFJP723B4Y2G5MJTBGD0ZS', 'Daughter of Yggdrasil', 'ALT_CORE_B_MU_12_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', 'b8a8cb23420794e4a583cb767d0fb676.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_12/JPG/en_US/b8a8cb23420794e4a583cb767d0fb676.jpg', NULL),
(166, 4, 6, 3, '01HKAFJP737919YWKSJZS6THP1', 'Daughter of Yggdrasil', 'ALT_CORE_B_MU_12_R1', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '278c59d4b30136cab7e89ed0bdc64527.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_12/JPG/en_US/278c59d4b30136cab7e89ed0bdc64527.jpg', NULL);
INSERT INTO `card` (`id`, `card_type_id`, `main_faction_id`, `rarity_id`, `altered_id`, `name`, `reference`, `created_at`, `updated_at`, `picture`, `image_path`, `card_set_id`) VALUES
(167, 4, 1, 3, '01HKAFJP753P506VKWSSADKHS2', 'Daughter of Yggdrasil', 'ALT_CORE_B_MU_12_R2', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '8d18661567d013c0528ffa7e5509d7c3.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_12/JPG/en_US/8d18661567d013c0528ffa7e5509d7c3.jpg', NULL),
(168, 4, 6, 2, '01HKAFJP76ZQBYMEQQE5ZX60YN', 'Muna Druid', 'ALT_CORE_B_MU_13_C', '2024-04-04 16:37:13', '2024-04-04 16:37:13', '9d7ce8bb90521efcde674907f06fb970.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_13/JPG/en_US/9d7ce8bb90521efcde674907f06fb970.jpg', NULL),
(169, 4, 6, 3, '01HKAFJP77PADR6ZZFBCTYVMTA', 'Muna Druid', 'ALT_CORE_B_MU_13_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '3b0209772b20e5ccda14187afc9cdd7b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_13/JPG/en_US/3b0209772b20e5ccda14187afc9cdd7b.jpg', NULL),
(170, 4, 1, 3, '01HKAFJP79Y48G5WPQJF0RY4B0', 'Muna Druid', 'ALT_CORE_B_MU_13_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'c5fc0cf39c5fc8a76e03047e3fc8b3ee.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_13/JPG/en_US/c5fc0cf39c5fc8a76e03047e3fc8b3ee.jpg', NULL),
(171, 4, 6, 2, '01HKAFJP7AZNRRKWN246QZQ5MG', 'Cernunnos', 'ALT_CORE_B_MU_14_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'c9df4ddc749dcc589f48d0220d8d15cd.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_14/JPG/en_US/c9df4ddc749dcc589f48d0220d8d15cd.jpg', NULL),
(172, 4, 6, 3, '01HKAFJP7BX6Q88KX2DM8V2NC9', 'Cernunnos', 'ALT_CORE_B_MU_14_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '1e54f1e929f8226e931d4d032200d306.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_14/JPG/en_US/1e54f1e929f8226e931d4d032200d306.jpg', NULL),
(173, 4, 3, 3, '01HKAFJP7DRSAKBMZ5S7GSTNHW', 'Cernunnos', 'ALT_CORE_B_MU_14_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '00d10f41d88c510aefb72b33f6918fca.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_14/JPG/en_US/00d10f41d88c510aefb72b33f6918fca.jpg', NULL),
(174, 4, 6, 2, '01HKAFJP7ECSECV52XPPHY5KPZ', 'Dracaena', 'ALT_CORE_B_MU_15_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '71a18b60e1e62a2a3032f0dd4d1558a4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_15/JPG/en_US/71a18b60e1e62a2a3032f0dd4d1558a4.jpg', NULL),
(175, 4, 6, 3, '01HKAFJP7FJ8HMHWBJCKH3WYAA', 'Dracaena', 'ALT_CORE_B_MU_15_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '381206536b170a5b88cf0d7e271b7f0f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_15/JPG/en_US/381206536b170a5b88cf0d7e271b7f0f.jpg', NULL),
(176, 4, 2, 3, '01HKAFJP7HB5N0HP24RE700J04', 'Dracaena', 'ALT_CORE_B_MU_15_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'f5b5dd3e1cfa8606653ff65ee13db5fe.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_15/JPG/en_US/f5b5dd3e1cfa8606653ff65ee13db5fe.jpg', NULL),
(177, 4, 6, 2, '01HKAFJP7TYBWTB4BEJKCC9NM8', 'Parvati', 'ALT_CORE_B_MU_18_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '9872398b42fc5a7498e3559cb29bfbfd.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_18/JPG/en_US/9872398b42fc5a7498e3559cb29bfbfd.jpg', NULL),
(178, 4, 6, 3, '01HKAFJP7WC2Z34ZMP0RCXNERP', 'Parvati', 'ALT_CORE_B_MU_18_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '26e6dcadd7b20519798ce0bbe7015f0d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_18/JPG/en_US/26e6dcadd7b20519798ce0bbe7015f0d.jpg', NULL),
(179, 4, 2, 3, '01HKAFJP7X6BSZWDZ4X70D5QDZ', 'Parvati', 'ALT_CORE_B_MU_18_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '8cc8cbc8678de14d034cce8fbbabd583.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_18/JPG/en_US/8cc8cbc8678de14d034cce8fbbabd583.jpg', NULL),
(180, 4, 6, 2, '01HKAFJP8281DGVMXCKFZTYMXB', 'Coniferal Coneman', 'ALT_CORE_B_MU_20_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'c1ebb4c29bf5cbb34325cd0d14030d7c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_20/JPG/en_US/c1ebb4c29bf5cbb34325cd0d14030d7c.jpg', NULL),
(181, 4, 6, 3, '01HKAFJP837HTTKPVEKM9FBW5N', 'Coniferal Coneman', 'ALT_CORE_B_MU_20_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'a06bfc884cef1c819cab74d1773008ee.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_20/JPG/en_US/a06bfc884cef1c819cab74d1773008ee.jpg', NULL),
(182, 4, 3, 3, '01HKAFJP85JCCQ72V7VNMTP4Z8', 'Coniferal Coneman', 'ALT_CORE_B_MU_20_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '76fdbae59f8306bf82d9cebb522e2e41.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_20/JPG/en_US/76fdbae59f8306bf82d9cebb522e2e41.jpg', NULL),
(183, 1, 6, 2, '01HKAFJP8VWNG4V1NQ4CX53MT2', 'Meditation Training', 'ALT_CORE_B_MU_25_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '6670cdd9d0c8c79e2aa7667152526c62.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_25/JPG/en_US/6670cdd9d0c8c79e2aa7667152526c62.jpg', NULL),
(184, 1, 6, 3, '01HKAFJP8XWX78G2RXA8Y55JGA', 'Meditation Training', 'ALT_CORE_B_MU_25_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '4a42b53636b48a4627b8e17f3d74f907.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_25/JPG/en_US/4a42b53636b48a4627b8e17f3d74f907.jpg', NULL),
(185, 1, 5, 3, '01HKAFJP8YKAC78Q7Z9PVXRNSP', 'Meditation Training', 'ALT_CORE_B_MU_25_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '19393ac07dc16ef40a3428548fd47a45.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_25/JPG/en_US/19393ac07dc16ef40a3428548fd47a45.jpg', NULL),
(186, 1, 6, 2, '01HKAFJP97BZW7YXBMD6NRW25Y', 'Nurture', 'ALT_CORE_B_MU_27_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '9ceda1070c8f64fb02ebae21414d6fbf.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_27/JPG/en_US/9ceda1070c8f64fb02ebae21414d6fbf.jpg', NULL),
(187, 1, 6, 3, '01HKAFJP98G4M5ETA8194W2PT9', 'Nurture', 'ALT_CORE_B_MU_27_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'fd2fb49c5cd04d0dd903170b3ddd9ab6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_27/JPG/en_US/fd2fb49c5cd04d0dd903170b3ddd9ab6.jpg', NULL),
(188, 1, 4, 3, '01HKAFJP99YYMKVM7PT675HXBF', 'Nurture', 'ALT_CORE_B_MU_27_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '8ee2ed33d2532e244ebf012a7555c92e.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_27/JPG/en_US/8ee2ed33d2532e244ebf012a7555c92e.jpg', NULL),
(189, 1, 6, 2, '01HKAFJP9BFQK80HSF5J1H3631', 'Beauty Sleep', 'ALT_CORE_B_MU_28_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '269a6e3fcf9af62b8fbb1a46466067b2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_28/JPG/en_US/269a6e3fcf9af62b8fbb1a46466067b2.jpg', NULL),
(190, 1, 6, 3, '01HKAFJP9D5CGGY199RT46Q33K', 'Beauty Sleep', 'ALT_CORE_B_MU_28_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '1284fa97b4ed8fafc3b0de5ac2717271.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_28/JPG/en_US/1284fa97b4ed8fafc3b0de5ac2717271.jpg', NULL),
(191, 1, 5, 3, '01HKAFJP9G03G7NKDT8MX7AC0W', 'Beauty Sleep', 'ALT_CORE_B_MU_28_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '812bc5e55d11a6dd458204917db0aa86.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_28/JPG/en_US/812bc5e55d11a6dd458204917db0aa86.jpg', NULL),
(192, 2, 6, 2, '01HKAFJP9S96TB9RED5MAJ5VJK', 'The Spindle, Muna Bastion', 'ALT_CORE_B_MU_30_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'f7d2bd4895e4ed839a17f4921d4c8386.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_30/JPG/en_US/f7d2bd4895e4ed839a17f4921d4c8386.jpg', NULL),
(193, 2, 6, 3, '01HKAFJP9WSARBDVAQHW9DDZBD', 'The Spindle, Muna Bastion', 'ALT_CORE_B_MU_30_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'd6bb1ed424e5a93e2f81be06cc06819a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_30/JPG/en_US/d6bb1ed424e5a93e2f81be06cc06819a.jpg', NULL),
(194, 2, 2, 3, '01HKAFJPA9G82W14YW1E599T13', 'The Spindle, Muna Bastion', 'ALT_CORE_B_MU_30_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'd310857eaae058a30d90b490df950077.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_MU_30/JPG/en_US/d310857eaae058a30d90b490df950077.jpg', NULL),
(195, 5, 4, 2, '01HKAFJNVK19S8CP6JE98T9T4W', 'Sigismar & Wingspan', 'ALT_CORE_B_OR_01_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '949b429181a983f2b79f9053bb1c3272.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_01/JPG/en_US/949b429181a983f2b79f9053bb1c3272.jpg', NULL),
(196, 5, 4, 2, '01HKAFJNVMAN704B02KK1KCF7N', 'Waru & Mack', 'ALT_CORE_B_OR_02_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '6d2c97d9da8129b745d6aa910fb26427.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_02/JPG/en_US/6d2c97d9da8129b745d6aa910fb26427.jpg', NULL),
(197, 5, 4, 2, '01HKAFJNVPFVAY01N58403BPSS', 'Gulrang & Tocsin', 'ALT_CORE_B_OR_03_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'cd732a63be8513738243dfa2f8b2f5ac.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_03/JPG/en_US/cd732a63be8513738243dfa2f8b2f5ac.jpg', NULL),
(198, 4, 4, 2, '01HKAFJNVV9G8F9NYRHDB7BNBV', 'Ordis Trooper', 'ALT_CORE_B_OR_05_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'c88fb57a547449906c7feb4304b26351.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_05/JPG/en_US/c88fb57a547449906c7feb4304b26351.jpg', NULL),
(199, 4, 4, 3, '01HKAFJNVWHD8CV73AJDJ3ZGCW', 'Ordis Trooper', 'ALT_CORE_B_OR_05_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'ac943ef35734273816cfe342281551db.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_05/JPG/en_US/ac943ef35734273816cfe342281551db.jpg', NULL),
(200, 4, 5, 3, '01HKAFJNVYB3AM793X0X10DHCQ', 'Ordis Trooper', 'ALT_CORE_B_OR_05_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '344a687541d5d19519a6e02a1d7119b0.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_05/JPG/en_US/344a687541d5d19519a6e02a1d7119b0.jpg', NULL),
(201, 4, 4, 2, '01HKAFJNVZ3F9XE327A32HV25F', 'Ordis Cadets', 'ALT_CORE_B_OR_06_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '9bee7ec498940bafe511d800ac8ea15b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_06/JPG/en_US/9bee7ec498940bafe511d800ac8ea15b.jpg', NULL),
(202, 4, 4, 3, '01HKAFJNW0AVQW2EFZ1KT0974T', 'Ordis Cadets', 'ALT_CORE_B_OR_06_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '45810e5146cc20c5886d791de3f284ca.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_06/JPG/en_US/45810e5146cc20c5886d791de3f284ca.jpg', NULL),
(203, 4, 5, 3, '01HKAFJNW20P6N3JSHTKYQ1EH1', 'Ordis Cadets', 'ALT_CORE_B_OR_06_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'c18b9c8e568e414a526d55d112c2ca4a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_06/JPG/en_US/c18b9c8e568e414a526d55d112c2ca4a.jpg', NULL),
(204, 4, 4, 2, '01HKAFJNW326V7QMZTRJMEBB6R', 'Monolith Rune-Scribe', 'ALT_CORE_B_OR_07_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '71122acd27ba2eba691837761ebe1240.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_07/JPG/en_US/71122acd27ba2eba691837761ebe1240.jpg', NULL),
(205, 4, 4, 3, '01HKAFJNW4GKZ5QKM6R97XMC1B', 'Monolith Rune-Scribe', 'ALT_CORE_B_OR_07_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'cc942970bac7ce045b0ec379546d7900.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_07/JPG/en_US/cc942970bac7ce045b0ec379546d7900.jpg', NULL),
(206, 4, 1, 3, '01HKAFJNW5YKEV36XT0PR17XAG', 'Monolith Rune-Scribe', 'ALT_CORE_B_OR_07_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '6d7971989797385dfbd4873b7ff4e12f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_07/JPG/en_US/6d7971989797385dfbd4873b7ff4e12f.jpg', NULL),
(207, 4, 4, 2, '01HKAFJNWB8D6DCFQC4N7PR4BE', 'The Frog Prince', 'ALT_CORE_B_OR_09_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '0980657df54e03c09bf16dc5fc1cc7ff.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_09/JPG/en_US/0980657df54e03c09bf16dc5fc1cc7ff.jpg', NULL),
(208, 4, 4, 3, '01HKAFJNWCJD1RC1RXJX4GTVCN', 'The Frog Prince', 'ALT_CORE_B_OR_09_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'e361d6ca0e1085d44a7357d025fc6733.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_09/JPG/en_US/e361d6ca0e1085d44a7357d025fc6733.jpg', NULL),
(209, 4, 1, 3, '01HKAFJNWDGE4K9Z243D7MV8NP', 'The Frog Prince', 'ALT_CORE_B_OR_09_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '8e06291a98466210808e56ac5b48032d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_09/JPG/en_US/8e06291a98466210808e56ac5b48032d.jpg', NULL),
(210, 4, 4, 2, '01HKAFJNWE9HVXTE31X1VP2TVV', 'Monolith Archivist', 'ALT_CORE_B_OR_10_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '76af8f1d9ec20f39fd7c167316227238.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_10/JPG/en_US/76af8f1d9ec20f39fd7c167316227238.jpg', NULL),
(211, 4, 4, 3, '01HKAFJNWGW79AHNQE796W64RG', 'Monolith Archivist', 'ALT_CORE_B_OR_10_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'caf8d4de84fc005592e44aafccae41fb.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_10/JPG/en_US/caf8d4de84fc005592e44aafccae41fb.jpg', NULL),
(212, 4, 5, 3, '01HKAFJNWHG6A0WJ9ACPEKKPBZ', 'Monolith Archivist', 'ALT_CORE_B_OR_10_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '4c86d4de4defac7525e702d359d2987d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_10/JPG/en_US/4c86d4de4defac7525e702d359d2987d.jpg', NULL),
(213, 4, 4, 2, '01HKAFJNWTWQDQCCMFNMP255P8', 'Ordis Gatekeeper', 'ALT_CORE_B_OR_13_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '5f051a9bda8dea673bd6442cb1a4ea4a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_13/JPG/en_US/5f051a9bda8dea673bd6442cb1a4ea4a.jpg', NULL),
(214, 4, 4, 3, '01HKAFJNWVDRFXZHE2KNRA38GF', 'Ordis Gatekeeper', 'ALT_CORE_B_OR_13_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '0582d5930d423d756f4e81fc7eb2eab6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_13/JPG/en_US/0582d5930d423d756f4e81fc7eb2eab6.jpg', NULL),
(215, 4, 6, 3, '01HKAFJNWX3XB725WMGFNBX15D', 'Ordis Gatekeeper', 'ALT_CORE_B_OR_13_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'd1088696beb8fa21fd12fa1a125db43d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_13/JPG/en_US/d1088696beb8fa21fd12fa1a125db43d.jpg', NULL),
(216, 4, 4, 2, '01HKAFJNWYMJ61GVP4T4KWNF4S', 'Ordis Spy', 'ALT_CORE_B_OR_14_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'ed70660d417244f825deb5292dec36c2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_14/JPG/en_US/ed70660d417244f825deb5292dec36c2.jpg', NULL),
(217, 4, 4, 3, '01HKAFJNWZWQR0NHBDZTNRD5JR', 'Ordis Spy', 'ALT_CORE_B_OR_14_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '1afe6ce083f83ad1ed2d01aab83b641f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_14/JPG/en_US/1afe6ce083f83ad1ed2d01aab83b641f.jpg', NULL),
(218, 4, 2, 3, '01HKAFJNX1GMGG6QAX5GFBHQ67', 'Ordis Spy', 'ALT_CORE_B_OR_14_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'ba7a5e2c232327c12e69eda4b3cf2d8c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_14/JPG/en_US/ba7a5e2c232327c12e69eda4b3cf2d8c.jpg', NULL),
(219, 4, 4, 2, '01HKAFJNX299QX65HRFCDTWD0D', 'Kakoba, Legion Commander', 'ALT_CORE_B_OR_15_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '5ac198f418bc0360bbd44727e6bdc8ce.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_15/JPG/en_US/5ac198f418bc0360bbd44727e6bdc8ce.jpg', NULL),
(220, 4, 4, 3, '01HKAFJNX3212FAJKW2KRYFGG0', 'Kakoba, Legion Commander', 'ALT_CORE_B_OR_15_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '3a742f909e630d67322ef8b60ee77cde.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_15/JPG/en_US/3a742f909e630d67322ef8b60ee77cde.jpg', NULL),
(221, 4, 6, 3, '01HKAFJNX4KM6GAJZTZ1J2Q6AG', 'Kakoba, Legion Commander', 'ALT_CORE_B_OR_15_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'b93b91255c44ba925de3f5e0c4f2e0ba.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_15/JPG/en_US/b93b91255c44ba925de3f5e0c4f2e0ba.jpg', NULL),
(222, 4, 4, 2, '01HKAFJNXA8N8M8WQ1VCFXE012', 'Jeanne d\'Arc', 'ALT_CORE_B_OR_17_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '4231f9dcd4d6049164a23fd1403eb41c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_17/JPG/en_US/4231f9dcd4d6049164a23fd1403eb41c.jpg', NULL),
(223, 4, 4, 3, '01HKAFJNXBP13QXETG5RG5Q87Z', 'Jeanne d\'Arc', 'ALT_CORE_B_OR_17_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '2bb530b8dddf43fdccc8a6e4d5dc3890.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_17/JPG/en_US/2bb530b8dddf43fdccc8a6e4d5dc3890.jpg', NULL),
(224, 4, 1, 3, '01HKAFJNXCJD1MYE5RKPWSDAPG', 'Jeanne d\'Arc', 'ALT_CORE_B_OR_17_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '96c86c0a7e692d912c517191b9b86a09.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_17/JPG/en_US/96c86c0a7e692d912c517191b9b86a09.jpg', NULL),
(225, 4, 4, 2, '01HKAFJNXSTC7P16XTRBNP9K1E', 'Robin Hood', 'ALT_CORE_B_OR_21_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '4d8e1c90f1b02550fa72cf8bc6908cc9.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_21/JPG/en_US/4d8e1c90f1b02550fa72cf8bc6908cc9.jpg', NULL),
(226, 4, 4, 3, '01HKAFJNXT2E6ST9T84CE1NSGF', 'Robin Hood', 'ALT_CORE_B_OR_21_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'fb3d78d2c43bd38288369457c032c4bd.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_21/JPG/en_US/fb3d78d2c43bd38288369457c032c4bd.jpg', NULL),
(227, 4, 3, 3, '01HKAFJNXW0N78CJ5BZTRDXYJE', 'Robin Hood', 'ALT_CORE_B_OR_21_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'b24c4afd51c34fbb396b1a672522e1d2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_21/JPG/en_US/b24c4afd51c34fbb396b1a672522e1d2.jpg', NULL),
(228, 1, 4, 2, '01HKAFJNY1NTF1W3G2JMD35NFS', 'Charge!', 'ALT_CORE_B_OR_23_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'eb0e8b22b0310c2d3313a7c4d186c689.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_23/JPG/en_US/eb0e8b22b0310c2d3313a7c4d186c689.jpg', NULL),
(229, 1, 4, 3, '01HKAFJNY2TMMBFNTAB3PG76BG', 'Charge!', 'ALT_CORE_B_OR_23_R1', '2024-04-04 16:37:14', '2024-04-04 16:37:14', 'ad21f5750f19baa4bb05e2fc41d7a6cb.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_23/JPG/en_US/ad21f5750f19baa4bb05e2fc41d7a6cb.jpg', NULL),
(230, 1, 6, 3, '01HKAFJNY3RFK2Y3M3R0AXH1RV', 'Charge!', 'ALT_CORE_B_OR_23_R2', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '945706e3b80a9ef1e8b1cb1da75f3e2f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_23/JPG/en_US/945706e3b80a9ef1e8b1cb1da75f3e2f.jpg', NULL),
(231, 1, 4, 2, '01HKAFJNY9D5NDM96EZTV7DXWC', 'Sticky Note Seals', 'ALT_CORE_B_OR_25_C', '2024-04-04 16:37:14', '2024-04-04 16:37:14', '65c9141bf54953f101b2fa3c13e09947.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_25/JPG/en_US/65c9141bf54953f101b2fa3c13e09947.jpg', NULL),
(232, 1, 4, 3, '01HKAFJNYAZHNHT03HNE5H47AH', 'Sticky Note Seals', 'ALT_CORE_B_OR_25_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'ddc1bc997649c151d391244096f4b1fa.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_25/JPG/en_US/ddc1bc997649c151d391244096f4b1fa.jpg', NULL),
(233, 1, 1, 3, '01HKAFJNYBC2593WBNQMWNYGJ1', 'Sticky Note Seals', 'ALT_CORE_B_OR_25_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'e6b222f2af546560ac987d01de4302c8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_25/JPG/en_US/e6b222f2af546560ac987d01de4302c8.jpg', NULL),
(234, 1, 4, 2, '01HKAFJNYDGHC6K3H8T3B6WSF3', 'Open the Gates', 'ALT_CORE_B_OR_26_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'a3b02d11bfb4620f9abca9486d2de34a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_26/JPG/en_US/a3b02d11bfb4620f9abca9486d2de34a.jpg', NULL),
(235, 1, 4, 3, '01HKAFJNYEXXTRBEBPXMBP6RQN', 'Open the Gates', 'ALT_CORE_B_OR_26_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '14c68538efdec8cf0a0ef40662db1ff2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_26/JPG/en_US/14c68538efdec8cf0a0ef40662db1ff2.jpg', NULL),
(236, 1, 1, 3, '01HKAFJNYFDVGBJ3RXFWB3Q0F3', 'Open the Gates', 'ALT_CORE_B_OR_26_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'bf89e1c89a27738022b9c23e112f6903.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_26/JPG/en_US/bf89e1c89a27738022b9c23e112f6903.jpg', NULL),
(237, 2, 4, 2, '01HKAFJNYM6QR4V4QTR9J7P9RS', 'The Monolith, Ordis Bastion', 'ALT_CORE_B_OR_28_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '3701866b9bb5fa6f34b27f0bc9d48c5b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_28/JPG/en_US/3701866b9bb5fa6f34b27f0bc9d48c5b.jpg', NULL),
(238, 2, 4, 3, '01HKAFJNYPK5XGANXP0QRM8H4V', 'The Monolith, Ordis Bastion', 'ALT_CORE_B_OR_28_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '1963c7802bf9d3746e4854ca8a2d9bcb.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_28/JPG/en_US/1963c7802bf9d3746e4854ca8a2d9bcb.jpg', NULL),
(239, 2, 6, 3, '01HKAFJNYQZA4H3S07H5JFQ3WS', 'The Monolith, Ordis Bastion', 'ALT_CORE_B_OR_28_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '4be203dffc1d6b125125277b80239e48.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_28/JPG/en_US/4be203dffc1d6b125125277b80239e48.jpg', NULL),
(240, 2, 4, 2, '01HKAFJNYW66Y6SX2Q0QZ7TKSX', 'Ordis Carrier', 'ALT_CORE_B_OR_30_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '38d9ccf88dd0aef05537856cc3c28101.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_30/JPG/en_US/38d9ccf88dd0aef05537856cc3c28101.jpg', NULL),
(241, 2, 4, 3, '01HKAFJNYX7FD7DN7NERNV9DEF', 'Ordis Carrier', 'ALT_CORE_B_OR_30_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '72d0cccf5afbe0ad4721665f22100885.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_30/JPG/en_US/72d0cccf5afbe0ad4721665f22100885.jpg', NULL),
(242, 2, 5, 3, '01HKAFJNYZAM3CC2KCXB5QB4H6', 'Ordis Carrier', 'ALT_CORE_B_OR_30_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '997b9aae2eed74fb8cc0ccc4794008e6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_30/JPG/en_US/997b9aae2eed74fb8cc0ccc4794008e6.jpg', NULL),
(243, 3, 4, 2, '01HKAFJNYZAM3CC2KCXB5QB4HE', 'Ordis Recruit', 'ALT_CORE_B_OR_31_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '7b62d819e24b09c5e493ffc4c67c6958.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_31/JPG/en_US/7b62d819e24b09c5e493ffc4c67c6958.jpg', NULL),
(244, 3, 4, 2, '01HKAG220G3QEVPG2KQJSM0NR3', 'Ordis Recruit', 'ALT_CORE_B_OR_32_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'ddc98ebb97e09a30315e9871c803bd2b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_OR_32/JPG/en_US/ddc98ebb97e09a30315e9871c803bd2b.jpg', NULL),
(245, 5, 5, 2, '01HKAFJNZ1MNKTQDTZKDWNT420', 'Akesha & Taru', 'ALT_CORE_B_YZ_01_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'e6ab604295adff0a2538d860b33d9e03.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_01/JPG/en_US/e6ab604295adff0a2538d860b33d9e03.jpg', NULL),
(246, 5, 5, 2, '01HKAFJNZ3YX87GSK6VVJ6051M', 'Lindiwe & Maw', 'ALT_CORE_B_YZ_02_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'aa5ce9be62fb231b87ce0eb321892039.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_02/JPG/en_US/aa5ce9be62fb231b87ce0eb321892039.jpg', NULL),
(247, 5, 5, 2, '01HKAFJNZ5PPRN5KCAKG61BYP4', 'Afanas & Senka', 'ALT_CORE_B_YZ_03_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '92c36c5389a664d69297c3d18dc1fb11.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_03/JPG/en_US/92c36c5389a664d69297c3d18dc1fb11.jpg', NULL),
(248, 4, 5, 2, '01HKAFJNZ6115XJ72PFHEHHRGH', 'Studious Disciple', 'ALT_CORE_B_YZ_04_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '014ba003f4f7aebc9b04401e7e2f7e52.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_04/JPG/en_US/014ba003f4f7aebc9b04401e7e2f7e52.jpg', NULL),
(249, 4, 5, 3, '01HKAFJNZ76QEKW3ZGS5VMXAZP', 'Studious Disciple', 'ALT_CORE_B_YZ_04_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '16444f99eeba6a2e33f59739edd0795d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_04/JPG/en_US/16444f99eeba6a2e33f59739edd0795d.jpg', NULL),
(250, 4, 3, 3, '01HKAFJNZ9ZSWKDFN2M6XHKTN5', 'Studious Disciple', 'ALT_CORE_B_YZ_04_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '1ec05f8870ab1988ecbced286016fc2a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_04/JPG/en_US/1ec05f8870ab1988ecbced286016fc2a.jpg', NULL),
(251, 4, 5, 2, '01HKAFJNZE0BY5BE7SN3130Z0M', 'Tooth Fairy', 'ALT_CORE_B_YZ_06_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'c759f94bd63327cfbfd66a1ae143adae.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_06/JPG/en_US/c759f94bd63327cfbfd66a1ae143adae.jpg', NULL),
(252, 4, 5, 3, '01HKAFJNZF9B38XH3NHKFMFTQT', 'Tooth Fairy', 'ALT_CORE_B_YZ_06_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '32ece30877117233566928bd5478ac21.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_06/JPG/en_US/32ece30877117233566928bd5478ac21.jpg', NULL),
(253, 4, 2, 3, '01HKAFJNZG8CZDN6WYHZ669HD7', 'Tooth Fairy', 'ALT_CORE_B_YZ_06_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '623401d5010f29e535972e0283d7d7ed.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_06/JPG/en_US/623401d5010f29e535972e0283d7d7ed.jpg', NULL),
(254, 4, 5, 2, '01HKAFJNZJKQGF2ME2VBJX8KNG', 'Kadigiran Mage-Dancer', 'ALT_CORE_B_YZ_07_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '6c9216f33d95f4300c3b6b5c57f628a3.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_07/JPG/en_US/6c9216f33d95f4300c3b6b5c57f628a3.jpg', NULL),
(255, 4, 5, 3, '01HKAFJNZKST5YZKNDR380NR0R', 'Kadigiran Mage-Dancer', 'ALT_CORE_B_YZ_07_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '3676e5ac100aa7ac137ea62e6129e831.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_07/JPG/en_US/3676e5ac100aa7ac137ea62e6129e831.jpg', NULL),
(256, 4, 3, 3, '01HKAFJNZMJMA3SZCDMSGQHXDZ', 'Kadigiran Mage-Dancer', 'ALT_CORE_B_YZ_07_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'ad95d191a7dbd138b9ecb32b7d1400c4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_07/JPG/en_US/ad95d191a7dbd138b9ecb32b7d1400c4.jpg', NULL),
(257, 4, 5, 2, '01HKAFJNZNWBHJ998VCXM5RK61', 'Yzmir Stargazer', 'ALT_CORE_B_YZ_08_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'df8d68e0bb3ebd7406f3329efad630c3.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_08/JPG/en_US/df8d68e0bb3ebd7406f3329efad630c3.jpg', NULL),
(258, 4, 5, 3, '01HKAFJNZQV47ENQSH9HPR47XA', 'Yzmir Stargazer', 'ALT_CORE_B_YZ_08_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'c26a3304312d05d07b164be8e029db63.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_08/JPG/en_US/c26a3304312d05d07b164be8e029db63.jpg', NULL),
(259, 4, 1, 3, '01HKAFJNZREWHY5NKJ81QRQ6DX', 'Yzmir Stargazer', 'ALT_CORE_B_YZ_08_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'e672b18216c9631d776535f60ba6cb01.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_08/JPG/en_US/e672b18216c9631d776535f60ba6cb01.jpg', NULL),
(260, 4, 5, 2, '01HKAFJNZSRAS7WV1QVS8PZBDC', 'Lady of the Lake', 'ALT_CORE_B_YZ_09_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '02022cad32910efd45cec7e5d0612109.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_09/JPG/en_US/02022cad32910efd45cec7e5d0612109.jpg', NULL),
(261, 4, 5, 3, '01HKAFJNZVXXNYNW8W483BCSFC', 'Lady of the Lake', 'ALT_CORE_B_YZ_09_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '10963b70c301eb2dbe61cbd903bcdc7f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_09/JPG/en_US/10963b70c301eb2dbe61cbd903bcdc7f.jpg', NULL),
(262, 4, 2, 3, '01HKAFJNZWQ1W9M16JHY4YY5NG', 'Lady of the Lake', 'ALT_CORE_B_YZ_09_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'b5a6450c0996ecd4bb8c74504c5aac48.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_09/JPG/en_US/b5a6450c0996ecd4bb8c74504c5aac48.jpg', NULL),
(263, 4, 5, 2, '01HKAFJP01NFNVYD5NTTW9W2EG', 'Baba Yaga', 'ALT_CORE_B_YZ_11_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '479918bd81020eba0cec0f344b91e99b.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_11/JPG/en_US/479918bd81020eba0cec0f344b91e99b.jpg', NULL),
(264, 4, 5, 3, '01HKAFJP04Z195GVEGW9XHXE43', 'Baba Yaga', 'ALT_CORE_B_YZ_11_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'c67c2f31f3cc08a97923458ac88b41d0.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_11/JPG/en_US/c67c2f31f3cc08a97923458ac88b41d0.jpg', NULL),
(265, 4, 4, 3, '01HKAFJP0730JFBTTK089DB8JM', 'Baba Yaga', 'ALT_CORE_B_YZ_11_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'b0d469b8532f7fe228e53d6954f7ce91.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_11/JPG/en_US/b0d469b8532f7fe228e53d6954f7ce91.jpg', NULL),
(266, 4, 5, 2, '01HKAFJP0GP09M8MWHD9C98EKZ', 'Kadigiran Alchemist', 'ALT_CORE_B_YZ_12_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '4ee47d619331de589a08de4033eef4d6.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_12/JPG/en_US/4ee47d619331de589a08de4033eef4d6.jpg', NULL),
(267, 4, 5, 3, '01HKAFJP0MDXV3998E15TZ6C3X', 'Kadigiran Alchemist', 'ALT_CORE_B_YZ_12_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '51908e6bb0d44651c6fb5052ad307eb8.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_12/JPG/en_US/51908e6bb0d44651c6fb5052ad307eb8.jpg', NULL),
(268, 4, 4, 3, '01HKAFJP14WGWNM6EFCVFQ6E3Z', 'Kadigiran Alchemist', 'ALT_CORE_B_YZ_12_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '283069cde79f901919dcd49c3d95a63a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_12/JPG/en_US/283069cde79f901919dcd49c3d95a63a.jpg', NULL),
(269, 4, 5, 2, '01HKAFJP18B0NH5FY9E5B0KX9V', 'Alice', 'ALT_CORE_B_YZ_13_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '488fff21643856ec7be0cab3d14df66f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_13/JPG/en_US/488fff21643856ec7be0cab3d14df66f.jpg', NULL),
(270, 4, 5, 3, '01HKAFJP25Z3FDKVPFZ4WXVFQG', 'Alice', 'ALT_CORE_B_YZ_13_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'edf9e2af00919d193afa5813159df569.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_13/JPG/en_US/edf9e2af00919d193afa5813159df569.jpg', NULL),
(271, 4, 3, 3, '01HKAFJP2995GW6H6918W6P6MR', 'Alice', 'ALT_CORE_B_YZ_13_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '25c541661747c6ae373e65ac8104b7c0.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_13/JPG/en_US/25c541661747c6ae373e65ac8104b7c0.jpg', NULL),
(272, 4, 5, 2, '01HKAFJP2YYPFGFZ7PDE8B4CTN', 'Dorothy Gale', 'ALT_CORE_B_YZ_16_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '81c02e94940c9e0a99c7aa5b15f1feae.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_16/JPG/en_US/81c02e94940c9e0a99c7aa5b15f1feae.jpg', NULL),
(273, 4, 5, 3, '01HKAFJP2Z3DJCQA0Y1HTMR4WS', 'Dorothy Gale', 'ALT_CORE_B_YZ_16_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '5b809b941cf67619c0e61157a3cf2758.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_16/JPG/en_US/5b809b941cf67619c0e61157a3cf2758.jpg', NULL),
(274, 4, 2, 3, '01HKAFJP35VBD63E8Q3TVWR9J1', 'Dorothy Gale', 'ALT_CORE_B_YZ_16_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'a0fa04bcdbf2de156a12fff73ceec91a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_16/JPG/en_US/a0fa04bcdbf2de156a12fff73ceec91a.jpg', NULL),
(275, 4, 5, 2, '01HKAFJP3QZ2ZTXSJGTEN0ADPR', 'Sakarabru', 'ALT_CORE_B_YZ_18_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'ef1b1accbd3e9d7274351ee3d5d19b08.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_18/JPG/en_US/ef1b1accbd3e9d7274351ee3d5d19b08.jpg', NULL),
(276, 4, 5, 3, '01HKAFJP3W1BH2FXXPD8B6QYSX', 'Sakarabru', 'ALT_CORE_B_YZ_18_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '272c5163b8b05d8ab4960da82f7fdfc2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_18/JPG/en_US/272c5163b8b05d8ab4960da82f7fdfc2.jpg', NULL),
(277, 4, 2, 3, '01HKAFJP3YX6766MWA69G2AY2A', 'Sakarabru', 'ALT_CORE_B_YZ_18_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'cce97e1765a96cafec70b09b8bc2c692.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_18/JPG/en_US/cce97e1765a96cafec70b09b8bc2c692.jpg', NULL),
(278, 1, 5, 2, '01HKAFJP4DF3A9576BMJZHTRRV', 'Off You Go!', 'ALT_CORE_B_YZ_21_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '33593c25dfdea12f87d331088b1ab3a2.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_21/JPG/en_US/33593c25dfdea12f87d331088b1ab3a2.jpg', NULL),
(279, 1, 5, 3, '01HKAFJP4FTQ8YBYG0TKTFR0MC', 'Off You Go!', 'ALT_CORE_B_YZ_21_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'f26dd8fc9180f51c97b8882abfb61323.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_21/JPG/en_US/f26dd8fc9180f51c97b8882abfb61323.jpg', NULL),
(280, 1, 3, 3, '01HKAFJP4GH138JE49S0FASG44', 'Off You Go!', 'ALT_CORE_B_YZ_21_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '1728c7d1a965b401aebcdaede3f9c82c.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_21/JPG/en_US/1728c7d1a965b401aebcdaede3f9c82c.jpg', NULL),
(281, 1, 5, 2, '01HKAFJP4JZ7PT2D7ZD47R3CXJ', 'Spy Craft', 'ALT_CORE_B_YZ_22_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '059c072121ce3f419b479bed594fa75f.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_22/JPG/en_US/059c072121ce3f419b479bed594fa75f.jpg', NULL),
(282, 1, 5, 3, '01HKAFJP4K3SQN1TVRZ48R7XKX', 'Spy Craft', 'ALT_CORE_B_YZ_22_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '0ceabb8238258124c49c65b63711ef3a.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_22/JPG/en_US/0ceabb8238258124c49c65b63711ef3a.jpg', NULL),
(283, 1, 3, 3, '01HKAFJP4M1XCHN6QKEPK5ZX46', 'Spy Craft', 'ALT_CORE_B_YZ_22_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'fcca360d3ab3e6d438b6fb4148b651ae.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_22/JPG/en_US/fcca360d3ab3e6d438b6fb4148b651ae.jpg', NULL),
(284, 1, 5, 2, '01HKAFJP4XNQFBYBWBM148GMT9', 'Banishing Gate', 'ALT_CORE_B_YZ_24_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'f461575dda4bbac6623e553b5638c5da.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_24/JPG/en_US/f461575dda4bbac6623e553b5638c5da.jpg', NULL),
(285, 1, 5, 3, '01HKAFJP4Z2G2GA7X9AK1X8P5Y', 'Banishing Gate', 'ALT_CORE_B_YZ_24_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '14d90342d3721e8f95f7e8b9506786f4.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_24/JPG/en_US/14d90342d3721e8f95f7e8b9506786f4.jpg', NULL),
(286, 1, 4, 3, '01HKAFJP52CFGTT0G7S914MT9S', 'Banishing Gate', 'ALT_CORE_B_YZ_24_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '7cc9825c9f475d1f625f58f9361c7a2d.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_24/JPG/en_US/7cc9825c9f475d1f625f58f9361c7a2d.jpg', NULL),
(287, 1, 5, 2, '01HKAFJP5CW3139B7S0QD9NKQ1', 'Kraken\'s Wrath', 'ALT_CORE_B_YZ_26_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'c90a0cd673dd791bdc6e26d47e09b7f5.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_26/JPG/en_US/c90a0cd673dd791bdc6e26d47e09b7f5.jpg', NULL),
(288, 1, 5, 3, '01HKAFJP5DY7BC1ARTKTKPWMFQ', 'Kraken\'s Wrath', 'ALT_CORE_B_YZ_26_R1', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '02c13df853a850acb03743e70b2e8824.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_26/JPG/en_US/02c13df853a850acb03743e70b2e8824.jpg', NULL),
(289, 1, 1, 3, '01HKAFJP5FFFHYKQ7JY145CXAW', 'Kraken\'s Wrath', 'ALT_CORE_B_YZ_26_R2', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'd1b313f1207815924841da8bd9108e98.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_26/JPG/en_US/d1b313f1207815924841da8bd9108e98.jpg', NULL),
(290, 3, 5, 2, '01HKAFJP5YPC43E267MNH6GQDP', 'Maw', 'ALT_CORE_B_YZ_31_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', '2a5bb6c4f54b5d1354e24d46315ae9dd.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_B_YZ_31/JPG/en_US/2a5bb6c4f54b5d1354e24d46315ae9dd.jpg', NULL),
(291, 5, 1, 2, '01H552SGZBSEFNQWER11BQTD7F', 'Sierra & Oddball', 'ALT_CORE_P_AX_01_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'ALT_CORE_P_AX_01_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_AX_01/JPG/en_US/ALT_CORE_P_AX_01_C_en_US.jpg', NULL),
(292, 5, 1, 2, '01HFS3ZRH45FSBGT7AGTGM8MPP', 'Treyst & Rossum', 'ALT_CORE_P_AX_02_C', '2024-04-04 16:37:15', '2024-04-04 16:37:15', 'ALT_CORE_P_AX_02_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_AX_02/JPG/en_US/ALT_CORE_P_AX_02_C_en_US.jpg', NULL),
(293, 5, 1, 2, '01HH2F5TSWTM9TPPS5MAA89BFS', 'Subhash & Marmo', 'ALT_CORE_P_AX_03_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_AX_03_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_AX_03/JPG/en_US/ALT_CORE_P_AX_03_C_en_US.jpg', NULL),
(294, 5, 2, 2, '01H552SH4K74YR2P0DNHR5ZMQH', 'Kojo & Booda', 'ALT_CORE_P_BR_01_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_BR_01_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_BR_01/JPG/en_US/ALT_CORE_P_BR_01_C_en_US.jpg', NULL),
(295, 5, 2, 2, '01HH2F5TSZAF8ZFPRK1JXJJ2R2', 'Atsadi & Surge', 'ALT_CORE_P_BR_02_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_BR_02_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_BR_02/JPG/en_US/ALT_CORE_P_BR_02_C_en_US.jpg', NULL),
(296, 5, 2, 2, '01HFS3ZRH704DSXSC87BSCAB5Q', 'Basira & Kaizaimon', 'ALT_CORE_P_BR_03_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_BR_03_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_BR_03/JPG/en_US/ALT_CORE_P_BR_03_C_en_US.jpg', NULL),
(297, 5, 3, 2, '01H552SH9TDF9Z03QNKP4GTBZV', 'Nevenka & Blotch', 'ALT_CORE_P_LY_01_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_LY_01_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_LY_01/JPG/en_US/ALT_CORE_P_LY_01_C_en_US.jpg', NULL),
(298, 5, 3, 2, '01HH2F5TT2V339V2GP3ZYM6HWV', 'Auraq & Kibble', 'ALT_CORE_P_LY_02_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_LY_02_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_LY_02/JPG/en_US/ALT_CORE_P_LY_02_C_en_US.jpg', NULL),
(299, 5, 3, 2, '01HFS3ZRH9FHZMNA9ZWRZGHPN1', 'Fen & Crowbar', 'ALT_CORE_P_LY_03_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_LY_03_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_LY_03/JPG/en_US/ALT_CORE_P_LY_03_C_en_US.jpg', NULL),
(300, 5, 6, 2, '01H552SHEZKT2RKQZAV57EN6MD', 'Teija & Nauraa', 'ALT_CORE_P_MU_01_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_MU_01_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_MU_01/JPG/en_US/ALT_CORE_P_MU_01_C_en_US.jpg', NULL),
(301, 5, 6, 2, '01HFS3ZRHFN9QYEH7X3T3GVPQY', 'Arjun & Spike', 'ALT_CORE_P_MU_02_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_MU_02_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_MU_02/JPG/en_US/ALT_CORE_P_MU_02_C_en_US.jpg', NULL),
(302, 5, 6, 2, '01HH2F5TT8Y7ZG4JSY8RHGV6R3', 'Rin & Orchid', 'ALT_CORE_P_MU_03_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_MU_03_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_MU_03/JPG/en_US/ALT_CORE_P_MU_03_C_en_US.jpg', NULL),
(303, 5, 4, 2, '01HFS3ZRHBE4S7AHJES972026B', 'Sigismar & Wingspan', 'ALT_CORE_P_OR_01_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_OR_01_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_OR_01/JPG/en_US/ALT_CORE_P_OR_01_C_en_US.jpg', NULL),
(304, 5, 4, 2, '01HH2F5TT48QTZZYKMWX720CKS', 'Waru & Mack', 'ALT_CORE_P_OR_02_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_OR_02_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_OR_02/JPG/en_US/ALT_CORE_P_OR_02_C_en_US.jpg', NULL),
(305, 5, 4, 2, '01H552SHMD7G6SNZSNT34BA5W8', 'Gulrang & Tocsin', 'ALT_CORE_P_OR_03_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_OR_03_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_OR_03/JPG/en_US/ALT_CORE_P_OR_03_C_en_US.jpg', NULL),
(306, 5, 5, 2, '01H552SHTRWXTQXZX2A1EYB4KN', 'Akesha & Taru', 'ALT_CORE_P_YZ_01_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_YZ_01_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_YZ_01/JPG/en_US/ALT_CORE_P_YZ_01_C_en_US.jpg', NULL),
(307, 5, 5, 2, '01HH2F5TT6R2SPY1DC68528JZ9', 'Lindiwe & Maw', 'ALT_CORE_P_YZ_02_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_YZ_02_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_YZ_02/JPG/en_US/ALT_CORE_P_YZ_02_C_en_US.jpg', NULL),
(308, 5, 5, 2, '01HFS3ZRHDXRB0KNS56ZM4R5YB', 'Afanas & Senka', 'ALT_CORE_P_YZ_03_C', '2024-04-04 16:37:16', '2024-04-04 16:37:16', 'ALT_CORE_P_YZ_03_C_en_US.jpg', 'https://altered-prod-eu.s3.amazonaws.com/Art/CORE/CARDS/ALT_CORE_P_YZ_03/JPG/en_US/ALT_CORE_P_YZ_03_C_en_US.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `card_set`
--

CREATE TABLE `card_set` (
  `id` int NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altered_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `card_set`
--

INSERT INTO `card_set` (`id`, `reference`, `name`, `altered_id`, `created_at`, `updated_at`) VALUES
(1, 'PROMO_2024', 'Heroes Promo 2024', '01HFS3ZQXQWB7VS21HQBX73K1E', '2024-04-04 15:43:50', '2024-04-04 15:43:50'),
(2, 'CORE', 'Core set - Beyond the Gates', '01HKAFJN3HG3TWKYV0E014K01G', '2024-04-04 15:43:50', '2024-04-04 15:43:50'),
(3, 'PROMO_GENCON_2023', 'Heroes Promo 2023', '01H52WQDDDTH79VAJ517JC0FGD', '2024-04-04 15:43:50', '2024-04-04 15:43:50');

-- --------------------------------------------------------

--
-- Structure de la table `card_sub_type`
--

CREATE TABLE `card_sub_type` (
  `id` int NOT NULL,
  `reference` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altered_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `card_sub_type`
--

INSERT INTO `card_sub_type` (`id`, `reference`, `name`, `altered_id`, `created_at`, `updated_at`) VALUES
(1, 'NOBLE', 'Noble', '01HKAGVEV163KJH0BWMZ6WR7E9', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(2, 'SCHOLAR', 'Scholar', '01HKAGRGA2AC23BM29GTJ6XPYE', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(3, 'ENGINEER', 'Engineer', '01HKAGPA9AS71JN0H9HQZTBNCD', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(4, 'DRUID', 'Druid', '01HKAGS7G3JAKED7MVQKP2G8F7', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(5, 'ADVENTURER', 'Adventurer', '01HKAGPC92CGHANVSRSC8R8ES6', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(6, 'APPRENTICE', 'Apprentice', '01HKAGPXW29DSBJ0DPFEPFVESC', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(7, 'ANIMAL', 'Animal', '01HKAGQS36Z3DP166MZW8KRAEK', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(8, 'MAGE', 'Mage', '01HKAGXDF5A4KJW7GVC25YQS3H', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(9, 'DRAGON', 'Dragon', '01HKAGQCSK17FMGRQDPCFZZ4GB', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(10, 'MESSENGER', 'Messenger', '01HKAGPRRNK7X4TZEBYSPK6DDC', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(11, 'ARTIST', 'Artist', '01HKAGQTJ167DYCKKGR8MCESNT', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(12, 'SOLDIER', 'Soldier', '01HKAGQ5CZVEX15T5KTM40KQSA', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(13, 'BUREAUCRAT', 'Bureaucrat', '01HKAGVBV23NSWD6EXJXSKK3F8', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(14, 'TRAINER', 'Trainer', '01HKAGQ07R8R2DAC69RKNZ5SA6', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(15, 'SONG', 'Song', '01HKAGRNJ8WF0FSG4M2MEW7AJ2', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(16, 'ROBOT', 'Robot', '01HKAGPDNDJM76PRKTBB98Q0ZM', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(17, 'PLANT', 'Plant', '01HKAGSB49H24XWW17AAY441MT', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(18, 'SPIRIT', 'Spirit', '01HKAGQ2CRATX32S1PS2GBXYV7', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(19, 'CITIZEN', 'Citizen', '01HKAGQWDFDGS8YVZGW98BVV9D', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(20, 'TITAN', 'Titan', '01HKAGQ9QZA1N8YNZH7CYPBDVR', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(21, 'COMPANION', 'Companion', '01HKAGQPYTEKRYT4PRE9HZHTDA', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(22, 'DEITY', 'Deity', '01HKAGPAJFS4YDQVKY6AB16614', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(23, 'LEVIATHAN', 'Leviathan', '01HKAGQEXKWSBXPSBRBJ2YZ038', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(24, 'FAIRY', 'Fairy', '01HKAGPBKC6V2RK28EZGHP8VWW', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(25, 'ELEMENTAL', 'Elemental', '01HKAGPA0G5NVDVVXS31BBX2AS', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(26, 'BOON', 'Boon', '01HKAGPHVVK20XKBXKCZNGRTFD', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(27, 'CONJURATION', 'Conjuration', '01HKAGQJMGEVS21MCGWDGG8KW0', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(28, 'DISRUPTION', 'Disruption', '01HKAGPH80FC347E2P8841D298', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(29, 'MANEUVER', 'Maneuver', '01HKAGPGT0M24AWMMF30CN0NT4', '2024-04-04 15:48:34', '2024-04-04 15:48:34'),
(30, 'LANDMARK', 'Landmark', '01HKAGPK6DPRTGYCYJG9XHTRXG', '2024-04-04 15:48:34', '2024-04-04 15:48:34');

-- --------------------------------------------------------

--
-- Structure de la table `card_type`
--

CREATE TABLE `card_type` (
  `id` int NOT NULL,
  `reference` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altered_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `card_type`
--

INSERT INTO `card_type` (`id`, `reference`, `name`, `altered_id`, `created_at`, `updated_at`) VALUES
(1, 'SPELL', 'Spell', '01GE7AC9X35JXEQZJBBD6E4BKX', '2024-04-04 15:40:38', '2024-04-04 15:40:38'),
(2, 'PERMANENT', 'Permanent', '01GE7AC9X78DXSNKNB15KCF69Z', '2024-04-04 15:40:38', '2024-04-04 15:40:38'),
(3, 'TOKEN', 'Token Character', '01H0FV1VGP26CD3DFE8W3PWTQT', '2024-04-04 15:40:38', '2024-04-04 15:40:38'),
(4, 'CHARACTER', 'Character', '01H19NWA92A4ERAC4ATMSZNASS', '2024-04-04 15:40:38', '2024-04-04 15:40:38'),
(5, 'HERO', 'Hero', '01GE7AC9WGQTNRP28T63FH8TZD', '2024-04-04 15:40:38', '2024-04-04 15:40:38'),
(6, 'TOKEN_MANA', 'Mana', '01H0FV1VGP4ACD3DFEJW3PWTQT', '2024-04-04 15:40:38', '2024-04-04 15:40:38');

-- --------------------------------------------------------

--
-- Structure de la table `deck`
--

CREATE TABLE `deck` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `hero_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `deck`
--

INSERT INTO `deck` (`id`, `user_id`, `name`, `created_at`, `updated_at`, `hero_id`) VALUES
(20, 1, 'string', '2024-04-15 14:03:33', '2024-04-15 14:03:33', 47),
(21, 1, 'test', '2024-06-03 05:58:30', '2024-06-03 05:58:30', 47),
(22, 1, '', '2024-06-03 06:00:55', '2024-06-03 06:00:55', 147);

-- --------------------------------------------------------

--
-- Structure de la table `deck_card`
--

CREATE TABLE `deck_card` (
  `id` int NOT NULL,
  `card_id` int DEFAULT NULL,
  `deck_id` int DEFAULT NULL,
  `qty` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240404151915', '2024-04-04 15:19:22', 40),
('DoctrineMigrations\\Version20240404152932', '2024-04-04 15:29:39', 86),
('DoctrineMigrations\\Version20240404153513', '2024-04-04 15:35:18', 26),
('DoctrineMigrations\\Version20240404153727', '2024-04-04 15:37:38', 67),
('DoctrineMigrations\\Version20240404153815', '2024-04-04 15:38:18', 90),
('DoctrineMigrations\\Version20240404154236', '2024-04-04 15:42:42', 62),
('DoctrineMigrations\\Version20240404154742', '2024-04-04 15:47:46', 34),
('DoctrineMigrations\\Version20240404155010', '2024-04-04 15:50:15', 33),
('DoctrineMigrations\\Version20240404155053', '2024-04-04 15:50:55', 45),
('DoctrineMigrations\\Version20240404162645', '2024-04-04 16:26:53', 302),
('DoctrineMigrations\\Version20240404164659', '2024-04-04 16:47:09', 74),
('DoctrineMigrations\\Version20240404183735', '2024-04-04 18:37:40', 58),
('DoctrineMigrations\\Version20240406185007', '2024-04-06 18:50:14', 53),
('DoctrineMigrations\\Version20240407150455', '2024-04-07 15:05:01', 39),
('DoctrineMigrations\\Version20240408155644', '2024-04-08 15:56:51', 108),
('DoctrineMigrations\\Version20240410121954', '2024-04-10 12:19:59', 62),
('DoctrineMigrations\\Version20240410124353', '2024-04-10 12:44:00', 66),
('DoctrineMigrations\\Version20240410124522', '2024-04-10 12:45:29', 33);

-- --------------------------------------------------------

--
-- Structure de la table `faction`
--

CREATE TABLE `faction` (
  `id` int NOT NULL,
  `reference` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altered_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faction`
--

INSERT INTO `faction` (`id`, `reference`, `color`, `name`, `altered_id`, `created_at`, `updated_at`) VALUES
(1, 'AX', '#8c432a', 'Axiom', '01GE7AC9XBG707G19F03A95TH1', '2024-04-04 15:35:21', '2024-04-04 15:35:21'),
(2, 'BR', '#c32637', 'Bravos', '01GE7AC9WY6PK56RADXXD6P1T4', '2024-04-04 15:35:21', '2024-04-04 15:35:21'),
(3, 'LY', '#cf4171', 'Lyra', '01GE7AC9XGB6JE2V63WXWN4FB3', '2024-04-04 15:35:21', '2024-04-04 15:35:21'),
(4, 'OR', '#0f6593', 'Ordis', '01GE7AC9X78DXSNKNB15KCF69X', '2024-04-04 15:35:21', '2024-04-04 15:35:21'),
(5, 'YZ', '#764891', 'Yzmir', '01GE7AC9WEQKW1Y1BF8SCY7459', '2024-04-04 15:35:21', '2024-04-04 15:35:21'),
(6, 'MU', '#3d6b42', 'Muna', '01GE7AC9X2BNM40TTAYAEFSZSJ', '2024-04-04 15:35:21', '2024-04-04 15:35:21');

-- --------------------------------------------------------

--
-- Structure de la table `rarity`
--

CREATE TABLE `rarity` (
  `id` int NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altered_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rarity`
--

INSERT INTO `rarity` (`id`, `reference`, `name`, `altered_id`, `created_at`, `updated_at`) VALUES
(1, 'UNIQUE', 'Unique', '01GE7AC9X35JXEQZJBBD6E4BKW', '2024-04-04 15:52:50', '2024-04-04 15:52:50'),
(2, 'COMMON', 'Common', '01GE7AC9WEQKW1Y1BF8SCY745A', '2024-04-04 15:52:50', '2024-04-04 15:52:50'),
(3, 'RARE', 'Rare', '01GE7AC9WY6PK56RADXXD6P1T5', '2024-04-04 15:52:50', '2024-04-04 15:52:50');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `created_at`, `updated_at`, `is_verified`) VALUES
(1, 'ldandoy@gmail.com', '[]', '$2y$13$M3t2DeS31ft/L9EbfU8CWeJi0MxWal8NWqC8s5VAJ0WumPxrEMcxW', '2024-04-07 17:01:28', '2024-04-07 17:01:28', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_161498D3925606E5` (`card_type_id`),
  ADD KEY `IDX_161498D37CB08CB9` (`main_faction_id`),
  ADD KEY `IDX_161498D3F3747573` (`rarity_id`),
  ADD KEY `IDX_161498D362C45E6C` (`card_set_id`);

--
-- Index pour la table `card_set`
--
ALTER TABLE `card_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `card_sub_type`
--
ALTER TABLE `card_sub_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deck`
--
ALTER TABLE `deck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4FAC3637A76ED395` (`user_id`),
  ADD KEY `IDX_4FAC363745B0BCD` (`hero_id`);

--
-- Index pour la table `deck_card`
--
ALTER TABLE `deck_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2AF3DCED4ACC9A20` (`card_id`),
  ADD KEY `IDX_2AF3DCED111948DC` (`deck_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `faction`
--
ALTER TABLE `faction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rarity`
--
ALTER TABLE `rarity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `card`
--
ALTER TABLE `card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT pour la table `card_set`
--
ALTER TABLE `card_set`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `card_sub_type`
--
ALTER TABLE `card_sub_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `card_type`
--
ALTER TABLE `card_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `deck`
--
ALTER TABLE `deck`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `deck_card`
--
ALTER TABLE `deck_card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `faction`
--
ALTER TABLE `faction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `rarity`
--
ALTER TABLE `rarity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_161498D362C45E6C` FOREIGN KEY (`card_set_id`) REFERENCES `card_set` (`id`),
  ADD CONSTRAINT `FK_161498D37CB08CB9` FOREIGN KEY (`main_faction_id`) REFERENCES `faction` (`id`),
  ADD CONSTRAINT `FK_161498D3925606E5` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`id`),
  ADD CONSTRAINT `FK_161498D3F3747573` FOREIGN KEY (`rarity_id`) REFERENCES `rarity` (`id`);

--
-- Contraintes pour la table `deck`
--
ALTER TABLE `deck`
  ADD CONSTRAINT `FK_4FAC363745B0BCD` FOREIGN KEY (`hero_id`) REFERENCES `card` (`id`),
  ADD CONSTRAINT `FK_4FAC3637A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `deck_card`
--
ALTER TABLE `deck_card`
  ADD CONSTRAINT `FK_2AF3DCED111948DC` FOREIGN KEY (`deck_id`) REFERENCES `deck` (`id`),
  ADD CONSTRAINT `FK_2AF3DCED4ACC9A20` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
