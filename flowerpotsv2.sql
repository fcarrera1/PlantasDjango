-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2023 a las 06:03:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flowerpotsv2`
--
CREATE DATABASE IF NOT EXISTS `flowerpotsv2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flowerpotsv2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'Administrador'),
(1, 'Cliente'),
(2, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(9, 1, 29),
(10, 1, 31),
(1, 1, 32),
(2, 1, 33),
(3, 1, 36),
(4, 1, 40),
(5, 1, 44),
(6, 1, 48),
(7, 1, 49),
(8, 1, 52),
(25, 2, 29),
(26, 2, 31),
(11, 2, 32),
(12, 2, 33),
(13, 2, 36),
(14, 2, 37),
(15, 2, 38),
(16, 2, 39),
(17, 2, 40),
(18, 2, 41),
(19, 2, 42),
(20, 2, 43),
(21, 2, 44),
(22, 2, 48),
(23, 2, 49),
(24, 2, 52),
(27, 3, 1),
(28, 3, 2),
(29, 3, 3),
(30, 3, 4),
(31, 3, 5),
(32, 3, 6),
(33, 3, 7),
(34, 3, 8),
(35, 3, 9),
(36, 3, 10),
(37, 3, 11),
(38, 3, 12),
(39, 3, 13),
(40, 3, 14),
(41, 3, 15),
(42, 3, 16),
(43, 3, 17),
(44, 3, 18),
(45, 3, 19),
(46, 3, 20),
(47, 3, 21),
(48, 3, 22),
(49, 3, 23),
(50, 3, 24),
(51, 3, 25),
(52, 3, 26),
(53, 3, 27),
(54, 3, 28),
(55, 3, 29),
(56, 3, 30),
(57, 3, 31),
(58, 3, 32),
(59, 3, 33),
(60, 3, 34),
(61, 3, 35),
(62, 3, 36),
(63, 3, 37),
(64, 3, 38),
(65, 3, 39),
(66, 3, 40),
(67, 3, 41),
(68, 3, 42),
(69, 3, 43),
(70, 3, 44),
(71, 3, 45),
(72, 3, 46),
(73, 3, 47),
(74, 3, 48),
(75, 3, 49),
(76, 3, 50),
(77, 3, 51),
(78, 3, 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add carro item', 8, 'add_carroitem'),
(30, 'Can change carro item', 8, 'change_carroitem'),
(31, 'Can delete carro item', 8, 'delete_carroitem'),
(32, 'Can view carro item', 8, 'view_carroitem'),
(33, 'Can add compra', 9, 'add_compra'),
(34, 'Can change compra', 9, 'change_compra'),
(35, 'Can delete compra', 9, 'delete_compra'),
(36, 'Can view compra', 9, 'view_compra'),
(37, 'Can add tipo producto', 10, 'add_tipoproducto'),
(38, 'Can change tipo producto', 10, 'change_tipoproducto'),
(39, 'Can delete tipo producto', 10, 'delete_tipoproducto'),
(40, 'Can view tipo producto', 10, 'view_tipoproducto'),
(41, 'Can add producto', 11, 'add_producto'),
(42, 'Can change producto', 11, 'change_producto'),
(43, 'Can delete producto', 11, 'delete_producto'),
(44, 'Can view producto', 11, 'view_producto'),
(45, 'Can add compra item', 12, 'add_compraitem'),
(46, 'Can change compra item', 12, 'change_compraitem'),
(47, 'Can delete compra item', 12, 'delete_compraitem'),
(48, 'Can view compra item', 12, 'view_compraitem'),
(49, 'Can add carro compras', 13, 'add_carrocompras'),
(50, 'Can change carro compras', 13, 'change_carrocompras'),
(51, 'Can delete carro compras', 13, 'delete_carrocompras'),
(52, 'Can view carro compras', 13, 'view_carrocompras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$SH2WdCpHkJPo$vrtHxo6Xq/pO/obY01ZcK6ONuckdivIt2JZLjU8BYDY=', '2023-06-19 22:57:23.410740', 1, 'admin', 'administrador', '', 'admin@admin.cl', 1, 1, '2023-06-06 13:43:32.000000'),
(2, 'pbkdf2_sha256$216000$W9CFDP1MUzOQ$C5jYEluElOl0cEX1wcqvVX2DiDdIWlgPvVaxg6cBOII=', '2023-06-20 03:56:59.638729', 0, 'maria', 'María González', '', 'mariagonzalez@example.com', 0, 1, '2023-06-06 14:28:43.000000'),
(3, 'pbkdf2_sha256$216000$agUWbhNI9BSK$sTBiaq2d9AVnwHzxWJQMwXwReX57P1qx4VOmJq4/fWI=', '2023-06-19 23:23:41.722662', 0, 'suscri', 'Suscriptor', '', 'suscriptor@suscriptor.cl', 0, 1, '2023-06-06 14:29:07.000000'),
(5, 'pbkdf2_sha256$216000$9kwF2IH8gWo6$VAD9dlWKOFsD9m9UHywj5kOV1pZ31/ckU0Tgka+lQGE=', NULL, 0, 'vendedor', '', '', '', 0, 1, '2023-06-19 21:11:37.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 3, 1),
(8, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carrocompras`
--

CREATE TABLE `core_carrocompras` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `compra_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_carrocompras`
--

INSERT INTO `core_carrocompras` (`id`, `created_at`, `updated_at`, `compra_id`, `usuario_id`) VALUES
(1, '2023-06-06 14:35:04.324478', '2023-06-19 22:36:42.027875', NULL, 1),
(2, '2023-06-06 14:35:49.932027', '2023-06-20 03:57:19.000547', NULL, 2),
(3, '2023-06-06 14:36:19.868006', '2023-06-20 03:05:17.871206', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carrocompras_items`
--

CREATE TABLE `core_carrocompras_items` (
  `id` int(11) NOT NULL,
  `carrocompras_id` int(11) NOT NULL,
  `carroitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carroitem`
--

CREATE TABLE `core_carroitem` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_carroitem`
--

INSERT INTO `core_carroitem` (`id`, `cantidad`, `created_at`, `updated_at`, `producto_id`, `usuario_id`) VALUES
(6, 2, '2023-06-19 21:14:18.993815', '2023-06-19 22:47:33.497705', 5, 2),
(76, 1, '2023-06-19 23:23:27.304460', '2023-06-20 03:57:20.868256', 13, 2),
(80, 1, '2023-06-20 03:05:17.862206', '2023-06-20 03:05:17.864206', 13, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_compra`
--

CREATE TABLE `core_compra` (
  `id` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_compra`
--

INSERT INTO `core_compra` (`id`, `fecha`, `created_at`, `updated_at`, `usuario_id`) VALUES
(4, '2023-06-19 21:15:40.910852', '2023-06-19 21:15:40.910852', '2023-06-19 21:15:40.910852', 2),
(5, '2023-06-20 03:56:40.078637', '2023-06-20 03:56:40.078637', '2023-06-20 03:56:40.078637', 3),
(6, '2023-06-20 03:57:55.103446', '2023-06-20 03:57:55.103446', '2023-06-20 03:57:55.103446', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_compraitem`
--

CREATE TABLE `core_compraitem` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `carro_item_id` int(11) NOT NULL,
  `compra_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_compraitem`
--

INSERT INTO `core_compraitem` (`id`, `created_at`, `updated_at`, `carro_item_id`, `compra_id`) VALUES
(3, '2023-06-20 03:56:40.088637', '2023-06-20 03:56:40.088637', 80, 5),
(4, '2023-06-20 03:57:55.108446', '2023-06-20 03:57:55.108446', 76, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `descripcion` varchar(250) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `descripcion`, `imagen`, `created_at`, `updated_at`, `tipo_id`) VALUES
(5, 'macetero', 2000, 1, 'macetero común', '2406_LcTXjjc.png', '2023-06-06 14:13:12.121336', '2023-06-19 23:00:27.955109', 1),
(6, 'Tierra de hojas', 3000, 2, 'Tierra de hojas de 80L', '461997_01_sW4DYC8.png', '2023-06-06 14:13:50.815116', '2023-06-19 23:00:36.745920', 3),
(7, 'Arbusto', 4000, 4, 'alsdjalsdjajs', 'arbusto_p4GbLmU.png', '2023-06-06 14:14:17.871824', '2023-06-19 22:58:17.251941', 2),
(8, 'flores', 1000, 5, 'Ramo de flores', 'flores_0NyEddt.png', '2023-06-06 14:14:43.737761', '2023-06-19 23:00:49.280081', 4),
(9, 'Rosas', 1000, 2, 'Ramo de rosas', 'flores2_fijwCjq.png', '2023-06-06 14:15:04.617821', '2023-06-19 21:42:17.120393', 4),
(11, 'Rosas', 2000, 13, 'Ramo de rosas', 'flores4_WgHx93E.jpg', '2023-06-06 14:17:16.915440', '2023-06-20 03:57:06.864634', 4),
(12, 'Macetero', 4000, 9, 'Macetero común grande', 'gsc_116336358_1449289_5_clNC8lm.png', '2023-06-06 14:17:51.816807', '2023-06-06 14:17:51.816807', 1),
(13, 'Macetero de cemento', 5000, 10, 'Macetero para plantas hecho de cemento', 'macetero_a1cJsWp.jfif', '2023-06-06 14:18:34.652424', '2023-06-20 03:57:20.870256', 1),
(14, 'Macetero de gato', 3000, 9, 'Macetero pequeño con forma de gato', 'macetero2_xlWOPrH.png', '2023-06-06 14:19:13.865928', '2023-06-19 21:48:31.407477', 1),
(16, 'Macetero pequeño', 1000, 13, 'Macetero pequeño', 'macetero4_cPxrFYk.png', '2023-06-06 14:20:37.360064', '2023-06-19 21:54:43.549829', 1),
(17, 'Rosas arcoíris', 3000, 10, 'Ramo de 12 rosas arcoíris', 'ramo_12_rosas_arcoiris_feel_1_1b5O8uX.png', '2023-06-06 14:21:07.982493', '2023-06-20 03:05:00.582700', 4),
(18, 'Tierra de hojas 50L', 1000, 7, 'Tierra de hojas de 50L', 'tierra3_MOmgFVk.png', '2023-06-06 14:21:39.149928', '2023-06-06 14:21:39.149928', 3),
(19, 'Tierra de hojas 80L', 3000, 14, 'Tierra de hojas anasac de 80L', 'tierra4_kcCZQsk.jfif', '2023-06-06 14:23:40.279497', '2023-06-20 03:05:11.827698', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'macetero', '2023-06-06 13:43:59.512617', '2023-06-06 13:43:59.512617'),
(2, 'arbustos', '2023-06-06 13:44:05.366675', '2023-06-06 13:44:05.366675'),
(3, 'tierra de hojas', '2023-06-06 13:44:10.249406', '2023-06-06 13:44:10.249406'),
(4, 'flores', '2023-06-06 13:44:33.047390', '2023-06-06 13:44:33.047390');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-06 13:43:59.513886', '1', 'macetero', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-06-06 13:44:05.367825', '2', 'arbustos', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-06-06 13:44:10.249406', '3', 'tierra de hojas', 1, '[{\"added\": {}}]', 10, 1),
(4, '2023-06-06 13:44:33.048344', '4', 'flores', 1, '[{\"added\": {}}]', 10, 1),
(5, '2023-06-06 14:28:43.994015', '2', 'maria', 1, '[{\"added\": {}}]', 5, 1),
(6, '2023-06-06 14:29:07.430467', '3', 'suscri', 1, '[{\"added\": {}}]', 5, 1),
(7, '2023-06-06 14:30:01.956620', '2', 'maria', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Email address\"]}}]', 5, 1),
(8, '2023-06-06 14:30:23.831986', '3', 'suscri', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Email address\"]}}]', 5, 1),
(9, '2023-06-06 14:32:45.425326', '2', 'maria', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 5, 1),
(10, '2023-06-06 14:34:19.982842', '1', 'Compra realizada por admin', 1, '[{\"added\": {}}]', 9, 1),
(11, '2023-06-06 14:34:25.951628', '2', 'Compra realizada por maria', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-06-06 14:34:29.631052', '3', 'Compra realizada por suscri', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-06-06 14:34:41.155600', '3', 'Compra realizada por suscri', 3, '', 9, 1),
(14, '2023-06-06 14:34:43.563155', '2', 'Compra realizada por maria', 3, '', 9, 1),
(15, '2023-06-06 14:34:45.795350', '1', 'Compra realizada por admin', 3, '', 9, 1),
(16, '2023-06-19 20:51:47.095356', '1', 'Cliente', 1, '[{\"added\": {}}]', 4, 1),
(17, '2023-06-19 20:52:52.485703', '2', 'Vendedor', 1, '[{\"added\": {}}]', 4, 1),
(18, '2023-06-19 20:52:57.439094', '3', 'Administrador', 1, '[{\"added\": {}}]', 4, 1),
(19, '2023-06-19 20:53:00.304606', '3', 'Administrador', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1),
(20, '2023-06-19 20:53:27.491352', '4', 'usuario', 1, '[{\"added\": {}}]', 5, 1),
(21, '2023-06-19 20:53:28.581965', '4', 'usuario', 2, '[]', 5, 1),
(22, '2023-06-19 20:53:35.836473', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(23, '2023-06-19 20:53:43.746453', '2', 'maria', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(24, '2023-06-19 20:53:46.757024', '3', 'suscri', 2, '[]', 5, 1),
(25, '2023-06-19 20:53:52.721907', '3', 'suscri', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(26, '2023-06-19 20:53:59.451571', '4', 'usuario', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(27, '2023-06-19 21:11:28.073938', '4', 'usuario', 3, '', 5, 1),
(28, '2023-06-19 21:11:37.678553', '5', 'vendedor', 1, '[{\"added\": {}}]', 5, 1),
(29, '2023-06-19 21:11:38.625497', '5', 'vendedor', 2, '[]', 5, 1),
(30, '2023-06-19 21:11:45.849230', '5', 'vendedor', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(31, '2023-06-19 21:59:11.323808', '1', 'CompraItem object (1)', 3, '', 12, 1),
(32, '2023-06-19 21:59:13.798738', '2', 'CompraItem object (2)', 3, '', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(13, 'core', 'carrocompras'),
(8, 'core', 'carroitem'),
(9, 'core', 'compra'),
(12, 'core', 'compraitem'),
(11, 'core', 'producto'),
(10, 'core', 'tipoproducto'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-06 13:41:18.454225'),
(2, 'auth', '0001_initial', '2023-06-06 13:41:18.544567'),
(3, 'admin', '0001_initial', '2023-06-06 13:41:18.839377'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 13:41:18.911358'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 13:41:18.919298'),
(6, 'admin_interface', '0001_initial', '2023-06-06 13:41:18.950304'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-06 13:41:19.018315'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-06 13:41:19.040851'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-06 13:41:19.053854'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-06 13:41:19.073859'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-06 13:41:19.144874'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-06 13:41:19.165727'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-06 13:41:19.199070'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-06 13:41:19.236893'),
(15, 'admin_interface', '0010_add_localization', '2023-06-06 13:41:19.250897'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-06 13:41:19.312958'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-06 13:41:19.320959'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-06 13:41:19.342056'),
(19, 'admin_interface', '0014_name_unique', '2023-06-06 13:41:19.358058'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-06 13:41:19.379638'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-06 13:41:19.400646'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-06 13:41:19.406330'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-06 13:41:19.426606'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-06 13:41:19.464431'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-06 13:41:19.508441'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-06 13:41:19.518443'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-06 13:41:19.556454'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-06 13:41:19.577459'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-06 13:41:19.590967'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-06 13:41:19.614877'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-06 13:41:19.640886'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-06 13:41:19.662453'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-06 13:41:19.703451'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-06 13:41:19.734459'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-06-06 13:41:19.806896'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 13:41:19.855210'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 13:41:19.871212'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-06-06 13:41:19.887218'),
(39, 'auth', '0004_alter_user_username_opts', '2023-06-06 13:41:19.895220'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-06-06 13:41:19.929991'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-06-06 13:41:19.933725'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 13:41:19.940937'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-06-06 13:41:19.958167'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 13:41:19.973762'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-06-06 13:41:19.990767'),
(46, 'auth', '0011_update_proxy_permissions', '2023-06-06 13:41:19.999768'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 13:41:20.015773'),
(48, 'core', '0001_initial', '2023-06-06 13:41:20.208266'),
(49, 'sessions', '0001_initial', '2023-06-06 13:41:20.480965'),
(50, 'core', '0002_auto_20230619_1801', '2023-06-19 22:01:43.582630'),
(51, 'core', '0003_auto_20230619_1802', '2023-06-19 22:02:50.545133');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('eogpgmr3fq6w8if516le1zacz96ujgd4', '.eJxVjMsOwiAQRf-FtSHDoxRcuvcbCMMMUjU0Ke3K-O_apAvd3nPOfYmYtrXGrfMSJxJnYcTpd8OUH9x2QPfUbrPMc1uXCeWuyIN2eZ2Jn5fD_Tuoqddvrd0IiIDGF609FgWGyRsKJlGxZXBBaQPsnFMwBluCpQJuCDkBcGAU7w_Q7Dd2:1q6Xn8:8AkLKKg01aukaUp3wWS4lMXH_x_UCsHd8TCSxcrS9PI', '2023-06-20 14:36:10.438705');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `core_carrocompras`
--
ALTER TABLE `core_carrocompras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`),
  ADD KEY `core_carrocompras_compra_id_4247f6eb_fk_core_compra_id` (`compra_id`);

--
-- Indices de la tabla `core_carrocompras_items`
--
ALTER TABLE `core_carrocompras_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_carrocompras_items_carrocompras_id_carroite_e87d53f2_uniq` (`carrocompras_id`,`carroitem_id`),
  ADD KEY `core_carrocompras_it_carroitem_id_b2949f98_fk_core_carr` (`carroitem_id`);

--
-- Indices de la tabla `core_carroitem`
--
ALTER TABLE `core_carroitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_carroitem_producto_id_34ccd879_fk_core_producto_id` (`producto_id`),
  ADD KEY `core_carroitem_usuario_id_751c9b5d_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_compra_usuario_id_ddc04a7f_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_compraitem`
--
ALTER TABLE `core_compraitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_compraitem_carro_item_id_e0dac575_fk_core_carroitem_id` (`carro_item_id`),
  ADD KEY `core_compraitem_compra_id_332505f6_fk_core_compra_id` (`compra_id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_carrocompras`
--
ALTER TABLE `core_carrocompras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `core_carrocompras_items`
--
ALTER TABLE `core_carrocompras_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT de la tabla `core_carroitem`
--
ALTER TABLE `core_carroitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_compraitem`
--
ALTER TABLE `core_compraitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_carrocompras`
--
ALTER TABLE `core_carrocompras`
  ADD CONSTRAINT `core_carrocompras_compra_id_4247f6eb_fk_core_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `core_compra` (`id`),
  ADD CONSTRAINT `core_carrocompras_usuario_id_1ac6a68f_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_carrocompras_items`
--
ALTER TABLE `core_carrocompras_items`
  ADD CONSTRAINT `core_carrocompras_it_carrocompras_id_532a17c5_fk_core_carr` FOREIGN KEY (`carrocompras_id`) REFERENCES `core_carrocompras` (`id`),
  ADD CONSTRAINT `core_carrocompras_it_carroitem_id_b2949f98_fk_core_carr` FOREIGN KEY (`carroitem_id`) REFERENCES `core_carroitem` (`id`);

--
-- Filtros para la tabla `core_carroitem`
--
ALTER TABLE `core_carroitem`
  ADD CONSTRAINT `core_carroitem_producto_id_34ccd879_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `core_carroitem_usuario_id_751c9b5d_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD CONSTRAINT `core_compra_usuario_id_ddc04a7f_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_compraitem`
--
ALTER TABLE `core_compraitem`
  ADD CONSTRAINT `core_compraitem_carro_item_id_e0dac575_fk_core_carroitem_id` FOREIGN KEY (`carro_item_id`) REFERENCES `core_carroitem` (`id`),
  ADD CONSTRAINT `core_compraitem_compra_id_332505f6_fk_core_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `core_compra` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
