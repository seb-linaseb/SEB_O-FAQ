-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 27 Août 2019 à 18:08
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.11-4+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ofaq`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` int(11) NOT NULL,
  `prefered` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `answer`
--

INSERT INTO `answer` (`id`, `content`, `status`, `rate`, `prefered`, `created_at`, `updated_at`, `user_id`, `question_id`) VALUES
(1, 'Un jour, peut être...', 0, 0, 0, '2019-08-23 08:10:23', '2019-08-23 08:10:23', 5, 1),
(2, 'Quand tu seras sage....', 0, 0, 0, '2019-08-23 08:10:23', '2019-08-23 08:10:23', 6, 1),
(3, 'Jamais !', 0, 0, 1, '2019-08-23 08:14:16', '2019-08-23 08:14:16', 7, 1),
(4, 'Noir', 0, 0, 1, '2019-08-23 08:14:16', '2019-08-23 08:14:16', 5, 2),
(5, 'Rouge', 0, 0, 0, '2019-08-23 08:15:41', '2019-08-23 08:15:41', 6, 2),
(6, 'Vert', 0, 0, 0, '2019-08-23 08:15:41', '2019-08-23 08:15:41', 7, 2),
(7, 'Aucun !', 0, 0, 0, '2019-08-23 08:21:50', '2019-08-23 08:21:50', 5, 3),
(8, '1 seul !', 0, 0, 0, '2019-08-23 08:21:50', '2019-08-23 08:21:50', 6, 3),
(9, 'Une palette !', 0, 0, 1, '2019-08-23 08:23:26', '2019-08-23 08:23:26', 7, 3),
(10, 'Je suis mort de rire !', 0, 0, 0, '2019-08-23 08:23:26', '2019-08-23 08:23:26', 5, 4),
(11, 'Bof bof', 0, 0, 0, '2019-08-23 08:25:07', '2019-08-23 08:25:07', 6, 4),
(12, 'Pas vraiment, non !', 0, 0, 1, '2019-08-23 08:25:07', '2019-08-23 08:25:07', 7, 4),
(13, 'SEB', 0, 0, 0, '2019-08-23 08:26:28', '2019-08-23 08:26:28', 5, 5),
(14, 'Ben O\'Clock !', 0, 0, 0, '2019-08-23 08:26:28', '2019-08-23 08:26:28', 6, 5),
(15, 'Guillaume O\'Clock... d\'ailleurs il a disparu depuis qu`il a volé le MUG de SEB', 0, 0, 1, '2019-08-23 08:27:33', '2019-08-23 08:27:33', 7, 5);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190821180133', '2019-08-21 18:01:46'),
('20190821180424', '2019-08-21 18:04:30'),
('20190821180526', '2019-08-21 18:05:30'),
('20190821180631', '2019-08-21 18:06:36'),
('20190821180716', '2019-08-21 18:07:21'),
('20190821180925', '2019-08-21 18:09:34'),
('20190821181022', '2019-08-21 18:10:28'),
('20190821181104', '2019-08-21 18:11:09'),
('20190821181149', '2019-08-21 18:11:55'),
('20190821181302', '2019-08-21 18:13:08'),
('20190825062356', '2019-08-25 06:24:13');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `title`, `content`, `status`, `rate`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Quand est-ce qu\'on reçoit le MUG ?', 'Quand est-ce qu\'on reçoit le MUG ? Quand est-ce qu\'on reçoit le MUG ?', 1, 0, '2019-08-22 17:51:30', '2019-08-22 17:51:30', 3),
(2, 'De quel couleur est le MUG ?', 'De quel couleur est le MUG ? De quel couleur est le MUG ?', 1, 0, '2019-08-22 17:51:30', '2019-08-22 17:51:30', 4),
(3, 'Combien on reçoit de MUG ?', 'Combien on reçoit de MUG ? Combien on reçoit de MUG ?', 1, 0, '2019-08-22 17:52:47', '2019-08-22 17:52:47', 5),
(4, 'La blague sur le MUG est-elle drôle ?', 'La blague sur le MUG est-elle drôle ? La blague sur le MUG est-elle drôle ?', 1, 0, '2019-08-22 17:52:47', '2019-08-22 17:52:47', 6),
(5, 'Qui a volé mon MUG ?', 'Qui a volé mon MUG ? Qui a volé mon MUG ?', 1, 0, '2019-08-22 17:53:16', '2019-08-22 17:53:16', 7);

