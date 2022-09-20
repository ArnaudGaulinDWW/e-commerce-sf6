-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 11 avr. 2022 à 12:14
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce_sf6`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `category_order`) VALUES
(89, NULL, 'Informatique', 'Informatique', 1),
(90, 89, 'Ordinateurs portables', 'Ordinateurs-portables', 3),
(91, 89, 'Ecran', 'Ecran', 2),
(92, 89, 'Souris', 'Souris', 4),
(93, NULL, 'Mode', 'Mode', 5),
(94, 93, 'Homme', 'Homme', 8),
(95, 93, 'Femme', 'Femme', 7),
(96, 93, 'Enfant', 'Enfant', 6);

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupons_types_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `max_usage` int(11) NOT NULL,
  `validity` datetime NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupon_types`
--

CREATE TABLE `coupon_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220407103340', '2022-04-07 12:35:09', 7823),
('DoctrineMigrations\\Version20220408132006', '2022-04-08 15:51:26', 943),
('DoctrineMigrations\\Version20220408143511', '2022-04-08 16:35:40', 184),
('DoctrineMigrations\\Version20220408155031', '2022-04-08 17:50:53', 796),
('DoctrineMigrations\\Version20220411084010', '2022-04-11 10:40:31', 173);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `products_id`, `name`) VALUES
(3, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\9a954e72cda5a133b759805d90fe006b.png'),
(4, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\9c1883df8fbb596145611f52db125d36.png'),
(5, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\fd11879e70553fa8a0287909ea4c43fd.png'),
(6, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\41a16031a2a37e7a4b53e7402e388ec1.png'),
(7, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\befb76b85fe906b306993882169271e8.png'),
(8, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\c1d5cc2432dfb221b05ffd36d9162b53.png'),
(9, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\8795fadc04d5dc32e10e76bc543f04a5.png'),
(10, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\2c02881f55c2c1bb259e79cd277bc874.png'),
(11, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\6a8cc59aee634207e809f9e14fc344f8.png'),
(12, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\251c4179332f4cfa946e29264fb8022b.png'),
(13, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\b9168f3b585d018d552e3cf2ea9c43f8.png'),
(14, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\4d0787ca4b5c67ad7aad2d05a2705fb1.png'),
(15, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\3111c098f2de3035f6005e95119958b0.png'),
(16, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\925dcdd30749bd8bff0b13e064aefd91.png'),
(17, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\21b26fef46f411e42ae71f70b49af0bc.png'),
(18, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\8de140424dd7ae1d330213a5e158ac6f.png'),
(19, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\cf66d3f32cd5076c988db152aa21de42.png'),
(20, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\6061f9305b6a07bc4f85de3afe4f6cb4.png'),
(21, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\52f5c8f2fb98ab108d0007879203e0a9.png'),
(22, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\91c1b884a1f534e38f350864e50c7e28.png'),
(23, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\07ffa363bd4393a979967979672061f2.png'),
(24, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\3681244c5dbb2c4215d2e9f83da083c7.png'),
(25, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\4f14526f91ecce0697dfa54fa43afaca.png'),
(26, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\07acbcb2c8ab2bc22fa4948d43afa778.png'),
(27, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\2e8fa657f129a4090fed2d8068155e78.png'),
(28, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\1f3e8dbdecd9041e4390929210190c89.png'),
(29, 40, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\ba2d405ad27edc336447290563a71403.png'),
(30, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\de385a1f702236822a4c8ba35288daa0.png'),
(31, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\b8ceb016fcbed6d174bbe9b0052943f7.png'),
(32, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\2b4bad7075d61a046cd8ed9edb415293.png'),
(33, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\3449ffde54ec4a90ef80a28b680956e9.png'),
(34, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\9a1e258bb7f6177401181cd8cf5a8d94.png'),
(35, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\f9f69dd7e8bf1627ff77cd572701dea1.png'),
(36, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\491d60b0b3ffb565b5acaea720d6588c.png'),
(37, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\e63497a106049be7b5a7f96cadd55783.png'),
(38, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\bc5f3ede56a87ca53d22e1e05963b3b3.png'),
(39, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\cf5a4483225fdc1282bec78bc0f6d58e.png'),
(40, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\e46e95e46a8684b0a74c5ea2f668f16a.png'),
(41, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\87e817ad6d2f806773287046ec85db81.png'),
(42, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\aa5c5ea9f6bac1c81c9df55abcd0f6e4.png'),
(43, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\115166fac916b06e014024e5faf1d10e.png'),
(44, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\dbb9c3617cd47c549a64dc4054097784.png'),
(45, 40, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\ba7e53bced66d147e3ff37c2ec92256d.png'),
(46, 40, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\a3e3dd40ffb59c6208a1dc24f2f91c96.png'),
(47, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\4900d322c453a8c246cf7d5648d835bd.png'),
(48, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\7c28f3ffe1d4c2038c66eb63ebd6f124.png'),
(49, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\3a1dff1cfb9e8fcf55dafb1ea5060136.png'),
(50, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\db04683a90fe1f6877d236ac355fe60e.png'),
(51, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\87964b607639e31ebd0e2ef47d4ce686.png'),
(52, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\4cad7f763f795bde97854df5491cdbdd.png'),
(53, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\baf050f2fe1d247af373c6a9f03ebd8b.png'),
(54, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\aef22ac3f68f8136ddb2749d836e95ee.png'),
(55, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\fa34046b80d7c099a8a51ad3006c91e6.png'),
(56, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\fae34011a4aa84559885eafd5d0d367f.png'),
(57, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\0abe26d5c83d03912371bbdf8fecb49c.png'),
(58, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\1d4f53ef9a42775864d0d2c60ef4f426.png'),
(59, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\dff4d4682f1e48b02f7d659366dbdd95.png'),
(60, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\45b269752596c9dbe015e972e96f0107.png'),
(61, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\c1e370d2ce87080a507f497c23479636.png'),
(62, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\065b7d2436e973d84893d1c08a797d7c.png'),
(63, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\305319a3cdfd36c2d6a278aff03318b5.png'),
(64, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\d8cd64b305296d5857f4da9520904df9.png'),
(65, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\b6fbdfdb446d538628fdd08a435dfd60.png'),
(66, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\c3bba45c22dab804229b641a8ccc0167.png'),
(67, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\0b2a6042494fef8e35f4c274b4d1e3a0.png'),
(68, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\76fde2ae7ccfa87a0f2e2a7969a50fd5.png'),
(69, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\4e26105d655a89045786596dc03d6a76.png'),
(70, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\3b8ee279c592c3b3785359d23fdae026.png'),
(71, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\af2583c467ad89f714d71689378a5b4a.png'),
(72, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\23f57931febc8b8e2de0a61de1ab7dd3.png'),
(73, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\e8fe75820041ac75b9d06ca47dd31391.png'),
(74, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\39f809c11fb80f4c28d20fb3349b258c.png'),
(75, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\79c0c8ba22b0b87bbc11e093d942cf79.png'),
(76, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\fb69a53de82725e7b3aacbc8232d6a3d.png'),
(77, 40, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\fb01ddc8ee264724a07dbd9e6c5dfb81.png'),
(78, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\7f122a6c8096b07a8119a666b8c202dc.png'),
(79, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\03b81e271d12c0285519e69ad9a93886.png'),
(80, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\364e9741c54c304e5e0a68ea3c5b5fa7.png'),
(81, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\6493224a992538b976ea18c72d5c3d2c.png'),
(82, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\85c83b24278f25d8bb6a6e5b23078f21.png'),
(83, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\e164659b229d9145d98468d38d611ed3.png'),
(84, 34, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\6e41a02e117fc85baa1b7eff14ddbe7c.png'),
(85, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\3280dc4840c8e34106e43d28de76ab97.png'),
(86, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\c5edab22c71eda2620dcc8e434f570ba.png'),
(87, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\2718c1750bd37d0400d4da39ae528f0f.png'),
(88, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\ff3f1e1001abd3c157ade11a2457c2f6.png'),
(89, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\e10d9787ce357d146f31e2a966ade4ad.png'),
(90, 40, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\f06a163fd9d1d6198cd19a3e76387416.png'),
(91, 33, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\53963c1796ad4e6f6b40487f71ab1a61.png'),
(92, 39, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\14903777191a5d351127845ee8ae57f4.png'),
(93, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\fbbe78d5ef3374d2bdf7876995429e7a.png'),
(94, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\7527ad9c9bbf4b94629238df78fcf09f.png'),
(95, 31, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\13abe3e4fe19a7280c9b5cc9ace33404.png'),
(96, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\49582de9a6e9fbe355515c210f7a06ea.png'),
(97, 40, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\1ab6237fa071584fb2204bf80b4d744a.png'),
(98, 36, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\43d56a7075e5ed9beaa6b46cf610dea6.png'),
(99, 32, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\723cac40625ff807968df3a5043c1132.png'),
(100, 38, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\d0f3f706e313b5f043ab058bf75ad23e.png'),
(101, 37, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\5b8fb7b15ab3d4e1fdb2b27745c06a8a.png'),
(102, 35, 'C:\\Users\\Arnaud\\AppData\\Local\\Temp\\cd30e337e1ce30507ec9251dc02fba59.png');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `coupons_id` int(11) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `reference` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_ddetails`
--

