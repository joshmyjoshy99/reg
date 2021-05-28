-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 09:05 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add work', 7, 'add_work'),
(26, 'Can change work', 7, 'change_work'),
(27, 'Can delete work', 7, 'delete_work'),
(28, 'Can view work', 7, 'view_work'),
(29, 'Can add workapp', 8, 'add_workapp'),
(30, 'Can change workapp', 8, 'change_workapp'),
(31, 'Can delete workapp', 8, 'delete_workapp'),
(32, 'Can view workapp', 8, 'view_workapp');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$7ssinSTummiMu92QEcom30$PZpYpkYZchWFGA9pdFgk6UIB+0fy3gFabxhGbwA/1+8=', '2021-05-12 12:38:16.883427', 1, 'joshmy', '', '', 'jo@gmail.com', 1, 1, '2021-04-25 16:46:20.174117'),
(2, 'pbkdf2_sha256$260000$zqN3BUbXKiSOkZwWbNDa1h$Lbb8oYb7gvzpyjujKn2sbaXwXrFa+sRQhxOC+Mqjvsk=', NULL, 1, 'joshmyjoshy', '', '', 'joshmyjoshy99@gmail.com', 1, 1, '2021-04-30 16:55:09.450092'),
(4, 'pbkdf2_sha256$260000$jz0NXpHUKkJ9vWqI9Xi4Jp$PorcsJfhi0vltZlstWm9+pLqx+Ty4p5s5CP7++ElbSQ=', '2021-05-11 13:34:38.120900', 0, 'Basil', 'Basil', 'B', 'basil@gmail.com', 0, 1, '2021-05-05 09:19:11.000000'),
(5, 'pbkdf2_sha256$260000$HuP7Tn4fdcPtuLM93ECgsd$PzuZihcTbp1ho/xkRXwyUC6TtjORa9BmZj276JrdAT8=', '2021-05-15 17:12:49.024407', 0, 'Anandhu', 'Anandhu', 'Vijayan', 'anandhu@gmail.com', 0, 1, '2021-05-05 10:14:01.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-25 16:54:34.463348', '1', 'Workapp object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-04-25 16:56:20.176469', '1', 'Workapp object (1)', 2, '[]', 8, 1),
(3, '2021-04-25 17:26:04.492226', '2', 'Workapp object (2)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-04-25 17:28:12.170979', '3', 'Workapp object (3)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-04-25 17:30:30.600269', '4', 'Workapp object (4)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-04-30 17:04:03.572114', '7', 'Workapp object (7)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-04-30 17:18:30.934347', '8', 'Workapp object (8)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-04-30 17:21:44.095592', '9', 'Workapp object (9)', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-05-03 18:19:14.656232', '3', 'Anandhu', 1, '[{\"added\": {}}]', 4, 1),
(10, '2021-05-05 09:19:11.980305', '4', 'Basil', 1, '[{\"added\": {}}]', 4, 1),
(11, '2021-05-05 09:19:42.788923', '4', 'Basil', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(12, '2021-05-05 10:12:38.834935', '3', 'Anandhu', 3, '', 4, 1),
(13, '2021-05-05 10:14:02.010520', '5', 'Anandhu', 1, '[{\"added\": {}}]', 4, 1),
(14, '2021-05-05 10:14:24.163112', '5', 'Anandhu', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'workapp', 'work'),
(8, 'workapp', 'workapp');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-21 19:02:42.514116'),
(2, 'auth', '0001_initial', '2021-04-21 19:02:43.607340'),
(3, 'admin', '0001_initial', '2021-04-21 19:02:43.816608'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-21 19:02:43.828216'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-21 19:02:43.839617'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-21 19:02:43.908511'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-21 19:02:43.972664'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-21 19:02:43.996378'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-21 19:02:44.007379'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-21 19:02:44.073460'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-21 19:02:44.078460'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-21 19:02:44.089673'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-21 19:02:44.110677'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-21 19:02:44.132593'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-21 19:02:44.156035'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-21 19:02:44.167339'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-21 19:02:44.190913'),
(19, 'workapp', '0001_initial', '2021-04-21 19:02:44.361031'),
(20, 'workapp', '0002_auto_20210425_2221', '2021-04-25 16:51:05.435466'),
(21, 'sessions', '0001_initial', '2021-05-09 17:24:21.597415');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('16kdnv2vayybgkuysqq97rl5pt8swc8g', '.eJxVjEEOwiAQRe_C2hCcgjAu3XuGZoAZqRpISrsy3l2bdKHb_977LzXSupRx7TyPU1Zn5dThd4uUHlw3kO9Ub02nVpd5inpT9E67vrbMz8vu_h0U6uVbGyTJGczg0BBYDMmdrIiNQugdoDcuZHEAjOHIPlpmKxAF7BA5Mar3B914OB4:1lhxqL:YXmSxYIzKVhfVCQsSmZXF5IRI6gjifl1dm7f0Ms0uDc', '2021-05-29 17:12:49.076876');

-- --------------------------------------------------------

--
-- Table structure for table `workapp`
--

CREATE TABLE `workapp` (
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `qualification` text NOT NULL,
  `location` text NOT NULL,
  `contact` int(200) NOT NULL,
  `phone` int(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `date` date NOT NULL,
  `logintime` time(6) NOT NULL,
  `logouttime` time(6) NOT NULL,
  `issue` text NOT NULL,
  `salary` varchar(200) NOT NULL,
  `leave` varchar(200) NOT NULL,
  `tmexecutive` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workapp`
--

INSERT INTO `workapp` (`name`, `email`, `qualification`, `location`, `contact`, `phone`, `status`, `description`, `remarks`, `date`, `logintime`, `logouttime`, `issue`, `salary`, `leave`, `tmexecutive`) VALUES
('Anandhu Vijayan', 'Anandhu@gmail.com', 'BCA', 'kochi', 909090090, 900909909, 'PRESENT', 'i have an issue about product quality', '***', '2021-04-01', '21:37:39.000000', '21:37:39.000000', 'issue about product quality', '20000', '2 days', 'Cold calling people using a given phone directory to sell products or solicit donations. Answering incoming calls from prospective customers. Using scripts to provide information about product\'s featu'),
('Basil Thomas\r\n', 'Basil@gmail.com', 'BCA', 'Kochi', 999990909, 900909909, 'hlloooo', 'product datails', '*****', '2021-04-14', '21:37:39.000000', '21:37:39.000000', 'issue in product management', '21000', 'due to headache', 'very gud product');

-- --------------------------------------------------------

--
-- Table structure for table `workapp_report`
--

CREATE TABLE `workapp_report` (
  `id` bigint(20) NOT NULL,
  `reportissue` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workapp_workapp`
--

CREATE TABLE `workapp_workapp` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `remarks` varchar(180) NOT NULL,
  `date` date NOT NULL,
  `logintime` time(6) NOT NULL,
  `logouttime` time(6) NOT NULL,
  `issue` varchar(400) NOT NULL,
  `salary` varchar(300) NOT NULL,
  `leave` varchar(300) NOT NULL,
  `tmexecutive` varchar(200) NOT NULL,
  `username` varchar(40) NOT NULL,
  `img` varchar(200) NOT NULL,
  `taskdescriptn` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workapp_workapp`
--

INSERT INTO `workapp_workapp` (`id`, `name`, `email`, `qualification`, `location`, `contact`, `phone`, `status`, `description`, `remarks`, `date`, `logintime`, `logouttime`, `issue`, `salary`, `leave`, `tmexecutive`, `username`, `img`, `taskdescriptn`) VALUES
(1, 'Anandhu', 'anandhu@gmail.com', 'BCA', 'Kochi', 987654321, 12121212, 'PRESENT', 'students performance prediction based on the skills.', '******', '2021-05-10', '16:53:31.000000', '12:00:00.000000', 'Respected sir, as im going for part time job. it will be difficult for me to come for the training sessions in the morning time. can you please change the time to afternoon', '20000', 'headache', 'market', 'Anandhu', '', 'designer'),
(2, 'Basil', 'basil@gmail.com', 'BCA', 'Kochi', 454653, 7309118, 'AB', 'students performance prediction based on the skills.', '******', '2021-05-10', '16:53:31.000000', '17:25:25.000000', 'Respected sir, as im going for part time job. it will be difficult for me to come for the training sessions in the morning time. can you please change the time to afternoon', '25000', 'backpain', 'product marketng', 'Basil', '', 'designer'),
(3, 'Joshmy', 'joshmy@gmail.com', 'BTech', 'kochi', 99999090, 900909909, 'PRESENT', 'students performance prediction based on the skills.', '*******', '2021-05-10', '21:37:39.000000', '21:37:39.000000', 'Respected sir, as im going for part time job. it will be difficult for me to come for the training sessions in the morning time. can you please change the time to afternoon', '20000', 'due to headache', 'Assign', 'Joshmy', 'a.png', 'designer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `workapp_report`
--
ALTER TABLE `workapp_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workapp_workapp`
--
ALTER TABLE `workapp_workapp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `workapp_report`
--
ALTER TABLE `workapp_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workapp_workapp`
--
ALTER TABLE `workapp_workapp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