-- --------------------------------------------------------

--
-- Structure de la table `question_tag`
--

CREATE TABLE `question_tag` (
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `question_tag`
--

INSERT INTO `question_tag` (`question_id`, `tag_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrateur', '2019-08-22 17:41:56', '2019-08-22 17:41:56'),
(2, 'ROLE_MODERATOR', 'Modérateur', '2019-08-22 17:41:56', '2019-08-22 17:41:56'),
(3, 'ROLE_USER', 'Utilisateur', '2019-08-22 17:42:35', '2019-08-22 17:42:35');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SYMFONY', '2019-08-22 19:37:16', '2019-08-22 19:37:16'),
(2, 'REACT', '2019-08-22 19:37:16', '2019-08-22 19:37:16'),
(3, 'WORDPRESS', '2019-08-22 19:37:42', '2019-08-22 19:37:42'),
(4, 'WIX', '2019-08-22 19:37:42', '2019-08-22 19:37:42'),
(5, 'WORD', '2019-08-22 19:37:56', '2019-08-22 19:37:56');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `status`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'admin', '$argon2id$v=19$m=65536,t=4,p=1$fsE2PcjeB4K5xHgz9R1V3A$4lyBcfQm8TIz2BclIRPKULq0XVG643kGMn2cBrvYI9A', 'admin@oclock.local', 1, '2019-08-22 17:44:34', '2019-08-22 17:44:34', 1),
(2, 'user', '$argon2id$v=19$m=65536,t=4,p=1$7UMPYxynATR+XIBqws/y1g$S+/Pd7B67MJLJIpNj6oFEUMq9ZEGtESpzBvo4I41py8', 'user@oclock.local', 1, '2019-08-22 17:45:45', '2019-08-22 17:45:45', 3),
(3, 'MUG', '$argon2id$v=19$m=65536,t=4,p=1$ROfENIuxM2aGCIOZxjDKww$LY25eWjhqhcf09qCHIZ1lNdLbmKr0BB8lJHyYWXpQ8c', 'MUG@oclock.local', 1, '2019-08-22 17:45:45', '2019-08-22 17:45:45', 2),
(4, 'SEB', '$argon2id$v=19$m=65536,t=4,p=1$721vgEg3kLSROsFLeZ6xpg$R0vAq4ATiu8ilAKj1gTqoxnYCHoQNgtVkbhhnNKQVqk', 'SEB@oclock.local', 1, '2019-08-22 17:46:35', '2019-08-22 17:46:35', 2),
(5, 'Myriam', '$argon2id$v=19$m=65536,t=4,p=1$ljC+FWsybqkvwMUXbqAlTg$1FFFT0qFpKDp2X+LLD9PYwdDMN4NZbtuggLoW6E/M2k', 'Myriam@oclock.local', 1, '2019-08-22 17:46:35', '2019-08-22 17:46:35', 3),
(6, 'Nadia', '$argon2id$v=19$m=65536,t=4,p=1$1CNydg/uzDRfScIBmDWilg$lHV5OXZTyQY2gMS/UWpkI6OByks0+lIk6wqkcnXtVAU', 'Nadia@oclock.local', 1, '2019-08-22 17:47:29', '2019-08-22 17:47:29', 3),
(7, 'Max', '$argon2id$v=19$m=65536,t=4,p=1$xoRqLibfYz+ToZhrTKkVXg$ACwiKCoCsw+gorioI9XsyxamQV5EKPOosUzedpbwBlE', 'Max@oclock.local', 1, '2019-08-22 17:47:29', '2019-08-22 17:47:29', 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DADD4A25A76ED395` (`user_id`),
  ADD KEY `IDX_DADD4A251E27F6BF` (`question_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7494EA76ED395` (`user_id`);

--
-- Index pour la table `question_tag`
--
ALTER TABLE `question_tag`
  ADD PRIMARY KEY (`question_id`,`tag_id`),
  ADD KEY `IDX_339D56FB1E27F6BF` (`question_id`),
  ADD KEY `IDX_339D56FBBAD26311` (`tag_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D93D649D60322AC` (`role_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FK_DADD4A251E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `FK_DADD4A25A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_B6F7494EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question_tag`
--
ALTER TABLE `question_tag`
  ADD CONSTRAINT `FK_339D56FB1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_339D56FBBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
