-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 10 mars 2024 à 23:36
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `metalgear`
--

-- --------------------------------------------------------

--
-- Structure de la table `allegeances`
--

CREATE TABLE `allegeances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_allege` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `LOGO` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `allegeances`
--

INSERT INTO `allegeances` (`id`, `nom_allege`, `slug`, `description`, `LOGO`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fox', 'Fox', 'Force Operation X (FOX), communément appelée l\'unité FOX, était un groupe d\'opérations secrètes de la CIA. Elle était à l\'origine dirigée par le Major Zero pendant la guerre froide. L\'unité était spécialement conçue pour mener des missions top secrètes d\'infiltration et d\'autres opérations secrètes. Son agent le plus remarquable était Naked Snake, qui n\'a fait partie de l\'unité que pendant une courte période au début des années 1960. FOX effectuait principalement des missions d\'infiltration à un seul homme.', '/image/1666053550.png', NULL, '2022-10-17 22:40:37', NULL),
(2, 'FoxHound', 'FoxHound', 'FOXHOUND est une unité secrète spécialisé dans les opérations d\'infiltration clandestines , fondée par Big Boss en 1971 après la dissolution de l\'unité FOX de la CIA un an plus tôt. Bien que sa fonction ait évolué au fil des ans, FOXHOUND s\'est spécialisé dans l\'infiltration en solitaire, secrète, pour faire face aux révolutions locales, aux complications régionales et aux activités terroristes mondiales dans des zones de combat non autorisées trop politiquement sensibles pour intervenir par des moyens conventionnels.', '/image/FoxHound.png', NULL, NULL, NULL),
(3, 'Diamond Dogs', 'Diamond Dogs', 'Diamond Dogs était une société militaire privée dirigée par Venom Snake dans les années 1980. Elle a été créée à la suite de la dévastation des Militaires Sans Frontières ainsi que de l\'attaque de l\'Ancienne Base Mère. Au cours des années 80, les Diamond Dogs ont réussi à s\'installer sur une installation offshore calquée sur leur ancienne base, qui leur avait été donnée par le gouvernement des Seychelles après qu\'ils eurent empêché une tentative de coup d\'État par des mercenaires sud-africains. Le nom provient de la profession de Dogs of War du groupe, qui étaient prêts à effectuer des tâches peu recommandables pour des clients, tout en gardant la fierté de leur travail.', '/image/DDogs.png', NULL, NULL, NULL),
(4, 'The Patriots', 'The Patriots', 'Les Patriotes, initialement connus sous le nom de Cipher, également appelés La-li-lu-le-lo (らりるれろ), étaient une organisation secrète qui, au début des années 1990, contrôlait secrètement les États-Unis d\'Amérique. Le groupe a été formé pour réaliser l\'idéal d\'un monde unifié qui a été envisagé par le soldat légendaire The Boss et a ensuite cherché à contrôler le monde entier pour s\'en assurer.', '/image/Patriots.png', NULL, NULL, NULL),
(5, 'Xof', 'Xof', 'Le XOF était à l\'origine une unité de soutien secrète de son homologue FOX de la CIA dans les années 1960, avant de devenir la force de frappe secrète du Cipher en 1970. Le logo du groupe utilisait une image inversée du renard, utilisée par la (défunte) unité FOX. Au cours des années 1980, des missions de plus haute priorité ont été confiées à leur nouvelle équipe de forces spéciales appelée l\'Unité Parasite. Crée par le Major Zéro, la FOX, dont les membres fournissaient des renseignements de terrain aux agents de la FOX pendant les missions et nettoyaient après eux, s\'assurant que les agents ne laissaient aucune trace de leur passage.', '/image/Xof.png', NULL, NULL, NULL),
(6, 'Cobra Unit', 'Cobra Unit', 'L\'Unité Cobra, également connue sous le nom de Cobras et autrefois appelée les Fils du Patron,[1] était une équipe légendaire de soldats rassemblés par le Patron en 1942 pour combattre les puissances de l\'Axe. L\'Unité Cobra était l\'un des nombreux soldats surhumains que les Philosophes avaient formés grâce à leurs ressources. En 1942, l\'Unité Cobra a été officiellement formée et dirigée par The Boss (alors connu sous le nom de The Joy) pendant la bataille de Stalingrad. L\'Unité Cobra était composée de soldats entraînés pour gagner la guerre et dotés de capacités surhumaines - qu\'au moins deux d\'entre eux devaient à une thérapie par parasites.', '/image/CU.png', NULL, NULL, NULL),
(7, 'Dead Cell', 'Dead Cell', 'Dead Cell est une ancienne unité des forces spéciales spécialisée dans les opérations de contre-terrorisme qui a été créée par le président américain George Sears. Bien que l\'unité fasse officiellement partie de l\'U.S. Navy, le groupe répondait directement au président.', '/image/DC1.png', NULL, NULL, NULL),
(8, 'Philanthropy', 'Philanthropy', 'Philanthropie était une organisation non gouvernementale (ONG) anti-Metal Gear fondée par Otacon et Solid Snake. L\'organisation a été créée en réponse à l\'abondance de dérivés de Metal Gear REX développés après l\'incident de Shadow Moses. Le groupe opérait en découvrant des informations sur le développement de nouveaux Metal Gear, en rassemblant des preuves de leur existence, puis en essayant d\'empêcher leur réalisation, souvent en les détruisant.', '/image/Philantopy.png', NULL, NULL, NULL),
(9, 'Sons of BigBoss', 'Sons of BigBoss', 'Les Fils de Big Boss étaient un groupe terroriste composé de membres de l\'unité des forces spéciales américaines FOXHOUND et des Forces spéciales de nouvelle génération (NGSF), dirigées par Liquid Snake. Les NGSF avaient reçu une thérapie génique pour imiter les traits du célèbre soldat et ancien commandant de FOXHOUND, Big Boss, Liquid étant un clone de l\'homme lui-même. La plupart des autres membres du FOXHOUND partageaient également des liens passés avec Big Boss, ayant une grande admiration pour le soi-disant soldat légendaire.', '/image/SOBB.png', NULL, NULL, NULL),
(10, 'Outer Heaven', 'Outer Heaven', 'Outer Heaven fait référence à un certain nombre de concepts qui se rapportent tous au rêve du Big Boss, qui consiste à mettre fin à l\'abus et à l\'exploitation des soldats par les gouvernements du monde entier, en se basant sur son interprétation de la volonté du Boss. Dans les années 1980, Big Boss a créé une nation totalement indépendante, Outer Heaven, à 200 kilomètres au nord de Galzburg, en Afrique du Sud. Outer Heaven est devenu un sanctuaire pour les soldats désabusés, où ils ne seraient pas utilisés comme des pions de leur gouvernement, et où ils auraient toujours une place, que ce soit sur le champ de bataille ou dans la société en général.', '/image/Outer Heaven.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2022_10_04_080212_create_allegeances_table', 1),
(10, '2022_10_04_080230_create_personnages_table', 1),
(11, '2022_10_06_072637_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Mostefa69120@gmail.com', '$2y$10$AevLQ94Wtr5efm7wi3kyJ.lhme8Y9gKUQtzLoxGN7ycCU0djChb.C', '2022-10-17 22:56:28');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_perso` varchar(255) NOT NULL,
  `prenom_perso` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `nationalite` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `allegeance_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_perso`, `prenom_perso`, `etat`, `nationalite`, `deleted_at`, `created_at`, `updated_at`, `allegeance_id`) VALUES
(2, 'Liquid Snake', 'Eli', 'Possde Ocelot', 'Britannique', NULL, NULL, '2022-10-05 01:54:04', 9),
(6, 'Skull Face', 'Bilagéana', 'Décédé', 'Hongroise', NULL, '2022-10-04 06:53:23', '2022-10-06 03:36:37', 5),
(7, 'Otacon', 'Hal Emmerich', 'Vivant', 'Americain', NULL, '2022-10-05 01:14:49', '2022-10-05 01:36:23', 8),
(8, 'Solidus Snake', 'George Sears', 'Végétatif', 'Americain', NULL, NULL, '2022-10-05 01:52:43', 7),
(9, 'Fortune', 'Helena Dolph Jackson', 'Décédé', 'Americain', NULL, NULL, '2022-10-05 01:40:32', 7),
(10, 'Vamp', 'Inconnue', 'Décédé', 'Roumain', NULL, NULL, '2022-10-05 01:52:21', 7),
(12, 'Decoy Octopus', 'Inconnue', 'Décédé', 'Mexicain', NULL, NULL, '2022-10-10 02:40:12', 9),
(13, 'Vulcan Raven', 'Inconnue', 'Décédé', 'Inuit', NULL, NULL, '2022-10-05 01:51:37', 9),
(14, 'Sniper Wolf', 'Inconnue', 'Décédé', 'Iraquien', NULL, NULL, '2022-10-05 01:51:46', 9),
(15, 'Psycho Mantis', 'Tretij Rebenok', 'Décédé', 'Russe', NULL, NULL, '2022-10-05 01:51:58', 9),
(16, 'The Boss', 'Inconnue', 'Décédé', 'Americain', '2022-10-17 15:40:46', NULL, '2022-10-17 15:40:46', 6),
(17, 'The Pain', 'Inconnue', 'Décédé', 'Inconnue', NULL, NULL, NULL, 6),
(18, 'The Fear', 'Inconnue', 'Décédé', 'Inconnue', NULL, NULL, NULL, 6),
(19, 'The End', 'Inconnue', 'Décédé', 'Inconnue', NULL, NULL, NULL, 6),
(20, 'The Fury', 'Inconnue', 'Décédé', 'Soviétique', NULL, NULL, NULL, 6),
(21, 'The Sorrow', 'Inconnue', 'Spectre', 'Soviétique', NULL, NULL, NULL, 6),
(22, 'Solid Snake', 'David', 'Vivant', 'Americain', NULL, NULL, NULL, 8),
(23, 'Raiden', 'Jack', 'Vivant', 'Libérian', NULL, NULL, NULL, 8),
(24, 'Gray Fox', 'Frank Jaeger', 'Décédé', 'Americain', NULL, '2022-10-06 05:11:22', '2022-10-06 05:11:22', 2),
(25, 'Fatman', 'Inconnue', 'Décédé', 'Inconnue', NULL, '2022-10-06 08:37:52', '2022-10-06 08:38:52', 7),
(26, 'Master Miller', 'Kazuhira Miller', 'Décédé', 'Japonais', NULL, '2022-10-10 02:15:15', '2022-10-10 02:15:15', 3),
(27, 'Para-Medic', 'Clark', 'Décédé', 'Americain', NULL, NULL, NULL, 1),
(28, 'Sigint', 'Donald Anderson', 'Décédé', 'Americain', NULL, NULL, NULL, 1),
(29, 'Viper', 'Gene', 'Décédé', 'Americain', NULL, NULL, NULL, 1),
(30, 'Boa', 'Cunningham', 'Décédé', 'Americain', NULL, NULL, NULL, 1),
(31, 'The Anti-Snake', 'Inconnue', 'Décédé', 'Americain', NULL, NULL, NULL, 1),
(32, 'The Twin Psycho', 'Elisa and Ursula', 'Décédé', 'Allemand', NULL, NULL, '2022-10-16 20:33:18', 1),
(33, 'Colonel', 'Roy Campbell', 'Vivant', 'Americain', NULL, NULL, '2022-10-12 15:15:03', 2),
(34, 'Mercenary', 'George Kasler', 'Vivant', 'Americain', NULL, NULL, NULL, 2),
(35, 'Venom Snake', 'Ahab', 'Décédé', 'Americain', NULL, NULL, NULL, 3),
(36, 'Inconnue', 'Huey Emmerich', 'Décédé', 'Americain', NULL, NULL, NULL, 3),
(37, 'Quiet', 'Tixij', 'Disparu', 'Inconnue', NULL, NULL, NULL, 3),
(38, 'Code Talker', 'George', 'Décédé', 'Navajo', NULL, NULL, NULL, 3),
(39, 'Drebin 893', 'Inconnue', 'Vivant', 'Ougandais', NULL, NULL, NULL, 4),
(40, 'Pacifica Ocean', 'Paz Ortega Andrade', 'Vivant', 'Costa Ricain', NULL, NULL, NULL, 4),
(41, 'EVA', 'Inconnue', 'Vivant', 'Chinoise', NULL, NULL, NULL, 4),
(42, 'Zero', 'David Oh', 'Décédé', 'Americain', NULL, NULL, NULL, 4),
(43, 'The Man on Fire', 'Yevgeny Borisovitch Volgin', 'Décédé', 'Russe', NULL, NULL, NULL, 5),
(45, 'Revolver \"Shalashaska\" Ocelot', 'Adamska', 'Décédé', 'Russe', NULL, NULL, NULL, 10),
(55, 'Big Boss', 'John', 'Décédé', 'Americain', NULL, '2022-10-17 22:17:24', '2022-10-17 22:17:24', 10);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('agMRB7eRS4Lyzd7QW1ldvDZuU2V3BmmjAh8zbl5c', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaGlwa1EwWkMyemxCTmVwZEpqbzB3aDFnbEkzcEowbHY1bkE1RDZMZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9sb2NhbGhvc3QvTWV0YWxHZWFyL3B1YmxpYy9wZXJzb25uYWdlcy81NSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHVybzUwL3VyQnpuNlhxVENFZHBPNC5JQTBnOHoxWGlaN0kuRzlSRUpUdlZPaFJ6YWxSMVRhIjt9', 1678919385),
('C1h1CXAlFYRWeIM44QEDlmYysCYPys61STAYJ1wf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVm8wU2p5QWxtcFAwbW1oU2IxRUxoNXN3NkU0Z2p1c3pRTTd0RGVFdyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovLzEyNy4wLjAuMS9NZXRhbEdlYXIvcHVibGljIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjEvTWV0YWxHZWFyL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1709934430),
('Fh1GmKBShauJ7h69dM9PVFd4jArzwzWDfv63YlgC', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSkZaWlBVZHlJbDA4SEluS2lzY2pYdVNSbTFoV2lhSGpRSE5ORDd4YSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OiJodHRwOi8vbG9jYWxob3N0L01ldGFsR2Vhci9wdWJsaWMvcGVyc29ubmFnZXMvNTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHVybzUwL3VyQnpuNlhxVENFZHBPNC5JQTBnOHoxWGlaN0kuRzlSRUpUdlZPaFJ6YWxSMVRhIjt9', 1678921882),
('fLlUTm7Q1Hg1AZun2xbNS91N29BqTqJx59VSueQN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicFpWOFJOT2RlOWFzaUE5VnVYeEhZWTBGVldzeTl1aGl6RXZqR0NvVCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUzOiJodHRwOi8vMTI3LjAuMC4xL01ldGFsR2Vhci9wdWJsaWMvcGVyc29ubmFnZXMvNTUvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkdXJvNTAvdXJCem42WHFUQ0VkcE80LklBMGc4ejFYaVo3SS5HOVJFSlR2Vk9oUnphbFIxVGEiO30=', 1709934564),
('LSTPkxBgPqCrfTG0u9TBiTzol7WpD5HFOlbfVVFC', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVnc1aVJBOXI5a1hQaFBPMkxDZlMyV1hIOEZ4blY3U3FUMHVTNWQzMyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYwOiJodHRwOi8vbG9jYWxob3N0L01ldGFsR2Vhci9wdWJsaWMvYWxsZWdlYW5jZS9Gb3gvcGVyc29ubmFnZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHVybzUwL3VyQnpuNlhxVENFZHBPNC5JQTBnOHoxWGlaN0kuRzlSRUpUdlZPaFJ6YWxSMVRhIjt9', 1678917676),
('ZR3pAwndHaqEpn8EMD3HpFhbq7HERlGDXjkNkPFf', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 OPR/91.0.4516.72', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQm56RnhTZ2lsSjJQRGtMRUdvbTZ2RHN4Z25Tek10c2xuMjdZMEJweSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vbG9jYWxob3N0L01ldGFsR2Vhci9wdWJsaWMvaW5kZXhDYXQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHVybzUwL3VyQnpuNlhxVENFZHBPNC5JQTBnOHoxWGlaN0kuRzlSRUpUdlZPaFJ6YWxSMVRhIjt9', 1666055405);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'BigBoss\'s Team', 1, '2022-10-10 21:23:36', '2022-10-10 21:23:36'),
(2, 2, 'MOSTEFA\'s Team', 1, '2022-10-17 22:56:06', '2022-10-17 22:56:06');

-- --------------------------------------------------------

--
-- Structure de la table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'BigBoss', 'Boss@OH.ca', NULL, '$2y$10$uro50/urBzn6XqTCEdpO4.IA0g8z1XiZ7I.G9REJTvVOhRzalR1Ta', NULL, NULL, NULL, 'Q3XyBv8TvlysGDJU6zS2seqszNF8E8LgZYVHoD8RlDVZKxwBPwcJzoSqLxZN', 1, NULL, '2022-10-10 21:23:36', '2022-10-10 21:23:36'),
(2, 'MOSTEFA ALI-KADA', 'Mostefa69120@gmail.com', NULL, '$2y$10$di5Ac2FwX28DGqgBmAY6vebshGwQUjdVBXslzBGLmdJ793ZqfjxMm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 22:56:06', '2022-10-17 22:56:06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allegeances`
--
ALTER TABLE `allegeances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnages_allegeance_id_foreign` (`allegeance_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Index pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Index pour la table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allegeances`
--
ALTER TABLE `allegeances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD CONSTRAINT `personnages_allegeance_id_foreign` FOREIGN KEY (`allegeance_id`) REFERENCES `allegeances` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