CREATE TABLE `orders_ddetails` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `description`, `price`, `stock`, `created_at`, `slug`) VALUES
(31, 89, 'Amet.', 'Perferendis quis tempora et fugiat quo dolor. Voluptatem rerum cumque qui ipsam et dolorum. Perferendis id nesciunt exercitationem exercitationem.', 91065, 9, '2022-04-09 17:22:49', 'amet'),
(32, 95, 'Sit.', 'Ut esse mollitia dolorum illo iure repellat libero. Sed occaecati iste ut tempore earum facilis quae. Similique neque molestiae ratione possimus. Reiciendis dignissimos iusto aut quasi et.', 117184, 10, '2022-04-09 17:22:49', 'sit'),
(33, 90, 'Et.', 'Atque porro odio voluptatem et quis et modi. Vel molestias tempore eveniet architecto. Praesentium animi ut et.', 91218, 8, '2022-04-09 17:22:49', 'et'),
(34, 90, 'Quia.', 'Omnis nulla vero voluptas et. Nostrum rerum inventore itaque cupiditate sed. Sed aliquam aut nam officiis maiores velit. Quod eum quia iure minima sunt.', 34619, 10, '2022-04-09 17:22:49', 'quia'),
(35, 93, 'Et.', 'Quasi iste et vel aut aliquid at et ea. Sed corrupti quis eos ratione eveniet quo vitae. Itaque aut soluta asperiores nemo.', 79963, 6, '2022-04-09 17:22:49', 'et'),
(36, 95, 'Quam.', 'Saepe delectus et odio vel quis nihil corporis. Repellat cumque ipsum harum tenetur eaque maiores voluptatem autem. Quasi veniam dolor modi.', 26228, 8, '2022-04-09 17:22:49', 'quam'),
(37, 93, 'Non.', 'Recusandae quasi iste a illum sit natus officiis. Maiores ut neque illum repellat. Facilis enim ipsam voluptatem ea qui tempore id. Vel odit incidunt assumenda ipsum et beatae facilis.', 123237, 5, '2022-04-09 17:22:49', 'non'),
(38, 89, 'Ipsa.', 'Doloribus ut porro dolore qui excepturi atque incidunt. Eum iusto non voluptatem similique. Voluptate maiores nam enim atque beatae quae et. Sit quam id aperiam reprehenderit et.', 9669, 0, '2022-04-09 17:22:49', 'ipsa'),
(39, 91, 'Quam.', 'Iure earum voluptatibus sit voluptatem ut. In repudiandae porro quia quia eaque quasi ea. Et saepe quod facilis voluptatibus atque. Aliquam delectus in totam voluptate.', 43318, 3, '2022-04-09 17:22:49', 'quam'),
(40, 90, 'Id.', 'Ducimus voluptates qui sint quam id rerum quo molestiae. Voluptate voluptate modi incidunt aut voluptas architecto ex.', 111924, 4, '2022-04-09 17:22:49', 'id');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `address`, `zipcode`, `city`, `created_at`) VALUES
(30, 'admin@diane.fr', '[\"ROLE_ADMIN\"]', '$2y$13$3BQ3gpRC78jYZwQ3LEU4UeqQEMc4gMT8TE/LLrAaGVL2KEj/7a.zS', 'Rambot', 'diane', '2 rue des cookies', '17300', 'Ha Bon !', '2022-04-09 17:22:49'),
(31, 'alexandria.schmitt@club-internet.fr', '[\"ROLE_user\"]', '$2y$13$ZdtbMQmyphKT1R2O89lEx.8JxL2SbIYuxTXBOm9SNq1nZ9hZnQN5u', 'Arnaud', 'Isabelle', '4, rue Fontaine', '42920', 'Gautier', '2022-04-09 17:22:49'),
(32, 'gabriel82@petitjean.com', '[\"ROLE_user\"]', '$2y$13$Z5kRyC6Hj3eg6CsCIDtNVuaeA.Knw8N6MVehikLetzKpJ69yzkqh2', 'Auger', 'Noël', 'boulevard Ledoux', '13272', 'Hubert', '2022-04-09 17:22:50'),
(33, 'zbegue@hotmail.fr', '[\"ROLE_user\"]', '$2y$13$idyWfy8iAoAJ36scv/WhUeMn1E1sccLizsXjoOsHKWxHIAbJTejsq', 'Martineau', 'Agathe', '170, rue de Weiss', '16652', 'Torres-la-Forêt', '2022-04-09 17:22:51'),
(34, 'aberthelot@delahaye.com', '[\"ROLE_user\"]', '$2y$13$lXah5JpdNFyXhxhwrjmDwuP8hWawZbd8DO19BjnEB1MVKlJZvm/FC', 'Valentin', 'Léon', 'avenue de Boulay', '73400', 'Millet', '2022-04-09 17:22:51'),
(35, 'masson.gabrielle@imbert.org', '[\"ROLE_user\"]', '$2y$13$p0UQTc2i2grhBSKch2W7Xe8g9TOTBkrOE7BPbFGgmlWjtU7yPTOcy', 'Levy', 'Lorraine', '4, boulevard de Lucas', '46942', 'Chevallier-les-Bains', '2022-04-09 17:22:52'),
(36, 'arno@golin.com', '[]', '$2y$13$pyYQu/7ftTWZc5u8iYxDK.39x/WlAopApVhyzFJiwndqgfoeNQfje', 'arno', 'golin', '2 rue de mon rouge', '75015', 'Paris', '2022-04-11 10:02:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3AF34668727ACA70` (`parent_id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F564111877153098` (`code`),
  ADD KEY `IDX_F56411183DDD47B7` (`coupons_types_id`);

--
-- Index pour la table `coupon_types`
--
ALTER TABLE `coupon_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E01FBE6A6C8A81A9` (`products_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E52FFDEEAEA34913` (`reference`),
  ADD KEY `IDX_E52FFDEE6D72B15C` (`coupons_id`),
  ADD KEY `IDX_E52FFDEE67B3B43D` (`users_id`);

--
-- Index pour la table `orders_ddetails`
--
ALTER TABLE `orders_ddetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_19EF781ACFFE9AD6` (`orders_id`);

--
-- Index pour la table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`orders_id`,`products_id`),
  ADD KEY `IDX_8F964642CFFE9AD6` (`orders_id`),
  ADD KEY `IDX_8F9646426C8A81A9` (`products_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B3BA5A5AA21214B7` (`categories_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `coupon_types`
--
ALTER TABLE `coupon_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders_ddetails`
--
ALTER TABLE `orders_ddetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `FK_F56411183DDD47B7` FOREIGN KEY (`coupons_types_id`) REFERENCES `coupon_types` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6A6C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEE67B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_E52FFDEE6D72B15C` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`id`);

--
-- Contraintes pour la table `orders_ddetails`
--
ALTER TABLE `orders_ddetails`
  ADD CONSTRAINT `FK_19EF781ACFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_8F9646426C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_8F964642CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5AA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
