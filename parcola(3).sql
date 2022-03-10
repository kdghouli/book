-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 mars 2022 à 15:28
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parcola`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id`, `nom`, `site`, `code`, `created_at`, `updated_at`) VALUES
(3, 'Essaouira', 'dolorem', '4', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(4, 'Fes', 'maxime', '9', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(5, 'Marrakech', 'eaque', '8', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(6, 'Beni Mellal', 'rerum', '0', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(7, 'Fes', 'et', '5', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(8, 'Casablanca', 'necessitatibus', '7', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(9, 'ibrahim', NULL, NULL, '2022-03-07 23:09:15', '2022-03-07 23:09:15'),
(10, 'houda', NULL, NULL, '2022-03-07 23:12:15', '2022-03-07 23:12:15'),
(11, 'houda 2', NULL, NULL, '2022-03-07 23:17:51', '2022-03-07 23:17:51'),
(12, 'houda 2', NULL, NULL, '2022-03-07 23:18:32', '2022-03-07 23:18:32'),
(13, 'khalid', NULL, NULL, '2022-03-07 23:19:54', '2022-03-07 23:19:54'),
(14, 'ahmed', NULL, NULL, '2022-03-07 23:21:06', '2022-03-07 23:21:06'),
(15, 'imrane', NULL, NULL, '2022-03-07 23:21:36', '2022-03-07 23:21:36'),
(16, 'imrane 3', NULL, NULL, '2022-03-07 23:22:52', '2022-03-07 23:22:52'),
(17, 'imrane 3', NULL, NULL, '2022-03-07 23:23:17', '2022-03-07 23:23:17'),
(18, 'imrane 5', NULL, NULL, '2022-03-07 23:24:13', '2022-03-07 23:24:13'),
(19, 'imrane 6', NULL, NULL, '2022-03-07 23:24:49', '2022-03-07 23:24:49'),
(20, 'sssss', NULL, NULL, '2022-03-08 21:12:52', '2022-03-08 21:12:52');

-- --------------------------------------------------------

--
-- Structure de la table `carnets`
--

CREATE TABLE `carnets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `date_carnet` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Voiture', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(2, 'Manutention', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(3, 'velomoteur', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(4, 'Camion', '2022-02-08 20:23:21', '2022-02-08 20:23:21');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `date_commentaire` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `vhl_id`, `date_commentaire`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'salamo 3alaycom', 1, '2022-02-09', NULL, '2022-02-02 09:39:59', NULL),
(2, 'salamo 3alaycom', 1, '2022-02-28', NULL, '2022-02-18 09:40:03', NULL),
(3, 'khalid', 2, '2022-02-10', NULL, '2022-02-19 09:40:07', NULL),
(4, 'dghouli', 2, '2022-02-28', NULL, '2022-02-12 09:40:11', NULL),
(5, 'hooda', 2, '2022-02-20', '2022-02-20 17:54:16', '2022-02-20 17:54:16', NULL),
(6, 'dggooooo', 2, '2022-02-20', '2022-02-20 17:54:55', '2022-02-20 17:54:55', NULL),
(7, 'abdo allah', 2, '2022-02-20', '2022-02-20 17:56:11', '2022-02-20 17:56:11', NULL),
(8, 'ddddd', 2, '2022-02-20', '2022-02-20 18:13:38', '2022-02-20 18:13:38', NULL),
(9, 'huytre', 1, '2022-02-20', '2022-02-20 18:19:57', '2022-02-20 18:19:57', NULL),
(10, 'khuyiyiui', 1, '2022-02-20', '2022-02-20 18:22:46', '2022-02-20 18:22:46', NULL),
(11, 'khalidooo', 1, '2022-02-20', '2022-02-20 21:12:33', '2022-02-20 21:12:33', NULL),
(12, 'dsdsdfsdfdsfsdfsdfffffffffffffffffffffffffffffffffffffffffffffff', 1, '2022-02-20', '2022-02-20 21:34:47', '2022-02-20 21:34:47', NULL),
(13, 'kdfjfnvnnvnvnnvnnv', 1, '2022-02-21', '2022-02-21 19:18:36', '2022-02-21 19:18:36', NULL),
(14, 'documentaire 8 alhamdo lillay', 8, '2022-02-21', '2022-02-21 19:20:23', '2022-02-21 19:20:23', NULL),
(15, 'sdfsdf', 8, '2022-02-21', '2022-02-21 19:21:30', '2022-02-21 19:21:30', NULL),
(16, 'sdsdsdsd', 1, '2022-02-21', '2022-02-21 19:25:12', '2022-02-21 19:25:12', NULL),
(17, 'sdfsdfsdf', 1, '2022-02-21', '2022-02-21 19:26:48', '2022-02-21 19:26:48', NULL),
(18, 'sdfdsfsdf', 1, '2022-02-21', '2022-02-21 19:29:02', '2022-02-21 19:29:02', NULL),
(19, 'sdfsdfdsf', 1, '2022-02-21', '2022-02-21 19:29:25', '2022-02-21 19:29:25', NULL),
(20, 'dfsfsdfsdfsd', 1, '2022-02-21', '2022-02-21 19:31:22', '2022-02-21 19:31:22', NULL),
(21, 'dsfsdf', 1, '2022-02-21', '2022-02-21 19:34:35', '2022-02-21 19:34:35', NULL),
(22, 'sdfsdfsdf', 1, '2022-02-21', '2022-02-21 19:36:50', '2022-02-21 19:36:50', NULL),
(23, 'sdfsdfsdf', 1, '2022-02-21', '2022-02-21 19:37:04', '2022-02-21 19:37:04', NULL),
(24, 'ibrahimo', 1, '2022-02-21', '2022-02-21 19:37:21', '2022-02-21 19:37:21', NULL),
(25, 'lkjlkjhoihdukhgdkjghdfg', 128, '2022-02-23', '2022-02-23 19:48:57', '2022-02-23 19:48:57', NULL),
(26, 'Ya Hassra', 128, '2022-02-23', '2022-02-23 19:54:46', '2022-02-23 19:54:46', NULL),
(27, 'dfgdfgdfg', 127, '2022-03-05', '2022-03-05 22:32:03', '2022-03-05 22:32:03', NULL),
(28, '47 47 47 47 47', 12, '2022-03-06', '2022-03-06 16:51:47', '2022-03-06 16:51:47', NULL),
(29, 'asdasdasd', 14, '2022-03-06', '2022-03-06 19:13:43', '2022-03-06 19:13:43', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `conducteurs`
--

CREATE TABLE `conducteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `agence_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grises`
--

CREATE TABLE `grises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `date_grise` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intitules`
--

CREATE TABLE `intitules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `intitules`
--

INSERT INTO `intitules` (`id`, `nom`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'CBGS', 'ECCBC', NULL, NULL),
(2, 'SCBG', 'ECCBC', NULL, NULL),
(3, 'CBGN', 'ECCBC', NULL, NULL),
(4, 'CHAABI LLD', 'Location', NULL, NULL),
(5, 'BM RENTAL', 'Location', NULL, NULL),
(6, 'ARVAL', 'Location', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `kilos`
--

CREATE TABLE `kilos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `date_kilo` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_01_28_213726_create_vhls_table', 1),
(4, '2022_01_30_091633_create_agences_table', 1),
(5, '2022_02_03_215806_create_intitules_table', 1),
(6, '2022_02_03_215849_create_conducteurs_table', 1),
(7, '2022_02_03_215921_create_categories_table', 1),
(8, '2022_02_03_220040_create_visites_table', 1),
(9, '2022_02_03_220132_create_carnets_table', 1),
(10, '2022_02_03_220155_create_grises_table', 1),
(11, '2022_02_03_220220_create_commentaires_table', 1),
(12, '2022_02_03_220304_create_status_table', 1),
(13, '2022_02_03_220332_create_kilos_table', 1),
(14, '2022_02_07_220435_vhls_agence_id_foreign', 1),
(16, '2022_02_14_193332_statu_vhl', 2),
(17, '2022_02_15_223407_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'en arret', NULL, NULL),
(2, 'papier', NULL, NULL),
(3, 'en panne', NULL, NULL),
(4, 'fin contrat', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `statu_vhl`
--

CREATE TABLE `statu_vhl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `statu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statu_vhl`
--

INSERT INTO `statu_vhl` (`id`, `vhl_id`, `statu_id`, `created_at`, `updated_at`) VALUES
(5, 63, 4, NULL, NULL),
(6, 9, 1, NULL, NULL),
(7, 1, 1, NULL, NULL),
(14, 1, 1, NULL, NULL),
(21, 6, 3, NULL, NULL),
(22, 15, 4, NULL, NULL),
(23, 19, 1, NULL, NULL),
(25, 37, 3, NULL, NULL),
(26, 2, 3, NULL, NULL),
(27, 2, 4, NULL, NULL),
(31, 28, 4, '2022-02-23', '2022-02-23'),
(32, 127, 1, '2022-03-05', '2022-03-05'),
(33, 12, 4, '2022-03-06', '2022-03-06'),
(34, 14, 2, '2022-03-06', '2022-03-06');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Treva DuBuque', 'dax.rodriguez@example.net', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QB2jFH6EPn', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(2, 'Elaina Collier', 'stephanie57@example.com', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E81iUNEY7o', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(3, 'Cale Macejkovic', 'abotsford@example.org', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IS23soYd3t', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(4, 'Emma Jenkins', 'ibergnaum@example.net', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dK6f0RZKbQ', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(5, 'Ms. Katherine Rowe', 'rmorar@example.com', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IrxBmh9BYP', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(6, 'Berta Bergstrom', 'angela.fay@example.net', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1l12EvOhJv', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(7, 'Gennaro Mueller', 'dbechtelar@example.net', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M1b4zLXubR', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(8, 'Morton Halvorson', 'michale56@example.com', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S63nJesAOC', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(9, 'Dr. Tre Bahringer', 'rose.morissette@example.org', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B9NjdAugVe', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(10, 'Berta Osinski', 'qwilkinson@example.net', '2022-02-08 20:19:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NT2grNHNDr', '2022-02-08 20:19:22', '2022-02-08 20:19:22'),
(11, 'Arianna Nitzsche', 'madams@example.net', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3nKka5eFyG', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(12, 'Ryan Lang PhD', 'reynold.beahan@example.org', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jZNB6Ko6em', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(13, 'Brett Goldner', 'hayes.everardo@example.org', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'blGhzx1pUU', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(14, 'Dr. Precious Grady PhD', 'euna.weimann@example.org', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a373dIRJEQ', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(15, 'Dr. Wilburn Collier Sr.', 'tremaine05@example.com', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uQgUzbUXFo', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(16, 'Lisette Hoeger', 'dmetz@example.com', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q7mxEsZS5G', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(17, 'Jamar Lang PhD', 'tre41@example.net', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rrX5hlP73u', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(18, 'Jacquelyn Ernser PhD', 'alison39@example.org', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'igp7PwZHp0', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(19, 'Prof. Marianna Paucek', 'moen.georgette@example.com', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c9UykuASRc', '2022-02-08 20:23:21', '2022-02-08 20:23:21'),
(20, 'Walter Lockman DDS', 'zbruen@example.net', '2022-02-08 20:23:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UoW1ETOgQg', '2022-02-08 20:23:21', '2022-02-08 20:23:21');

-- --------------------------------------------------------

--
-- Structure de la table `vhls`
--

CREATE TABLE `vhls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricule` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_mc` date DEFAULT NULL,
  `puissance` int(11) DEFAULT NULL,
  `chassis` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `agence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `intitule_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vhls`
--

INSERT INTO `vhls` (`id`, `matricule`, `marque`, `type`, `date_mc`, `puissance`, `chassis`, `equipement`, `created_at`, `updated_at`, `deleted_at`, `agence_id`, `categorie_id`, `intitule_id`) VALUES
(1, '34513-X-46', 'ut', 'porro', '1987-10-21', 88, 'et', 'est', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 1, 1),
(2, '62105-S-74', 'et', 'odio', '1998-12-26', 13, 'quae', 'recusandae', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 4, 1),
(4, '01912-J-62', 'sit', 'modi', '1998-02-19', 26, 'officia', 'aliquam', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 3, 1),
(6, '30686-B-62', 'qui', 'distinctio', '1999-10-11', 44, 'illum', 'minima', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 2, 1),
(7, '71034-L-51', 'ullam', 'illo', '1971-01-07', 39, 'harum', 'inventore', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 1, 1),
(8, '42692-Y-74', 'aut', 'eveniet', '2006-06-05', 54, 'nihil', 'recusandae', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 2, 1),
(9, '13711-F-22', 'culpa', 'vel', '1992-04-11', 7, 'mollitia', 'sunt', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 1, 2),
(10, '08135-V-14', 'magni', 'sed', '2016-04-05', 37, 'ut', 'cumque', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 2),
(11, '59746-F-03', 'repudiandae', 'magni', '2002-10-01', 78, 'earum', 'itaque', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 3, 2),
(12, '76252-S-47', 'commodi', 'magni', '1976-01-09', 17, 'dolorem', 'rem', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 1, 2),
(13, '60825-W-22', 'consequuntur', 'unde', '2021-04-10', 89, 'rerum', 'libero', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 1, 3),
(14, '42899-M-74', 'et', 'saepe', '2005-10-02', 14, 'occaecati', 'vel', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 1, 3),
(15, '14547-S-57', 'sunt', 'praesentium', '2010-11-09', 31, 'magni', 'sequi', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 3),
(16, '17573-I-74', 'aliquid', 'perferendis', '2004-09-12', 39, 'sit', 'nam', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 3),
(17, '44565-T-16', 'praesentium', 'itaque', '2012-09-06', 41, 'sapiente', 'deleniti', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 2, 4),
(18, '43906-O-33', 'dolor', 'consequuntur', '1998-01-14', 87, 'architecto', 'qui', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 2, 4),
(19, '24980-U-13', 'ut', 'tempora', '2016-10-19', 25, 'quas', 'aut', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 2, 4),
(21, '32752-L-45', 'qui', 'aut', '1999-07-26', 75, 'perspiciatis', 'quae', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 4, 5),
(22, '21914-G-32', 'quia', 'dolores', '1996-10-09', 88, 'architecto', 'quia', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 4, 2),
(23, '21141-H-64', 'accusamus', 'qui', '2021-02-01', 21, 'sunt', 'aspernatur', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 4, 5),
(26, '00396-I-46', 'eaque', 'nihil', '2009-09-21', 10, 'quas', 'ut', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 2, 5),
(27, '46325-W-67', 'incidunt', 'deleniti', '1989-05-06', 7, 'ipsum', 'quis', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 2, 5),
(28, '13275-G-31', 'animi', 'maxime', '2012-12-06', 69, 'repellendus', 'vel', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 2, 5),
(32, '73757-H-72', 'voluptates', 'quae', '1983-04-28', 23, 'et', 'recusandae', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 2, 5),
(33, '09660-F-63', 'enim', 'dolor', '1970-02-24', 5, 'enim', 'animi', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 2, 5),
(34, '04818-H-72', 'ea', 'minima', '2008-08-02', 48, 'natus', 'excepturi', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 2, 5),
(35, '17634-K-32', 'libero', 'odit', '2021-01-02', 81, 'veritatis', 'quia', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 2, 5),
(36, '77050-S-54', 'quia', 'animi', '1989-02-22', 54, 'minus', 'aperiam', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 2, 6),
(37, '71292-P-66', 'libero', 'rem', '1994-10-25', 71, 'nobis', 'rem', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 2, 5),
(38, '50898-O-01', 'commodi', 'harum', '1998-11-09', 39, 'est', 'et', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 2, 6),
(39, '15966-G-05', 'nostrum', 'natus', '1980-12-20', 4, 'iusto', 'sed', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 2, 5),
(40, '01304-S-05', 'est', 'minima', '1971-12-20', 99, 'minima', 'fugit', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 2, 5),
(41, '89914-S-05', 'ut', 'ea', '2015-08-02', 85, 'quo', 'quo', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 3, 5),
(42, '31887-J-63', 'ut', 'molestias', '1992-04-19', 95, 'quaerat', 'sequi', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 3, 5),
(43, '50177-P-50', 'sed', 'omnis', '1973-04-10', 62, 'corporis', 'nihil', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 3, 5),
(44, '46413-G-23', 'vitae', 'et', '1996-07-05', 51, 'voluptas', 'sed', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 3, 5),
(45, '94542-I-74', 'repudiandae', 'et', '1987-09-20', 99, 'natus', 'maxime', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 3, 1),
(46, '84200-J-07', 'omnis', 'qui', '1985-09-11', 65, 'voluptatem', 'dicta', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 3, 5),
(47, '06506-G-46', 'rerum', 'pariatur', '2019-03-22', 37, 'id', 'necessitatibus', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 3, 5),
(48, '55148-G-61', 'corrupti', 'eveniet', '1988-03-26', 59, 'exercitationem', 'porro', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 3, 1),
(51, '06834-B-47', 'eum', 'saepe', '1970-02-09', 0, 'nostrum', 'soluta', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 3, 5),
(53, '33843-V-05', 'ullam', 'laudantium', '1976-02-24', 13, 'aspernatur', 'et', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 4, 5),
(54, '49642-Z-51', 'consequatur', 'ea', '1986-01-04', 78, 'earum', 'reprehenderit', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 4, 5),
(55, '39168-K-76', 'est', 'saepe', '1993-12-06', 73, 'id', 'ea', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 1, 5),
(57, '92965-K-30', 'pariatur', 'unde', '1991-03-22', 56, 'cupiditate', 'veritatis', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 1, 5),
(58, '51441-X-21', 'ut', 'quia', '1995-09-17', 27, 'error', 'ratione', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 1, 4),
(59, '46693-L-46', 'reiciendis', 'in', '1985-03-21', 43, 'velit', 'voluptatem', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 3, 4),
(60, '88194-A-50', 'accusamus', 'iste', '2001-05-29', 17, 'assumenda', 'optio', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 3, 4),
(63, '11484-K-65', 'fuga', 'voluptatem', '1988-09-09', 61, 'laboriosam', 'quibusdam', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 3, 4),
(64, '16239-R-65', 'fuga', 'nihil', '2021-08-20', 1, 'eveniet', 'et', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 4),
(66, '50534-I-61', 'animi', 'molestiae', '2000-12-04', 48, 'placeat', 'nobis', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 1, 4),
(67, '37983-D-55', 'atque', 'vel', '1987-02-11', 37, 'recusandae', 'est', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 1, 4),
(68, '64334-I-06', 'illum', 'et', '2008-05-27', 4, 'aut', 'pariatur', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 3, 4),
(69, '59888-W-53', 'sed', 'assumenda', '1988-03-08', 87, 'rem', 'qui', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 3, 1),
(70, '60398-L-33', 'omnis', 'aliquid', '2015-04-29', 31, 'et', 'ad', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 3, 1),
(71, '08476-B-56', 'quisquam', 'vero', '1982-03-10', 92, 'esse', 'ut', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 3, 1),
(73, '90296-Z-67', 'iusto', 'nihil', '2015-02-08', 11, 'vero', 'totam', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 3, 1),
(75, '51149-Q-14', 'nam', 'magnam', '2013-08-02', 97, 'est', 'qui', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 3, 6),
(77, '51499-G-74', 'magnam', 'iste', '1974-07-19', 0, 'eaque', 'iure', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 6),
(78, '71056-J-37', 'sint', 'a', '1970-01-12', 38, 'vitae', 'sit', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 1, 1),
(79, '65343-C-50', 'et', 'aut', '2015-01-19', 25, 'reprehenderit', 'ab', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 1, 6),
(81, '14647-R-63', 'nesciunt', 'quo', '1998-08-03', 1, 'eius', 'dolorem', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 1, 6),
(83, '23991-C-17', 'eligendi', 'sed', '1991-02-18', 12, 'sit', 'necessitatibus', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 1, 6),
(84, '38285-A-64', 'non', 'assumenda', '1995-07-10', 16, 'totam', 'est', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 3, 6),
(85, '25359-V-54', 'ex', 'expedita', '2012-12-19', 97, 'consequatur', 'magnam', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 3, 1),
(86, '70650-V-45', 'et', 'recusandae', '2018-09-20', 75, 'sed', 'et', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 1, 1),
(87, '40719-A-31', 'enim', 'nemo', '1993-03-10', 45, 'omnis', 'assumenda', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 7, 1, 1),
(88, '99335-Y-04', 'nobis', 'autem', '1978-08-06', 8, 'autem', 'consequatur', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 1),
(89, '50229-Y-45', 'quam', 'ullam', '1999-04-04', 92, 'repellendus', 'adipisci', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 4, 1, 6),
(91, '00849-W-02', 'velit', 'eos', '2018-07-05', 72, 'vel', 'velit', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 6),
(92, '43651-G-23', 'nisi', 'velit', '2009-12-18', 29, 'quod', 'dolor', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 2, 6),
(93, '02155-O-00', 'et', 'et', '2009-09-07', 83, 'dicta', 'iusto', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 8, 2, 6),
(94, '62522-F-47', 'quia', 'consequatur', '1987-06-15', 52, 'nulla', 'quo', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 5, 1, 6),
(95, '13292-O-01', 'facere', 'soluta', '1996-05-06', 78, 'nam', 'nihil', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 6, 1, 6),
(97, '79520-M-32', 'est', 'et', '1984-09-11', 76, 'aut', 'iusto', '2022-02-08 20:23:21', '2022-02-08 20:23:21', NULL, 3, 1, 1),
(121, '556652', 'qsdqsd', 'qsdqdqs', '2021-09-07', 4, 'qsdqsdqsd', 'qsdqsdsd', '2022-02-19 10:01:39', '2022-02-19 10:01:39', NULL, 5, NULL, 4),
(122, 'dsfsdf', 'sdfsdf', 'sdfsdf', '2022-02-17', 3, 'sdfdsf', 'sdfsdff', '2022-02-19 12:08:12', '2022-02-19 12:08:12', NULL, 5, 3, 3),
(123, 'kkkkkkkkkk', 'dsfsd', 'sadfsadsdaf', '2022-02-03', 2, 'sdfsadf', 'sdfsdf', '2022-02-19 12:34:46', '2022-02-19 12:34:46', NULL, 4, 1, 2),
(124, '99999999', 'dsfsd', 'sdf', '2022-02-08', 3, 'sdfsdf', 'sdfsdf', '2022-02-19 12:36:17', '2022-02-19 12:36:17', NULL, 8, 2, 6),
(125, '888888888', 'sdfsdf', 'sdfsdf', '2022-02-08', 3, 'sdfsdf', 'sdfsdf', '2022-02-19 12:36:58', '2022-02-19 12:36:58', NULL, 5, 1, 5),
(126, '7777777', 'dsada', 'asdasd', '2022-02-08', 3, 'asdasd', 'asdasd', '2022-02-19 12:39:13', '2022-02-19 12:39:13', NULL, 5, 2, 5),
(127, '6666666', 'dsfsdf', 'sdfsdf', '2022-03-31', 2, 'sdfsdf', 'sdfsdf', '2022-02-19 12:40:33', '2022-02-19 12:40:33', NULL, 5, 2, 4),
(128, '5555555', 'fsdfdf', 'sdfsdfsdf', '2022-02-11', 3, 'sdfsdf', 'sdfsdf', '2022-02-19 12:41:14', '2022-02-19 12:41:14', NULL, 5, 2, 3),
(129, '12121212', 'wsdas', 'asdasdasd', '2022-01-31', 3, 'asdasd', 'asdasdas', '2022-02-19 12:43:26', '2022-02-19 12:43:26', NULL, 3, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--

CREATE TABLE `visites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL,
  `date_visite` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carnets`
--
ALTER TABLE `carnets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carnets_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaires_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `conducteurs`
--
ALTER TABLE `conducteurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conducteurs_vhl_id_foreign` (`vhl_id`),
  ADD KEY `conducteurs_agence_id_foreign` (`agence_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grises`
--
ALTER TABLE `grises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grises_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `intitules`
--
ALTER TABLE `intitules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kilos`
--
ALTER TABLE `kilos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kilos_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statu_vhl`
--
ALTER TABLE `statu_vhl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statu_vhl_vhl_id_foreign` (`vhl_id`),
  ADD KEY `statu_vhl_statu_id_foreign` (`statu_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vhls`
--
ALTER TABLE `vhls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vhls_agence_id_foreign` (`agence_id`),
  ADD KEY `vhls_categorie_id_foreign` (`categorie_id`),
  ADD KEY `vhls_intitule_id_foreign` (`intitule_id`);

--
-- Index pour la table `visites`
--
ALTER TABLE `visites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visites_vhl_id_foreign` (`vhl_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agences`
--
ALTER TABLE `agences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `carnets`
--
ALTER TABLE `carnets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `conducteurs`
--
ALTER TABLE `conducteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grises`
--
ALTER TABLE `grises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `intitules`
--
ALTER TABLE `intitules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `kilos`
--
ALTER TABLE `kilos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `statu_vhl`
--
ALTER TABLE `statu_vhl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `vhls`
--
ALTER TABLE `vhls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT pour la table `visites`
--
ALTER TABLE `visites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carnets`
--
ALTER TABLE `carnets`
  ADD CONSTRAINT `carnets_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);

--
-- Contraintes pour la table `conducteurs`
--
ALTER TABLE `conducteurs`
  ADD CONSTRAINT `conducteurs_agence_id_foreign` FOREIGN KEY (`agence_id`) REFERENCES `agences` (`id`),
  ADD CONSTRAINT `conducteurs_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);

--
-- Contraintes pour la table `grises`
--
ALTER TABLE `grises`
  ADD CONSTRAINT `grises_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);

--
-- Contraintes pour la table `kilos`
--
ALTER TABLE `kilos`
  ADD CONSTRAINT `kilos_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);

--
-- Contraintes pour la table `statu_vhl`
--
ALTER TABLE `statu_vhl`
  ADD CONSTRAINT `statu_vhl_statu_id_foreign` FOREIGN KEY (`statu_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `statu_vhl_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);

--
-- Contraintes pour la table `vhls`
--
ALTER TABLE `vhls`
  ADD CONSTRAINT `vhls_agence_id_foreign` FOREIGN KEY (`agence_id`) REFERENCES `agences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vhls_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vhls_intitule_id_foreign` FOREIGN KEY (`intitule_id`) REFERENCES `intitules` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `visites`
--
ALTER TABLE `visites`
  ADD CONSTRAINT `visites_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
