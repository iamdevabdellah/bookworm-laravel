{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf400
{\fonttbl\f0\fnil\fcharset0 FiraCode-Regular;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww21840\viewh12000\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs26 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.8.3\
-- https://www.phpmyadmin.net/\
--\
-- Host: localhost:3306\
-- Generation Time: Jun 29, 2019 at 04:30 PM\
-- Server version: 5.7.23\
-- PHP Version: 7.2.8\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Database: `bookworm`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `migrations`\
--\
\
CREATE TABLE `migrations` (\
  `id` int(10) UNSIGNED NOT NULL,\
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `batch` int(11) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `migrations`\
--\
\
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES\
(1, '2014_10_12_000000_create_users_table', 1),\
(2, '2014_10_12_100000_create_password_resets_table', 1),\
(3, '2019_06_28_034411_create_permission_tables', 1),\
(4, '2019_06_28_040514_create_posts_table', 2);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `model_has_permissions`\
--\
\
CREATE TABLE `model_has_permissions` (\
  `permission_id` int(10) UNSIGNED NOT NULL,\
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `model_id` bigint(20) UNSIGNED NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `model_has_roles`\
--\
\
CREATE TABLE `model_has_roles` (\
  `role_id` int(10) UNSIGNED NOT NULL,\
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `model_id` bigint(20) UNSIGNED NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `model_has_roles`\
--\
\
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES\
(1, 'App\\\\User', 1);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `password_resets`\
--\
\
CREATE TABLE `password_resets` (\
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `created_at` timestamp NULL DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `permissions`\
--\
\
CREATE TABLE `permissions` (\
  `id` int(10) UNSIGNED NOT NULL,\
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `created_at` timestamp NULL DEFAULT NULL,\
  `updated_at` timestamp NULL DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `permissions`\
--\
\
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES\
(2, 'Create Post', 'web', '2019-06-27 22:31:48', '2019-06-27 22:31:48'),\
(3, 'Edit Post', 'web', '2019-06-27 22:31:57', '2019-06-27 22:31:57'),\
(4, 'Delete Post', 'web', '2019-06-27 22:32:10', '2019-06-27 22:32:10'),\
(5, 'Administer roles & permissions', 'web', '2019-06-27 22:32:22', '2019-06-27 22:32:22');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `posts`\
--\
\
CREATE TABLE `posts` (\
  `id` int(10) UNSIGNED NOT NULL,\
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,\
  `created_at` timestamp NULL DEFAULT NULL,\
  `updated_at` timestamp NULL DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `posts`\
--\
\
INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES\
(1, 'Apple design chief Jony Ive, Steve Jobs\\' confidant, to leave and start own firm', 'Jony Ive, a close creative collaborator with Apple Inc co-founder Steve Jobs whose iPhone and other designs fueled Apple\\'s rise to a $1 trillion company, will leave later this year to form an independent design company.\\r\\n\\r\\nApple said Ive will continue work on its products at his new venture, but shares fell as much as 1.5% to $197.44 in after-market trading, wiping about $9 billion from the firm\\'s value.\\r\\n\\r\\nIve spent nearly three decades at Apple, leading the design of the candy-colored iMacs that helped Apple re-emerge from near death in the 1990s to the iPhone, regarded by some experts as one of the most successful consumer products of all time.\\r\\n\\r\\n\\"It\\'s the most significant departure of somebody who was a core part of the growth story\\" under Jobs, said Ben Bajarin, analyst with Creative Strategies.\\r\\n\\r\\nIve joined Apple in 1992 and led Apple\\'s design teams since 1996. He became chief design officer in 2015.\\r\\n\\r\\nIve\\'s new company will be called LoveFrom, the Financial Times reported, quoting Ive as saying it would be based in California \\"for now.\\" Ive told the newspaper he would work on Apple devices in addition to unspecified \\"personal passions\\" and non-Apple projects.\\r\\n\\r\\n\\"I have the utmost confidence in my designer colleagues at Apple, who remain my closest friends, and I look forward to working with them for many years to come,\\" Ive said.\\r\\n\\r\\nIve\\'s departure comes amid falling iPhone sales, including a record drop in Apple\\'s most recent quarter. Sales of some newer hardware products such as the Apple Watch and its wireless AirPods headphones are expanding, but Apple has turned its attention to growing its services business, which includes Apple Music and iCloud.\\r\\n\\r\\nNehal Chokshi, an analyst with Maxim Group, said that despite Ive\\'s key role in Apple history, his departure will not hurt the iPhone maker.\\r\\n\\r\\n\\"I would view it as Jony Ive looking to get paid market rates for his design expertise from Apple, with the right to allow other companies - not competitors to Apple - to leverage that expertise,\\" Chokshi said.', '2019-06-27 22:59:13', '2019-06-27 22:59:13');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `roles`\
--\
\
CREATE TABLE `roles` (\
  `id` int(10) UNSIGNED NOT NULL,\
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `created_at` timestamp NULL DEFAULT NULL,\
  `updated_at` timestamp NULL DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `roles`\
--\
\
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES\
(1, 'Admin', 'web', '2019-06-27 22:34:26', '2019-06-27 22:34:26');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `role_has_permissions`\
--\
\
CREATE TABLE `role_has_permissions` (\
  `permission_id` int(10) UNSIGNED NOT NULL,\
  `role_id` int(10) UNSIGNED NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `role_has_permissions`\
--\
\
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES\
(2, 1),\
(3, 1),\
(4, 1),\
(5, 1);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `users`\
--\
\
CREATE TABLE `users` (\
  `id` bigint(20) UNSIGNED NOT NULL,\
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `email_verified_at` timestamp NULL DEFAULT NULL,\
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,\
  `created_at` timestamp NULL DEFAULT NULL,\
  `updated_at` timestamp NULL DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\
\
--\
-- Dumping data for table `users`\
--\
\
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES\
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$97C0J2HEla/KmoTbyqbQVul9oyHX8UTdjD0EwjhfwRJxCEcnMuMyG', NULL, '2019-06-27 21:55:36', '2019-06-27 21:55:36');\
\
--\
-- Indexes for dumped tables\
--\
\
--\
-- Indexes for table `migrations`\
--\
ALTER TABLE `migrations`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Indexes for table `model_has_permissions`\
--\
ALTER TABLE `model_has_permissions`\
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),\
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);\
\
--\
-- Indexes for table `model_has_roles`\
--\
ALTER TABLE `model_has_roles`\
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),\
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);\
\
--\
-- Indexes for table `password_resets`\
--\
ALTER TABLE `password_resets`\
  ADD KEY `password_resets_email_index` (`email`);\
\
--\
-- Indexes for table `permissions`\
--\
ALTER TABLE `permissions`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Indexes for table `posts`\
--\
ALTER TABLE `posts`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Indexes for table `roles`\
--\
ALTER TABLE `roles`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Indexes for table `role_has_permissions`\
--\
ALTER TABLE `role_has_permissions`\
  ADD PRIMARY KEY (`permission_id`,`role_id`),\
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);\
\
--\
-- Indexes for table `users`\
--\
ALTER TABLE `users`\
  ADD PRIMARY KEY (`id`),\
  ADD UNIQUE KEY `users_email_unique` (`email`);\
\
--\
-- AUTO_INCREMENT for dumped tables\
--\
\
--\
-- AUTO_INCREMENT for table `migrations`\
--\
ALTER TABLE `migrations`\
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;\
\
--\
-- AUTO_INCREMENT for table `permissions`\
--\
ALTER TABLE `permissions`\
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;\
\
--\
-- AUTO_INCREMENT for table `posts`\
--\
ALTER TABLE `posts`\
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\
\
--\
-- AUTO_INCREMENT for table `roles`\
--\
ALTER TABLE `roles`\
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\
\
--\
-- AUTO_INCREMENT for table `users`\
--\
ALTER TABLE `users`\
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\
\
--\
-- Constraints for dumped tables\
--\
\
--\
-- Constraints for table `model_has_permissions`\
--\
ALTER TABLE `model_has_permissions`\
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;\
\
--\
-- Constraints for table `model_has_roles`\
--\
ALTER TABLE `model_has_roles`\
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;\
\
--\
-- Constraints for table `role_has_permissions`\
--\
ALTER TABLE `role_has_permissions`\
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,\
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;\
}