-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 15 2022 г., 21:57
-- Версия сервера: 5.7.38
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `belatuslog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_actiondom`
--

CREATE TABLE `belarustableaccess_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_category`
--

CREATE TABLE `belarustableaccess_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_context`
--

CREATE TABLE `belarustableaccess_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableaccess_context`
--

INSERT INTO `belarustableaccess_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'MODX\\Revolution\\modUserGroup', 0, 9999, 3),
(2, 'mgr', 'MODX\\Revolution\\modUserGroup', 1, 0, 2),
(3, 'web', 'MODX\\Revolution\\modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_elements`
--

CREATE TABLE `belarustableaccess_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_media_source`
--

CREATE TABLE `belarustableaccess_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_menus`
--

CREATE TABLE `belarustableaccess_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_namespace`
--

CREATE TABLE `belarustableaccess_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_permissions`
--

CREATE TABLE `belarustableaccess_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableaccess_permissions`
--

INSERT INTO `belarustableaccess_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'language', 'perm.language_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'mgr_log_view', 'perm.mgr_log_view_desc', 1),
(77, 1, 'mgr_log_erase', 'perm.mgr_log_erase_desc', 1),
(78, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(79, 1, 'menu_security', 'perm.menu_security_desc', 1),
(80, 1, 'menu_site', 'perm.menu_site_desc', 1),
(81, 1, 'menu_support', 'perm.menu_support_desc', 1),
(82, 1, 'menu_system', 'perm.menu_system_desc', 1),
(83, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(84, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(85, 1, 'menu_user', 'perm.menu_user_desc', 1),
(86, 1, 'menus', 'perm.menus_desc', 1),
(87, 1, 'messages', 'perm.messages_desc', 1),
(88, 1, 'namespaces', 'perm.namespaces_desc', 1),
(89, 1, 'new_category', 'perm.new_category_desc', 1),
(90, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(91, 1, 'new_context', 'perm.new_context_desc', 1),
(92, 1, 'new_document', 'perm.new_document_desc', 1),
(93, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(94, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(95, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(96, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(97, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(98, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(99, 1, 'new_role', 'perm.new_role_desc', 1),
(100, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(101, 1, 'new_template', 'perm.new_template_desc', 1),
(102, 1, 'new_tv', 'perm.new_tv_desc', 1),
(103, 1, 'new_user', 'perm.new_user_desc', 1),
(104, 1, 'packages', 'perm.packages_desc', 1),
(105, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(106, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(107, 1, 'policy_new', 'perm.policy_new_desc', 1),
(108, 1, 'policy_save', 'perm.policy_save_desc', 1),
(109, 1, 'policy_view', 'perm.policy_view_desc', 1),
(110, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(111, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(112, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(113, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(114, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(115, 1, 'property_sets', 'perm.property_sets_desc', 1),
(116, 1, 'providers', 'perm.providers_desc', 1),
(117, 1, 'publish_document', 'perm.publish_document_desc', 1),
(118, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(119, 1, 'remove', 'perm.remove_desc', 1),
(120, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(121, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(122, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(123, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(124, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(125, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(126, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(127, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(128, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(129, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(130, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(131, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(132, 1, 'save', 'perm.save_desc', 1),
(133, 1, 'save_category', 'perm.save_category_desc', 1),
(134, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(135, 1, 'save_context', 'perm.save_context_desc', 1),
(136, 1, 'save_document', 'perm.save_document_desc', 1),
(137, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(138, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(139, 1, 'save_role', 'perm.save_role_desc', 1),
(140, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(141, 1, 'save_template', 'perm.save_template_desc', 1),
(142, 1, 'save_tv', 'perm.save_tv_desc', 1),
(143, 1, 'save_user', 'perm.save_user_desc', 1),
(144, 1, 'search', 'perm.search_desc', 1),
(145, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(146, 1, 'settings', 'perm.settings_desc', 1),
(147, 1, 'events', 'perm.events_desc', 1),
(148, 1, 'source_save', 'perm.source_save_desc', 1),
(149, 1, 'source_delete', 'perm.source_delete_desc', 1),
(150, 1, 'source_edit', 'perm.source_edit_desc', 1),
(151, 1, 'source_view', 'perm.source_view_desc', 1),
(152, 1, 'sources', 'perm.sources_desc', 1),
(153, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(154, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(155, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(156, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(157, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(158, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(159, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(160, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(161, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(162, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(163, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(164, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(165, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(166, 1, 'view', 'perm.view_desc', 1),
(167, 1, 'view_category', 'perm.view_category_desc', 1),
(168, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(169, 1, 'view_context', 'perm.view_context_desc', 1),
(170, 1, 'view_document', 'perm.view_document_desc', 1),
(171, 1, 'view_element', 'perm.view_element_desc', 1),
(172, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(173, 1, 'view_offline', 'perm.view_offline_desc', 1),
(174, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(175, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(176, 1, 'view_role', 'perm.view_role_desc', 1),
(177, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(178, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(179, 1, 'view_template', 'perm.view_template_desc', 1),
(180, 1, 'view_tv', 'perm.view_tv_desc', 1),
(181, 1, 'view_user', 'perm.view_user_desc', 1),
(182, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(183, 1, 'workspaces', 'perm.workspaces_desc', 1),
(184, 2, 'add_children', 'perm.add_children_desc', 1),
(185, 2, 'copy', 'perm.copy_desc', 1),
(186, 2, 'create', 'perm.create_desc', 1),
(187, 2, 'delete', 'perm.delete_desc', 1),
(188, 2, 'list', 'perm.list_desc', 1),
(189, 2, 'load', 'perm.load_desc', 1),
(190, 2, 'move', 'perm.move_desc', 1),
(191, 2, 'publish', 'perm.publish_desc', 1),
(192, 2, 'remove', 'perm.remove_desc', 1),
(193, 2, 'save', 'perm.save_desc', 1),
(194, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(195, 2, 'undelete', 'perm.undelete_desc', 1),
(196, 2, 'unpublish', 'perm.unpublish_desc', 1),
(197, 2, 'view', 'perm.view_desc', 1),
(198, 3, 'load', 'perm.load_desc', 1),
(199, 3, 'list', 'perm.list_desc', 1),
(200, 3, 'view', 'perm.view_desc', 1),
(201, 3, 'save', 'perm.save_desc', 1),
(202, 3, 'remove', 'perm.remove_desc', 1),
(203, 4, 'add_children', 'perm.add_children_desc', 1),
(204, 4, 'create', 'perm.create_desc', 1),
(205, 4, 'copy', 'perm.copy_desc', 1),
(206, 4, 'delete', 'perm.delete_desc', 1),
(207, 4, 'list', 'perm.list_desc', 1),
(208, 4, 'load', 'perm.load_desc', 1),
(209, 4, 'remove', 'perm.remove_desc', 1),
(210, 4, 'save', 'perm.save_desc', 1),
(211, 4, 'view', 'perm.view_desc', 1),
(212, 5, 'create', 'perm.create_desc', 1),
(213, 5, 'copy', 'perm.copy_desc', 1),
(214, 5, 'list', 'perm.list_desc', 1),
(215, 5, 'load', 'perm.load_desc', 1),
(216, 5, 'remove', 'perm.remove_desc', 1),
(217, 5, 'save', 'perm.save_desc', 1),
(218, 5, 'view', 'perm.view_desc', 1),
(219, 6, 'load', 'perm.load_desc', 1),
(220, 6, 'list', 'perm.list_desc', 1),
(221, 6, 'view', 'perm.view_desc', 1),
(222, 6, 'save', 'perm.save_desc', 1),
(223, 6, 'remove', 'perm.remove_desc', 1),
(224, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(225, 6, 'copy', 'perm.copy_desc', 1),
(226, 7, 'list', 'perm.list_desc', 1),
(227, 7, 'load', 'perm.load_desc', 1),
(228, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_policies`
--

CREATE TABLE `belarustableaccess_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci,
  `lexicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableaccess_policies`
--

INSERT INTO `belarustableaccess_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'policy_resource_desc', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'policy_administrator_desc', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"delete_weblink\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_trash\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'policy_load_only_desc', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'policy_load_list_and_view_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'policy_object_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'policy_element_desc', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'policy_content_editor_desc', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"delete_document\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_weblink\":true,\"edit_document\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_weblink\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"list\":true,\"load\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true}', 'permissions'),
(8, 'Media Source Admin', 'policy_media_source_admin_desc', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'policy_media_source_user_desc', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'policy_developer_desc', 0, 1, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'policy_context_desc', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'policy_hidden_namespace_desc', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_policy_templates`
--

CREATE TABLE `belarustableaccess_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `lexicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableaccess_policy_templates`
--

INSERT INTO `belarustableaccess_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'policy_template_administrator_desc', 'permissions'),
(2, 3, 'ResourceTemplate', 'policy_template_resource_desc', 'permissions'),
(3, 2, 'ObjectTemplate', 'policy_template_object_desc', 'permissions'),
(4, 4, 'ElementTemplate', 'policy_template_element_desc', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'policy_template_mediasource_desc', 'permissions'),
(6, 7, 'ContextTemplate', 'policy_template_context_desc', 'permissions'),
(7, 6, 'NamespaceTemplate', 'policy_template_namespace_desc', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_policy_template_groups`
--

CREATE TABLE `belarustableaccess_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableaccess_policy_template_groups`
--

INSERT INTO `belarustableaccess_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'policy_template_group_administrator_desc'),
(2, 'Object', 'policy_template_group_object_desc'),
(3, 'Resource', 'policy_template_group_resource_desc'),
(4, 'Element', 'policy_template_group_element_desc'),
(5, 'MediaSource', 'policy_template_group_mediasource_desc'),
(6, 'Namespace', 'policy_template_group_namespace_desc'),
(7, 'Context', 'policy_template_group_context_desc');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_resources`
--

CREATE TABLE `belarustableaccess_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_resource_groups`
--

CREATE TABLE `belarustableaccess_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableaccess_templatevars`
--

CREATE TABLE `belarustableaccess_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableactiondom`
--

CREATE TABLE `belarustableactiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `xtype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `container` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `constraint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `constraint_field` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `constraint_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableactions_fields`
--

CREATE TABLE `belarustableactions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'field',
  `tab` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `other` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableactions_fields`
--

INSERT INTO `belarustableactions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(9, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(11, 'resource/update', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(12, 'resource/update', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(13, 'resource/update', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(14, 'resource/update', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(15, 'resource/update', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(18, 'resource/update', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(19, 'resource/update', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(20, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(21, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(22, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(23, 'resource/update', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(24, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(25, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(26, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(27, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(28, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(29, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(30, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(31, 'resource/update', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(32, 'resource/update', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(33, 'resource/update', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(34, 'resource/update', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(35, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(36, 'resource/update', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(37, 'resource/update', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(38, 'resource/update', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(39, 'resource/update', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(42, 'resource/update', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(43, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(44, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13),
(45, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(46, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(47, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(54, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(64, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(68, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(69, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(70, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(71, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(72, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(73, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(76, 'resource/create', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(77, 'resource/create', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(78, 'resource/create', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(79, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(80, 'resource/create', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(81, 'resource/create', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(82, 'resource/create', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(83, 'resource/create', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(84, 'resource/create', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(85, 'resource/create', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(86, 'resource/create', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(87, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(88, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableactive_users`
--

CREATE TABLE `belarustableactive_users` (
  `internalKey` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablecategories`
--

CREATE TABLE `belarustablecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablecategories`
--

INSERT INTO `belarustablecategories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'pdoTools', 0),
(2, 0, 'tpl', 0),
(3, 0, 'TV', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablecategories_closure`
--

CREATE TABLE `belarustablecategories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablecategories_closure`
--

INSERT INTO `belarustablecategories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablecontent_type`
--

CREATE TABLE `belarustablecontent_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `mime_type` tinytext COLLATE utf8mb4_unicode_ci,
  `file_extensions` tinytext COLLATE utf8mb4_unicode_ci,
  `icon` tinytext COLLATE utf8mb4_unicode_ci,
  `headers` mediumtext COLLATE utf8mb4_unicode_ci,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablecontent_type`
--

INSERT INTO `belarustablecontent_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `icon`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', 'icon-xml', NULL, 0),
(3, 'Text', 'Plain text content', 'text/plain', '.txt', 'icon-txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', 'icon-css', NULL, 0),
(5, 'JavaScript', 'JavaScript content', 'text/javascript', '.js', 'icon-js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', 'icon-rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', 'icon-json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', 'icon-pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablecontext`
--

CREATE TABLE `belarustablecontext` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablecontext`
--

INSERT INTO `belarustablecontext` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablecontext_resource`
--

CREATE TABLE `belarustablecontext_resource` (
  `context_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablecontext_setting`
--

CREATE TABLE `belarustablecontext_setting` (
  `context_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `xtype` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablecontext_setting`
--

INSERT INTO `belarustablecontext_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'MODX\\Revolution\\modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledashboard`
--

CREATE TABLE `belarustabledashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `customizable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabledashboard`
--

INSERT INTO `belarustabledashboard` (`id`, `name`, `description`, `hide_trees`, `customizable`) VALUES
(1, 'Default', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledashboard_widget`
--

CREATE TABLE `belarustabledashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lexicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'half',
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabledashboard_widget`
--

INSERT INTO `belarustabledashboard_widget` (`id`, `name`, `description`, `type`, `content`, `properties`, `namespace`, `lexicon`, `size`, `permission`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', NULL, 'core', 'core:dashboards', 'two-thirds', 'view_document'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', NULL, 'core', 'core:dashboards', 'full', ''),
(6, 'w_buttons', 'w_buttons_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.buttons.php', '{\"create-resource\":{\"link\":\"[[++manager_url]]?a=resource\\/create\",\"icon\":\"file-o\",\"title\":\"[[%action_new_resource]]\",\"description\":\"[[%action_new_resource_desc]]\"},\"view-site\":{\"link\":\"[[++site_url]]\",\"icon\":\"eye\",\"title\":\"[[%action_view_website]]\",\"description\":\"[[%action_view_website_desc]]\",\"target\":\"_blank\"},\"advanced-search\":{\"link\":\"[[++manager_url]]?a=search\",\"icon\":\"search\",\"title\":\"[[%action_advanced_search]]\",\"description\":\"[[%action_advanced_search_desc]]\"},\"manage-users\":{\"link\":\"[[++manager_url]]?a=security\\/user\",\"icon\":\"user\",\"title\":\"[[%action_manage_users]]\",\"description\":\"[[%action_manage_users_desc]]\"}}', 'core', 'core:dashboards', 'full', ''),
(7, 'w_updates', 'w_updates_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.updates.php', NULL, 'core', 'core:dashboards', 'one-third', 'workspaces');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledashboard_widget_placement`
--

CREATE TABLE `belarustabledashboard_widget_placement` (
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabledashboard_widget_placement`
--

INSERT INTO `belarustabledashboard_widget_placement` (`user`, `dashboard`, `widget`, `rank`, `size`) VALUES
(0, 1, 1, 2, 'one-third'),
(0, 1, 2, 3, 'one-third'),
(0, 1, 3, 5, 'one-third'),
(0, 1, 4, 6, 'two-thirds'),
(0, 1, 5, 1, 'full'),
(0, 1, 6, 0, 'full'),
(0, 1, 7, 4, 'one-third'),
(1, 1, 1, 1, 'one-third'),
(1, 1, 2, 2, 'one-third'),
(1, 1, 3, 4, 'one-third'),
(1, 1, 4, 5, 'two-thirds'),
(1, 1, 6, 0, 'full'),
(1, 1, 7, 3, 'one-third');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledeprecated_call`
--

CREATE TABLE `belarustabledeprecated_call` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `call_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `caller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caller_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caller_line` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabledeprecated_call`
--

INSERT INTO `belarustabledeprecated_call` (`id`, `method`, `call_count`, `caller`, `caller_file`, `caller_line`) VALUES
(1, 1, 3, 'xPDO\\xPDO::newObject', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 806),
(2, 2, 3, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(3, 2, 3, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(4, 3, 2, 'xPDO\\xPDO::newObject', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 806),
(5, 4, 2, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(6, 4, 2, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(7, 5, 14, 'xPDO\\xPDO::newObject', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 806),
(8, 5, 14, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(9, 5, 14, 'xPDO\\Om\\xPDOObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 399),
(10, 6, 29, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(11, 6, 29, 'xPDO\\Om\\xPDOObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 399),
(12, 7, 1, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(13, 7, 1, 'xPDO\\Om\\xPDOObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 399),
(14, 8, 25, 'xPDO\\xPDO::newObject', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 806),
(15, 9, 245, 'xPDO\\xPDO::getPKType', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1654),
(16, 9, 245, 'xPDO\\xPDO::getPK', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1592),
(17, 9, 245, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(18, 9, 245, 'xPDO\\Om\\xPDOObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 399),
(19, 10, 112, 'MODX\\Revolution\\Registry\\modRegistry::_initRegister', 'C:\\OpenServer\\domains\\belarus\\core\\src\\Revolution\\Registry\\modRegistry.php', 173),
(20, 11, 277, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(21, 11, 277, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(22, 12, 383, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(23, 12, 379, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(24, 13, 6, 'xPDO\\Om\\xPDOQuery::__construct', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOQuery.php', 122),
(25, 13, 3, 'xPDO\\xPDO::getPKType', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1654),
(26, 13, 3, 'xPDO\\xPDO::getPK', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1592),
(27, 13, 3, 'xPDO\\xPDO::call', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 773),
(28, 13, 3, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OpenServer\\domains\\belarus\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(29, 11, 726, 'xPDO\\xPDO::newObject', 'C:\\OpenServer\\domains\\belarus\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 806);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledeprecated_method`
--

CREATE TABLE `belarustabledeprecated_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `definition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `since` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recommendation` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabledeprecated_method`
--

INSERT INTO `belarustabledeprecated_method` (`id`, `definition`, `since`, `recommendation`) VALUES
(1, 'modx.modNamespace', '3.0', 'Replace references to class modx.modNamespace with MODX\\Revolution\\modNamespace to take advantage of PSR-4 autoloading.'),
(2, 'modNamespace', '3.0', 'Replace references to class modNamespace with MODX\\Revolution\\modNamespace to take advantage of PSR-4 autoloading.'),
(3, 'modx.modPlugin', '3.0', 'Replace references to class modx.modPlugin with MODX\\Revolution\\modPlugin to take advantage of PSR-4 autoloading.'),
(4, 'modPlugin', '3.0', 'Replace references to class modPlugin with MODX\\Revolution\\modPlugin to take advantage of PSR-4 autoloading.'),
(5, 'modPluginEvent', '3.0', 'Replace references to class modPluginEvent with MODX\\Revolution\\modPluginEvent to take advantage of PSR-4 autoloading.'),
(6, 'modSystemSetting', '3.0', 'Replace references to class modSystemSetting with MODX\\Revolution\\modSystemSetting to take advantage of PSR-4 autoloading.'),
(7, 'modEvent', '3.0', 'Replace references to class modEvent with MODX\\Revolution\\modEvent to take advantage of PSR-4 autoloading.'),
(8, 'modx.modSystemSetting', '3.0', 'Replace references to class modx.modSystemSetting with MODX\\Revolution\\modSystemSetting to take advantage of PSR-4 autoloading.'),
(9, 'modContentType', '3.0', 'Replace references to class modContentType with MODX\\Revolution\\modContentType to take advantage of PSR-4 autoloading.'),
(10, 'registry.modDbRegister', '3.0', 'Replace references to class registry.modDbRegister with MODX\\Revolution\\Registry\\modDbRegister to take advantage of PSR-4 autoloading.'),
(11, 'modChunk', '3.0', 'Replace references to class modChunk with MODX\\Revolution\\modChunk to take advantage of PSR-4 autoloading.'),
(12, 'modTemplateVar', '3.0', 'Replace references to class modTemplateVar with MODX\\Revolution\\modTemplateVar to take advantage of PSR-4 autoloading.'),
(13, 'modResource', '3.0', 'Replace references to class modResource with MODX\\Revolution\\modResource to take advantage of PSR-4 autoloading.');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledocumentgroup_names`
--

CREATE TABLE `belarustabledocumentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabledocument_groups`
--

CREATE TABLE `belarustabledocument_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableelement_property_sets`
--

CREATE TABLE `belarustableelement_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableextension_packages`
--

CREATE TABLE `belarustableextension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `path` text COLLATE utf8mb4_unicode_ci,
  `table_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablefc_profiles`
--

CREATE TABLE `belarustablefc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablefc_profiles_usergroups`
--

CREATE TABLE `belarustablefc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablefc_sets`
--

CREATE TABLE `belarustablefc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `constraint_field` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `constraint_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablelexicon_entries`
--

CREATE TABLE `belarustablelexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `namespace` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemanager_log`
--

CREATE TABLE `belarustablemanager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classKey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablemanager_log`
--

INSERT INTO `belarustablemanager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2022-09-02 22:41:44', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(2, 1, '2022-09-02 22:44:31', 'user_widget_remove', 'MODX\\Revolution\\modDashboardWidget', '5'),
(3, 1, '2022-09-02 22:45:50', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'container_suffix'),
(4, 1, '2022-09-02 22:45:57', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'friendly_urls'),
(5, 1, '2022-09-02 22:46:32', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'friendly_alias_translit'),
(6, 1, '2022-09-02 22:47:07', 'content_type_save', 'MODX\\Revolution\\modContentType', '1'),
(7, 1, '2022-09-02 22:48:04', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'site_name'),
(8, 1, '2022-09-02 22:52:57', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ace.font_size'),
(9, 1, '2022-09-02 22:59:46', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ace.theme'),
(10, 1, '2022-09-02 23:00:22', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ckeditor.remove_plugins'),
(11, 1, '2022-09-04 21:26:20', 'chunk_create', 'MODX\\Revolution\\modChunk', '1'),
(12, 1, '2022-09-04 21:29:10', 'template_create', 'MODX\\Revolution\\modTemplate', '2'),
(13, 1, '2022-09-04 21:30:21', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(14, 1, '2022-09-04 21:30:53', 'resource_create', 'MODX\\Revolution\\modDocument', '2'),
(15, 1, '2022-09-04 21:31:09', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(16, 1, '2022-09-04 21:32:26', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(17, 1, '2022-09-04 21:37:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(18, 1, '2022-09-04 21:37:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(19, 1, '2022-09-04 21:40:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(20, 1, '2022-09-04 21:40:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(21, 1, '2022-09-04 21:40:15', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(22, 1, '2022-09-04 21:40:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(23, 1, '2022-09-04 21:41:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(24, 1, '2022-09-04 21:41:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(25, 1, '2022-09-04 21:41:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(26, 1, '2022-09-04 21:42:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(27, 1, '2022-09-04 21:42:55', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(28, 1, '2022-09-04 21:42:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(29, 1, '2022-09-04 21:45:48', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(30, 1, '2022-09-04 21:45:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(31, 1, '2022-09-04 21:46:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(32, 1, '2022-09-04 21:46:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(33, 1, '2022-09-04 21:47:06', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(34, 1, '2022-09-04 21:47:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(35, 1, '2022-09-04 21:47:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(36, 1, '2022-09-04 21:47:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(37, 1, '2022-09-04 21:48:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(38, 1, '2022-09-04 21:48:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(39, 1, '2022-09-04 21:49:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(40, 1, '2022-09-04 21:49:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(41, 1, '2022-09-04 21:49:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(42, 1, '2022-09-04 21:49:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(43, 1, '2022-09-04 21:51:12', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(44, 1, '2022-09-04 21:51:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(45, 1, '2022-09-04 21:58:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(46, 1, '2022-09-04 21:58:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(47, 1, '2022-09-04 22:01:08', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(48, 1, '2022-09-04 22:01:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(49, 1, '2022-09-04 22:03:04', 'template_create', 'MODX\\Revolution\\modTemplate', '3'),
(50, 1, '2022-09-04 22:03:47', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(51, 1, '2022-09-04 22:03:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(52, 1, '2022-09-04 22:04:26', 'template_create', 'MODX\\Revolution\\modTemplate', '4'),
(53, 1, '2022-09-04 22:06:24', 'file_update', '', 'Filesystem: assets\\dist\\css\\style.min.css'),
(54, 1, '2022-09-04 22:07:22', 'file_update', '', 'Filesystem: assets\\dist\\css\\style.min.css'),
(55, 1, '2022-09-04 22:20:52', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(56, 1, '2022-09-04 22:20:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(57, 1, '2022-09-04 22:21:18', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(58, 1, '2022-09-04 22:21:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(59, 1, '2022-09-04 22:23:04', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(60, 1, '2022-09-04 22:23:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(61, 1, '2022-09-04 22:23:26', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(62, 1, '2022-09-04 22:23:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(63, 1, '2022-09-06 21:34:46', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(64, 1, '2022-09-06 21:34:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(65, 1, '2022-09-06 21:34:53', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(66, 1, '2022-09-06 21:34:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(67, 1, '2022-09-07 18:47:15', 'category_create', 'MODX\\Revolution\\modCategory', '2'),
(68, 1, '2022-09-07 18:48:31', 'chunk_create', 'MODX\\Revolution\\modChunk', '2'),
(69, 1, '2022-09-07 18:51:26', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(70, 1, '2022-09-07 18:51:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(71, 1, '2022-09-07 18:52:25', 'resource_create', 'MODX\\Revolution\\modDocument', '3'),
(72, 1, '2022-09-07 18:52:51', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(73, 1, '2022-09-07 18:53:30', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(74, 1, '2022-09-07 18:53:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(75, 1, '2022-09-07 18:55:10', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(76, 1, '2022-09-07 18:55:22', 'resource_sort', '', 'unknown'),
(77, 1, '2022-09-07 18:55:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(78, 1, '2022-09-07 18:55:46', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(79, 1, '2022-09-07 18:55:54', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(80, 1, '2022-09-07 18:56:24', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(81, 1, '2022-09-07 18:56:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(82, 1, '2022-09-07 18:57:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(83, 1, '2022-09-07 18:57:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(84, 1, '2022-09-07 18:58:30', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(85, 1, '2022-09-07 18:58:59', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(86, 1, '2022-09-07 18:59:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(87, 1, '2022-09-07 18:59:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(88, 1, '2022-09-07 19:00:43', 'resource_create', 'MODX\\Revolution\\modDocument', '4'),
(89, 1, '2022-09-07 19:01:06', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(90, 1, '2022-09-07 19:01:56', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(91, 1, '2022-09-07 19:03:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(92, 1, '2022-09-07 19:03:46', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(93, 1, '2022-09-07 19:05:15', 'resource_create', 'MODX\\Revolution\\modDocument', '5'),
(94, 1, '2022-09-07 19:08:20', 'delete_resource', 'MODX\\Revolution\\modDocument', '3'),
(95, 1, '2022-09-07 19:08:35', 'delete_resource', 'MODX\\Revolution\\modDocument', '4'),
(96, 1, '2022-09-07 19:08:40', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(97, 1, '2022-09-07 19:08:58', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(98, 1, '2022-09-07 19:09:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(99, 1, '2022-09-07 19:09:35', 'empty_trash', 'MODX\\Revolution\\modResource', '3,4'),
(100, 1, '2022-09-07 19:10:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(101, 1, '2022-09-07 19:10:19', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(102, 1, '2022-09-07 19:11:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(103, 1, '2022-09-07 19:11:28', 'resource_create', 'MODX\\Revolution\\modDocument', '6'),
(104, 1, '2022-09-07 19:11:55', 'resource_create', 'MODX\\Revolution\\modDocument', '7'),
(105, 1, '2022-09-07 19:12:07', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(106, 1, '2022-09-07 19:12:22', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(107, 1, '2022-09-07 19:12:55', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(108, 1, '2022-09-07 19:12:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(109, 1, '2022-09-07 19:14:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(110, 1, '2022-09-07 19:17:29', 'resource_sort', '', 'unknown'),
(111, 1, '2022-09-07 19:17:31', 'resource_sort', '', 'unknown'),
(112, 1, '2022-09-07 19:17:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(113, 1, '2022-09-07 19:18:42', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(114, 1, '2022-09-07 19:18:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(115, 1, '2022-09-07 19:19:35', 'resource_sort', '', 'unknown'),
(116, 1, '2022-09-07 19:19:40', 'resource_sort', '', 'unknown'),
(117, 1, '2022-09-07 19:19:42', 'resource_sort', '', 'unknown'),
(118, 1, '2022-09-07 19:20:38', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(119, 1, '2022-09-07 19:20:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(120, 1, '2022-09-07 19:20:55', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(121, 1, '2022-09-07 19:20:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(122, 1, '2022-09-07 19:22:56', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(123, 1, '2022-09-07 19:24:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(124, 1, '2022-09-07 19:24:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(125, 1, '2022-09-07 21:35:32', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'publish_default'),
(126, 1, '2022-09-07 21:35:43', 'resource_sort', '', 'unknown'),
(127, 1, '2022-09-07 21:35:48', 'resource_sort', '', 'unknown'),
(128, 1, '2022-09-07 21:35:51', 'resource_sort', '', 'unknown'),
(129, 1, '2022-09-07 21:36:05', 'delete_resource', 'MODX\\Revolution\\modDocument', '5'),
(130, 1, '2022-09-07 21:36:17', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(131, 1, '2022-09-07 21:36:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(132, 1, '2022-09-07 21:37:16', 'empty_trash', 'MODX\\Revolution\\modResource', '5'),
(133, 1, '2022-09-07 21:38:04', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(134, 1, '2022-09-07 21:38:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(135, 1, '2022-09-07 21:38:23', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(136, 1, '2022-09-07 21:38:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(137, 1, '2022-09-07 21:41:00', 'category_create', 'MODX\\Revolution\\modCategory', '3'),
(138, 1, '2022-09-07 21:43:22', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '1'),
(139, 1, '2022-09-07 21:47:22', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(140, 1, '2022-09-07 21:47:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(141, 1, '2022-09-07 21:48:05', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(142, 1, '2022-09-07 21:48:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(143, 1, '2022-09-07 21:49:09', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(144, 1, '2022-09-07 21:49:48', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(145, 1, '2022-09-07 21:50:07', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(146, 1, '2022-09-07 21:51:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(147, 1, '2022-09-07 21:51:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(148, 1, '2022-09-07 21:52:48', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(149, 1, '2022-09-07 21:52:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(150, 1, '2022-09-07 21:53:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(151, 1, '2022-09-07 21:53:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(152, 1, '2022-09-07 21:56:45', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(153, 1, '2022-09-07 21:56:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(154, 1, '2022-09-07 21:57:04', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(155, 1, '2022-09-07 21:57:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(156, 1, '2022-09-07 21:57:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(157, 1, '2022-09-07 21:57:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(158, 1, '2022-09-07 21:57:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(159, 1, '2022-09-07 21:58:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(160, 1, '2022-09-07 21:59:47', 'resource_create', 'MODX\\Revolution\\modDocument', '8'),
(161, 1, '2022-09-07 22:00:09', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(162, 1, '2022-09-07 22:00:56', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(163, 1, '2022-09-07 22:01:24', 'resource_create', 'MODX\\Revolution\\modDocument', '9'),
(164, 1, '2022-09-07 22:02:12', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(165, 1, '2022-09-07 22:02:24', 'resource_sort', '', 'unknown'),
(166, 1, '2022-09-07 22:03:11', 'resource_create', 'MODX\\Revolution\\modDocument', '10'),
(167, 1, '2022-09-07 22:04:17', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(168, 1, '2022-09-07 22:04:36', 'resource_sort', '', 'unknown'),
(169, 1, '2022-09-07 22:05:46', 'resource_create', 'MODX\\Revolution\\modDocument', '11'),
(170, 1, '2022-09-07 22:06:07', 'resource_sort', '', 'unknown'),
(171, 1, '2022-09-07 22:07:06', 'resource_update', 'MODX\\Revolution\\modResource', '11'),
(172, 1, '2022-09-07 22:07:37', 'resource_create', 'MODX\\Revolution\\modDocument', '12'),
(173, 1, '2022-09-07 22:08:24', 'resource_update', 'MODX\\Revolution\\modResource', '12'),
(174, 1, '2022-09-07 22:08:41', 'resource_create', 'MODX\\Revolution\\modDocument', '13'),
(175, 1, '2022-09-07 22:09:32', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(176, 1, '2022-09-07 22:11:28', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(177, 1, '2022-09-07 22:11:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(178, 1, '2022-09-07 22:13:16', 'chunk_create', 'MODX\\Revolution\\modChunk', '3'),
(179, 1, '2022-09-07 22:14:31', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(180, 1, '2022-09-07 22:14:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(181, 1, '2022-09-07 22:15:30', 'resource_create', 'MODX\\Revolution\\modDocument', '14'),
(182, 1, '2022-09-07 22:16:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(183, 1, '2022-09-07 22:16:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(184, 1, '2022-09-07 22:17:18', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(185, 1, '2022-09-07 22:17:59', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(186, 1, '2022-09-07 22:20:16', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '2'),
(187, 1, '2022-09-07 22:20:36', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '2'),
(188, 1, '2022-09-07 22:20:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 2 Default'),
(189, 1, '2022-09-07 22:21:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(190, 1, '2022-09-07 22:21:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(191, 1, '2022-09-07 22:21:50', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(192, 1, '2022-09-07 22:22:44', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(193, 1, '2022-09-07 22:22:53', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(194, 1, '2022-09-07 22:24:21', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(195, 1, '2022-09-07 22:24:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(196, 1, '2022-09-07 22:26:06', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(197, 1, '2022-09-07 22:26:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(198, 1, '2022-09-07 22:27:03', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(199, 1, '2022-09-07 22:27:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(200, 1, '2022-09-07 22:27:25', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(201, 1, '2022-09-07 22:27:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(202, 1, '2022-09-07 22:27:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(203, 1, '2022-09-07 22:27:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(204, 1, '2022-09-07 22:29:45', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(205, 1, '2022-09-07 22:29:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(206, 1, '2022-09-07 22:31:37', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(207, 1, '2022-09-07 22:33:17', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(208, 1, '2022-09-07 22:34:21', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(209, 1, '2022-09-07 22:35:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(210, 1, '2022-09-07 22:37:04', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(211, 1, '2022-09-07 23:30:12', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(212, 1, '2022-09-07 23:30:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(213, 1, '2022-09-07 23:30:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(214, 1, '2022-09-07 23:30:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(215, 1, '2022-09-07 23:31:03', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(216, 1, '2022-09-07 23:31:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(217, 1, '2022-09-07 23:31:20', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(218, 1, '2022-09-07 23:31:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(219, 1, '2022-09-07 23:31:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(220, 1, '2022-09-07 23:31:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(221, 1, '2022-09-07 23:32:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(222, 1, '2022-09-07 23:32:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(223, 1, '2022-09-07 23:34:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(224, 1, '2022-09-07 23:34:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(225, 1, '2022-09-07 23:35:22', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(226, 1, '2022-09-07 23:35:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(227, 1, '2022-09-07 23:35:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(228, 1, '2022-09-07 23:35:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(229, 1, '2022-09-07 23:36:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(230, 1, '2022-09-07 23:36:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(231, 1, '2022-09-07 23:36:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(232, 1, '2022-09-07 23:36:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(233, 1, '2022-09-07 23:37:22', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(234, 1, '2022-09-07 23:37:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(235, 1, '2022-09-07 23:38:02', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(236, 1, '2022-09-07 23:40:38', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(237, 1, '2022-09-07 23:40:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(238, 1, '2022-09-07 23:40:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(239, 1, '2022-09-07 23:40:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(240, 1, '2022-09-07 23:41:13', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(241, 1, '2022-09-07 23:41:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(242, 1, '2022-09-07 23:41:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(243, 1, '2022-09-07 23:41:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(244, 1, '2022-09-07 23:41:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(245, 1, '2022-09-07 23:41:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(246, 1, '2022-09-07 23:41:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(247, 1, '2022-09-07 23:42:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(248, 1, '2022-09-07 23:45:38', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(249, 1, '2022-09-07 23:45:51', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(250, 1, '2022-09-07 23:46:24', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(251, 1, '2022-09-07 23:47:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(252, 1, '2022-09-07 23:47:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(253, 1, '2022-09-07 23:48:56', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(254, 1, '2022-09-07 23:55:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(255, 1, '2022-09-07 23:55:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(256, 1, '2022-09-08 00:00:57', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(257, 1, '2022-09-08 00:03:04', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '1'),
(258, 1, '2022-09-08 00:03:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 1 Default'),
(259, 1, '2022-09-08 00:03:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(260, 1, '2022-09-08 00:03:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(261, 1, '2022-09-08 00:05:43', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(262, 1, '2022-09-08 00:05:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(263, 1, '2022-09-08 00:06:18', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(264, 1, '2022-09-08 00:06:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(265, 1, '2022-09-08 00:07:55', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(266, 1, '2022-09-08 00:07:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(267, 1, '2022-09-08 00:18:49', 'resource_create', 'MODX\\Revolution\\modDocument', '15'),
(268, 1, '2022-09-08 00:21:15', 'resource_update', 'MODX\\Revolution\\modResource', '15'),
(269, 1, '2022-09-08 00:22:03', 'resource_create', 'MODX\\Revolution\\modDocument', '16'),
(270, 1, '2022-09-08 00:23:09', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(271, 1, '2022-09-08 00:23:34', 'resource_create', 'MODX\\Revolution\\modDocument', '17'),
(272, 1, '2022-09-08 00:25:02', 'resource_update', 'MODX\\Revolution\\modResource', '17'),
(273, 1, '2022-09-08 00:25:25', 'resource_create', 'MODX\\Revolution\\modDocument', '18'),
(274, 1, '2022-09-08 00:26:40', 'resource_update', 'MODX\\Revolution\\modResource', '18'),
(275, 1, '2022-09-08 00:26:59', 'resource_create', 'MODX\\Revolution\\modDocument', '19'),
(276, 1, '2022-09-08 00:28:37', 'resource_update', 'MODX\\Revolution\\modResource', '19'),
(277, 1, '2022-09-08 00:28:51', 'resource_create', 'MODX\\Revolution\\modDocument', '20'),
(278, 1, '2022-09-08 00:29:40', 'resource_update', 'MODX\\Revolution\\modResource', '20'),
(279, 1, '2022-09-08 00:30:15', 'resource_create', 'MODX\\Revolution\\modDocument', '21'),
(280, 1, '2022-09-08 00:31:08', 'resource_update', 'MODX\\Revolution\\modResource', '21'),
(281, 1, '2022-09-08 01:08:47', 'template_duplicate', 'MODX\\Revolution\\modTemplate', '5'),
(282, 1, '2022-09-08 01:09:33', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(283, 1, '2022-09-08 01:09:33', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(284, 1, '2022-09-08 01:09:33', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(285, 1, '2022-09-08 01:09:45', 'chunk_create', 'MODX\\Revolution\\modChunk', '4'),
(286, 1, '2022-09-08 01:10:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(287, 1, '2022-09-08 01:10:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(288, 1, '2022-09-08 01:10:58', 'chunk_delete', 'MODX\\Revolution\\modChunk', '4'),
(289, 1, '2022-09-08 01:11:40', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(290, 1, '2022-09-08 01:11:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(291, 1, '2022-09-08 01:12:12', 'resource_create', 'MODX\\Revolution\\modDocument', '22'),
(292, 1, '2022-09-08 01:13:15', 'resource_create', 'MODX\\Revolution\\modDocument', '23'),
(293, 1, '2022-09-08 01:14:05', 'resource_update', 'MODX\\Revolution\\modResource', '23'),
(294, 1, '2022-09-08 01:14:18', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(295, 1, '2022-09-08 01:14:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(296, 1, '2022-09-08 01:14:46', 'resource_update', 'MODX\\Revolution\\modResource', '23'),
(297, 1, '2022-09-08 01:15:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(298, 1, '2022-09-08 01:15:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(299, 1, '2022-09-08 01:16:19', 'resource_update', 'MODX\\Revolution\\modResource', '23'),
(300, 1, '2022-09-08 01:17:02', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(301, 1, '2022-09-08 01:17:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(302, 1, '2022-09-08 15:44:30', 'chunk_create', 'MODX\\Revolution\\modChunk', '4'),
(303, 1, '2022-09-08 15:47:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(304, 1, '2022-09-08 15:47:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(305, 1, '2022-09-08 15:47:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(306, 1, '2022-09-08 15:47:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(307, 1, '2022-09-08 15:48:47', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(308, 1, '2022-09-08 15:48:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(309, 1, '2022-09-08 15:49:13', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(310, 1, '2022-09-08 15:49:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(311, 1, '2022-09-08 15:49:38', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(312, 1, '2022-09-08 15:49:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(313, 1, '2022-09-08 15:49:50', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(314, 1, '2022-09-08 15:49:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(315, 1, '2022-09-08 15:50:14', 'resource_update', 'MODX\\Revolution\\modResource', '23'),
(316, 1, '2022-09-08 15:51:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(317, 1, '2022-09-08 15:51:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(318, 1, '2022-09-08 15:51:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(319, 1, '2022-09-08 15:51:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(320, 1, '2022-09-08 15:52:21', 'resource_create', 'MODX\\Revolution\\modDocument', '24'),
(321, 1, '2022-09-08 15:53:23', 'resource_update', 'MODX\\Revolution\\modResource', '24'),
(322, 1, '2022-09-08 15:53:41', 'resource_create', 'MODX\\Revolution\\modDocument', '25'),
(323, 1, '2022-09-08 15:54:26', 'resource_update', 'MODX\\Revolution\\modResource', '25'),
(324, 1, '2022-09-08 15:54:53', 'resource_create', 'MODX\\Revolution\\modDocument', '26'),
(325, 1, '2022-09-08 15:55:38', 'resource_update', 'MODX\\Revolution\\modResource', '26'),
(326, 1, '2022-09-08 15:56:09', 'resource_create', 'MODX\\Revolution\\modDocument', '27'),
(327, 1, '2022-09-08 15:56:59', 'resource_update', 'MODX\\Revolution\\modResource', '27'),
(328, 1, '2022-09-08 15:57:13', 'resource_create', 'MODX\\Revolution\\modDocument', '28'),
(329, 1, '2022-09-08 15:58:02', 'resource_update', 'MODX\\Revolution\\modResource', '28'),
(330, 1, '2022-09-08 15:58:20', 'resource_create', 'MODX\\Revolution\\modDocument', '29'),
(331, 1, '2022-09-08 15:59:06', 'resource_update', 'MODX\\Revolution\\modResource', '29'),
(332, 1, '2022-09-08 15:59:28', 'resource_create', 'MODX\\Revolution\\modDocument', '30'),
(333, 1, '2022-09-08 16:00:19', 'resource_update', 'MODX\\Revolution\\modResource', '30'),
(334, 1, '2022-09-08 16:08:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(335, 1, '2022-09-08 16:08:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(336, 1, '2022-09-08 16:09:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(337, 1, '2022-09-08 16:09:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(338, 1, '2022-09-08 16:09:51', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(339, 1, '2022-09-08 16:09:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(340, 1, '2022-09-08 16:12:35', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(341, 1, '2022-09-08 16:12:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(342, 1, '2022-09-08 16:13:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(343, 1, '2022-09-08 16:13:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(344, 1, '2022-09-08 16:13:36', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(345, 1, '2022-09-08 16:13:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(346, 1, '2022-09-08 16:14:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(347, 1, '2022-09-08 16:14:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(348, 1, '2022-09-08 16:14:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(349, 1, '2022-09-08 16:14:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(350, 1, '2022-09-08 16:14:50', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(351, 1, '2022-09-08 16:14:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(352, 1, '2022-09-08 16:15:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(353, 1, '2022-09-08 16:15:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(354, 1, '2022-09-08 16:16:47', 'template_duplicate', 'MODX\\Revolution\\modTemplate', '6'),
(355, 1, '2022-09-08 16:17:40', 'template_update', 'MODX\\Revolution\\modTemplate', '6'),
(356, 1, '2022-09-08 16:17:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 6 Default'),
(357, 1, '2022-09-08 16:17:57', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(358, 1, '2022-09-08 16:18:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(359, 1, '2022-09-08 16:18:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(360, 1, '2022-09-08 16:18:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(361, 1, '2022-09-08 16:18:45', 'resource_create', 'MODX\\Revolution\\modDocument', '31'),
(362, 1, '2022-09-08 16:20:04', 'template_update', 'MODX\\Revolution\\modTemplate', '6'),
(363, 1, '2022-09-08 16:20:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 6 Default'),
(364, 1, '2022-09-08 16:50:12', 'resource_create', 'MODX\\Revolution\\modDocument', '32'),
(365, 1, '2022-09-08 16:53:43', 'resource_update', 'MODX\\Revolution\\modResource', '32'),
(366, 1, '2022-09-08 16:57:18', 'resource_create', 'MODX\\Revolution\\modDocument', '33'),
(367, 1, '2022-09-08 16:58:31', 'resource_update', 'MODX\\Revolution\\modResource', '33'),
(368, 1, '2022-09-08 16:58:47', 'resource_create', 'MODX\\Revolution\\modDocument', '34'),
(369, 1, '2022-09-08 16:59:37', 'resource_update', 'MODX\\Revolution\\modResource', '34'),
(370, 1, '2022-09-08 16:59:58', 'resource_create', 'MODX\\Revolution\\modDocument', '35'),
(371, 1, '2022-09-08 17:00:56', 'resource_update', 'MODX\\Revolution\\modResource', '35'),
(372, 1, '2022-09-08 17:01:16', 'resource_create', 'MODX\\Revolution\\modDocument', '36'),
(373, 1, '2022-09-08 17:02:07', 'resource_update', 'MODX\\Revolution\\modResource', '36'),
(374, 1, '2022-09-08 17:02:27', 'resource_create', 'MODX\\Revolution\\modDocument', '37'),
(375, 1, '2022-09-08 17:03:25', 'resource_update', 'MODX\\Revolution\\modResource', '37'),
(376, 1, '2022-09-08 17:03:47', 'resource_create', 'MODX\\Revolution\\modDocument', '38'),
(377, 1, '2022-09-08 17:04:46', 'resource_update', 'MODX\\Revolution\\modResource', '38'),
(378, 1, '2022-09-08 17:05:02', 'resource_create', 'MODX\\Revolution\\modDocument', '39'),
(379, 1, '2022-09-08 17:05:58', 'resource_update', 'MODX\\Revolution\\modResource', '39'),
(380, 1, '2022-09-08 17:07:16', 'template_duplicate', 'MODX\\Revolution\\modTemplate', '7'),
(381, 1, '2022-09-08 17:07:31', 'resource_create', 'MODX\\Revolution\\modDocument', '40'),
(382, 1, '2022-09-08 17:08:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(383, 1, '2022-09-08 17:08:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(384, 1, '2022-09-08 17:09:01', 'template_update', 'MODX\\Revolution\\modTemplate', '7'),
(385, 1, '2022-09-08 17:09:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 7 Default'),
(386, 1, '2022-09-08 17:09:55', 'chunk_duplicate', 'MODX\\Revolution\\modChunk', '5'),
(387, 1, '2022-09-08 17:10:35', 'chunk_update', 'MODX\\Revolution\\modChunk', '5'),
(388, 1, '2022-09-08 17:10:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 5 Default'),
(389, 1, '2022-09-08 17:11:06', 'resource_create', 'MODX\\Revolution\\modDocument', '41'),
(390, 1, '2022-09-08 17:11:48', 'resource_update', 'MODX\\Revolution\\modResource', '41'),
(391, 1, '2022-09-08 17:12:30', 'resource_create', 'MODX\\Revolution\\modDocument', '42'),
(392, 1, '2022-09-08 17:13:09', 'resource_update', 'MODX\\Revolution\\modResource', '42'),
(393, 1, '2022-09-08 17:13:23', 'resource_create', 'MODX\\Revolution\\modDocument', '43'),
(394, 1, '2022-09-08 17:13:53', 'resource_update', 'MODX\\Revolution\\modResource', '43'),
(395, 1, '2022-09-08 17:14:05', 'resource_create', 'MODX\\Revolution\\modDocument', '44'),
(396, 1, '2022-09-08 17:14:39', 'resource_update', 'MODX\\Revolution\\modResource', '44'),
(397, 1, '2022-09-08 17:14:55', 'resource_create', 'MODX\\Revolution\\modDocument', '45'),
(398, 1, '2022-09-08 17:15:31', 'resource_update', 'MODX\\Revolution\\modResource', '45'),
(399, 1, '2022-09-08 17:15:44', 'resource_create', 'MODX\\Revolution\\modDocument', '46'),
(400, 1, '2022-09-08 17:16:16', 'resource_update', 'MODX\\Revolution\\modResource', '46'),
(401, 1, '2022-09-08 17:16:28', 'resource_create', 'MODX\\Revolution\\modDocument', '47'),
(402, 1, '2022-09-08 17:16:56', 'resource_update', 'MODX\\Revolution\\modResource', '47'),
(403, 1, '2022-09-08 17:17:07', 'resource_create', 'MODX\\Revolution\\modDocument', '48'),
(404, 1, '2022-09-08 17:17:40', 'resource_update', 'MODX\\Revolution\\modResource', '48'),
(405, 1, '2022-09-08 17:55:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(406, 1, '2022-09-08 17:56:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(407, 1, '2022-09-08 18:53:38', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(408, 1, '2022-09-08 18:53:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(409, 1, '2022-09-08 18:55:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(410, 1, '2022-09-08 18:55:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(411, 1, '2022-09-08 18:55:35', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(412, 1, '2022-09-08 18:55:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(413, 1, '2022-09-08 18:56:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(414, 1, '2022-09-08 18:56:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(415, 1, '2022-09-08 18:57:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(416, 1, '2022-09-08 18:57:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(417, 1, '2022-09-08 18:58:26', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(418, 1, '2022-09-08 18:58:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(419, 1, '2022-09-08 18:59:06', 'chunk_create', 'MODX\\Revolution\\modChunk', '6'),
(420, 1, '2022-09-08 19:00:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '6'),
(421, 1, '2022-09-08 19:00:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 6 Default'),
(422, 1, '2022-09-08 19:03:38', 'chunk_update', 'MODX\\Revolution\\modChunk', '6'),
(423, 1, '2022-09-08 19:03:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 6 Default'),
(424, 1, '2022-09-08 19:04:18', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(425, 1, '2022-09-08 19:04:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(426, 1, '2022-09-08 19:04:37', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(427, 1, '2022-09-08 19:04:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(428, 1, '2022-09-08 19:05:10', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(429, 1, '2022-09-08 19:05:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(430, 1, '2022-09-08 19:05:14', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(431, 1, '2022-09-08 19:05:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(432, 1, '2022-09-08 21:04:51', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(433, 1, '2022-09-08 21:04:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(434, 1, '2022-09-08 22:12:09', 'snippet_create', 'MODX\\Revolution\\modSnippet', '11'),
(435, 1, '2022-09-08 22:12:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(436, 1, '2022-09-08 22:12:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(437, 1, '2022-09-08 22:13:21', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(438, 1, '2022-09-08 22:13:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(439, 1, '2022-09-08 22:14:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(440, 1, '2022-09-08 22:14:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(441, 1, '2022-09-08 22:15:50', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(442, 1, '2022-09-08 22:15:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(443, 1, '2022-09-08 22:16:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(444, 1, '2022-09-08 22:16:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(445, 1, '2022-09-08 22:17:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(446, 1, '2022-09-08 22:17:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(447, 1, '2022-09-08 22:17:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(448, 1, '2022-09-08 22:17:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(449, 1, '2022-09-08 22:18:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(450, 1, '2022-09-08 22:18:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(451, 1, '2022-09-08 22:18:55', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(452, 1, '2022-09-08 22:18:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(453, 1, '2022-09-08 22:21:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(454, 1, '2022-09-08 22:21:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(455, 1, '2022-09-08 22:24:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(456, 1, '2022-09-08 22:24:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(457, 1, '2022-09-08 22:25:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(458, 1, '2022-09-08 22:25:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(459, 1, '2022-09-08 22:26:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(460, 1, '2022-09-08 22:26:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(461, 1, '2022-09-08 22:31:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(462, 1, '2022-09-08 22:31:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(463, 1, '2022-09-08 22:32:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(464, 1, '2022-09-08 22:32:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(465, 1, '2022-09-08 22:33:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(466, 1, '2022-09-08 22:33:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(467, 1, '2022-09-08 22:38:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(468, 1, '2022-09-08 22:38:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(469, 1, '2022-09-08 22:38:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(470, 1, '2022-09-08 22:38:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(471, 1, '2022-09-08 22:39:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(472, 1, '2022-09-08 22:39:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(473, 1, '2022-09-08 22:43:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(474, 1, '2022-09-08 22:43:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(475, 1, '2022-09-08 22:43:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '11'),
(476, 1, '2022-09-08 22:43:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 11 Default'),
(477, 1, '2022-09-08 22:46:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(478, 1, '2022-09-08 22:46:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(479, 1, '2022-09-08 22:48:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(480, 1, '2022-09-08 22:48:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(481, 1, '2022-09-08 22:51:28', 'snippet_delete', 'MODX\\Revolution\\modSnippet', '11'),
(482, 1, '2022-09-08 22:55:31', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(483, 1, '2022-09-08 22:55:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default');
INSERT INTO `belarustablemanager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(484, 1, '2022-09-08 22:55:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(485, 1, '2022-09-08 22:55:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(486, 1, '2022-09-08 22:56:50', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(487, 1, '2022-09-08 22:56:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(488, 1, '2022-09-08 22:57:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(489, 1, '2022-09-08 22:57:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(490, 1, '2022-09-08 22:58:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(491, 1, '2022-09-08 22:58:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(492, 1, '2022-09-08 23:00:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(493, 1, '2022-09-08 23:00:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(494, 1, '2022-09-08 23:01:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(495, 1, '2022-09-08 23:01:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(496, 1, '2022-09-08 23:01:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(497, 1, '2022-09-08 23:01:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(498, 1, '2022-09-08 23:01:58', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(499, 1, '2022-09-08 23:02:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(500, 1, '2022-09-08 23:03:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(501, 1, '2022-09-08 23:03:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(502, 1, '2022-09-08 23:04:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(503, 1, '2022-09-09 14:26:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(504, 1, '2022-09-09 14:27:42', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(505, 1, '2022-09-09 14:29:44', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(506, 1, '2022-09-09 14:29:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(507, 1, '2022-09-09 14:29:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '6'),
(508, 1, '2022-09-09 14:30:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 6 Default'),
(509, 1, '2022-09-09 14:30:56', 'chunk_update', 'MODX\\Revolution\\modChunk', '5'),
(510, 1, '2022-09-09 14:30:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 5 Default'),
(511, 1, '2022-09-09 14:34:51', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(512, 1, '2022-09-09 14:34:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(513, 1, '2022-09-09 14:35:40', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(514, 1, '2022-09-09 14:35:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(515, 1, '2022-09-09 14:36:45', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(516, 1, '2022-09-09 14:36:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(517, 1, '2022-09-09 14:38:32', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(518, 1, '2022-09-09 14:38:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(519, 1, '2022-09-09 14:38:48', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(520, 1, '2022-09-09 14:38:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(521, 1, '2022-09-09 14:39:06', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(522, 1, '2022-09-09 14:39:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(523, 1, '2022-09-09 14:39:38', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(524, 1, '2022-09-09 14:39:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(525, 1, '2022-09-09 14:40:07', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(526, 1, '2022-09-09 14:40:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(527, 1, '2022-09-09 14:41:24', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(528, 1, '2022-09-09 14:41:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(529, 1, '2022-09-09 14:42:09', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(530, 1, '2022-09-09 14:42:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(531, 1, '2022-09-09 14:42:37', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(532, 1, '2022-09-09 14:42:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(533, 1, '2022-09-09 14:44:40', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(534, 1, '2022-09-09 14:44:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(535, 1, '2022-09-09 14:44:48', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(536, 1, '2022-09-09 14:44:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(537, 1, '2022-09-09 14:45:03', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(538, 1, '2022-09-09 14:45:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(539, 1, '2022-09-09 14:45:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(540, 1, '2022-09-09 14:45:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(541, 1, '2022-09-09 14:46:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(542, 1, '2022-09-09 14:46:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(543, 1, '2022-09-09 14:46:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(544, 1, '2022-09-09 14:46:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(545, 1, '2022-09-09 15:16:25', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(546, 1, '2022-09-09 15:17:28', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(547, 1, '2022-09-09 15:18:01', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(548, 1, '2022-09-09 15:18:24', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(549, 1, '2022-09-09 15:19:28', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(550, 1, '2022-09-09 15:20:00', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(551, 1, '2022-09-09 15:22:55', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(552, 1, '2022-09-09 15:23:33', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(553, 1, '2022-09-09 15:24:14', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(554, 1, '2022-09-09 15:26:25', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(555, 1, '2022-09-09 15:26:47', 'resource_update', 'MODX\\Revolution\\modResource', '11'),
(556, 1, '2022-09-09 15:27:09', 'resource_update', 'MODX\\Revolution\\modResource', '11'),
(557, 1, '2022-09-09 15:27:43', 'resource_update', 'MODX\\Revolution\\modResource', '12'),
(558, 1, '2022-09-09 15:28:04', 'resource_update', 'MODX\\Revolution\\modResource', '12'),
(559, 1, '2022-09-09 15:28:31', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(560, 1, '2022-09-09 15:28:54', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(561, 1, '2022-09-09 15:29:49', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(562, 1, '2022-09-09 15:30:43', 'resource_update', 'MODX\\Revolution\\modResource', '15'),
(563, 1, '2022-09-09 15:30:55', 'resource_update', 'MODX\\Revolution\\modResource', '15'),
(564, 1, '2022-09-09 15:31:21', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(565, 1, '2022-09-09 15:31:50', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(566, 1, '2022-09-09 15:33:19', 'resource_update', 'MODX\\Revolution\\modResource', '18'),
(567, 1, '2022-09-09 15:33:56', 'resource_update', 'MODX\\Revolution\\modResource', '17'),
(568, 1, '2022-09-09 15:34:01', 'resource_update', 'MODX\\Revolution\\modResource', '18'),
(569, 1, '2022-09-09 15:34:33', 'resource_update', 'MODX\\Revolution\\modResource', '19'),
(570, 1, '2022-09-09 15:35:03', 'resource_update', 'MODX\\Revolution\\modResource', '19'),
(571, 1, '2022-09-09 15:35:30', 'resource_update', 'MODX\\Revolution\\modResource', '20'),
(572, 1, '2022-09-09 15:35:48', 'resource_update', 'MODX\\Revolution\\modResource', '21'),
(573, 1, '2022-09-09 15:41:42', 'resource_update', 'MODX\\Revolution\\modResource', '23'),
(574, 1, '2022-09-09 15:42:21', 'resource_update', 'MODX\\Revolution\\modResource', '24'),
(575, 1, '2022-09-09 15:43:13', 'resource_update', 'MODX\\Revolution\\modResource', '25'),
(576, 1, '2022-09-09 15:43:30', 'resource_update', 'MODX\\Revolution\\modResource', '25'),
(577, 1, '2022-09-09 15:44:07', 'resource_update', 'MODX\\Revolution\\modResource', '26'),
(578, 1, '2022-09-09 15:44:45', 'resource_update', 'MODX\\Revolution\\modResource', '27'),
(579, 1, '2022-09-09 15:45:07', 'resource_update', 'MODX\\Revolution\\modResource', '28'),
(580, 1, '2022-09-09 15:45:41', 'resource_update', 'MODX\\Revolution\\modResource', '29'),
(581, 1, '2022-09-09 15:46:07', 'resource_update', 'MODX\\Revolution\\modResource', '30'),
(582, 1, '2022-09-09 15:46:40', 'resource_update', 'MODX\\Revolution\\modResource', '32'),
(583, 1, '2022-09-09 15:47:00', 'resource_update', 'MODX\\Revolution\\modResource', '33'),
(584, 1, '2022-09-09 15:47:20', 'resource_update', 'MODX\\Revolution\\modResource', '34'),
(585, 1, '2022-09-09 15:47:57', 'resource_update', 'MODX\\Revolution\\modResource', '35'),
(586, 1, '2022-09-09 15:48:41', 'resource_update', 'MODX\\Revolution\\modResource', '36'),
(587, 1, '2022-09-09 15:49:13', 'resource_update', 'MODX\\Revolution\\modResource', '37'),
(588, 1, '2022-09-09 15:49:39', 'resource_update', 'MODX\\Revolution\\modResource', '38'),
(589, 1, '2022-09-09 15:49:52', 'resource_update', 'MODX\\Revolution\\modResource', '38'),
(590, 1, '2022-09-09 15:50:25', 'resource_update', 'MODX\\Revolution\\modResource', '39'),
(591, 1, '2022-09-09 15:50:38', 'resource_update', 'MODX\\Revolution\\modResource', '39'),
(592, 1, '2022-09-09 15:53:15', 'resource_update', 'MODX\\Revolution\\modResource', '41'),
(593, 1, '2022-09-09 15:53:45', 'resource_update', 'MODX\\Revolution\\modResource', '42'),
(594, 1, '2022-09-09 15:54:17', 'resource_update', 'MODX\\Revolution\\modResource', '43'),
(595, 1, '2022-09-09 15:54:30', 'resource_update', 'MODX\\Revolution\\modResource', '43'),
(596, 1, '2022-09-09 15:55:03', 'resource_update', 'MODX\\Revolution\\modResource', '44'),
(597, 1, '2022-09-09 15:55:22', 'resource_update', 'MODX\\Revolution\\modResource', '44'),
(598, 1, '2022-09-09 15:55:49', 'resource_update', 'MODX\\Revolution\\modResource', '45'),
(599, 1, '2022-09-09 15:56:05', 'resource_update', 'MODX\\Revolution\\modResource', '46'),
(600, 1, '2022-09-09 15:56:25', 'resource_update', 'MODX\\Revolution\\modResource', '47'),
(601, 1, '2022-09-09 15:56:51', 'resource_update', 'MODX\\Revolution\\modResource', '48'),
(602, 1, '2022-09-09 15:58:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(603, 1, '2022-09-09 15:58:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(604, 1, '2022-09-09 15:58:26', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(605, 1, '2022-09-09 15:58:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(606, 1, '2022-09-09 15:59:06', 'chunk_update', 'MODX\\Revolution\\modChunk', '5'),
(607, 1, '2022-09-09 15:59:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 5 Default'),
(608, 1, '2022-09-09 15:59:15', 'chunk_update', 'MODX\\Revolution\\modChunk', '5'),
(609, 1, '2022-09-09 15:59:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 5 Default'),
(610, 1, '2022-09-09 16:16:36', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(611, 1, '2022-09-09 16:16:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(612, 1, '2022-09-09 16:17:21', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(613, 1, '2022-09-09 16:17:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(614, 1, '2022-09-11 19:11:29', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(615, 1, '2022-09-11 19:11:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(616, 1, '2022-09-11 19:18:36', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(617, 1, '2022-09-11 19:18:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(618, 1, '2022-09-11 19:19:39', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(619, 1, '2022-09-11 19:19:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(620, 1, '2022-09-11 19:19:45', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(621, 1, '2022-09-11 19:19:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(622, 1, '2022-09-11 19:20:02', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(623, 1, '2022-09-11 19:20:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(624, 1, '2022-09-11 19:20:21', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(625, 1, '2022-09-11 19:20:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(626, 1, '2022-09-11 19:21:12', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(627, 1, '2022-09-11 19:21:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(628, 1, '2022-09-13 19:25:28', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(629, 1, '2022-09-13 19:25:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(630, 1, '2022-09-13 19:25:35', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(631, 1, '2022-09-13 19:25:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(632, 1, '2022-09-13 19:25:53', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(633, 1, '2022-09-13 19:25:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(634, 1, '2022-09-13 19:26:06', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(635, 1, '2022-09-13 19:26:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(636, 1, '2022-09-13 19:26:20', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(637, 1, '2022-09-13 19:26:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(638, 1, '2022-09-13 19:29:20', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(639, 1, '2022-09-13 19:29:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(640, 1, '2022-09-13 19:30:44', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(641, 1, '2022-09-13 19:30:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(642, 1, '2022-09-13 19:30:53', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(643, 1, '2022-09-13 19:30:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(644, 1, '2022-09-13 19:31:22', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(645, 1, '2022-09-13 19:31:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(646, 1, '2022-09-13 19:43:49', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(647, 1, '2022-09-13 19:43:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(648, 1, '2022-09-13 19:45:58', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(649, 1, '2022-09-13 19:46:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(650, 1, '2022-09-13 19:47:47', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(651, 1, '2022-09-13 19:47:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(652, 1, '2022-09-13 19:50:54', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(653, 1, '2022-09-13 19:50:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(654, 1, '2022-09-13 19:55:19', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(655, 1, '2022-09-13 19:55:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(656, 1, '2022-09-13 19:58:40', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(657, 1, '2022-09-13 19:58:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(658, 1, '2022-09-13 19:59:23', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(659, 1, '2022-09-13 19:59:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(660, 1, '2022-09-13 20:00:50', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(661, 1, '2022-09-13 20:00:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(662, 1, '2022-09-13 20:02:01', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(663, 1, '2022-09-13 20:02:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(664, 1, '2022-09-13 20:05:02', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(665, 1, '2022-09-13 20:05:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(666, 1, '2022-09-13 20:05:42', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(667, 1, '2022-09-13 20:05:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(668, 1, '2022-09-13 20:06:46', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(669, 1, '2022-09-13 20:06:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(670, 1, '2022-09-13 20:07:31', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(671, 1, '2022-09-13 20:07:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(672, 1, '2022-09-13 20:07:40', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(673, 1, '2022-09-13 20:07:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(674, 1, '2022-09-13 20:08:24', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(675, 1, '2022-09-13 20:08:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(676, 1, '2022-09-13 20:11:47', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(677, 1, '2022-09-13 20:11:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(678, 1, '2022-09-13 20:11:52', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(679, 1, '2022-09-13 20:11:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(680, 1, '2022-09-13 20:12:52', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(681, 1, '2022-09-13 20:12:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(682, 1, '2022-09-13 20:14:38', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(683, 1, '2022-09-13 20:14:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(684, 1, '2022-09-13 20:15:05', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(685, 1, '2022-09-13 20:15:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(686, 1, '2022-09-13 20:18:41', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(687, 1, '2022-09-13 20:18:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(688, 1, '2022-09-13 20:19:10', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(689, 1, '2022-09-13 20:19:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(690, 1, '2022-09-13 20:23:23', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(691, 1, '2022-09-13 20:23:23', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(692, 1, '2022-09-13 20:23:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(693, 1, '2022-09-13 20:23:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(694, 1, '2022-09-13 20:23:27', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(695, 1, '2022-09-13 20:23:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(696, 1, '2022-09-13 20:24:25', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(697, 1, '2022-09-13 20:24:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(698, 1, '2022-09-13 20:24:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(699, 1, '2022-09-13 20:24:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(700, 1, '2022-09-13 20:28:37', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(701, 1, '2022-09-13 20:28:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(702, 1, '2022-09-13 20:36:25', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(703, 1, '2022-09-13 20:36:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(704, 1, '2022-09-13 20:36:42', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(705, 1, '2022-09-13 20:36:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(706, 1, '2022-09-13 20:36:50', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(707, 1, '2022-09-13 20:36:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(708, 1, '2022-09-13 20:39:47', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(709, 1, '2022-09-13 20:39:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(710, 1, '2022-09-13 20:40:48', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(711, 1, '2022-09-13 20:40:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(712, 1, '2022-09-13 20:41:28', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(713, 1, '2022-09-13 20:41:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(714, 1, '2022-09-13 20:49:40', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(715, 1, '2022-09-13 20:49:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(716, 1, '2022-09-13 20:51:41', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(717, 1, '2022-09-13 20:51:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(718, 1, '2022-09-13 20:53:18', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(719, 1, '2022-09-13 20:53:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(720, 1, '2022-09-13 20:55:25', 'chunk_create', 'MODX\\Revolution\\modChunk', '7'),
(721, 1, '2022-09-13 20:56:02', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(722, 1, '2022-09-13 20:56:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(723, 1, '2022-09-13 20:56:32', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(724, 1, '2022-09-13 20:56:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(725, 1, '2022-09-13 20:57:05', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(726, 1, '2022-09-13 20:57:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(727, 1, '2022-09-13 20:57:31', 'template_update', 'MODX\\Revolution\\modTemplate', '6'),
(728, 1, '2022-09-13 20:57:43', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(729, 1, '2022-09-13 20:57:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(730, 1, '2022-09-13 20:57:56', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(731, 1, '2022-09-13 20:57:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(732, 1, '2022-09-13 20:58:09', 'template_update', 'MODX\\Revolution\\modTemplate', '3'),
(733, 1, '2022-09-13 20:58:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 3 Default'),
(734, 1, '2022-09-13 20:58:19', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(735, 1, '2022-09-13 20:58:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(736, 1, '2022-09-13 20:58:27', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(737, 1, '2022-09-13 20:58:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(738, 1, '2022-09-13 20:58:35', 'template_update', 'MODX\\Revolution\\modTemplate', '7'),
(739, 1, '2022-09-13 20:58:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 7 Default'),
(740, 1, '2022-09-13 20:58:47', 'template_update', 'MODX\\Revolution\\modTemplate', '4'),
(741, 1, '2022-09-13 20:58:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 4 Default'),
(742, 1, '2022-09-13 20:59:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(743, 1, '2022-09-13 20:59:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(744, 1, '2022-09-13 21:03:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(745, 1, '2022-09-13 21:03:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(746, 1, '2022-09-13 21:04:51', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(747, 1, '2022-09-13 21:04:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(748, 1, '2022-09-13 21:04:57', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(749, 1, '2022-09-13 21:04:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(750, 1, '2022-09-13 21:06:45', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(751, 1, '2022-09-13 21:06:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(752, 1, '2022-09-14 21:07:33', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(753, 1, '2022-09-14 21:07:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(754, 1, '2022-09-14 21:15:32', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '3'),
(755, 1, '2022-09-14 21:16:50', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '3'),
(756, 1, '2022-09-14 21:16:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 3 Default'),
(757, 1, '2022-09-14 21:17:28', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(758, 1, '2022-09-14 21:17:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(759, 1, '2022-09-14 21:17:52', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(760, 1, '2022-09-14 21:17:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(761, 1, '2022-09-14 21:18:07', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(762, 1, '2022-09-14 21:18:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(763, 1, '2022-09-14 21:19:27', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '3'),
(764, 1, '2022-09-14 21:19:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 3 Default'),
(765, 1, '2022-09-14 21:19:57', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(766, 1, '2022-09-14 21:20:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(767, 1, '2022-09-14 21:20:16', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(768, 1, '2022-09-14 21:20:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(769, 1, '2022-09-14 21:20:22', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(770, 1, '2022-09-14 21:20:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(771, 1, '2022-09-14 21:21:48', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '3'),
(772, 1, '2022-09-14 21:21:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 3 Default'),
(773, 1, '2022-09-14 21:22:43', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(774, 1, '2022-09-14 21:42:06', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(775, 1, '2022-09-14 21:42:26', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(776, 1, '2022-09-14 21:42:43', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(777, 1, '2022-09-14 21:43:02', 'resource_update', 'MODX\\Revolution\\modResource', '11'),
(778, 1, '2022-09-14 21:43:21', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(779, 1, '2022-09-14 21:45:37', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(780, 1, '2022-09-14 21:45:45', 'resource_update', 'MODX\\Revolution\\modResource', '12'),
(781, 1, '2022-09-14 21:46:00', 'resource_update', 'MODX\\Revolution\\modResource', '12'),
(782, 1, '2022-09-14 21:46:04', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(783, 1, '2022-09-14 21:48:23', 'resource_update', 'MODX\\Revolution\\modResource', '27'),
(784, 1, '2022-09-14 21:48:55', 'resource_update', 'MODX\\Revolution\\modResource', '28'),
(785, 1, '2022-09-14 21:49:54', 'resource_update', 'MODX\\Revolution\\modResource', '29'),
(786, 1, '2022-09-14 21:50:44', 'resource_update', 'MODX\\Revolution\\modResource', '29'),
(787, 1, '2022-09-14 21:51:39', 'resource_update', 'MODX\\Revolution\\modResource', '30'),
(788, 1, '2022-09-14 21:52:11', 'resource_update', 'MODX\\Revolution\\modResource', '30'),
(789, 1, '2022-09-14 21:56:55', 'resource_update', 'MODX\\Revolution\\modResource', '25'),
(790, 1, '2022-09-14 21:57:26', 'resource_update', 'MODX\\Revolution\\modResource', '24'),
(791, 1, '2022-09-14 22:06:44', 'resource_update', 'MODX\\Revolution\\modResource', '23'),
(792, 1, '2022-09-14 22:07:50', 'resource_update', 'MODX\\Revolution\\modResource', '26'),
(793, 1, '2022-09-14 22:08:17', 'resource_update', 'MODX\\Revolution\\modResource', '26'),
(794, 1, '2022-09-14 22:11:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(795, 1, '2022-09-14 22:11:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(796, 1, '2022-09-14 22:19:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(797, 1, '2022-09-14 22:19:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(798, 1, '2022-09-14 22:19:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(799, 1, '2022-09-14 22:19:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(800, 1, '2022-09-14 22:20:06', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(801, 1, '2022-09-14 22:20:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(802, 1, '2022-09-14 22:24:53', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(803, 1, '2022-09-14 22:24:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(804, 1, '2022-09-14 22:24:57', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(805, 1, '2022-09-14 22:24:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(806, 1, '2022-09-14 22:25:03', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(807, 1, '2022-09-14 22:25:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(808, 1, '2022-09-14 22:25:42', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(809, 1, '2022-09-14 22:25:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(810, 1, '2022-09-14 22:29:20', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(811, 1, '2022-09-14 22:29:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(812, 1, '2022-09-14 22:30:05', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(813, 1, '2022-09-14 22:30:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(814, 1, '2022-09-14 22:31:00', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(815, 1, '2022-09-14 22:31:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(816, 1, '2022-09-14 22:31:30', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(817, 1, '2022-09-14 22:31:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(818, 1, '2022-09-14 22:32:08', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(819, 1, '2022-09-14 22:32:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(820, 1, '2022-09-14 22:32:51', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(821, 1, '2022-09-14 22:32:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(822, 1, '2022-09-14 22:33:25', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(823, 1, '2022-09-14 22:33:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(824, 1, '2022-09-14 22:34:48', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(825, 1, '2022-09-14 22:34:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(826, 1, '2022-09-15 20:03:12', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(827, 1, '2022-09-15 20:03:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(828, 1, '2022-09-15 20:03:50', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(829, 1, '2022-09-15 20:03:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(830, 1, '2022-09-15 20:04:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(831, 1, '2022-09-15 20:04:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(832, 1, '2022-09-15 20:05:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(833, 1, '2022-09-15 20:05:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(834, 1, '2022-09-15 20:06:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(835, 1, '2022-09-15 20:06:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(836, 1, '2022-09-15 20:15:31', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(837, 1, '2022-09-15 20:15:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(838, 1, '2022-09-15 20:15:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(839, 1, '2022-09-15 20:15:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(840, 1, '2022-09-15 20:16:31', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(841, 1, '2022-09-15 20:16:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(842, 1, '2022-09-15 20:17:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(843, 1, '2022-09-15 20:17:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(844, 1, '2022-09-15 20:25:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(845, 1, '2022-09-15 20:25:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(846, 1, '2022-09-15 20:26:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(847, 1, '2022-09-15 20:26:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(848, 1, '2022-09-15 20:30:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(849, 1, '2022-09-15 20:30:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(850, 1, '2022-09-15 20:32:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(851, 1, '2022-09-15 20:32:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(852, 1, '2022-09-15 20:34:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(853, 1, '2022-09-15 20:34:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(854, 1, '2022-09-15 20:36:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(855, 1, '2022-09-15 20:36:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(856, 1, '2022-09-15 20:38:28', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(857, 1, '2022-09-15 20:38:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(858, 1, '2022-09-15 20:41:55', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(859, 1, '2022-09-15 20:41:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(860, 1, '2022-09-15 20:42:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(861, 1, '2022-09-15 20:42:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(862, 1, '2022-09-15 20:44:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(863, 1, '2022-09-15 20:44:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(864, 1, '2022-09-15 20:45:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(865, 1, '2022-09-15 20:45:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(866, 1, '2022-09-15 20:45:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(867, 1, '2022-09-15 20:45:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(868, 1, '2022-09-15 20:46:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(869, 1, '2022-09-15 20:46:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(870, 1, '2022-09-15 20:49:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(871, 1, '2022-09-15 20:49:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(872, 1, '2022-09-15 20:49:31', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(873, 1, '2022-09-15 20:49:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(874, 1, '2022-09-15 20:55:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(875, 1, '2022-09-15 20:55:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(876, 1, '2022-09-15 20:58:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(877, 1, '2022-09-15 20:58:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(878, 1, '2022-09-15 21:01:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(879, 1, '2022-09-15 21:01:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(880, 1, '2022-09-15 21:05:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(881, 1, '2022-09-15 21:06:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(882, 1, '2022-09-15 21:06:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(883, 1, '2022-09-15 21:06:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(884, 1, '2022-09-15 21:07:20', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(885, 1, '2022-09-15 21:07:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(886, 1, '2022-09-15 21:07:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(887, 1, '2022-09-15 21:07:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(888, 1, '2022-09-15 21:09:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(889, 1, '2022-09-15 21:09:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(890, 1, '2022-09-15 21:12:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(891, 1, '2022-09-15 21:12:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(892, 1, '2022-09-15 21:14:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(893, 1, '2022-09-15 21:14:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(894, 1, '2022-09-15 21:14:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(895, 1, '2022-09-15 21:14:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(896, 1, '2022-09-15 21:15:55', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(897, 1, '2022-09-15 21:15:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(898, 1, '2022-09-15 21:27:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(899, 1, '2022-09-15 21:27:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(900, 1, '2022-09-15 21:30:48', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(901, 1, '2022-09-15 21:30:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(902, 1, '2022-09-15 21:34:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(903, 1, '2022-09-15 21:34:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(904, 1, '2022-09-15 21:36:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(905, 1, '2022-09-15 21:36:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(906, 1, '2022-09-15 21:38:13', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(907, 1, '2022-09-15 21:38:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(908, 1, '2022-09-15 21:38:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '7'),
(909, 1, '2022-09-15 21:38:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 7 Default'),
(910, 1, '2022-09-15 21:39:12', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(911, 1, '2022-09-15 21:39:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(912, 1, '2022-09-15 21:41:25', 'chunk_create', 'MODX\\Revolution\\modChunk', '8'),
(913, 1, '2022-09-15 21:41:43', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(914, 1, '2022-09-15 21:41:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(915, 1, '2022-09-15 21:42:07', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(916, 1, '2022-09-15 21:42:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(917, 1, '2022-09-15 21:42:59', 'template_update', 'MODX\\Revolution\\modTemplate', '5'),
(918, 1, '2022-09-15 21:43:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 5 Default'),
(919, 1, '2022-09-15 21:44:35', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(920, 1, '2022-09-15 21:44:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(921, 1, '2022-09-15 21:45:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(922, 1, '2022-09-15 21:45:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(923, 1, '2022-09-15 21:45:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(924, 1, '2022-09-15 21:45:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(925, 1, '2022-09-15 21:45:31', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(926, 1, '2022-09-15 21:45:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(927, 1, '2022-09-15 21:45:51', 'chunk_update', 'MODX\\Revolution\\modChunk', '4'),
(928, 1, '2022-09-15 21:45:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 4 Default'),
(929, 1, '2022-09-15 21:46:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(930, 1, '2022-09-15 21:46:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(931, 1, '2022-09-15 21:46:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(932, 1, '2022-09-15 21:47:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemedia_sources`
--

CREATE TABLE `belarustablemedia_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `class_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\Sources\\modFileMediaSource',
  `properties` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablemedia_sources`
--

INSERT INTO `belarustablemedia_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemedia_sources_contexts`
--

CREATE TABLE `belarustablemedia_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemedia_sources_elements`
--

CREATE TABLE `belarustablemedia_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablemedia_sources_elements`
--

INSERT INTO `belarustablemedia_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'MODX\\Revolution\\modTemplateVar', 1, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 2, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 3, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemembergroup_names`
--

CREATE TABLE `belarustablemembergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablemembergroup_names`
--

INSERT INTO `belarustablemembergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemember_groups`
--

CREATE TABLE `belarustablemember_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablemember_groups`
--

INSERT INTO `belarustablemember_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablemenus`
--

CREATE TABLE `belarustablemenus` (
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablemenus`
--

INSERT INTO `belarustablemenus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('{$username}', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 8, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('components', 'topnav', '', '', '<i class=\"icon-cube icon icon-large\"></i>', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 3, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('form_customization', 'admin', 'security/forms', 'form_customization_desc', '', 1, '', '', 'customize_forms', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('language', 'user', '', 'language_desc', '', 2, '', '', 'language', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 3, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '<i class=\"icon-sliders icon icon-large\"></i>', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', '', '<i class=\"icon-file-image-o icon icon-large\"></i>', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 1, '', 'MODx.preview(); return false;', '', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 2, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '<i class=\"icon-file-text-o icon icon-large\"></i>', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'mgr_log_view', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablenamespaces`
--

CREATE TABLE `belarustablenamespaces` (
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci,
  `assets_path` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablenamespaces`
--

INSERT INTO `belarustablenamespaces` (`name`, `path`, `assets_path`) VALUES
('ace', '{core_path}components/ace/', ''),
('ckeditor', '{core_path}components/ckeditor/', ''),
('core', '{core_path}', '{assets_path}'),
('pdotools', '{core_path}components/pdotools/', ''),
('translit', '{core_path}components/translit/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableproperty_set`
--

CREATE TABLE `belarustableproperty_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `properties` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableregister_messages`
--

CREATE TABLE `belarustableregister_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableregister_messages`
--

INSERT INTO `belarustableregister_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(1, '8e296a067a37563370ded05f5a3bf3ec', '2022-09-15 21:43:35', '2022-09-15 21:43:35', NULL, 0, 1663267775, 'if (time() > 1663267775) return null;\nreturn 1;\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableregister_queues`
--

CREATE TABLE `belarustableregister_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableregister_queues`
--

INSERT INTO `belarustableregister_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableregister_topics`
--

CREATE TABLE `belarustableregister_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableregister_topics`
--

INSERT INTO `belarustableregister_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2022-09-02 23:19:43', NULL, NULL),
(2, 2, '/resourcereload/', '2022-09-04 21:29:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesession`
--

CREATE TABLE `belarustablesession` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesession`
--

INSERT INTO `belarustablesession` (`id`, `access`, `data`) VALUES
('2ek55pvbf9hapjkj3kr5gqfbf9a1gt1g', 1663090970, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('6egtl0n6el27sdvd2205c6efcmb86aes', 1663178824, 'modx.user.contextTokens|a:0:{}'),
('6femme5qtll6ip50ko99neelsta88nhp', 1663267416, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"ru\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx63125c319386b8.23684455_163125c78e86170.65625311\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:239:{i:0;s:23:\"631261dfa9baf3.87761302\";i:1;s:23:\"6312655fc0fc77.17890414\";i:2;s:23:\"6314e7d3966c60.79255271\";i:3;s:23:\"6314ee8cd313b9.54261986\";i:4;s:23:\"6314eea3aaa424.72967991\";i:5;s:23:\"6314eeb2ddabf7.26750343\";i:6;s:23:\"6314eee0921ba0.77504950\";i:7;s:23:\"6314eef3db9ad0.02225507\";i:8;s:23:\"6314ef0a02db91.77921274\";i:9;s:23:\"6314ef44abbb90.17972923\";i:10;s:23:\"6314f020ddbc14.22234901\";i:11;s:23:\"6314f0398403b3.39414855\";i:12;s:23:\"6314f368920c65.90420396\";i:13;s:23:\"6318be04102ce7.59566765\";i:14;s:23:\"6318be3bc564d7.12740312\";i:15;s:23:\"6318beba032b84.26928419\";i:16;s:23:\"6318bef699d8e9.99570633\";i:17;s:23:\"6318bf910557c7.64679368\";i:18;s:23:\"6318bfa5595d52.79246911\";i:19;s:23:\"6318bfc9270e83.42545062\";i:20;s:23:\"6318c02d808808.59086381\";i:21;s:23:\"6318c05f1ffae6.05739240\";i:22;s:23:\"6318c084e3f2d8.62053659\";i:23;s:23:\"6318c092720192.52499885\";i:24;s:23:\"6318c0f025c496.27567670\";i:25;s:23:\"6318c107ab6d17.28229680\";i:26;s:23:\"6318c13e527dd7.27987287\";i:27;s:23:\"6318c14b35d0b5.06838801\";i:28;s:23:\"6318c15865a059.33260569\";i:29;s:23:\"6318c173466c60.34245959\";i:30;s:23:\"6318c1b5ee2168.25184081\";i:31;s:23:\"6318c1cd399f50.15016452\";i:32;s:23:\"6318c1eb63ca26.53216405\";i:33;s:23:\"6318c1fa15bda5.27050012\";i:34;s:23:\"6318c20ea840e3.89369774\";i:35;s:23:\"6318c2474f0437.25416030\";i:36;s:23:\"6318c26985a0d4.76379743\";i:37;s:23:\"6318c278a9fc09.54394008\";i:38;s:23:\"6318c2b3b4eb48.05009265\";i:39;s:23:\"6318c2ce1d4644.36040954\";i:40;s:23:\"6318c2de6fa275.84618574\";i:41;s:23:\"6318c345db7737.40339371\";i:42;s:23:\"6318c354ce5478.76944254\";i:43;s:23:\"6318c3f28dc824.41151176\";i:44;s:23:\"6318c42c039548.15594661\";i:45;s:23:\"6318c43978c0d4.13019859\";i:46;s:23:\"6318c4a1de9d91.08222197\";i:47;s:23:\"6318c5170cec62.60512368\";i:48;s:23:\"6318c552532d54.49175821\";i:49;s:23:\"6318c567c85b87.08239716\";i:50;s:23:\"6318e41226a5b2.92185028\";i:51;s:23:\"6318e48ab942f9.54714281\";i:52;s:23:\"6318e4aeaa78d3.80833866\";i:53;s:23:\"6318e773ef60d9.62264539\";i:54;s:23:\"6318e7ab5a45a2.40479562\";i:55;s:23:\"6318ea268c1f28.11104327\";i:56;s:23:\"6318ea87631f13.93792703\";i:57;s:23:\"6318eaf1d463c8.96883515\";i:58;s:23:\"6318eb8cee9c79.11340480\";i:59;s:23:\"6318ebb7ac8f12.27884773\";i:60;s:23:\"6318ebfc035c28.78425765\";i:61;s:23:\"6318ec3c390146.60696057\";i:62;s:23:\"6318edaff25282.99113249\";i:63;s:23:\"6318edd527d078.85805232\";i:64;s:23:\"6318ef57e0cca3.02504762\";i:65;s:23:\"6318efcc19a9c6.56884942\";i:66;s:23:\"6318f002ae8214.75493157\";i:67;s:23:\"6318f2d5991928.77742888\";i:68;s:23:\"6318ff0d7949a6.80721113\";i:69;s:23:\"631902ac052890.33306632\";i:70;s:23:\"631902bdc83160.50888730\";i:71;s:23:\"6319067b0e0b52.16471103\";i:72;s:23:\"63190abcd52231.48104975\";i:73;s:23:\"63190b7e484e40.77651330\";i:74;s:23:\"63190bda168a04.21862778\";i:75;s:23:\"63190c49302456.04118063\";i:76;s:23:\"63190ca7092af4.37540768\";i:77;s:23:\"63190d171ebb29.41740593\";i:78;s:23:\"63190d6b0eacb8.44595378\";i:79;s:23:\"631917403f5ae3.90650951\";i:80;s:23:\"6319177f735073.72325552\";i:81;s:23:\"631917c2d0dca9.57972725\";i:82;s:23:\"6319e2c6344f74.99023808\";i:83;s:23:\"6319e4f9d0d526.80823862\";i:84;s:23:\"6319e5893c7f22.23920192\";i:85;s:23:\"6319e5d881dce2.60925721\";i:86;s:23:\"6319e61fc3c918.74032314\";i:87;s:23:\"6319e66d4824f2.93853676\";i:88;s:23:\"6319e6ad3e7f33.34059681\";i:89;s:23:\"6319e6f03e7fd7.74633037\";i:90;s:23:\"6319e732d7ac90.03038595\";i:91;s:23:\"6319ebb8077757.39516067\";i:92;s:23:\"6319f316d17271.08251794\";i:93;s:23:\"6319f4c1493f70.67837453\";i:94;s:23:\"6319f51a3a27d0.93608590\";i:95;s:23:\"6319f560ed8887.73075289\";i:96;s:23:\"6319f5af09e277.71902428\";i:97;s:23:\"6319f5f640d380.14768052\";i:98;s:23:\"6319f6473733a8.35161422\";i:99;s:23:\"6319f69144a199.48391523\";i:100;s:23:\"6319f72615ede2.10951544\";i:101;s:23:\"6319f7fd935328.71990727\";i:102;s:23:\"6319f850c2cfd3.90683157\";i:103;s:23:\"6319f88626df60.63234518\";i:104;s:23:\"6319f8afe5f7e1.79891137\";i:105;s:23:\"6319f8e2927880.63850603\";i:106;s:23:\"6319f9132af4c2.04562411\";i:107;s:23:\"6319f93f1c8a42.22642517\";i:108;s:23:\"6319f9669efb77.34200403\";i:109;s:23:\"631a11d898fd95.58759657\";i:110;s:23:\"631a306bae5a99.08558276\";i:111;s:23:\"631a3543372f88.92350669\";i:112;s:23:\"631a35a01675a3.17226221\";i:113;s:23:\"631a35a07fb656.32528867\";i:114;s:23:\"631a35c09bd309.59774786\";i:115;s:23:\"631a35ece83722.35235282\";i:116;s:23:\"631a3ad1546738.91262820\";i:117;s:23:\"631a3aeb2dc476.87384292\";i:118;s:23:\"631a4ac95ddc34.04397455\";i:119;s:23:\"631b22c5457f19.88209217\";i:120;s:23:\"631b22dc8fa818.00990155\";i:121;s:23:\"631b22ee7209f4.21324992\";i:122;s:23:\"631b2307be3312.00018132\";i:123;s:23:\"631b231a229999.22132319\";i:124;s:23:\"631b2993d2b147.01070281\";i:125;s:23:\"631b2e9bec44c2.15457311\";i:126;s:23:\"631b2edb3d1299.15130359\";i:127;s:23:\"631b2f16d862f5.91494925\";i:128;s:23:\"631b2f568a4ac5.32432493\";i:129;s:23:\"631b2f58871469.72097087\";i:130;s:23:\"631b2f7f6ca351.54552992\";i:131;s:23:\"631b2f91b9ce02.59897620\";i:132;s:23:\"631b2fa1b653b3.41306045\";i:133;s:23:\"631b2fb306a0e5.93480592\";i:134;s:23:\"631b2fea55b5d4.08820468\";i:135;s:23:\"631b2ff5d9c717.70753338\";i:136;s:23:\"631b300b83ed80.97845088\";i:137;s:23:\"631b3027dc32a9.92314655\";i:138;s:23:\"631b3039919765.23971035\";i:139;s:23:\"631b304debe190.75820480\";i:140;s:23:\"631b306222a609.56116962\";i:141;s:23:\"631b3077d18f06.20876942\";i:142;s:23:\"631b307954bc91.79246566\";i:143;s:23:\"631b30871ef154.58411057\";i:144;s:23:\"631b3094b9af08.40634822\";i:145;s:23:\"631b3095c17b46.55147655\";i:146;s:23:\"631b3096e522c7.19710601\";i:147;s:23:\"631b309e513439.67490113\";i:148;s:23:\"631b309f4e15b4.97684171\";i:149;s:23:\"631b30a17fc6a1.91332089\";i:150;s:23:\"631b30a2a7f3b8.53916248\";i:151;s:23:\"631b30a34258e1.41997990\";i:152;s:23:\"631b30a525fbe9.04198021\";i:153;s:23:\"631b30a5e0a209.62251019\";i:154;s:23:\"631b30b5d02391.03955205\";i:155;s:23:\"631b3115cfe719.31661230\";i:156;s:23:\"631b314c4c3855.50656170\";i:157;s:23:\"631b317e7f9334.46961383\";i:158;s:23:\"631b3197d87125.49781373\";i:159;s:23:\"631b31d30e9ee4.79270641\";i:160;s:23:\"631b3210af13d7.08659524\";i:161;s:23:\"631b32504d2f45.35184483\";i:162;s:23:\"631b329a57b3a9.27764104\";i:163;s:23:\"631b32e5719755.70331880\";i:164;s:23:\"631b32f05963e3.05694986\";i:165;s:23:\"631b32f61cbde9.95216265\";i:166;s:23:\"631b3335c032f5.34685365\";i:167;s:23:\"631b33851017c4.63524035\";i:168;s:23:\"631b3385e1b839.02104058\";i:169;s:23:\"631b3386c8faa5.01283260\";i:170;s:23:\"631b3387b72ea4.45560749\";i:171;s:23:\"631b33895e60c2.21981438\";i:172;s:23:\"631b338a681226.34192918\";i:173;s:23:\"631b338ad7e240.45566575\";i:174;s:23:\"631b338ea30f92.61336848\";i:175;s:23:\"631b338f448936.91171107\";i:176;s:23:\"631b339061fd45.68914768\";i:177;s:23:\"631b339268ac98.49747782\";i:178;s:23:\"631b33939dcba2.82454116\";i:179;s:23:\"631b33963ec127.45769532\";i:180;s:23:\"631b33ac6ce2b4.74017668\";i:181;s:23:\"631b33bd17ae88.50952210\";i:182;s:23:\"631b33d12f6b07.91076813\";i:183;s:23:\"631b33dea250d5.73641250\";i:184;s:23:\"631b33ecc17d29.92593302\";i:185;s:23:\"631b33f8e16271.99018785\";i:186;s:23:\"631b34067b05d8.15367616\";i:187;s:23:\"631b34128b2646.66840382\";i:188;s:23:\"631b3422973350.53451972\";i:189;s:23:\"631b342db372c9.31474969\";i:190;s:23:\"631b34361269a3.72146152\";i:191;s:23:\"631b343ed365a8.09011921\";i:192;s:23:\"631b3448d69ab9.68112162\";i:193;s:23:\"631b34545ca406.22133490\";i:194;s:23:\"631b345bcec620.48510018\";i:195;s:23:\"631b3464cfc3d7.17902318\";i:196;s:23:\"631b36b640e845.81521769\";i:197;s:23:\"631b36b7234b39.04337054\";i:198;s:23:\"631b36b80d2cf2.49034358\";i:199;s:23:\"631b36b8e29c63.25843364\";i:200;s:23:\"631b36baa0a012.52310579\";i:201;s:23:\"631b36bb9beb10.78885017\";i:202;s:23:\"631b36bc099aa5.26008441\";i:203;s:23:\"631b36bdc54fe5.71443294\";i:204;s:23:\"631b36dca84138.25710011\";i:205;s:23:\"631b36e93f5235.04247619\";i:206;s:23:\"631b36ff47dc01.87257901\";i:207;s:23:\"631b370fda5108.68007661\";i:208;s:23:\"631b3716ca1bd5.51001168\";i:209;s:23:\"631b3721a58221.64270219\";i:210;s:23:\"632218feddbc58.63518553\";i:211;s:23:\"63221af17d4191.74147111\";i:212;s:23:\"63221b6eccd444.70257962\";i:213;s:23:\"63221b70103ea9.62889109\";i:214;s:23:\"63221b902a1726.06476623\";i:215;s:23:\"63221b9f8a85c1.49981087\";i:216;s:23:\"63221bc4d4dee3.53342158\";i:217;s:23:\"63221bd638af13.67521229\";i:218;s:23:\"63222040bde6f4.05047673\";i:219;s:23:\"632220857d46c4.13388684\";i:220;s:23:\"63222098d70be3.27927784\";i:221;s:23:\"632220aad36330.71541345\";i:222;s:23:\"632220be2dfd14.54221329\";i:223;s:23:\"632220d0201877.97252589\";i:224;s:23:\"632220d18c6eb4.74661526\";i:225;s:23:\"632221cdb10cd4.70706956\";i:226;s:23:\"632221de2b1df5.11874871\";i:227;s:23:\"6322222991eea6.05946474\";i:228;s:23:\"6322222fe52f91.18852880\";i:229;s:23:\"632222fa2e2f59.22414199\";i:230;s:23:\"6322230bc2bbf6.52237988\";i:231;s:23:\"63222311d15268.93090274\";i:232;s:23:\"632223176e9a89.23033706\";i:233;s:23:\"6322252042a4a7.53000404\";i:234;s:23:\"63222524492601.95952174\";i:235;s:23:\"63222525ef6106.61645504\";i:236;s:23:\"63222615895e91.83103363\";i:237;s:23:\"6323610b633be5.83272216\";i:238;s:23:\"63237258223807.61881118\";}'),
('8061ka10e4r14od6l66o001icpni9n8c', 1663089967, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('rtf4jech8eminuh4o4thqluqk33gjrlu', 1663183381, 'modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_content`
--

CREATE TABLE `belarustablesite_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'document',
  `pagetitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `link_attributes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text COLLATE utf8mb4_unicode_ci,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modDocument',
  `context_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text COLLATE utf8mb4_unicode_ci,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext COLLATE utf8mb4_unicode_ci,
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_content`
--

INSERT INTO `belarustablesite_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(1, 'document', 'Памятники ВОВ', '', '', 'vov', '', 1, 0, 0, 0, 1, '', '', 1, 2, 1, 1, 1, 1, 1662147652, 1, 1662722799, 0, 0, 0, 1662566340, 0, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'vov', 0, 0, 1, NULL, 1),
(2, 'document', 'Замки', '', '', 'castle', '', 1, 0, 0, 0, 1, '', '', 1, 3, 2, 1, 1, 1, 1662316253, 1, 1662583736, 0, 0, 0, 1662316260, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'castle', 0, 0, 1, NULL, 1),
(6, 'document', 'Брестская крепость-герой', '', '', 'brestskaya-krepost-geroj', '', 1, 0, 0, 1, 0, '', '<p>Брестская крепость — уникальное фортификационное сооружение, важнейший памятник Второй мировой войны, символ героического сопротивления и выдающегося мужества её защитников. В 1965 году, во время празднования 20-летия Победы над фашизмом, крепости было присвоено звание «Крепости-героя», а в 1971 году она становится мемориальным комплексом.</p>\r\n\r\n<p>Брестская крепость расположена на 4 островах, образовавшихся благодаря рекам Мухавец и Западный Буг. Самый главным главным оборонительным узлом была Цитадель — остров с замкнутой, двухэтажной казармой и стенами — два метра в ширину, и почти два километра в длину.</p>\r\n\r\n<p>В послевоенные годы оборона Брестской крепости в июне 1941 года стала символом героизма, верности присяге и любви к Родине. Сейчас комплекс является одним из наиболее узнаваемых и посещаемых туристических объектов Республики Беларусь.</p>\r\n', 1, 4, 1, 1, 1, 1, 1662567088, 1, 1663179763, 0, 0, 0, 1662567120, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'brestskaya-krepost-geroj', 0, 0, 1, NULL, 1),
(7, 'document', 'Монумент Победы', '', '', 'monument-pobedyi', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Монумент Победы установили в 1954 году. Этот памятник представляет собой обелиск, достигающий в высоту 38 метров, верх которого увенчан трехметровым, отлитым из бронзы, изображением Ордена Победы. Каждая из четырех граней обелиска украшена тематическими горельефами из бронзы. Они символизируют события, что происходили в то нелегкое время. И имеют названия: «Слава павшим героям», «9 мая 1945 года», «Партизаны Беларуси» и «Советская армия в годы Великой Отечественной войны».</p>\r\n\r\n<p>На постаменте, где стоит сооружение, располагается меч, обвитый лавровой ветвью из бронзы. Кроме того, по соседству с монументом расположены 4 бронзовых венка. Они символизируют собой 4 фронта Советского Союза, а именно 1-й, 2-й, 3-й Белорусские и 1-й Прибалтийский. Именно они освобождали Беларусь в те нелегкие годы от захватчиков, от немецко-фашистских войск.</p>\r\n', 1, 4, 2, 1, 1, 1, 1662567115, 1, 1663180926, 0, 0, 0, 1662567120, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'monument-pobedyi', 0, 0, 1, NULL, 1),
(8, 'document', 'Стела «Минск – город-герой»', '', '', 'stela-«minsk-–-gorod-geroj»', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Обелиск «Минск — город-герой» — главный символ и достояние столицы Беларуси. Архитектурно-скульптурный комплекс, расположенный на проспекте Победителей, был открыт ещё в 1985 году.</p>\r\n\r\n<p>Обелиск представляет собой 46-метровую стелу в виде знамени Победы, которая возвышается на искусственном кургане. На вершине монумента находится звезда города-героя, обрамлённая дубовой ветвью. У подножия обелиска располагается мемориальная доска. Рядом с памятником расположилась бронзовая скульптура женщины с поднятой к небу рукой с фанфарами. Монумент получил название «Родина-мать».</p>\r\n\r\n<p>Ежегодно в районе обелиска проходит празднование Дня Победы, а на проспекте устраивается потрясающий по своему размаху парад военной техники.</p>\r\n', 1, 4, 2, 1, 1, 1, 1662577187, 1, 1663180945, 0, 0, 0, 1662577140, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'stela-«minsk-–-gorod-geroj»', 0, 0, 1, NULL, 1),
(9, 'document', 'Курган Славы', '', '', 'kurgan-slavyi', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Мемориальный комплекс «Курган Славы» — памятник Великой Отечественной войны, расположенный в Смолевичском районе, на 21-м км магистрали М2 Минск — Национальный аэропорт «Минск».</p>\r\n\r\n<p>Именно в этих местах в июле 1944 года во время крупнейшей наступательной операции «Багратион» в окружение попала 150-тысячная группировка гитлеровских войск. Данное событие получило название «Минский котёл». Разгром этой группировки завершился 11 июля и стал ещё одним решающим шагом на пути к освобождению Беларуси.</p>\r\n\r\n<p>В память о героизме советских солдат и офицеров, а также в честь победы в Великой Отечественной войне руководство БССР 18 августа 1966 года приняло постановление о сооружении монументально-скульптурной композиции Курган Славы.</p>\r\n', 1, 4, 3, 1, 1, 1, 1662577284, 1, 1663180963, 0, 0, 0, 1662577260, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'kurgan-slavyi', 0, 0, 1, NULL, 1),
(10, 'document', 'Хатынь', '', '', 'xatyin', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Мемориальный комплекс «Хатынь» – это место культурно-исторического наследия с печальной историей. Она связана со Второй Мировой войной, когда немецкие войска заживо сожгли здесь целую деревню. Сейчас тут никто не живёт. Населённый пункт не был восстановлен, а был организован символ трагедии в виде ряда памятников и братских могил.</p>\r\n\r\n<p>22 марта 1943 года армия фашистов окружила деревню Хатынь. Всех жителей, включая детей, стариков и женщин они сгоняли в колхозный сарай. Их заперли за дверьми, которые обложили соломой. Затем разлили бензин и подожгли. Всего паре человек удалось выжить. Их в полуживом виде нашли люди из соседнего поселения.</p>\r\n\r\n<p>Идея создания мемориального комплекса пришла в 1966 году. Открытие состоялось 5 июля 1969 года. На нём присутствовали ветераны и свидетели трагедии.</p>\r\n', 1, 4, 4, 1, 1, 1, 1662577391, 1, 1663181164, 0, 0, 0, 1662577380, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'xatyin', 0, 0, 1, NULL, 1),
(11, 'document', 'Линия Сталина', '', '', 'liniya-stalina', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Историко-культурный комплекс «Линия Сталина» в окрестностях деревни Лошаны – это фортификационный исторический комплекс в 30 километрах от Минска, созданный к 60-летию Победы в Великой Отечественной войне. Он создан как для увековечения системы оборонительных укреплений, так и для того, чтобы стать символом борьбы советского народа против фашистской Германии.</p>\r\n\r\n<p>Комплекс был открыт 30 июня 2005 года и представляет собой военно-исторический музей под открытым небом. Площадь этого музея составляет почти 26 гектаров! Здесь собрана наиболее полная на территории Беларуси экспозиция военной техники, танков, стрелкового оружия, артиллерии и авиации. Музеем собрана также уникальная коллекция немецких, российских и польских бронеколпаков (броневое закрытие с щелями и амбразурами для наблюдения и ведения огня), сохранившихся со времён Первой мировой войны.</p>\r\n', 1, 4, 5, 1, 1, 1, 1662577546, 1, 1663180982, 0, 0, 0, 1662577500, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'liniya-stalina', 0, 0, 1, NULL, 1),
(12, 'document', 'Дальва', '', '', 'dalva', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Мемориальный комплекс «Дальва» был построен в память о жителях деревни Дальва Логойского (бывшего Плещеницкого) района Минской области, сожженной вместе с жителями подобно Хатыни и сотням других белорусских деревень. Мемориал расположен на 77-м километре трассы Минск-Витебск.</p>\r\n\r\n<p>19 июня 1944 года фашисты окружили деревню Дальва и сожгли её вместе с жителями, не пощадив ни женщин, ни стариков, ни детей. В огне погибло 44 человека, в том числе 29 детей, 13 женщин и двое мужчин. Останки жителей Дальвы были похоронены в братской могиле. Это преступление было совершено за несколько дней до полного освобождения Белоруссии от немецко-фашистских захватчиков.</p>\r\n\r\n<p>В 1955 году на месте братской могилы был поставлен памятник; в 1963 году скромный каменный памятник был заменён на обелиск с пятиконечной звездой.</p>\r\n', 1, 4, 6, 1, 1, 1, 1662577657, 1, 1663181159, 0, 0, 0, 1662577620, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dalva', 0, 0, 1, NULL, 1),
(13, 'document', 'Буйничское поле', '', '', 'bujnichskoe-pole', '', 1, 0, 0, 1, 0, '', '<p><meta charset=\"utf-8\" />Буйничское поле - это известный мемориальный комплекс возле деревни Буйничи, расположенный недалеко от Могилева. Он представляет собой арку, соединённую аллей с 27-метровой часовней, выполненной в традиционном стиле восточнославянской архитектуры. На стенах из светлого мрамора написаны имена сотен воинов и ополченцев. В центре мемориала находится «Книга памяти». Под часовней расположен склеп для перезахоронения воинов, чьи останки до сих пор находят поисковые отряды.</p>\r\n\r\n<p>Именно здесь в 1941 году в первые дни Великой Отечественной войны шли страшные бои с фашистскими войсками. Советская армия понесла здесь огромные потери, но, несмотря на это, именно здесь наши войска смогли сдерживать противника в течение 2 недель.</p>\r\n', 1, 4, 7, 1, 1, 1, 1662577721, 1, 1663181001, 0, 0, 0, 1662577680, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'bujnichskoe-pole', 0, 0, 1, NULL, 1),
(14, 'document', 'Несвижский замок', '', '', 'nesvizhskij-zamok', '', 1, 0, 0, 2, 0, ' В XVII веке князьями Радзивиллами в Сморгони была основана Медвежья академия, где дрессировали медведей цыгане. Богуслав Радзивилл, владелец Любчанского замка, решил переплюнуть своих Несвижских родственников и привез к себе в замок панду. Панда жила в башне и вечно мёрзла, отчего постоянно ютилась возле камина и со временем от пепла и копоти стала серого цвета, а после и вовсе сошла с ума. Чтобы избежать беды, панду пришлось убить. Закопали бедное животное в парке возле замка. ​С тех пор призрак замученной обезумевшей панды бродит в ночи по окрестностям Любчанского замка и своим раскатистым рыком пугает людей.​‌‌​‌‌​‌​​​', '<p><meta charset=\"utf-8\" />Несвижский дворцово-замковый комплекс, возведенный еще в 16-ом веке Радзивиллами, имеет длинную историю войн и разрушений. Он неоднократно горел и восстанавливался, а недавно предстал перед туристами окончательно отреставрированным во всей своей красе.</p>\r\n\r\n<p>На момент постройки замок считался одной из самых сильных и совершенных построек подобного типа. Замок имел важное военное значение на протяжении нескольких столетий, был местом концентрации частной армии Радзивиллов.</p>\r\n\r\n<p>Средневековый феодальный замок после нескольких перестроек превратился в дворцово-парковый ансамбль с большим открытым двором, окружённым монументальными постройками. В нём переплелись множество архитектурных стилей, что свидетельствует об использовании художественных достижений разных исторических эпох.</p>\r\n', 1, 4, 0, 1, 1, 1, 1662578130, 1, 1662726589, 0, 0, 0, 1662578100, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'nesvizhskij-zamok', 0, 0, 1, NULL, 1),
(15, 'document', 'Любчанский замок', '', '', 'lyubchanskij-zamok', '', 1, 0, 0, 2, 0, 'В XVII веке князьями Радзивиллами в Сморгони была основана Медвежья академия, где дрессировали медведей цыгане. Богуслав Радзивилл, владелец Любчанского замка, решил переплюнуть своих Несвижских родственников и привез к себе в замок панду. Панда жила в башне и вечно мёрзла, отчего постоянно ютилась возле камина и со временем от пепла и копоти стала серого цвета, а после и вовсе сошла с ума. Чтобы избежать беды, панду пришлось убить. Закопали бедное животное в парке возле замка. ​С тех пор призрак замученной обезумевшей панды бродит в ночи по окрестностям Любчанского замка и своим раскатистым рыком пугает людей.​‌‌​‌‌​ ​‌​‌‌‌‌ ​​​‌​‌ ​​‌‌​​ ​​‌​​​ ​‌​​​‌ ​​‌‌​‌ ​​', '<p><meta charset=\"utf-8\" />Строительство замка в Любче было начато в 16 веке Яном Кишкой, сыном магната, воеводы витебского Станислава Кишки, унаследовавшим после смерти отца огромное состояние, в том числе и местечко Любча. Место для строительства Любчанского замка было выбрано на высоком живописном берегу реки Неман, укрепленном валунами. Изначально все строения замка были деревянными, кроме въездной башни (брамы).</p>\r\n\r\n<p>С трех сторон замок был окружен рвами с водой, а с четвертой водами реки Неман. Бойницы в башне были расположены со всех четырех сторон, что позволяло её защитникам вести огонь даже тогда, когда неприятель прорывался в замок.</p>\r\n\r\n<p>После революции 1917 года замок пришел в запустение, возрождение его началось пятьдесят лет назад, когда при школе, занимавшей здание дворца, был организован краеведческий музей.</p>\r\n', 1, 4, 1, 1, 1, 1, 1662585529, 1, 1662726655, 0, 0, 0, 1662585480, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'lyubchanskij-zamok', 0, 0, 1, NULL, 1),
(16, 'document', 'Мирский замок', '', '', 'mirskij-zamok', '', 1, 0, 0, 2, 0, 'Призрак Белая Пани - легенда гласит, что князь Николай Святополк-Мирский приказал выкопать пруд, а для этого срубить цветущий яблоневый сад. В результате, в пруду поселились русалки и каждый год в нем стали тонуть люди. И первой погибла дочь Николая, 12-летняя Сонечка… Именно она теперь бродит по замку под именем Белая Пани.', '<p><meta charset=\"utf-8\" />Мирский замок – удивительно интересное место с богатой историей и множеством тайн, которыми здесь дышит буквально каждый камень.</p>\r\n\r\n<p>Историки предполагают, что строение Мирского замка произошло не ранее XVI ст., когда на земли Литовского княжества участились набеги татар.</p>\r\n\r\n<p>Главной особенностью замка является стафия – это порожденное чародеем привидение живого существа, которое охраняет замок, за что хозяин замка обязан был приносить жертвы. Напоминанием о стафии и сегодня является вмурованный в стену замка камень, похожий на голову барана. Говорят, что если этот камень извлечь, то Мирский замок разрушится до основания.</p>\r\n\r\n<p>Среди многочисленных легенд Мирского замка можно найти историю о том, что в его подземных переходах когда-то был спрятан легендарный клад Радзивиллов.</p>\r\n', 1, 4, 2, 1, 1, 1, 1662585723, 1, 1662726710, 0, 0, 0, 1662585720, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'mirskij-zamok', 0, 0, 1, NULL, 1),
(17, 'document', 'Лидский замок', '', '', 'lidskij-zamok', '', 1, 0, 0, 2, 0, 'Призрачные дружинники - по легенде в 1392 г. происходила осада крестоносцев, и хотя у местного князя Дмитрий Корибута было достаточно войск, он предпочел сбежать из замка подземным ходом, оставив часть дружины “прикрывать отступление”. Оставшиеся “смертники”, по сути, преданные своим князем, мужественно сражались и погибли все до одного… С тех пор по ночам в Лидском замке слышен звон оружия и шаги призрачных дружинников, которые защищают твердыню и после смерти. ', '<p><meta charset=\"utf-8\" />Монументальный замокбыл заложен великим князем Гедимином в 1323 году и строился почти 5 лет.</p>\r\n\r\n<p>По сей день он – главная историческая реликвия Лиды и один из ценнейших памятников оборонительной архитектуры Беларуси. Этот форпост принеманских земель был целиком каменным: камнем замостили и откосы замкового холма, и внутренний двор. В плане Лидский замок представляет собой трапецию: стены толщиной 1,5–2 м и высотой 12 м сложены из больших камней-валунов.</p>\r\n\r\n<p>Лидский замок неоднократно подвергался набегам и осадам, однако его практически никогда не покоряли. Единственным счастливцем, которому удалось это сделать, был князь Витовт.</p>\r\n\r\n<p>Полностью утратив свои оборонительные функции, Лидский замок стал источником вдохновения для живописцев, переносивших его на свои акварельные рисунки и графические листы.</p>\r\n', 1, 4, 3, 1, 1, 1, 1662585814, 1, 1662726836, 0, 0, 0, 1662585780, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'lidskij-zamok', 0, 0, 1, NULL, 1),
(18, 'document', 'Коссовский замок', '', '', 'kossovskij-zamok', '', 1, 0, 0, 2, 0, 'Черная Дама - призрак графини Ядвиги, который живет в замке; по легенде графиня очень любила кататься на санях, и каталась даже летом, для этого приходилось делать гору из соли, за что прокленали графиню конюхи (которые лечили лошадей из-за соли) и садовники; В результате проклятие сработало', '<p><meta charset=\"utf-8\" /><meta charset=\"utf-8\" />Коссовский замок в Беларуси принадлежал помещикам Пусловским. Дворец Пусловских был построен в 1838 году и имеет 12 башен, по аналогии с месяцами года.</p>\r\n\r\n<p>Расположение и особенность сооружения таковы, что солнце присутствовало в каждой комнате дворца Пусловских два с половиной дня. Говорят, что в замке жил лев, ночами его выпускали погулять по коридорам для охраны сна своих хозяев. Также был стеклянный пол, в котором плавали экзотические рыбы.</p>\r\n\r\n<p>Еще одна особенность Коссовского дворца Пусловских – «музыкальная» лестница. Когда дама поднималась по ней, она касалась стены из трубчатых костей животных своим платьем и звук этого касания преобразовывался в звучание «музыки», которая приветствовала гостью и извещала хозяев о ее появлении.</p>\r\n', 1, 4, 4, 1, 1, 1, 1662585925, 1, 1662726841, 0, 0, 0, 1662585900, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'kossovskij-zamok', 0, 0, 1, NULL, 1),
(19, 'document', 'Гродненский замок', '', '', 'grodnenskij-zamok', '', 1, 0, 0, 2, 0, 'Ходят легенды, что ещё во времена Витовта в одном из этих подземелий существовал тайный ход, ведущий от замковых стен к Нёману. С помощью него можно было в считанные минуты оказаться на другом берегу реки. Об этом свидетельствуют раскопки знаменитого археолога Михаила Ткачёва – по его словам, он воочию видел этот старинный заваленный камнями лаз.', '<p><meta charset=\"utf-8\" />Новый замок в Гродно — новый королевский дворец, построенный в Гродно, напротив старого дворца (Старый замок), в 1734—1751 годах во время правления польского короля и великого князя литовского Августа III как летняя резиденция польских королей и великих князей литовских.</p>\r\n\r\n<p>В одной части дворца находились королевские покои, в а другой — помещения, предназначенные для заседаний сейма Речи Посполитой. После разделов Речи Посполитой российские власти устроили во дворце госпиталь и казармы.</p>\r\n\r\n<p>В настоящее время там размещается часть экспозиции Гродненского историко-археологического музея. В 1994 году установлена памятная доска в честь национально-освободительного восстания 1794 г. под руководством Т. Костюшко.</p>\r\n', 1, 4, 5, 1, 1, 1, 1662586019, 1, 1662726903, 0, 0, 0, 1662585960, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'grodnenskij-zamok', 0, 0, 1, NULL, 1),
(20, 'document', 'Новогрудский замок', '', '', 'novogrudskij-zamok', '', 1, 0, 0, 2, 0, 'Самое удивительное в истории замка то, что ни у нас, ни в Литве, ни в Польше не найдено ни одного плана-схемы и инвентаря из замка. Как в целом выглядел замок, что было в каждой башне, никто не знает. Археологам известно, что под землей есть развалины княжеского дворца и фундамент храма Успения пресвятой Богородицы, но и их описания тоже нет.', '<p><meta charset=\"utf-8\" />Каменный замок в Новогрудке — уникальное сооружение оборонного зодчества. В него входят детинец (Замковая гора) с остатками каменного замка и окольный город (Малый замок). Установлено, что с начала XI в. и до середины XIII в. на валах древнего Новогрудка были деревянные стены разной конструкции, которые восстанавливались не менее пяти раз.</p>\r\n\r\n<p>Замок в Новогрудке строили в несколько этапов, в первую очередь возвели три башни из камня на северо-востоке, а между башнями - крепостные стены. Но с другой стороны Новогрудского замка ещё долгое время стояли укрепления из дерева.Новогрудский замок постепенно разрушался. С 1956 г. Новогрудок и его замок стали объектом внимания археологов, открывших немало новых страниц удивительной истории этого древнего города.</p>\r\n', 1, 4, 6, 1, 1, 1, 1662586131, 1, 1662726930, 0, 0, 0, 1662586080, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'novogrudskij-zamok', 0, 0, 1, NULL, 1),
(21, 'document', 'Кревский замок', '', '', 'krevskij-zamok', '', 1, 0, 0, 2, 0, 'Призрак дамы с собачкой - говорят, что жила когда-то в Крево красавица неземная. И так она понравилась двум князьям из замка, что устроили они дуэль между собой. Победитель должен был жениться на девушке. Но своенравная красавица отказалась от предложения. Разгневанный победитель проклял ее и приказал слугам замуровать красавицу вместе с ее любимой собачкой. И вот с тех пор по ночам призрак девушки выходит выгуливать свою собачку.', '<p><meta charset=\"utf-8\" />Кревский замок – это первый замок в Великом княжестве Литовском, который полностью построили из камня. Его возвели в далеком XIV веке по приказу великого князя литовского Гедимина.</p>\r\n\r\n<p>В плане он представлял собой неправильный четырехугольник, с двумя башнями разных размеров по диагонали. Толщина замковых стен была около двух с половиной метров, а высота около тринадцати метров.</p>\r\n\r\n<p>В стенах Кревского замка произошли важные исторические события. В 1382 году в Большой башне по приказу Ягайло был задушен претендент на великокняжеский трон его дядя Кейстут. А в 1385 году здесь была подписана Кревская уния – соглашение о династическом союзе между Великим княжеством Литовским и Королевством Польским.</p>\r\n', 1, 4, 7, 1, 1, 1, 1662586215, 1, 1662726948, 0, 0, 0, 1662586200, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'krevskij-zamok', 0, 0, 1, NULL, 1),
(22, 'document', 'Парки и заповедники', '', '', 'parki-i-zapovedniki', '', 1, 0, 0, 0, 1, NULL, NULL, 1, 5, 2, 1, 1, 1, 1662588732, 0, 0, 0, 0, 0, 1662588732, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'parki-i-zapovedniki', 0, 0, 1, NULL, 1),
(23, 'document', 'Березинский заповедник', '', '', 'berezinskij-zapovednik', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Березинский биосферный заповедник – жемчужина Белорусского Поозерья, одна из старейших природоохранных территорий самого высокого ранга в нашей стране.</p>\r\n\r\n<p>Это резерват чистой, редкой по разнообразию, прекрасной дикой природы, которая начала формироваться здесь тысячи лет назад после таяния древних ледников. И увидеть эту красоту может каждый!</p>\r\n\r\n<p>Особенность заповедника – соседство сразу 4 типов экосистем: густых лесов, рек, лугов и топких трясин. При этом болота покрывают около 60% территории резервата, являясь частью бесценного природного богатства Беларуси, благодаря которому страну называют \"лёгкими Европы\". И это не просто образ: более 2,5 млн га болот Беларуси (11,5% от территории страны) играют исключительную роль в поддержании устойчивого состояния биосферы и формировании микроклимата региона.</p>\r\n', 1, 4, 0, 1, 1, 1, 1662588795, 1, 1663182404, 0, 0, 0, 1662588780, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'berezinskij-zapovednik', 0, 0, 1, NULL, 1),
(24, 'document', 'Полесский заповедник', '', '', 'polesskij-zapovednik', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Полесский государственный радиационно-экологический заповедник был создан в июле 1988 г. после аварии на гомельской ЧАЭС.</p>\r\n\r\n<p>Заповедник был создан, в первую очередь, с исследовательской целью, так как на его территории вмешательство человека практически отсутствует, и можно наблюдать за восстановлением животного и растительного мира в естественных условиях.</p>\r\n\r\n<p>На сегодняшний день в Полесском заповеднике зарегистрирован 1251 вид растений, 18 из которых занесены в Красную книгу, 54 вида млекопитающих животных, 25 видов рыб и 280 видов птиц.</p>\r\n\r\n<p>Большая часть Полесского заповедника — это закрытая территория с повышенным уровнем радиоактивности, но есть и безопасные участки, куда разрешено пускать туристов.</p>\r\n', 1, 4, 1, 1, 1, 1, 1662641541, 1, 1663181846, 0, 0, 0, 1662641520, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'polesskij-zapovednik', 0, 0, 1, NULL, 1),
(25, 'document', 'Беловежкая пуща', '', '', 'belovezhkaya-pushha', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Национальный парк «Беловежская пуща» - главная достопримечательность и гордость белорусского народа.</p>\r\n\r\n<p>Это место можно назвать настоящим природно-экологическим музеем под открытым небом, ведь именно здесь до наших дней природа сохранилась в первозданном виде и буквально завораживает своей красотой.</p>\r\n\r\n<p>Древнейший заповедный лес, средний возраст которого 81 год, а некоторые деревья достигают 600 лет, бьет все мировые рекорды по разнообразию флоры и фауны. Здесь растет 958 видов растений, обитает 59 видов млекопитающих животных, 227 видов птиц и 24 вида рыб. Здесь обитают лесные гиганты зубры, королевские олени, волки, лисы, бобры, куницы, рыси, кабаны и другие животные, которых, к сожалению, уже редко можно увидеть в дикой природе.</p>\r\n', 1, 4, 2, 1, 1, 1, 1662641621, 1, 1663181815, 0, 0, 0, 1662641580, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'belovezhkaya-pushha', 0, 0, 1, NULL, 1),
(26, 'document', 'Припятский парк', '', '', 'pripyatskij-park', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Национальный парк Припятский - неповторимый по природному биоразнообразию регион на юге Беларуси, где до настоящего времени сохранились типичные и уникальные в масштабах Европы природные биокомплексы и места обитания редких животных. Национальный парк является своеобразным экологическим коридором, соединяющим Центральную и Южную Европу. Пойма Припяти – крупнейшее в Европе миграционное русло перелетных птиц.</p>\r\n\r\n<p>Флора национального парка включает более 1000 видов высших растений, из которых 47 занесенны в Красную Книгу Республики Беларусь.</p>\r\n\r\n<p>Животный мир национального парка богат и разнообразен, характеризуется значительной численностью ряда редких видов, которые больше нигде в Беларуси не встречаются.</p>\r\n', 1, 4, 3, 1, 1, 1, 1662641692, 1, 1663182497, 0, 0, 0, 1662641640, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'pripyatskij-park', 0, 0, 1, NULL, 1),
(27, 'document', 'Браславские озера', '', '', 'braslavskie-ozera', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Национальный парк Браславских озер - одно из самых привлекательных мест, где вы можете почувствовать себя частью природы. Белорусы называют это место \"голубым ожерельем\" Беларуси из-за красоты и чистой воды озер. На территории Браславской области расположены сотни озер, соединенных между собой небольшими речками.</p>\r\n\r\n<p>Национальный парк \"Браславские озера\" был основан в 1995 году и расположен в 250 км от Минска. Расположен на площади более 70 тыс. га, объединяющих различные виды озер. Основной целью создания национального парка было сохранение природного ландшафта и сохранение флоры и фауны. Правительство Беларуси также хотело сделать это место привлекательным для туристов и создать здоровые условия для местных жителей. Сегодня парк является уникальным местом, где можно увидеть дикую и первозданную природу.</p>\r\n', 1, 4, 4, 1, 1, 1, 1662641769, 1, 1663181303, 0, 0, 0, 1662641760, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'braslavskie-ozera', 0, 0, 1, NULL, 1),
(28, 'document', 'Нарочанский парк', '', '', 'narochanskij-park', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Нарочанский парк – национальная гордость Беларуси. Этот удивительный край расположен сразу в трех областях – Минской, Витебской и Гродненской, а пятая часть его территории покрыта чистейшими голубыми озерами. Так, парк может похвастать наличием в своей черте 43 водоемов, которые разделяются на 4 большие группы: Нарочанская, Мядельская, Болдукская и Свирская. Главной же природной достопримечательностью является Нарочь – самое большое озеро на территории Беларуси.</p>\r\n\r\n<p>Нарочанский заповедник отличается многообразной флорой и фауной: здесь можно встретить более 1400 видов высших растений, 114 из которых занесены в Красную книгу Республики Беларусь, а также познакомиться с различными представителями водного мира, птиц, позвоночных животных.</p>\r\n', 1, 4, 5, 1, 1, 1, 1662641833, 1, 1663181335, 0, 0, 0, 1662641820, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'narochanskij-park', 0, 0, 1, NULL, 1),
(29, 'document', 'Налибокская пуща', '', '', 'nalibokskaya-pushha', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Налибокская пуща - один из самых больших лесных массивов в Беларуси, и, по отдельным источ­никам, в современной Восточной Европе.</p>\r\n\r\n<p>Пересечённая множеством малых и средних водотоков, пуща не только играет важную роль в формировании гидрологического ре­жима прилегающих территорий, но и придает им своеобразный ландшафт.</p>\r\n\r\n<p>Пронизанная многочисленными ручьями и реками, словно венами, пуща представляет собой уникальный природный комплекс, который стал домом для множества редких растений и животных. Именно Налибокская пуща является генетическим резервуаром для речной форели и хариуса.</p>\r\n', 1, 4, 6, 1, 1, 1, 1662641900, 1, 1663181444, 0, 0, 0, 1662641880, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'nalibokskaya-pushha', 0, 0, 1, NULL, 1),
(30, 'document', 'Заказник Ельня', '', '', 'zakaznik-elnya', '', 1, 0, 0, 22, 0, '', '<p><meta charset=\"utf-8\" />Заказник «Ельня» представляет собой уникальный болотный массив с комплексом редких и находящихся под угрозой исчезновения видов растений и животных, включенных в Красную книгу Республики Беларусь, и играет важную роль в сохранении биологического и ландшафтного разнообразия страны.</p>\r\n\r\n<p>Это одно из последних мест в Беларуси, где обитают белая куропатка и чернозобая гагара, а осенью тысячи серых журавлей используют Ельню как важный перевалочный пункт на своем миграционном пути.</p>\r\n\r\n<p>Здесь также встречается 15 видов растений, внесенных в Красную книгу Республики Беларусь. Заказник «Ельня» имеет большое значение для сохранения и восстановления естественных плантаций клюквы.</p>\r\n', 1, 4, 7, 1, 1, 1, 1662641968, 1, 1663181531, 0, 0, 0, 1662641940, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'zakaznik-elnya', 0, 0, 1, NULL, 1),
(31, 'document', 'Дворцы', '', '', 'dvorczyi', '', 1, 0, 0, 0, 1, NULL, NULL, 1, 6, 3, 1, 1, 1, 1662643124, 0, 0, 0, 0, 0, 1662643124, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorczyi', 0, 0, 1, NULL, 1),
(32, 'document', 'Дворец Румянцевых-Паскевичей', '', '', 'dvorecz-rumyanczevyix-paskevichej', '', 1, 0, 0, 31, 0, 'Необычные рассказы о дворце Румянцевых и Паскевичей - в закрытой комнате дворца вдруг зажигается свет, за ночь сдвигается стол и сами собой переставляются костяные слоники, бродит круглая тень в усыпальнице князей Паскевичей, женский образ появляется в зеркале на первом этаже дворцовой башни. ', '<p><meta charset=\"utf-8\" />Главной достопримечательностью Гомеля является создававшийся с 1777 года до середины XIX века дворцово-парковый ансамбль, яркой жемчужиной которого считается дворец Румянцевых и Паскевичей.</p>\r\n\r\n<p>Работа над проектом дворца началась по указанию генерал-фельдмаршала графа Петра Румянцева-Задунайского, которому «деревенька Гомий» была подарена императрицей Екатериной II в 1775 году за выдающиеся победы в войне с Турцией. Завершилось строительство дворца в 1796-м.</p>\r\n\r\n<p>Необычной особенностью этого дворца является полное отсутствие служебных помещений, поскольку дворец предназначался исключительно для проведения увеселительных мероприятий — приемов и балов. В гомельском дворце граф Петр Александрович Румянцев (1725-1796), которому дворец обязан своим возникновением, принимал таких именитых гостей как российскую императрицу Екатерину II, австрийского императора Иосифа II и белорусского генерал-губернатора Захария Чернышева.</p>\r\n', 1, 4, 0, 1, 1, 1, 1662645011, 1, 1662727600, 0, 0, 0, 1662645000, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-rumyanczevyix-paskevichej', 0, 0, 1, NULL, 1),
(33, 'document', 'Дворец-усадьба Халецких', '', '', 'dvorecz-usadba-xaleczkix', '', 1, 0, 0, 31, 0, 'Последним владельцем Хальчи был знатный щеголь Зигмунд Войнич-Сеножецкий. Он привез из Америки первый в округе автомобиль, чтобы никто его случайно не обошел в этом звании. С ним связана еще одна интересная история: он женился на дочке местного шляхтича, которая сбежала к родителям на следующее утро после свадьбы. Сам Зигмунд Войнич-Сеножецкий был вынужден оставить имение с наступлением большевиков в 1917 году.', '<p><meta charset=\"utf-8\" />На северной окраине деревни Хальч, на высоком холме находится бывшая помещичья усадьба, построенная в начале XIX века Казимиром Халецким. С середины того же столетия и до революции 1917 года усадьбой владели представители рода Войнич-Сеножецких. Сохранились фрагменты комплекса: двухэтажный усадебный дворец, дом управляющего, фруктовый сад, парковые насаждения, протянувшиеся на 2 км вдоль реки.</p>\r\n\r\n<p>Хальчанский дворец построен в стиле позднего классицизма. На первом этаже размещались столовая, библиотека, архив, две спальные, гостевые комнаты. На втором центральное место занимал большой бальный зал. По сторонам от него размещались салон и спальня хозяйки дома, кабинет и спальня хозяина. Во дворце находились ценная старинная мебель из красного дерева, библиотека, родовой архив, коллекции ковров, серебра, фарфора, много живописных работ известных художников. Перед главным фасадом дворца располагался обширный открытый двор с круглым газоном и фонтаном.</p>\r\n', 1, 4, 1, 1, 1, 1, 1662645438, 1, 1662727620, 0, 0, 0, 1662645420, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-usadba-xaleczkix', 0, 0, 1, NULL, 1),
(34, 'document', 'Дворец Огинского', '', '', 'dvorecz-oginskogo', '', 1, 0, 0, 31, 0, 'Усадьба композитора – это памятник архитектуры классицизма. К 1815 г. был построен новый дворец с оранжереей и парком в английском стиле. За красоту усадьбу Огинских называли «Северными Афинами». ', '<p><meta charset=\"utf-8\" />Усадьба Огинских - архитектурный памятник XIX столетия. Усадьба построена при известном польском политике и композиторе Михаиле Огинском. Возведение дворца в стиле классицизм было осуществлено в 1802-22 г., кроме него в комплекс усадьбы входят еще некоторые постройки различной степени сохранности, а также часть парка.</p>\r\n\r\n<p>Дворец - каменная постройка Г-образной формы в 1-2 этажа. В сторону подъезда к комплексу направлена ориентация главного корпуса, он имеет прямоугольную форму, двухэтажные боковые павильоны и центральную мансардную часть, которая выделена дорическим портиком с четырьмя колоннами и часовой башенкой. Второй корпус дворца был построен позже и не раз достраивался, в итоге растянувшись почти на 60 м. Пара угловых флигелей двухэтажные.</p>\r\n', 1, 4, 2, 1, 1, 1, 1662645527, 1, 1662727640, 0, 0, 0, 1662645480, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-oginskogo', 0, 0, 1, NULL, 1),
(35, 'document', 'Кричевский дворец', '', '', 'krichevskij-dvorecz', '', 1, 0, 0, 31, 0, 'История дворца непроста, а порой и драматична. Построен он в конце XVIII в. (у исследователей до сих пор нет единого мнения о точной дате его возведения) за очень короткие сроки – к приезду Екатерины II, которая направлялась в свои южные владения.', '<p><meta charset=\"utf-8\" />В 1772 году императрица Екатерина отдала Кричев князю Потемкину и он начал возводить в городе на Соже дворец.</p>\r\n\r\n<p>Кричевский дворец е в стиле классицизма спроектировал архитектор Иван Старов. С высоты оно напоминает букву «Е», скорее всего так Потемкин хотел порадовать Екатерину II.</p>\r\n\r\n<p>Князь Потемкин недолго владел имением. Уже в 1778 году его купил Ян Голынский, чей внук Стефан в середине XIX столетия перестроил дворец в неоготическом стиле. В здании насчитывалось 72 комнаты, вокруг был заложен парк. В 1898-м здесь случился сильный пожар. Стефан пытался отстраивать дворец заново, но не смог этого сделать из-за Первой мировой войны и революции.</p>\r\n\r\n<p>В 1980-х началась реставрация дворца Потемкина, которая закончилась в 2008 году. Сейчас дворец открыт для посетителей. Там располагаются Кричевский исторический музей и загс.</p>\r\n', 1, 4, 3, 1, 1, 1, 1662645598, 1, 1662727677, 0, 0, 0, 1662645540, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'krichevskij-dvorecz', 0, 0, 1, NULL, 1),
(36, 'document', 'Дворец Бутримовича', '', '', 'dvorecz-butrimovicha', '', 1, 0, 0, 31, 0, 'В своё время дворец называли «франтом на деревне», потому что среди остальной жилой деревянной застройки он был единственным нерелигиозным зданием из камня. ', '<p><meta charset=\"utf-8\" />Дворец Бутримовича был заложен 9 сентября 1784 года. На торжественной церемонии заложения первого камня присутствовал сам король Станислав Август Понятовский. Дворец строился по проекту архитектора К. Шильдхауза последующие 10 лет. Он построен в смешении стилей классицизма и барокко.</p>\r\n\r\n<p>Дворец примечателен тем, что он был включен в городскую застройку, чего раньше не происходило и построен на родниках или «плавунах». Чтобы построить дворец, строители забили в грунт 40 дубовых свай, а с другой стороны положили сухие ольховые колоды. И только после всех этих предосторожностей был положен кирпич.</p>\r\n\r\n<p>Он вошел в историю города как \"пинский мур\".Три славных полесских рода – Бутримовичи, Орды и Скирмунты – поочередно владели этим дворцом. В прошлом дворец был главным хранилищем творческого наследия Наполеона Орды.</p>\r\n', 1, 4, 4, 1, 1, 1, 1662645676, 1, 1662727721, 0, 0, 0, 1662645660, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-butrimovicha', 0, 0, 1, NULL, 1),
(37, 'document', 'Дворец Рдултовских', '', '', 'dvorecz-rdultovskix', '', 1, 0, 0, 31, 0, 'Дворец на берегу Сновенки построил в 1827\r\nгоду Казимир Рдултовский – белорусский дворянин, выпускник Оксфорда, доктор\r\nфилософии. Здание впечатляет своими размерами: его протяженность – 140 метров, первоначально в нем было 100 комнат и парадный зал.', '<p><meta charset=\"utf-8\" />В 1825–1827 гг. Казимир Рдултовский возвел на берегу реки Сновки один из крупнейших на территории Беларуси дворцово-парковых комплексов в стиле классицизма. Во дворце, построенном по проекту архитектора Тычецкого, насчитывалось сто комнат и залов.</p>\r\n\r\n<p>Сам дворец выполнен из кирпича с симметричной композицией. Доминантой выступает двухэтажный объем с массивным четырехколлонным ионическим портиком (главный фасада).</p>\r\n\r\n<p>Сам дворец выполнен из кирпича с симметричной композицией. Доминантой выступает двухэтажный объем с массивным четырехколлонным ионическим портиком (главный фасада).<br />\r\nПланируется что в Снове организуют туристический объект, центром которого как раз и станет отреставрированный дворец.</p>\r\n', 1, 4, 5, 1, 1, 1, 1662645747, 1, 1662727753, 0, 0, 0, 1662645720, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-rdultovskix', 0, 0, 1, NULL, 1),
(38, 'document', 'Дворец Уместовских', '', '', 'dvorecz-umestovskix', '', 1, 0, 0, 31, 0, 'Усадьба графов Уместов- ских – копия резиденции короля Речи Посполитой\r\nСтанислава Августа «Лазенки».', '<p><meta charset=\"utf-8\" />Усадебный дом Умястовских в местечке Жемыславль - памятник дворцово-паркового строительства Беларуси XIX века. Дом представляет собой уменьшенную копию дворца Лазенки в Варшаве.</p>\r\n\r\n<p>Сам дворец выполнен из кирпича с симметричной композицией. Доминантой выступает двухэтажный объем с массивным четырехколлонным ионическим портиком (главный фасада).</p>\r\n\r\n<p>Сам дворец выполнен из кирпича с симметричной композицией. Доминантой выступает двухэтажный объем с массивным четырехколлонным ионическим портиком (главный фасада).<br />\r\nПланируется что в Снове организуют туристический объект, центром которого как раз и станет отреставрированный дворец.</p>\r\n', 1, 4, 6, 1, 1, 1, 1662645827, 1, 1662727792, 0, 0, 0, 1662645780, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-umestovskix', 0, 0, 1, NULL, 1),
(39, 'document', 'Дворец Валовичей', '', '', 'dvorecz-valovichej', '', 1, 0, 0, 31, 0, 'В Святске живет легенда о том, что дочь пана Валовича влюби- лась в конюха. Разгневанный отец велел утопить парня в пруду, а девушку приказал живьем замуровать в стену дворца. Говорят, что по ночам привидение дочери бродит по дому...', '<p><meta charset=\"utf-8\" />В 1825–1827 гг. Казимир Рдултовский возвел на берегу реки Сновки один из крупнейших на территории Беларуси дворцово-парковых комплексов в стиле классицизма. Во дворце, построенном по проекту архитектора Тычецкого, насчитывалось сто комнат и залов.</p>\r\n\r\n<p>Строительство новой каменной усадьбы начал в 1805 году Якуб Уместовский. Двухэтажное симметричное здание дворца имеет Т-образную форму, построено в стиле классицизм. Крышу здания огородили ажурной балюстрадой и организовали на ней площадку для прогулок. Интересным фрагментом дома был бельведер - надстройка в форме куба над основным зданием. Такой архитектурный прием практически не использовался в белорусском зодчестве. Надстройку украшали арочные окна с цветными витражами.</p>\r\n\r\n<p>Усадебный комплекс сохранился до наших дней практически без изменений. Разрушена оказалась деревянная часовня. На ее месте сегодня установлен памятник павшим воинам.</p>\r\n', 1, 4, 7, 1, 1, 1, 1662645902, 1, 1662727838, 0, 0, 0, 1662645900, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'dvorecz-valovichej', 0, 0, 1, NULL, 1),
(40, 'document', 'Улицы', '', '', 'uliczyi', '', 1, 0, 0, 0, 1, NULL, NULL, 1, 7, 4, 1, 1, 1, 1662646051, 0, 0, 0, 0, 0, 1662646051, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'uliczyi', 0, 0, 1, NULL, 1),
(41, 'document', 'Зыбицкая (Минск)', '', '', 'zyibiczkaya-(minsk)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Улица Зыбицкая (ещё одно народное наименование – «Зыба») прилегает к Верхнему городу, но очень отличается по атмосфере. Это самая «тусовочная» и гастрономически-коктейльная улица белорусской столицы. На ней расположено множество заведений – баров, кафе, ресторанов. Часто выступают уличные музыканты.</p>\r\n\r\n<p>Во время археологических исследований в районе Зыбицкой улицы была обнаружена пивная XVIII века, – похоже, горожанам издавна нравилось проводить здесь вечера.</p>\r\n\r\n<p>Когда-то эта улица была центром торговли в столице. При реконструкции поначалу ей и планировалось вернуть первоначальное предназначение путём сдачи в аренду большинства помещений разным магазинам. Однако с ноября 2013 года Зыбицкая улица самопроизвольно стала развиваться в барном направлении.</p>\r\n', 1, 4, 0, 1, 1, 1, 1662646266, 1, 1662727995, 0, 0, 0, 1662646260, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'zyibiczkaya-(minsk)', 0, 0, 1, NULL, 1),
(42, 'document', 'Арт-Октябрьская (Минск)', '', '', 'art-oktyabrskaya-(minsk)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Это абсолютно молодой квартал в Минске, где собираются креативные субкультурные люди. Вся улица исписана различного рода граффити. Это создаёт определённую атмосферу.</p>\r\n\r\n<p>Здесь проводятся иногда масштабные мероприятия и ярмарки. Ночная жизнь тоже присутствует. Есть несколько танцевальных заведений и кабаков. Недавно, здесь даже запустили трамвай-ресторан, который катает своих посетителей по улице Октябрьская во время посещения.</p>\r\n\r\n<p>Граффити на Октябрьской уже стали отдельной достопримечательностью города. Они создавались несколько лет подряд мастерами из Беларуси и Бразилии в рамках стрит-арт фестиваля Vulica Brasil. Здесь можно увидеть изображения белорусского гусляра, Ван Гога, Фриды Кало, графа Чапского и многих других ярких персонажей.</p>\r\n', 1, 4, 1, 1, 1, 1, 1662646349, 1, 1662728025, 0, 0, 0, 1662646320, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'art-oktyabrskaya-(minsk)', 0, 0, 1, NULL, 1),
(43, 'document', ' Советская (Брест)', '', '', 'sovetskaya-(brest)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Пешеходная улица Советская в Бресте расположена в центральной части города – от улицы Орджоникидзе до набережной реки Мухавец.</p>\r\n\r\n<p>Интересна история этой улицы. В своё время она называлась Миллионная, Полицейская, улица имени майора Ежи Домбровского, Генералштрассе. С 1944 года и по сей день – это улица Советская. В начале улицы сохранились дома, построенные ещё до 1915 года. Улица не единожды горела и заново отстраивалась. В начале улицы Советской расположена Свято-Николаевская братская церковь. В тридцатых годах 20 века на Советской располагались еврейские торговые ряды.</p>\r\n\r\n<p>Улица Советская в городе Бресте не раз реконструировалась. Последнее преображение она пережила в 2009 году. В результате появились многочисленные малые архитектурные формы, декоративные элементы, скульптуры, фрески и другие объекты, которые неизменно привлекают туристов.</p>\r\n', 1, 4, 2, 1, 1, 1, 1662646402, 1, 1662728070, 0, 0, 0, 1662646380, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'sovetskaya-(brest)', 0, 0, 1, NULL, 1),
(44, 'document', 'Советская (Гродно)', '', '', 'sovetskaya-(grodno)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Улица Советская в Гродно является одной из самых старых улиц исторического центра города. Имеет статус пешеходной улицы и автомобилям въезд сюда строго запрещен.</p>\r\n\r\n<p>Советская улица в Гродно растянулась примерно на полкилометра от Площади Советской до улицы Элизы Ожешки. Здесь сосредоточены старинные здания, датированные XV – XVII веками. Каждое из них можно рассматривать часами, а по пешеходной улице просто приятно ходить, поскольку дорога, вымощенная брусчаткой, сохранилась еще с польских времен.</p>\r\n\r\n<p>К середине XVI века по указу королевы Боны Сфорцы здесь возвели Костёл Святого Духа (теперь это администрация Ленинского р-на). В начале XVII века появился Доминиканский Костёл и Монастырь (на месте нынешнего памятника Соколовскому).</p>\r\n', 1, 4, 3, 1, 1, 1, 1662646445, 1, 1662728122, 0, 0, 0, 1662646440, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'sovetskaya-(grodno)', 0, 0, 1, NULL, 1),
(45, 'document', 'Суворова (Витебск)', '', '', 'suvorova-(vitebsk)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Улица Суворова в Витебске является одной из самых старых улиц города – она начала формироваться ещё в 14-15 веках. В своё время по ней ходил сам Бонапарт Наполеон! До 19 века улица называлась Узгорской, в 1840-50-х годах – Офицерской и только в 1900 году к столетию со дня смерти русского полководца А.В.Суворова была переименована в Суворовскую. На улице располагались мужское духовное училище, почта и телеграф, ратуша и Воскресенская церковь.</p>\r\n\r\n<p>С 2010 года улица Суворова в Витебске стала пешеходной. Её протяженность – 1300 метров. Скамейки по обеим сторонам обочины, булыжная мостовая, милые кафе и рестораны, парикмахерские и магазины… И всё это на фоне уникальной исторической застройки улицы.</p>\r\n\r\n<p>Улица Суворова входит в «Золотое кольцо Витебска», которое включает храмы набережной Западной Двины и, собственно, улицу Суворова.</p>\r\n', 1, 4, 4, 1, 1, 1, 1662646495, 1, 1662728149, 0, 0, 0, 1662646440, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'suvorova-(vitebsk)', 0, 0, 1, NULL, 1),
(46, 'document', 'Ленинская (Могилев)', '', '', 'leninskaya-(mogilev)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Улица Ленинская — одна из самых старых в Могилеве. Она располагается в самом центре города: свое начало она берет от площади Славы и заканчивается в районе улицы Миронова. Общая протяженность Ленинской улицы — 1490 метров. Сегодня большая ее часть — пешеходная, поэтому здесь всегда можно встретить прогуливающихся местных жителей и туристов.</p>\r\n\r\n<p>Историкам удалось обнаружить сообщения, которые подтверждают, что эта улица появилась еще в XVI столетии. В то время в Могилеве происходило формирование Торговой площади (сегодня она называется Советской), от которой отходили две главные улицы-дороги города: Шкловская (ныне — Первомайская) и Ветреная, ведущая к Ветряным воротам оборонительного вала. Вторая, собственная, и стала праотцом нынешней Ленинской.</p>\r\n', 1, 4, 5, 1, 1, 1, 1662646544, 1, 1662728165, 0, 0, 0, 1662646500, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'leninskaya-(mogilev)', 0, 0, 1, NULL, 1),
(47, 'document', 'Советская (Гомель)', '', '', 'sovetskaya-(gomel)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Улица Советская — одна из старейших улиц Гомеля, обозначена на его карте 1783. Застроена в конце 18 в. Начиналась от Соборной (Базарной) площади (ныне площадь Ленина) и заканчивалась у православного кладбища (ныне Университетский скверик).</p>\r\n\r\n<p>В начале 19 столетия была принята новая планировочная система Гомеля. Согласно ей Гомель должен был развиваться вокруг 3-х основных улиц, одной из которых была Пробойная (первоначальное название улицы Советской). Такое название улица получила в связи с тем, что образовываясь в центре Гомеля, она пересекала («пробивала») весь город, и плавно перетекала в дорогу на Могилев.</p>\r\n', 1, 4, 6, 1, 1, 1, 1662646588, 1, 1662728185, 0, 0, 0, 1662646560, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'sovetskaya-(gomel)', 0, 0, 1, NULL, 1);
INSERT INTO `belarustablesite_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(48, 'document', 'Мостовая (Гродно)', '', '', 'mostovaya-(grodno)', '', 1, 0, 0, 40, 0, '', '<p><meta charset=\"utf-8\" />Впервые улица упоминается в уволочном измерении города 1560 г., где она именуется как «Улица Великая с мостика на Подоле».</p>\r\n\r\n<p>Улица Мостовая издавна исполняла функцию главной транспортной магистрали города. Выходила она от юго-западного угла главного рынка города, спускаясь к переправе через Неман. В XVII веке направление улицы изменилось в связи со строительством на этой улице бернардинского женского и кармелитского монастырей, а также затянувшимся строительством моста через Неман. Перед главным фасадом кармелитского костела улица поворачивала на юго-восток к Неману, где находилась новая переправа.</p>\r\n', 1, 4, 7, 1, 1, 1, 1662646627, 1, 1662728211, 0, 0, 0, 1662646620, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'mostovaya-(grodno)', 0, 0, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_htmlsnippets`
--

CREATE TABLE `belarustablesite_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext COLLATE utf8mb4_unicode_ci,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_unicode_ci,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_htmlsnippets`
--

INSERT INTO `belarustablesite_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'HEAD', '', 0, 0, 0, '<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    <meta charset=\"UTF-8\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <link rel=\"stylesheet\" href=\"./assets/dist/css/style.min.css\" >\n    <title>Belarus</title>\n  </head>\n  <body>\n    <div class=\"mask-animation\"></div>\n    \n<header>\n  <div class=\"container\">\n    <div class=\"head_menu\">\n      <div class=\"logo\">\n        <a href=\"/\"><img src=\"./assets/dist/img/svg/Belarus.svg\" alt=\"Belarus.\"></a>\n      </div>\n      <div class=\"head_menu__message\">\n        <div class=\"bg-position\">\n          <div class=\"bg-masseger\">\n          <span class=\"closed\"><img src=\"./assets/dist/img/svg/close.svg\" alt=\"\"></span>\n          <span class=\"bg-masseger_text\">Данный сайт позволит Вам немного больше узнать о культуре нашей страны; наводите на фото и погружайтесь в историю :)</span>\n        </div>\n      </div>\n        <img class=\"burger-messager\" src=\"./assets/dist/img/svg/Group 40.svg\" alt=\"\" />\n      </div>\n    </div>\n    <h1>Беларусь</h1>\n    <div class=\"menu_burger\">\n      <div class=\"lignes\"></div>\n    </div>\n    <nav class=\"menu\">\n    [[pdoMenu?\n    &parents=`0`\n    &level=`1`\n    &firstClass=``\n    &lastClass=``\n    &hereClass=`menu__active`\n    &rowClass = `menu__items`]]\n    </nav>\n  </div>\n</header>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'tpl_vov', '', 0, 2, 0, '<div class=\"content__item \">\n    <div class=\"container__img-ear container__img-ear-active\">\n        <img data-sound=\"[[+tv.music_play]]\" class=\"img-ear\" src=\"./assets/dist/img/svg/earphones.svg\" alt=\"\">\n        <img data-sound=\"[[+tv.music_play]]\" class=\"content__item-img\"  src=\"[[+tv.img_start]]\"  alt=\"[[+pagetitle]]\">\n    </div>\n    <p class=\"content__item_text\">[[+pagetitle]]</p>\n    <p class=\"content__item_subtext\">\n        <a href=\"[[+uri]]\">Подробнее &rarr;</a>\n    </p>\n</div>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'tpl_img_text', '', 0, 2, 0, '            <div class=\" content__item slider\">\n              <div class=\"text-activ\">\n                <span class=\"descr\">\n                 [[+introtext]]\n                </span>\n                <div class=ImgField>\n                  <img class=\"content__item-img image first\" src=\"[[+tv.img_start]]\" alt=\"[[+pagetitle]]\" >\n                  <img class=\"content__item-img image second\" src=\"[[+tv.img_sec]]\" alt=\"[[+pagetitle]]\" >\n                </div>\n              </div>\n              <p class=\"content__item_text\">[[+pagetitle]]</p>\n              <p class=\"content__item_subtext\">\n                <a href=\"[[+uri]]\">Подробнее &rarr;</a>\n              </p>\n            </div>', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'tpl_img_ear', '', 0, 2, 0, '            <div class=\" content__item\">\n                <div class=\"container__img-ear\">\n                 <img class=\"img-ear\" src=\"./assets/dist/img/svg/earphones.svg\" alt=\"\">\n                <div class=ImgField>\n                    <img data-sound=\"[[+tv.music_play]]\" class=\"content__item-img image first\" src=\"[[+tv.img_start]]\" alt=\"[[+pagetitle]]\" >\n                    <img data-sound=\"[[+tv.music_play]]\" class=\"content__item-img image second\" src=\"[[+tv.img_sec]]\" alt=\"[[+pagetitle]]\" >\n                </div>\n                </div>\n              <p class=\"content__item_text\">[[+pagetitle]]</p>\n              <p class=\"content__item_subtext\">\n                <a href=\"[[+uri]]\">Подробнее &rarr;</a>\n              </p>\n            </div>\n            \n           \n                 ', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'tpl_img', '', 0, 2, 0, ' <div class=\"content__item \">\n                <div>\n                  <img class=\"content__item-img br_kr\" src=\"[[+tv.img_start]]\" alt=\"[[+pagetitle]]\">\n                </div>\n                <p class=\"content__item_text\">[[+pagetitle]]</p>\n                <p class=\"content__item_subtext\">\n                  <a href=\"[[+uri]]\">Подробнее &rarr;</a>\n                </p>\n              </div>', 0, 'a:0:{}', 0, ''),
(6, 1, 0, 'tpl_modal', '', 0, 2, 0, '<div class=\"container modal\">\n          <button class=\"btn slider-prev btn-modal\"><a href=\"#\">&larr;</a></button>\n          <button class=\"btn slider-next btn-modal\"><a href=\"#\">&rarr;</a></button>\n         <div class=\"modal__item modal-img\">\n             <img class=\"content__item-img br_kr\" src=\"[[+tv.img_start]]\" alt=\"[[+pagetitle]]\">\n            <p class=\"content__item_text\">[[+pagetitle]]</p>\n            <p class=\"content__item_subtext\"><a href=\"/\">&larr; Назад </a</p>\n          </div>\n          <div class=\"content__item-text\">\n            <p>\n                [[*content]]\n            </p>\n          </div>\n        </div>', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'FOOTER', '', 0, 0, 0, '    <script src=\"./assets/dist/js/index.min.js\"></script>\n    \n    <script>\n    const bgMasActive=document.querySelector(\'.burger-messager\');\n    const idclos=document.querySelector(\'.closed\');\n    const mesBG=document.querySelector(\'.bg-position\');\n    const tl_bg=gsap.timeline()\n    \n    bgMasActive.addEventListener(\'click\',()=>{\n      tl_bg.from(mesBG,{opacity:0, x:-40})\n      mesBG.classList.add(\'bg-pos-active\')\n      mesBG.classList.add(\'bg-pos-oppacity\')\n    });\n    \n    idclos.addEventListener(\'click\',()=>{\n      let qw=tl_bg.to(mesBG,{x:0, opacity:0})\n    \n      mesBG.classList.remove(\'bg-pos-oppacity\')\n      setTimeout(() => {\n        mesBG.classList.remove(\'bg-pos-active\')\n      }, 500)\n      qw.repeat()\n    });\n    \n    </script>\n  </body>\n</html>', 0, 'a:0:{}', 0, ''),
(8, 1, 0, 'songPlay', 'Для воспроизведения звуков', 0, 0, 0, '<script>\n        const sounds = document.querySelectorAll(\"[data-sound]\");\n    let audioPlayNow = \'\'\n    const audio = new Audio();\n    function playAudio(src) {\n      audio.src = src\n      audio.currentTime = 0;\n      audio.play();\n      \n      return audio;\n    }\n    \n    function pauseAudio(src) {\n      audio.src = src\n      audio.pause();\n      \n      return audio;\n    } \n    \n    const soundsList = [...sounds];\n        soundsList.forEach(e => {\n            e.addEventListener(\'click\', () => {\n                const soundAudio = playAudio(e.dataset.sound)\n                if(audioPlayNow.includes(e.dataset.sound)) {\n                   audioPlayNow = \'\'    \n                   audio.pause()\n                   return false\n                }\n                audioPlayNow = soundAudio.src\n            })\n        })\n</script>  ', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_plugins`
--

CREATE TABLE `belarustablesite_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_unicode_ci,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_plugins`
--

INSERT INTO `belarustablesite_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'Ace\');\n    return;\n}\n\nif ($modx->getOption(\'which_element_editor\', null, \'Ace\') !== \'Ace\') {\n    return;\n}\n\n$corePath = $modx->getOption(\'ace.core_path\', null, $modx->getOption(\'core_path\').\'components/ace/\');\n$ace = $modx->getService(\'ace\', \'Ace\', $corePath.\'model/ace/\');\n$ace->initialize();\n\n$extensionMap = array(\n    \'tpl\'   => \'text/x-smarty\',\n    \'htm\'   => \'text/html\',\n    \'html\'  => \'text/html\',\n    \'css\'   => \'text/css\',\n    \'scss\'  => \'text/x-scss\',\n    \'less\'  => \'text/x-less\',\n    \'svg\'   => \'image/svg+xml\',\n    \'xml\'   => \'application/xml\',\n    \'xsl\'   => \'application/xml\',\n    \'js\'    => \'application/javascript\',\n    \'json\'  => \'application/json\',\n    \'php\'   => \'application/x-php\',\n    \'sql\'   => \'text/x-sql\',\n    \'md\'    => \'text/x-markdown\',\n    \'txt\'   => \'text/plain\',\n    \'twig\'  => \'text/x-twig\'\n);\n\n// Define default mime for html elements(templates, chunks and html resources)\n$html_elements_mime=$modx->getOption(\'ace.html_elements_mime\',null,false);\nif(!$html_elements_mime){\n    // this may deprecated in future because components may set ace.html_elements_mime option now\n    switch (true) {\n        case $modx->getOption(\'twiggy_class\'):\n            $html_elements_mime = \'text/x-twig\';\n            break;\n        case $modx->getOption(\'pdotools_fenom_parser\'):\n            $html_elements_mime = \'text/x-smarty\';\n            break;\n        default:\n            $html_elements_mime = \'text/html\';\n    }\n}\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $modxTags = true;\n        $mimeType = $html_elements_mime;\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->name, PATHINFO_EXTENSION);\n            if(!$extension||!isset($extensionMap[$extension])){\n                $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            }\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\n        } else {\n            $mimeType = $html_elements_mime;\n        }\n        $modxTags = true;\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnFileCreateFormPrerender\':\n        $field = \'modx-file-content\';\n        $mimeType = \'text/plain\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : (\'@FILE:\'.pathinfo($scriptProperties[\'file\'], PATHINFO_BASENAME));\n        $modxTags = $extension == \'tpl\';\n        break;\n    case \'OnDocFormPrerender\':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = \'ta\';\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\n\n        if($mimeType == \'text/html\')$mimeType = $html_elements_mime;\n\n        if ($modx->getOption(\'use_editor\')){\n            $richText = $modx->controller->resourceArray[\'richtext\'];\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath . \'elements/tv/input/\');\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = \'\';\nif (!empty($field)) {\n    $script .= \"MODx.ux.Ace.replaceComponent(\'$field\', \'$mimeType\', $modxTags);\";\n}\n\nif ($modx->event->name == \'OnDocFormPrerender\' && !$modx->getOption(\'use_editor\')) {\n    $script .= \"MODx.ux.Ace.replaceTextAreas(Ext.query(\'.modx-richtext\'));\";\n}\n\nif ($script) {\n    $modx->controller->addHtml(\'<script>Ext.onReady(function() {\' . $script . \'});</script>\');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php'),
(2, 0, 0, 'CKEditor', 'CKEditor WYSIWYG editor plugin for MODx Revolution', 0, 0, 0, '', 0, NULL, 0, '', 1, 'ckeditor/elements/plugins/ckeditor.plugin.php'),
(3, 1, 0, 'pdoTools', '', 0, 1, 0, '/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nswitch ($modx->event->name) {\r\n    case \'OnSiteRefresh\':\r\n        /** @var ModxPro\\PdoTools\\CoreTools $coreTools */\r\n        if ($coreTools = $modx->services->get(\'pdotools\')) {\r\n            if ($coreTools->clearFileCache()) {\r\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\r\n            }\r\n        }\r\n        break;\r\n    case \'OnWebPagePrerender\':\r\n        /** @var ModxPro\\PdoTools\\Parsing\\Parser $parser */\r\n        $parser = $modx->getParser();\r\n        if ($parser instanceof ModxPro\\PdoTools\\Parsing\\Parser) {\r\n            foreach ($parser->ignores as $key => $val) {\r\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\r\n            }\r\n        }\r\n        break;\r\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_plugin_events`
--

CREATE TABLE `belarustablesite_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_plugin_events`
--

INSERT INTO `belarustablesite_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnChunkFormPrerender', 0, 0),
(1, 'OnDocFormPrerender', 0, 0),
(1, 'OnFileCreateFormPrerender', 0, 0),
(1, 'OnFileEditFormPrerender', 0, 0),
(1, 'OnManagerPageBeforeRender', 0, 0),
(1, 'OnPluginFormPrerender', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnSnipFormPrerender', 0, 0),
(1, 'OnTempFormPrerender', 0, 0),
(1, 'OnTVInputRenderList', 0, 0),
(2, 'OnManagerPageBeforeRender', 0, 0),
(2, 'OnRichTextBrowserInit', 0, 0),
(2, 'OnRichTextEditorInit', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(3, 'OnSiteRefresh', 0, 0),
(3, 'OnWebPagePrerender', -101, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_snippets`
--

CREATE TABLE `belarustablesite_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext COLLATE utf8mb4_unicode_ci,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_unicode_ci,
  `moduleguid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_snippets`
--

INSERT INTO `belarustablesite_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'pdoResources', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modSnippet;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nif (isset($parents) && $parents === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n}\r\nif (!empty($returnIds)) {\r\n    $scriptProperties[\'return\'] = $return = \'ids\';\r\n} elseif (!isset($return)) {\r\n    $scriptProperties[\'return\'] = $return = \'chunks\';\r\n}\r\n\r\n// Adding extra parameters into special place so we can put them in a results\r\n/** @var modSnippet $snippet */\r\n$additionalPlaceholders = $properties = [];\r\nif (isset($this) && $this instanceof modSnippet && $this->get(\'properties\')) {\r\n    $properties = $this->get(\'properties\');\r\n} elseif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoResources\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n}\r\nif (!empty($properties)) {\r\n    foreach ($scriptProperties as $k => $v) {\r\n        if (!isset($properties[$k])) {\r\n            $additionalPlaceholders[$k] = $v;\r\n        }\r\n    }\r\n}\r\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n$output = $pdoFetch->run();\r\n\r\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n    $modx->setPlaceholder(\'pdoResourcesLog\', print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\n// Return output\r\nif (!empty($returnIds)) {\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n} elseif ($return === \'data\') {\r\n    return $output;\r\n} elseif (!empty($toSeparatePlaceholders)) {\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, [\'output\' => $output]),\r\n            $pdoFetch->config(\'fastMode\'));\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(2, 1, 0, 'pdoUsers', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modUser;\r\nuse MODX\\Revolution\\modUserGroup;\r\nuse MODX\\Revolution\\modUserGroupMember;\r\nuse MODX\\Revolution\\modUserGroupRole;\r\nuse MODX\\Revolution\\modUserProfile;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nif (!empty($returnIds)) {\r\n    $scriptProperties[\'return\'] = $return = \'ids\';\r\n} elseif (!isset($return)) {\r\n    $scriptProperties[\'return\'] = $return = \'chunks\';\r\n}\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n$class = modUser::class;\r\n$alias_class = $modx->getAlias($class);\r\n$profile = modUserProfile::class;\r\n$alias_profile = $modx->getAlias($profile);\r\n$member = modUserGroupMember::class;\r\n$alias_member = $modx->getAlias($member);\r\n\r\n// Start building \"Where\" expression\r\n$where = [];\r\nif (empty($showInactive)) {\r\n    $where[$alias_class . \'.active\'] = 1;\r\n}\r\nif (empty($showBlocked)) {\r\n    $where[$alias_profile . \'.blocked\'] = 0;\r\n}\r\n\r\n// Add users profiles and groups\r\n$innerJoin = [\r\n    $profile => [\'class\' => $profile, \'alias\' => $alias_profile, \'on\' => \"$alias_class.id = $alias_profile.internalKey\"],\r\n];\r\n\r\n// Filter by users, groups and roles\r\n$tmp = [\r\n    \'users\' => [\r\n        \'class\' => $class,\r\n        \'name\' => \'username\',\r\n        \'join\' => $alias_class . \'.id\',\r\n    ],\r\n    \'groups\' => [\r\n        \'class\' => modUserGroup::class,\r\n        \'name\' => \'name\',\r\n        \'join\' => $alias_member . \'.user_group\',\r\n    ],\r\n    \'roles\' => [\r\n        \'class\' => modUserGroupRole::class,\r\n        \'name\' => \'name\',\r\n        \'join\' => $alias_member . \'.role\',\r\n    ],\r\n];\r\nforeach ($tmp as $k => $p) {\r\n    if (!empty($$k)) {\r\n        $$k = array_map(\'trim\', explode(\',\', $$k));\r\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = [];\r\n        foreach ($$k as $v) {\r\n            if (is_numeric($v)) {\r\n                if ($v[0] == \'-\') {\r\n                    ${$k . \'_out\'}[] = abs($v);\r\n                } else {\r\n                    ${$k . \'_in\'}[] = abs($v);\r\n                }\r\n            } else {\r\n                if ($v[0] == \'-\') {\r\n                    $fetch_out[] = $v;\r\n                } else {\r\n                    $fetch_in[] = $v;\r\n                }\r\n            }\r\n        }\r\n\r\n        if (!empty($fetch_in) || !empty($fetch_out)) {\r\n            $q = $modx->newQuery($p[\'class\'], [$p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)]);\r\n            $q->select(\'id,\' . $p[\'name\']);\r\n            $tstart = microtime(true);\r\n            if ($q->prepare() && $q->stmt->execute()) {\r\n                $modx->queryTime += microtime(true) - $tstart;\r\n                $modx->executedQueries++;\r\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\r\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\r\n                        ${$k . \'_in\'}[] = $row[\'id\'];\r\n                    } else {\r\n                        ${$k . \'_out\'}[] = $row[\'id\'];\r\n                    }\r\n                }\r\n            }\r\n        }\r\n\r\n        if (!empty(${$k . \'_in\'})) {\r\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\r\n        }\r\n        if (!empty(${$k . \'_out\'})) {\r\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\r\n    $innerJoin[$alias_member] = [\'class\' => $member, \'alias\' => $alias_member, \'on\' => \"$alias_class.id = $alias_member.member\"];\r\n}\r\n\r\n// Fields to select\r\n$select = [\r\n    $profile => implode(\',\', array_diff(array_keys($modx->getFieldMeta($profile)), [\'sessionid\'])),\r\n    $class => implode(\',\', array_diff(array_keys($modx->getFieldMeta($class)), [\'password\', \'cachepwd\', \'salt\', \'session_stale\', \'remote_key\', \'remote_data\', \'hash_class\'])),\r\n];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'innerJoin\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n$default = [\r\n    \'class\' => $class,\r\n    \'innerJoin\' => $innerJoin,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    \'groupby\' => $alias_class . \'.id\',\r\n    \'sortby\' => $alias_class . \'.id\',\r\n    \'sortdir\' => \'ASC\',\r\n    \'fastMode\' => false,\r\n    \'return\' => $return,\r\n    \'disableConditions\' => true,\r\n];\r\n\r\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $alias_class . \'.id\')) {\r\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$alias_class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\r\n    $scriptProperties[\'sortdir\'] = \'\';\r\n}\r\n\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n$output = $pdoFetch->run();\r\n\r\n$log = \'\';\r\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n    $modx->setPlaceholder(\'pdoUsersLog\',  print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\n// Return output\r\nif (!empty($returnIds)) {\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n} elseif ($return === \'data\') {\r\n    return $output;\r\n} elseif (!empty($toSeparatePlaceholders)) {\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output], $pdoFetch->config(\'fastMode\'));\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(3, 1, 0, 'pdoCrumbs', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\nif (!isset($from) || $from == \'\') {\r\n    $from = 0;\r\n}\r\nif (empty($to)) {\r\n    $to = $modx->resource->id;\r\n}\r\nif (empty($direction)) {\r\n    $direction = \'ltr\';\r\n}\r\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\r\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\r\n}\r\n$limit = $limit ?: 10;\r\n\r\n// For compatibility with BreadCrumb\r\nif (!empty($maxCrumbs)) {\r\n    $limit = $maxCrumbs;\r\n}\r\nif (!empty($containerTpl)) {\r\n    $tplWrapper = $containerTpl;\r\n}\r\nif (!empty($currentCrumbTpl)) {\r\n    $tplCurrent = $currentCrumbTpl;\r\n}\r\nif (!empty($linkCrumbTpl)) {\r\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\r\n}\r\nif (!empty($maxCrumbTpl)) {\r\n    $tplMax = $maxCrumbTpl;\r\n}\r\nif (isset($showBreadCrumbsAtHome)) {\r\n    $showAtHome = $showBreadCrumbsAtHome;\r\n}\r\nif (isset($showHomeCrumb)) {\r\n    $showHome = $showHomeCrumb;\r\n}\r\nif (isset($showCurrentCrumb)) {\r\n    $showCurrent = $showCurrentCrumb;\r\n}\r\n// --\r\n$fastMode = !empty($fastMode);\r\n$siteStart = (int)$modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\r\n\r\nif (empty($showAtHome) && $modx->resource->id === $siteStart) {\r\n    return \'\';\r\n}\r\n\r\n$class = modResource::class;\r\n$alias = $modx->getAlias($class);\r\n// Start building \"Where\" expression\r\n$where = [];\r\nif (empty($showUnpublished) && empty($showUnPub)) {\r\n    $where[\'published\'] = 1;\r\n}\r\nif (empty($showHidden)) {\r\n    $where[\'hidemenu\'] = 0;\r\n}\r\nif (empty($showDeleted)) {\r\n    $where[\'deleted\'] = 0;\r\n}\r\nif (!empty($hideContainers) && empty($showContainer)) {\r\n    $where[\'isfolder\'] = 0;\r\n}\r\n\r\n$resource = ($to == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject($class, $to);\r\n\r\nif (!$resource) {\r\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\r\n\r\n    return \'\';\r\n}\r\n\r\nif (!empty($customParents)) {\r\n    $customParents = is_array($customParents) ? $customParents : array_map(\'trim\', explode(\',\', $customParents));\r\n    $parents = is_array($customParents) ? array_reverse($customParents) : [];\r\n}\r\nif (empty($parents)) {\r\n    $parents = $modx->getParentIds($resource->id, $limit, [\'context\' => $resource->get(\'context_key\')]);\r\n}\r\nif (!empty($showHome)) {\r\n    $parents[] = $siteStart;\r\n}\r\n\r\n$ids = [$resource->id];\r\nforeach ($parents as $parent) {\r\n    if (!empty($parent)) {\r\n        $ids[] = $parent;\r\n    }\r\n    if (!empty($from) && $parent == $from) {\r\n        break;\r\n    }\r\n}\r\n$where[\'id:IN\'] = $ids;\r\n\r\nif (!empty($exclude)) {\r\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\r\n}\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\n$select = [$alias => implode(\',\', $resourceColumns)];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    \'groupby\' => $alias . \'.id\',\r\n    \'sortby\' => \"find_in_set(`$alias`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\r\n    \'sortdir\' => \'\',\r\n    \'return\' => \'data\',\r\n    \'totalVar\' => \'pdocrumbs.total\',\r\n    \'disableConditions\' => true,\r\n];\r\n\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n$rows = $pdoFetch->run();\r\n\r\n$output = [];\r\nif (!empty($rows) && is_array($rows)) {\r\n    if (strtolower($direction) == \'ltr\') {\r\n        $rows = array_reverse($rows);\r\n    }\r\n\r\n    foreach ($rows as $row) {\r\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] === modWebLink::class) {\r\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n                : $row[\'content\'];\r\n        } else {\r\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n        }\r\n\r\n        $row = array_merge(\r\n            $scriptProperties,\r\n            $row,\r\n            [\'idx\' => $pdoFetch->idx++]\r\n        );\r\n        if (empty($row[\'menutitle\'])) {\r\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\r\n        }\r\n\r\n        if (isset($return) && $return === \'data\') {\r\n            $output[] = $row;\r\n            continue;\r\n        }\r\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\r\n            continue;\r\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\r\n            $tpl = $tplCurrent;\r\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\r\n            $tpl = $tplHome;\r\n        } else {\r\n            $tpl = $pdoFetch->defineChunk($row);\r\n        }\r\n        $output[] = empty($tpl)\r\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\r\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\r\n    }\r\n}\r\nif (isset($return) && $return === \'data\') {\r\n    return $output;\r\n}\r\n\r\n$pdoFetch->addTime(\'Chunks processed\');\r\n\r\nif (count($output) == 1 && !empty($hideSingle)) {\r\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\r\n    $output = [];\r\n}\r\n\r\n$log = \'\';\r\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\r\n    $modx->setPlaceholder(\'pdoCrumbsLog\', print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    $output = implode($outputSeparator, $output);\r\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\r\n        $output = ($direction == \'ltr\')\r\n            ? $pdoFetch->getChunk($tplMax, [], $fastMode) . $output\r\n            : $output . $pdoFetch->getChunk($tplMax, [], $fastMode);\r\n    }\r\n    $output .= $log;\r\n\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output, \'crumbs\' => $output], $fastMode);\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:31:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"customParents\";a:7:{s:4:\"name\";s:13:\"customParents\";s:4:\"desc\";s:27:\"pdotools_prop_customParents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li class=\"breadcrumb-item\"><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <li class=\"breadcrumb-item active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"breadcrumb-item disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ol class=\"breadcrumb\">[[+output]]</ol>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `belarustablesite_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(4, 1, 0, 'pdoField', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\n\r\nif (!empty($input)) {\r\n    $id = $input;\r\n}\r\nif (!isset($default)) {\r\n    $default = \'\';\r\n}\r\nif (!isset($output)) {\r\n    $output = \'\';\r\n}\r\n$class = $modx->getOption(\'class\', $scriptProperties, modResource::class, true);\r\n$alias = $modx->getAlias($class);\r\n$isResource = $class === modResource::class || in_array($class, $modx->getDescendants(modResource::class));\r\n\r\nif (empty($field)) {\r\n    $field = \'pagetitle\';\r\n}\r\n$top = isset($top) ? (int)$top : 0;\r\n$topLevel = isset($topLevel) ? (int)$topLevel : 0;\r\nif (!empty($options) && is_string($options)) {\r\n    $options = trim($options);\r\n    if ($options[0] == \'{\') {\r\n        $tmp = json_decode($options, true);\r\n        if (is_array($tmp)) {\r\n            extract($tmp, EXTR_OVERWRITE);\r\n            $scriptProperties = array_merge($scriptProperties, $tmp);\r\n        }\r\n    } else {\r\n        $field = $options;\r\n    }\r\n}\r\nif (empty($id)) {\r\n    if (!empty($modx->resource)) {\r\n        $id = $modx->resource->id;\r\n    } else {\r\n        return \'You must specify an id of \' . $alias;\r\n    }\r\n}\r\nif (!isset($context)) {\r\n    $context = \'\';\r\n}\r\n\r\n// Gets the parent from root of context, if specified\r\nif ($isResource && $id && ($top || $topLevel)) {\r\n    // Select needed context for parents functionality\r\n    if (empty($context)) {\r\n        $q = $modx->newQuery($class, $id);\r\n        $q->select(\'context_key\');\r\n        $tstart = microtime(true);\r\n        if ($q->prepare() && $q->stmt->execute()) {\r\n            $modx->queryTime += microtime(true) - $tstart;\r\n            $modx->executedQueries++;\r\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\r\n        }\r\n    }\r\n    // Original pdoField logic\r\n    if (empty($ultimate)) {\r\n        if ($topLevel) {\r\n            $pids = $modx->getChildIds(0, $topLevel, [\'context\' => $context]);\r\n            $pid = $id;\r\n            while (true) {\r\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\r\n                if (!$pid = current($tmp)) {\r\n                    break;\r\n                } elseif (in_array($pid, $pids)) {\r\n                    $id = $pid;\r\n                    break;\r\n                }\r\n            }\r\n        } elseif ($top) {\r\n            $pid = $id;\r\n            for ($i = 1; $i <= $top; $i++) {\r\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\r\n                if (!$pid = current($tmp)) {\r\n                    break;\r\n                }\r\n                $id = $pid;\r\n            }\r\n        }\r\n    }\r\n    // UltimateParent logic\r\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\r\n    elseif ($id != $top) {\r\n        $pid = $id;\r\n        $pids = $modx->getParentIds($id, 10, [\'context\' => $context]);\r\n        if (!$topLevel || count($pids) >= $topLevel) {\r\n            while ($parentIds = $modx->getParentIds($id, 1, [\'context\' => $context])) {\r\n                $pid = array_pop($parentIds);\r\n                if ($pid == $top) {\r\n                    break;\r\n                }\r\n                $id = $pid;\r\n                $parentIds = $modx->getParentIds($id, 10, [\'context\' => $context]);\r\n                if ($topLevel && count($parentIds) < $topLevel) {\r\n                    break;\r\n                }\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n$where = [$alias . \'.id\' => $id];\r\n// Add custom parameters\r\nforeach ([\'where\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\n$field = strtolower($field);\r\nif (in_array($field, $resourceColumns)) {\r\n    $scriptProperties[\'select\'] = [$alias => $field];\r\n    $scriptProperties[\'includeTVs\'] = \'\';\r\n} elseif ($isResource) {\r\n    $scriptProperties[\'select\'] = [$alias => \'id\'];\r\n    $scriptProperties[\'includeTVs\'] = $field;\r\n}\r\n// Additional default field\r\nif (!empty($default)) {\r\n    $default = strtolower($default);\r\n    if (in_array($default, $resourceColumns)) {\r\n        $scriptProperties[\'select\'][$alias] .= \',\' . $default;\r\n    } elseif ($isResource) {\r\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\r\n            ? $default\r\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\r\n    }\r\n}\r\n\r\n$scriptProperties[\'disableConditions\'] = true;\r\nif ($row = $pdoFetch->getArray($class, $where, $scriptProperties)) {\r\n    foreach ($row as $k => $v) {\r\n        if (strtolower($k) == $field && $v != \'\') {\r\n            $output = $v;\r\n            break;\r\n        }\r\n    }\r\n\r\n    if (empty($output) && !empty($default)) {\r\n        foreach ($row as $k => $v) {\r\n            if (strtolower($k) == $default && $v != \'\') {\r\n                $output = $v;\r\n                break;\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(5, 1, 0, 'pdoSitemap', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\n$modx->services[\'pdotools_config\'] = [];\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n// Default variables\r\nif (empty($tpl)) {\r\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\r\n}\r\nif (empty($tplWrapper)) {\r\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\r\n}\r\nif (empty($sitemapSchema)) {\r\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\r\n}\r\nif (empty($outputSeparator)) {\r\n    $outputSeparator = \"\\n\";\r\n}\r\nif (empty($cacheKey)) {\r\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\r\n}\r\n\r\n// Convert parameters from GoogleSiteMap if exists\r\nif (!empty($itemTpl)) {\r\n    $tpl = $itemTpl;\r\n}\r\nif (!empty($containerTpl)) {\r\n    $tplWrapper = $containerTpl;\r\n}\r\nif (!empty($allowedtemplates)) {\r\n    $scriptProperties[\'templates\'] = $allowedtemplates;\r\n}\r\nif (!empty($maxDepth)) {\r\n    $scriptProperties[\'depth\'] = $maxDepth;\r\n}\r\nif (isset($hideDeleted)) {\r\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\r\n}\r\nif (isset($published)) {\r\n    $scriptProperties[\'showUnpublished\'] = !$published;\r\n}\r\nif (isset($searchable)) {\r\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\r\n}\r\nif (!empty($googleSchema)) {\r\n    $sitemapSchema = $googleSchema;\r\n}\r\nif (!empty($excludeResources)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($excludeChildrenOf)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'parents\'])) {\r\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'parents\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($startId)) {\r\n    if (!empty($scriptProperties[\'parents\'])) {\r\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\r\n    } else {\r\n        $scriptProperties[\'parents\'] = $startId;\r\n    }\r\n}\r\nif (!empty($sortBy)) {\r\n    $scriptProperties[\'sortby\'] = $sortBy;\r\n}\r\nif (!empty($sortDir)) {\r\n    $scriptProperties[\'sortdir\'] = $sortDir;\r\n}\r\nif (!empty($priorityTV)) {\r\n    if (!empty($scriptProperties[\'includeTVs\'])) {\r\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\r\n    } else {\r\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\r\n    }\r\n}\r\nif (!empty($itemSeparator)) {\r\n    $outputSeparator = $itemSeparator;\r\n}\r\n//---\r\n\r\n\r\n$class = modResource::class;\r\n$alias = $modx->getAlias($class);\r\n$where = [];\r\nif (empty($showHidden)) {\r\n    $where[] = [\r\n        $alias . \'.hidemenu\' => 0,\r\n        \'OR:\' . $alias . \'.class_key:IN\' => [\'Ticket\', \'Article\'],\r\n    ];\r\n}\r\nif (empty($context)) {\r\n    $scriptProperties[\'context\'] = $modx->context->key;\r\n}\r\n\r\n$select = [$alias => \'id,editedon,createdon,context_key,class_key,uri\'];\r\nif (!empty($useWeblinkUrl)) {\r\n    $select[$alias] .= \',content\';\r\n}\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    \'sortby\' => \"{$alias}.parent ASC, {$alias}.menuindex\",\r\n    \'sortdir\' => \'ASC\',\r\n    \'return\' => \'data\',\r\n    \'scheme\' => \'full\',\r\n    \'limit\' => 0,\r\n];\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n\r\nif (!empty($cache)) {\r\n    $data = $pdoFetch->getCache($scriptProperties);\r\n}\r\nif (!isset($return)) {\r\n    $return = \'chunks\';\r\n}\r\nif (empty($data)) {\r\n    $now = time();\r\n    $data = $urls = [];\r\n    $rows = $pdoFetch->run();\r\n    foreach ($rows as $row) {\r\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == modWebLink::class) {\r\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n                : $row[\'content\'];\r\n        } else {\r\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n        }\r\n        unset($row[\'content\']);\r\n        $time = !empty($row[\'editedon\'])\r\n            ? $row[\'editedon\']\r\n            : $row[\'createdon\'];\r\n        $row[\'date\'] = date(\'c\', $time);\r\n\r\n        $datediff = floor(($now - $time) / 86400);\r\n        if ($datediff <= 1) {\r\n            $row[\'priority\'] = \'1.0\';\r\n            $row[\'update\'] = \'daily\';\r\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\r\n            $row[\'priority\'] = \'0.75\';\r\n            $row[\'update\'] = \'weekly\';\r\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\r\n            $row[\'priority\'] = \'0.50\';\r\n            $row[\'update\'] = \'weekly\';\r\n        } else {\r\n            $row[\'priority\'] = \'0.25\';\r\n            $row[\'update\'] = \'monthly\';\r\n        }\r\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\r\n            $row[\'priority\'] = $row[$priorityTV];\r\n        }\r\n\r\n        // Fix possible duplicates made by modWebLink\r\n        if (!empty($urls[$row[\'url\']])) {\r\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\r\n                continue;\r\n            }\r\n        }\r\n        $urls[$row[\'url\']] = $row[\'date\'];\r\n\r\n        // Add item to output\r\n        if ($return === \'data\') {\r\n            $data[$row[\'url\']] = $row;\r\n        } else {\r\n            $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\r\n            if (strpos($data[$row[\'url\']], \'[[\') !== false) {\r\n                $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\r\n            }\r\n        }\r\n    }\r\n    $pdoFetch->addTime(\'Rows processed\');\r\n    if (!empty($cache)) {\r\n        $pdoFetch->setCache($data, $scriptProperties);\r\n    }\r\n}\r\n\r\nif ($return === \'data\') {\r\n    $output = $data;\r\n} else {\r\n    $output = implode($outputSeparator, $data);\r\n    $output = $pdoFetch->getChunk($tplWrapper, [\r\n        \'schema\' => $sitemapSchema,\r\n        \'output\' => $output,\r\n        \'items\' => $output,\r\n    ]);\r\n    $pdoFetch->addTime(\'Rows wrapped\');\r\n\r\n    if ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n        $modx->setPlaceholder(\'pdoSitemapLog\', print_r($pdoFetch->getTime(), true));\r\n    }\r\n}\r\nif (!empty($forceXML)) {\r\n    header(\"Content-Type:text/xml\");\r\n    @session_write_close();\r\n    exit($output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(6, 1, 0, 'pdoNeighbors', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n/** @var array $scriptProperties */\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\nif (empty($id)) {\r\n    $id = $modx->resource->id;\r\n}\r\nif (empty($limit)) {\r\n    $limit = 1;\r\n}\r\nif (!isset($outputSeparator)) {\r\n    $outputSeparator = \"\\n\";\r\n}\r\n$fastMode = !empty($fastMode);\r\n\r\n$class = modResource::class;\r\n$alias = $modx->getAlias($class);\r\n$resource = ($id == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject($class, $id);\r\nif (!$resource) {\r\n    return \'\';\r\n}\r\n\r\n// We need to determine ids of neighbors\r\n$params = $scriptProperties;\r\n$params[\'select\'] = \'id\';\r\n$params[\'limit\'] = 0;\r\nif (!empty($parents) && is_string($parents)) {\r\n    $parents = array_map(\'trim\', explode(\',\', $parents));\r\n    if (!in_array($resource->parent, $parents)) {\r\n        $parents[] = $resource->parent;\r\n    }\r\n    $key = array_search($resource->parent * -1, $parents);\r\n    if ($key !== false) {\r\n        unset($parents[$key]);\r\n    }\r\n    $params[\'parents\'] = implode(\',\', $parents);\r\n    $ids = $pdoFetch->getCollection(modResource::class, [], $params);\r\n    unset($scriptProperties[\'parents\']);\r\n} else {\r\n    $ids = $pdoFetch->getCollection(modResource::class, [\'parent\' => $resource->parent], $params);\r\n}\r\n\r\n$found = false;\r\n$prev = $next = [];\r\nforeach ($ids as $v) {\r\n    if ($v[\'id\'] == $id) {\r\n        $found = true;\r\n        continue;\r\n    } elseif (!$found) {\r\n        $prev[] = $v[\'id\'];\r\n    } else {\r\n        $next[] = $v[\'id\'];\r\n        if (count($next) >= $limit) {\r\n            break;\r\n        }\r\n    }\r\n}\r\n$prev = array_splice($prev, $limit * -1);\r\nif (!empty($loop)) {\r\n    if (!count($prev)) {\r\n        $v = end($ids);\r\n        $prev[] = $v[\'id\'];\r\n    } else {\r\n        if (!count($next)) {\r\n            $v = reset($ids);\r\n            $next[] = $v[\'id\'];\r\n        }\r\n    }\r\n}\r\n$ids = array_merge($prev, $next, [$resource->parent]);\r\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\r\n\r\n// Query conditions\r\n$where = [$alias . \'.id:IN\' => $ids];\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\nif (empty($includeContent) && empty($useWeblinkUrl)) {\r\n    $key = array_search(\'content\', $resourceColumns);\r\n    unset($resourceColumns[$key]);\r\n}\r\n$select = [$alias => implode(\',\', $resourceColumns)];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    //\'groupby\' => $class.\'.id\',\r\n    \'sortby\' => $class . \'.menuindex\',\r\n    \'sortdir\' => \'ASC\',\r\n    \'return\' => \'data\',\r\n    \'limit\' => 0,\r\n    \'totalVar\' => \'pdoneighbors.total\',\r\n];\r\n\r\n// Merge all properties and run!\r\nunset($scriptProperties[\'limit\']);\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n\r\n$rows = $pdoFetch->run();\r\n$prev = array_flip($prev);\r\n$next = array_flip($next);\r\n\r\nif (!isset($return)) {\r\n    $return = \'chunks\';\r\n}\r\n$output = [\'prev\' => [], \'up\' => [], \'next\' => []];\r\nforeach ($rows as $row) {\r\n    if (empty($row[\'menutitle\'])) {\r\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\r\n    }\r\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] === modWebLink::class) {\r\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n            ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n            : $row[\'content\'];\r\n    } else {\r\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n    }\r\n\r\n    if (isset($prev[$row[\'id\']])) {\r\n        if ($return === \'data\') {\r\n            $output[\'prev\'][] = $row;\r\n        } else {\r\n            $output[\'prev\'][] = !empty($tplPrev)\r\n                ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    } elseif (isset($next[$row[\'id\']])) {\r\n        if ($return === \'data\') {\r\n            $output[\'next\'][] = $row;\r\n        } else {\r\n            $output[\'next\'][] = !empty($tplNext)\r\n                ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    } else {\r\n        if ($return === \'data\') {\r\n            $output[\'up\'][] = $row;\r\n        } else {\r\n            $output[\'up\'][] = !empty($tplUp)\r\n                ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    }\r\n}\r\n$pdoFetch->addTime(\'Chunks processed\');\r\n\r\n$log = \'\';\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nforeach ($output as &$row) {\r\n    $row = implode($outputSeparator, $row);\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $output[\'log\'] = $log;\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\r\n        $output = !empty($tplWrapper)\r\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\r\n            : $pdoFetch->getChunk(\'\', $output);\r\n    } else {\r\n        $output = \'\';\r\n    }\r\n    $output .= $log;\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\" class=\"btn btn-light\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:104:\"@INLINE <span class=\"link-up\"><a href=\"[[+link]]\" class=\"btn btn-light\">&uarr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\" class=\"btn btn-light\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <div class=\"neighbors d-flex justify-content-between\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `belarustablesite_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(7, 1, 0, 'pdoPage', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Support\\Paginator;\r\nuse MODX\\Revolution\\modSnippet;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\n\r\n// Default variables\r\nif (empty($pageVarKey)) {\r\n    $pageVarKey = \'page\';\r\n}\r\nif (empty($pageNavVar)) {\r\n    $pageNavVar = \'page.nav\';\r\n}\r\nif (empty($pageCountVar)) {\r\n    $pageCountVar = \'pageCount\';\r\n}\r\nif (empty($totalVar)) {\r\n    $totalVar = \'total\';\r\n}\r\nif (empty($page)) {\r\n    $page = 1;\r\n}\r\nif (empty($pageLimit)) {\r\n    $pageLimit = 5;\r\n} else {\r\n    $pageLimit = (integer)$pageLimit;\r\n}\r\nif (!isset($plPrefix)) {\r\n    $plPrefix = \'\';\r\n}\r\nif (!empty($scriptProperties[\'ajaxMode\'])) {\r\n    $scriptProperties[\'ajax\'] = 1;\r\n}\r\n\r\n// Convert parameters from getPage if exists\r\nif (!empty($namespace)) {\r\n    $plPrefix = $namespace;\r\n}\r\nif (!empty($pageNavTpl)) {\r\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\r\n}\r\nif (!empty($pageNavOuterTpl)) {\r\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\r\n}\r\nif (!empty($pageActiveTpl)) {\r\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\r\n}\r\nif (!empty($pageFirstTpl)) {\r\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\r\n}\r\nif (!empty($pagePrevTpl)) {\r\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\r\n}\r\nif (!empty($pageNextTpl)) {\r\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\r\n}\r\nif (!empty($pageLastTpl)) {\r\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\r\n}\r\nif (!empty($pageSkipTpl)) {\r\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\r\n}\r\nif (!empty($pageNavScheme)) {\r\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\r\n}\r\nif (!empty($cache_expires)) {\r\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\r\n}\r\n//---\r\n$strictMode = !empty($strictMode);\r\n\r\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\r\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\r\n    return;\r\n}\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n/** @var Paginator $paginator */\r\n$paginator = $modx->services->get(Paginator::class);\r\n$paginator->pdoTools->addTime(\'pdoTools loaded\');\r\n\r\n// Script and styles\r\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\r\n    $paginator->loadJsCss();\r\n}\r\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\r\nif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoPage\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\r\n        unset($scriptProperties[\'frontend_js\']);\r\n    }\r\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\r\n        unset($scriptProperties[\'frontend_css\']);\r\n    }\r\n}\r\n\r\n// Page\r\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\r\n    return $paginator->redirectToFirst($isAjax);\r\n} elseif (!empty($_REQUEST[$pageVarKey])) {\r\n    $page = (integer)$_REQUEST[$pageVarKey];\r\n}\r\n$scriptProperties[\'page\'] = $page;\r\n$scriptProperties[\'request\'] = $_REQUEST;\r\n$scriptProperties[\'setTotal\'] = true;\r\n// Limit\r\nif (isset($_REQUEST[\'limit\'])) {\r\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\r\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\r\n    } elseif ($strictMode) {\r\n        unset($_GET[\'limit\']);\r\n\r\n        return $paginator->redirectToFirst($isAjax);\r\n    }\r\n}\r\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\r\n    $scriptProperties[\'limit\'] = $maxLimit;\r\n}\r\n\r\n// Offset\r\n$_offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\r\n    ? (int)$scriptProperties[\'offset\']\r\n    : 0;\r\n$scriptProperties[\'offset\'] = $page > 1\r\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $_offset\r\n    : $_offset;\r\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\r\n    $scriptProperties[\'limit\'] = 10000000;\r\n}\r\n\r\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\r\n$url = $paginator->getBaseUrl();\r\n$output = $pagination = $total = $pageCount = \'\';\r\n\r\n$data = $cache\r\n    ? $paginator->pdoTools->getCache($scriptProperties)\r\n    : [];\r\n\r\nif (empty($data)) {\r\n    $output = $paginator->pdoTools->runSnippet(\'!\' . $scriptProperties[\'element\'], $scriptProperties);\r\n    if ($output === false) {\r\n        return \'\';\r\n    } elseif (!empty($toPlaceholder)) {\r\n        $output = $modx->getPlaceholder($toPlaceholder);\r\n    }\r\n\r\n    // Pagination\r\n    $total = (int)$modx->getPlaceholder($totalVar);\r\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $_offset\r\n        ? ceil(($total - $_offset) / $scriptProperties[\'limit\'])\r\n        : 0;\r\n\r\n    // Redirect to start if somebody specified incorrect page\r\n    if ($page > 1 && $page > $pageCount && $strictMode) {\r\n        return $paginator->redirectToFirst($isAjax);\r\n    }\r\n    if (!empty($pageCount) && $pageCount > 1) {\r\n        $pagination = [\r\n            \'first\' => $page > 1 && !empty($tplPageFirst)\r\n                ? $paginator->makePageLink($url, 1, $tplPageFirst)\r\n                : \'\',\r\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\r\n                ? $paginator->makePageLink($url, $page - 1, $tplPagePrev)\r\n                : \'\',\r\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\r\n                ? $paginator->buildModernPagination($page, $pageCount, $url)\r\n                : $paginator->buildClassicPagination($page, $pageCount, $url),\r\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\r\n                ? $paginator->makePageLink($url, $page + 1, $tplPageNext)\r\n                : \'\',\r\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\r\n                ? $paginator->makePageLink($url, $pageCount, $tplPageLast)\r\n                : \'\',\r\n        ];\r\n\r\n        if (!empty($pageCount)) {\r\n            foreach ([\'first\', \'prev\', \'next\', \'last\'] as $v) {\r\n                $_tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\r\n                if (!empty(${$_tpl}) && empty($pagination[$v])) {\r\n                    $pagination[$v] = $paginator->pdoTools->getChunk(${$_tpl});\r\n                }\r\n            }\r\n        }\r\n    } else {\r\n        $pagination = [\r\n            \'first\' => \'\',\r\n            \'prev\' => \'\',\r\n            \'pages\' => \'\',\r\n            \'next\' => \'\',\r\n            \'last\' => \'\',\r\n        ];\r\n    }\r\n\r\n    $data = [\r\n        \'output\' => $output,\r\n        $pageVarKey => $page,\r\n        $pageCountVar => $pageCount,\r\n        $pageNavVar => !empty($tplPageWrapper)\r\n            ? $paginator->pdoTools->getChunk($tplPageWrapper, $pagination)\r\n            : $paginator->pdoTools->parseChunk(\'\', $pagination),\r\n        $totalVar => $total,\r\n    ];\r\n    if ($cache) {\r\n        $paginator->pdoTools->setCache($data, $scriptProperties);\r\n    }\r\n}\r\n/** @var bool $showLog */\r\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\r\n    $modx->setPlaceholder(\'pdoPageLog\', print_r($paginator->pdoTools->getTime(), true));\r\n}\r\n\r\nif ($isAjax) {\r\n    if ($pageNavVar !== \'pagination\') {\r\n        $data[\'pagination\'] = $data[$pageNavVar];\r\n        unset($data[$pageNavVar]);\r\n    }\r\n    if ($pageCountVar !== \'pages\') {\r\n        $data[\'pages\'] = (int)$data[$pageCountVar];\r\n        unset($data[$pageCountVar]);\r\n    }\r\n    if ($pageVarKey !== \'page\') {\r\n        $data[\'page\'] = (int)$data[$pageVarKey];\r\n        unset($data[$pageVarKey]);\r\n    }\r\n    if ($totalVar !== \'total\') {\r\n        $data[\'total\'] = (int)$data[$totalVar];\r\n        unset($data[$totalVar]);\r\n    }\r\n\r\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\r\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', [], $maxIterations);\r\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', [], $maxIterations);\r\n\r\n    @session_write_close();\r\n    exit(json_encode($data));\r\n}\r\n\r\nif (!empty($setMeta)) {\r\n    $charset = $modx->getOption(\'modx_charset\', null, \'UTF-8\');\r\n    $canurl = $paginator->pdoTools->config(\'scheme\') !== \'full\'\r\n        ? $paginator->getCanonicalUrl($url)\r\n        : $url;\r\n    $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . htmlentities($canurl, ENT_QUOTES, $charset) . \'\"/>\');\r\n    if ($data[$pageVarKey] > 1) {\r\n        $prevUrl = $paginator->makePageLink($canurl, $data[$pageVarKey] - 1);\r\n        $modx->regClientStartupHTMLBlock(\r\n            \'<link rel=\"prev\" href=\"\' . htmlentities($prevUrl, ENT_QUOTES, $charset) . \'\"/>\'\r\n        );\r\n    }\r\n    if ($data[$pageVarKey] < $data[$pageCountVar]) {\r\n        $nextUrl = $paginator->makePageLink($canurl, $data[$pageVarKey] + 1);\r\n        $modx->regClientStartupHTMLBlock(\r\n            \'<link rel=\"next\" href=\"\' . htmlentities($nextUrl, ENT_QUOTES, $charset) . \'\"/>\'\r\n        );\r\n    }\r\n}\r\n\r\n$modx->setPlaceholders($data, $plPrefix);\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\r\n} else {\r\n    return $data[\'output\'];\r\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:88:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item active\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:94:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:78:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">...</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">[[%pdopage_first]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:92:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">[[%pdopage_last]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:82:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">&laquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\" >&raquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-primary btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(8, 1, 0, 'pdoMenu', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse ModxPro\\PdoTools\\Support\\MenuBuilder;\r\nuse MODX\\Revolution\\modResource;\r\n\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n/** @var array $scriptProperties */\r\n\r\n// Convert parameters from Wayfinder if exists\r\nif (isset($startId)) {\r\n    $scriptProperties[\'parents\'] = $startId;\r\n}\r\nif (!empty($includeDocs)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($excludeDocs)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\r\n    $scriptProperties[\'showUnpublished\'] = 1;\r\n}\r\n\r\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\r\nif (!empty($contexts)) {\r\n    $scriptProperties[\'context\'] = $contexts;\r\n}\r\nif (empty($scriptProperties[\'context\'])) {\r\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\r\n}\r\n\r\n// Save original parents specified by user\r\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\r\n\r\nif ($scriptProperties[\'parents\'] === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\r\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\r\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\r\n        $parents = [];\r\n        if (!empty($scriptProperties[\'showDeleted\'])) {\r\n            /** @var Fetch $pdoFetch */\r\n            $pdoFetch = $modx->services->get(\'pdofetch\');\r\n            foreach ($contexts as $ctx) {\r\n                $parents = array_merge($parents, $pdoFetch->getChildIds(modResource::class, 0, $scriptProperties[\'depth\'], [\'context\' => $ctx]));\r\n            }\r\n        } else {\r\n            foreach ($contexts as $ctx) {\r\n                $parents = array_merge($parents, $modx->getChildIds(0, $scriptProperties[\'depth\'], [\'context\' => $ctx]));\r\n            }\r\n        }\r\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\r\n        $scriptProperties[\'depth\'] = 0;\r\n    }\r\n    $scriptProperties[\'includeParents\'] = 1;\r\n    $scriptProperties[\'displayStart\'] = 0;\r\n} else {\r\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\r\n    $parents_in = $parents_out = [];\r\n    foreach ($parents as $v) {\r\n        if (!is_numeric($v)) {\r\n            continue;\r\n        }\r\n        if ($v[0] == \'-\') {\r\n            $parents_out[] = abs($v);\r\n        } else {\r\n            $parents_in[] = abs($v);\r\n        }\r\n    }\r\n\r\n    if (empty($parents_in)) {\r\n        $scriptProperties[\'includeParents\'] = 1;\r\n        $scriptProperties[\'displayStart\'] = 0;\r\n    }\r\n}\r\n\r\nif (!empty($displayStart)) {\r\n    $scriptProperties[\'includeParents\'] = 1;\r\n}\r\nif (!empty($ph)) {\r\n    $toPlaceholder = $ph;\r\n}\r\nif (!empty($sortOrder)) {\r\n    $scriptProperties[\'sortdir\'] = $sortOrder;\r\n}\r\nif (!empty($sortBy)) {\r\n    $scriptProperties[\'sortby\'] = $sortBy;\r\n}\r\nif (!empty($permissions)) {\r\n    $scriptProperties[\'checkPermissions\'] = $permissions;\r\n}\r\nif (!empty($cacheResults)) {\r\n    $scriptProperties[\'cache\'] = $cacheResults;\r\n}\r\nif (!empty($ignoreHidden)) {\r\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\r\n}\r\n\r\n$wfTemplates = [\r\n    \'outerTpl\' => \'tplOuter\',\r\n    \'rowTpl\' => \'tpl\',\r\n    \'parentRowTpl\' => \'tplParentRow\',\r\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\r\n    \'hereTpl\' => \'tplHere\',\r\n    \'innerTpl\' => \'tplInner\',\r\n    \'innerRowTpl\' => \'tplInnerRow\',\r\n    \'innerHereTpl\' => \'tplInnerHere\',\r\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\r\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\r\n    \'startItemTpl\' => \'tplStart\',\r\n];\r\nforeach ($wfTemplates as $k => $v) {\r\n    if (isset(${$k})) {\r\n        $scriptProperties[$v] = ${$k};\r\n    }\r\n}\r\n//---\r\n\r\n/** @var MenuBuilder $menuBuilder */\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$menuBuilder = $modx->services->get(MenuBuilder::class);\r\n$menuBuilder->pdoTools->addTime(\'MenuBuilder loaded\');\r\n\r\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\r\nif (empty($scriptProperties[\'cache_key\'])) {\r\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\r\n}\r\n\r\n$output = \'\';\r\n$tree = [];\r\nif ($cache) {\r\n    $tree = $menuBuilder->pdoTools->getCache($scriptProperties);\r\n}\r\nif (empty($tree)) {\r\n    $data = $menuBuilder->pdoTools->run();\r\n    $data = $menuBuilder->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\r\n    $tree = [];\r\n    foreach ($data as $k => $v) {\r\n        if (empty($v[\'id\'])) {\r\n            if (!in_array($k, $specified_parents) && !$menuBuilder->checkResource($k)) {\r\n                continue;\r\n            } else {\r\n                $tree = array_merge($tree, $v[\'children\']);\r\n            }\r\n        } else {\r\n            $tree[$k] = $v;\r\n        }\r\n    }\r\n    if ($cache) {\r\n        $menuBuilder->pdoTools->setCache($tree, $scriptProperties);\r\n    }\r\n}\r\nif (isset($return) && $return === \'data\') {\r\n    return $tree;\r\n}\r\nif (!empty($tree)) {\r\n    $output = $menuBuilder->templateTree($tree);\r\n}\r\n\r\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n    $modx->setPlaceholder(\'pdoMenuLog\', print_r($menuBuilder->pdoTools->getTime(), true));\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(9, 1, 0, 'pdoTitle', '', 0, 1, 0, 'use ModxPro\\PdoTools\\CoreTools;\r\nuse MODX\\Revolution\\modResource;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nif (empty($outputSeparator)) {\r\n    $outputSeparator = \' / \';\r\n}\r\nif (empty($titleField)) {\r\n    $titleField = \'longtitle\';\r\n}\r\nif (!isset($pageVarKey)) {\r\n    $pageVarKey = \'page\';\r\n}\r\nif (!isset($queryVarKey)) {\r\n    $queryVarKey = \'query\';\r\n}\r\nif (empty($tplPages)) {\r\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\r\n}\r\nif (empty($tplSearch)) {\r\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\r\n}\r\nif (empty($minQuery)) {\r\n    $minQuery = 3;\r\n}\r\nif (empty($id)) {\r\n    $id = $modx->resource->id;\r\n}\r\nif (empty($cacheKey)) {\r\n    $cacheKey = \'title_crumbs\';\r\n}\r\nif (!isset($cacheTime)) {\r\n    $cacheTime = 0;\r\n}\r\n/** @var CoreTools $pdoTools */\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoTools = $modx->services->get(CoreTools::class);\r\n$modx->lexicon->load(\'pdotools:pdopage\');\r\n\r\n/** @var modResource $resource */\r\n$resource = ($id == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject(\'modResource\', $id);\r\nif (!$resource) {\r\n    return \'\';\r\n}\r\n\r\n$title = [];\r\n$pagetitle = trim($resource->get($titleField));\r\nif (empty($pagetitle)) {\r\n    $pagetitle = $resource->get(\'pagetitle\');\r\n}\r\n\r\n// Add search request if exists\r\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\r\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, [\r\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\r\n        ]);\r\n}\r\n$title[] = $pagetitle;\r\n\r\n// Add pagination if exists\r\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\r\n    $title[] = $pdoTools->getChunk($tplPages, [\r\n        \'page\' => (int)$_GET[$pageVarKey],\r\n    ]);\r\n}\r\n\r\n// Add parents\r\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\r\n$cacheOptions = [\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\')];\r\n$crumbs = \'\';\r\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\r\n    $crumbs = $pdoTools->runSnippet(\'!pdoCrumbs\', array_merge(\r\n        [\r\n            \'to\' => $resource->id,\r\n            \'outputSeparator\' => $outputSeparator,\r\n            \'showHome\' => 0,\r\n            \'showAtHome\' => 0,\r\n            \'showCurrent\' => 0,\r\n            \'direction\' => \'rtl\',\r\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\r\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\r\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\r\n            \'tplMax\' => \'\',\r\n            \'tplHome\' => \'\',\r\n        ], $scriptProperties\r\n    ));\r\n}\r\nif (!empty($crumbs)) {\r\n    if (!empty($cache)) {\r\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\r\n    }\r\n    $title[] = $crumbs;\r\n}\r\n\r\nif (!empty($registerJs)) {\r\n    $config = [\r\n        \'separator\' => $outputSeparator,\r\n        \'tpl\' => str_replace([\'[[+\', \']]\'], [\'{\', \'}\'], $pdoTools->getChunk($tplPages)),\r\n    ];\r\n    /** @noinspection Annotator */\r\n    $modx->regClientStartupScript(\'<script>pdoTitle = \' . json_encode($config) . \';</script>\',\r\n        true);\r\n}\r\n\r\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `belarustablesite_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(10, 1, 0, 'pdoArchive', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modSnippet;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var MODX\\Revolution\\modX $modx */\r\n/** @var array $scriptProperties */\r\n\r\n$modx->lexicon->load(\'pdotools:pdoarchive\');\r\n\r\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\r\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\r\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\r\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\r\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\r\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\r\n\r\n// Adding extra parameters into special place so we can put them in a results\r\n/** @var modSnippet $snippet */\r\n$additionalPlaceholders = $properties = [];\r\nif (isset($this) && $this instanceof modSnippet) {\r\n    $properties = $this->get(\'properties\');\r\n} elseif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoResources\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n}\r\nif (!empty($properties)) {\r\n    foreach ($scriptProperties as $k => $v) {\r\n        if (!isset($properties[$k])) {\r\n            $additionalPlaceholders[$k] = $v;\r\n        }\r\n    }\r\n}\r\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\r\nif (isset($parents) && $parents === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n}\r\n$scriptProperties[\'return\'] = \'data\';\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n$rows = $pdoFetch->run();\r\n\r\n// Process rows\r\n$tree = [];\r\nforeach ($rows as $row) {\r\n    $tmp = $row[$dateField];\r\n    if (!is_numeric($tmp)) {\r\n        $tmp = strtotime($tmp);\r\n    }\r\n    $year = date(\'Y\', $tmp);\r\n    $month = date(\'m\', $tmp);\r\n    $day = date(\'d\', $tmp);\r\n    $tree[$year][$month][$day][] = $row;\r\n}\r\n\r\n$output = \'\';\r\nforeach ($tree as $year => $months) {\r\n    $rows_year = \'\';\r\n    $count_year = 0;\r\n\r\n    foreach ($months as $month => $days) {\r\n        $rows_month = \'\';\r\n        $count_month = 0;\r\n\r\n        foreach ($days as $day => $resources) {\r\n            $rows_day = [];\r\n            $count_day = 0;\r\n            $idx = 1;\r\n\r\n            foreach ($resources as $resource) {\r\n                $resource[\'day\'] = $day;\r\n                $resource[\'month\'] = $month;\r\n                $resource[\'year\'] = $year;\r\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\r\n                $resource[\'idx\'] = $idx++;\r\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\r\n                    ? $resource[\'menutitle\']\r\n                    : $resource[\'pagetitle\'];\r\n                // Add placeholder [[+link]] if specified\r\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\r\n                    if (!isset($resource[\'context_key\'])) {\r\n                        $resource[\'context_key\'] = \'\';\r\n                    }\r\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == modWebLink::class)) {\r\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\r\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\r\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\r\n                    } else {\r\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\r\n                    }\r\n                } else {\r\n                    $resource[\'link\'] = \'\';\r\n                }\r\n                $tpl = $pdoFetch->defineChunk($resource);\r\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\r\n                $count_year++;\r\n                $count_month++;\r\n                $count_day++;\r\n            }\r\n\r\n            $rows_month .= !empty($tplDay)\r\n                ? $pdoFetch->getChunk($tplDay, [\r\n                    \'day\' => $day,\r\n                    \'month\' => $month,\r\n                    \'year\' => $year,\r\n                    \'count\' => $count_day,\r\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\r\n                ], $pdoFetch->config(\'fastMode\'))\r\n                : implode($outputSeparator, $rows_day);\r\n        }\r\n\r\n        $rows_year .= !empty($tplMonth)\r\n            ? $pdoFetch->getChunk($tplMonth, [\r\n                \'month\' => $month,\r\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\r\n                \'year\' => $year,\r\n                \'count\' => $count_month,\r\n                \'wrapper\' => $rows_month,\r\n            ], $pdoFetch->config(\'fastMode\'))\r\n            : $rows_month;\r\n    }\r\n\r\n    $output .= !empty($tplYear)\r\n        ? $pdoFetch->getChunk($tplYear, [\r\n            \'year\' => $year,\r\n            \'count\' => $count_year,\r\n            \'wrapper\' => $rows_year,\r\n        ], $pdoFetch->config(\'fastMode\'))\r\n        : $rows_year;\r\n}\r\n$pdoFetch->addTime(\'Rows processed\');\r\n\r\n// Return output\r\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n    $output = $pdoFetch->getChunk(\r\n        $tplWrapper,\r\n        array_merge($additionalPlaceholders, [\'output\' => $output]),\r\n        $pdoFetch->config(\'fastMode\')\r\n    );\r\n    $pdoFetch->addTime(\'Rows wrapped\');\r\n}\r\n\r\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\r\n    $modx->setPlaceholder(\'pdoArchiveLog\', print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_templates`
--

CREATE TABLE `belarustablesite_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_unicode_ci,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `preview_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_templates`
--

INSERT INTO `belarustablesite_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `preview_file`) VALUES
(1, 0, 0, 'Начальный шаблон', '', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\">\n    <meta charset=\"[[++modx_charset]]\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n\n    <style>\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n        a {\n            color: #0f7096;\n        }\n        ul {\n            padding-left: 2em;\n        }\n        img {\n            max-width: 100%;\n        }\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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);\n        }\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,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);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n    </style>\n</head>\n<body>\n<a href=\"https://modx.com\" title=\"MODX\" class=\"logo\" target=\"_blank\">MODX</a>\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/3.x/en/index\" target=\"_blank\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/3.x/en/getting-started/friendly-urls\" target=\"_blank\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\" target=\"_blank\">Package&nbsp;Management</a></li>\n            <li><a href=\"https://modx.com/blog/\" target=\"_blank\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\" target=\"_blank\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\" target=\"_blank\">MODX.today</a></li>\n        </ul>\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"https://community.modx.com\" target=\"_blank\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\" target=\"_blank\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\" target=\"_blank\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\" target=\"_blank\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"https://modx.com/professionals/\" target=\"_blank\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"https://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"https://modx.com\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, '', ''),
(2, 1, 0, 'Памятниики ВОВ', '', 0, 0, '', 0, '[[$HEAD]]\n   <main data-barba=\"container\">\n      <div class=\"carusel-wrapper\">\n        <div class=\"slider-container\">\n          <div class=\"carousel\">\n              \n              [[pdoResources?\n                &parents=`1`\n                &depth=`0`\n                &tpl=`tpl_vov`\n                &includeTVs=`img_start, music_play`\n                ]]\n              \n            </div>\n            <div class=\"conteiner-btn\">\n              <button class=\"btn\" id=\"btn-left\">&#8592;</button>\n              <button class=\"btn\" id=\"btn-right\">&#8594;</button>\n            </div>\n          </div>\n        </div>\n    </main>\n[[$songPlay]]\n[[$FOOTER]]', 0, 'a:0:{}', 0, '', ''),
(3, 1, 0, 'Замки', '', 0, 0, '', 0, '[[$HEAD]]\n\n <main data-barba=\"container\">\n        <div class=\"carusel-wrapper\">\n          <div class=\"slider-container\">\n            <div class=\"carousel\">\n                \n                [[pdoResources?\n                &parents=`2`\n                &depth=`0`\n                &tpl=`tpl_img_text`\n                &includeTVs=`img_start, img_sec`\n                ]]\n                \n          </div>\n          <div class=\"conteiner-btn\">\n            <button class=\"btn\" id=\"btn-left\">&#8592;</button>\n            <button class=\"btn\" id=\"btn-right\">&#8594;</button>\n          </div>\n        </div>\n      </div>\n</main>\n    [[$FOOTER]]', 0, 'a:0:{}', 0, '', ''),
(4, 1, 0, 'Окно просмотра', '', 0, 0, '', 0, '[[$HEAD]]\n\n <main>\n      <div class=\"content_elements\">\n              <div class=\"container modal\">\n         \n            [[pdoNeighbors?\n                &tplWrapper=`@INLINE <div class=\"nav\">[[+prev]][[+next]]</div>`\n                &tplPrev=`@INLINE <a class=\"prev btn slider-prev btn-modal\" href=\"/[[+uri]]\" title=\"[[+pagetitle]]\">&larr;</a>`\n                &tplNext=`@INLINE <a class=\"nexr btn slider-next btn-modal\" href=\"/[[+uri]]\" title=\"[[+pagetitle]]\">&rarr;</a>`\n            ]] \n\n          <div class=\"modal__item modal-img\">\n             <img class=\"content__item-img br_kr\" src=\"[[*img_start]]\" alt=\"[[*pagetitle]]\">\n            <p class=\"content__item_text\">[[*pagetitle]]</p>\n            <p class=\"content__item_subtext\"><a href=\"#\" onclick=\"history.back()\">&larr; Назад </a></p>\n          </div>\n          <div class=\"content__item-text\">\n            <p>\n                [[*content]]\n            </p>\n          </div>\n        </div>\n      </div>\n      \n    </main>\n    <script src=\"./assets/dist/js/index.min.js\"></script>\n    <script>\n    if ( window.outerWidth > 1200) {\n        startAni()\n        modalAni()\n    }\n    </script>\n    [[$FOOTER]]', 0, 'a:0:{}', 0, '', '');
INSERT INTO `belarustablesite_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `preview_file`) VALUES
(5, 1, 0, 'Парки и заповедники', '', 0, 0, '', 0, '[[$HEAD]]\n\n   <main data-barba=\"container\">\n      <div class=\"carusel-wrapper\">\n        <div class=\"slider-container\">\n          <div class=\"carousel\">\n              \n              [[pdoResources?\n                &parents=`22`\n                &depth=`0`\n                &tpl=`tpl_img_ear`\n                &includeTVs=`img_start, img_sec, music_play`\n                ]]\n              \n            </div>\n            <div class=\"conteiner-btn\">\n              <button class=\"btn\" id=\"btn-left\">&#8592;</button>\n              <button class=\"btn\" id=\"btn-right\">&#8594;</button>\n            </div>\n          </div>\n        </div>\n      \n</main>\n[[$songPlay]]\n[[$FOOTER]]', 0, 'a:0:{}', 0, '', ''),
(6, 1, 0, 'Дворцы', '', 0, 0, '', 0, '[[$HEAD]]\n\n <main data-barba=\"container\">\n        <div class=\"carusel-wrapper\">\n          <div class=\"slider-container\">\n            <div class=\"carousel\">\n                \n                [[pdoResources?\n                &parents=`31`\n                &depth=`0`\n                &tpl=`tpl_img_text`\n                &includeTVs=`img_start, img_sec`\n                ]]\n                \n          </div>\n          <div class=\"conteiner-btn\">\n            <button class=\"btn\" id=\"btn-left\">&#8592;</button>\n            <button class=\"btn\" id=\"btn-right\">&#8594;</button>\n          </div>\n        </div>\n      </div>\n    [[$FOOTER]]', 0, 'a:0:{}', 0, '', ''),
(7, 1, 0, 'Улицы', '', 0, 0, '', 0, '[[$HEAD]]\n\n   <main data-barba=\"container\">\n      <div class=\"carusel-wrapper\">\n        <div class=\"slider-container\">\n          <div class=\"carousel\">\n              \n              [[pdoResources?\n                &parents=`40`\n                &depth=`0`\n                &tpl=`tpl_img`\n                &includeTVs=`img_start`\n                ]]\n              \n            </div>\n            <div class=\"conteiner-btn\">\n              <button class=\"btn\" id=\"btn-left\">&#8592;</button>\n              <button class=\"btn\" id=\"btn-right\">&#8594;</button>\n            </div>\n          </div>\n        </div>\n      \n</main>\n    [[$FOOTER]]', 0, 'a:0:{}', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_tmplvars`
--

CREATE TABLE `belarustablesite_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text COLLATE utf8mb4_unicode_ci,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `input_properties` text COLLATE utf8mb4_unicode_ci,
  `output_properties` text COLLATE utf8mb4_unicode_ci,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_tmplvars`
--

INSERT INTO `belarustablesite_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'image', 'img_start', '', 'Основная картинка ', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(2, 1, 0, 'image', 'img_sec', '', 'Картинка на которую будет замена', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(3, 1, 0, 'file', 'music_play', '', 'музыка для картинки', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_tmplvar_access`
--

CREATE TABLE `belarustablesite_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_tmplvar_contentvalues`
--

CREATE TABLE `belarustablesite_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_tmplvar_contentvalues`
--

INSERT INTO `belarustablesite_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 6, 'assets/dist/img/vov/brest_kr.jpg'),
(2, 1, 7, 'assets/dist/img/vov/monyment_pobedi.jpg'),
(3, 1, 8, 'assets/dist/img/vov/minsk_gg.png'),
(4, 1, 9, 'assets/dist/img/vov/kyrgan_slavi.png'),
(5, 1, 10, 'assets/dist/img/vov/hatin.png'),
(6, 1, 11, 'assets/dist/img/vov/linia_stalina.png'),
(7, 1, 12, 'assets/dist/img/vov/daliva.png'),
(8, 1, 13, 'assets/dist/img/vov/byiniskoe_pole.png'),
(9, 1, 14, 'assets/dist/img/castle/nesveski.jpg'),
(10, 2, 14, 'src/img/castle/nesvecki_2.png'),
(11, 1, 15, 'assets/dist/img/castle/lybchinski.png'),
(12, 2, 15, 'assets/dist/img/castle/lybchenski_2.png'),
(13, 1, 16, 'assets/dist/img/castle/mirski.jpg'),
(14, 2, 16, 'assets/dist/img/castle/mirski_2.png'),
(15, 1, 17, 'assets/dist/img/castle/lidski.png'),
(16, 2, 17, 'assets/dist/img/castle/lidski_2.png'),
(17, 1, 18, 'assets/dist/img/castle/kosov.png'),
(18, 2, 18, 'assets/dist/img/castle/kosov_2.png'),
(19, 1, 19, 'assets/dist/img/castle/grod.png'),
(20, 2, 19, 'assets/dist/img/castle/grod_2.png'),
(21, 1, 20, 'assets/dist/img/castle/novogrydski.png'),
(22, 2, 20, 'assets/dist/img/castle/novogrydski_2.png'),
(23, 1, 21, 'assets/dist/img/castle/crevski.png'),
(24, 2, 21, 'assets/dist/img/castle/crevski_2.png'),
(25, 1, 23, 'assets/dist/img/parks/berezenski.png'),
(26, 2, 23, 'assets/dist/img/parks/berezenski_2.png'),
(27, 1, 24, 'assets/dist/img/parks/poleski.png'),
(28, 2, 24, 'assets/dist/img/parks/poleski_2.png'),
(29, 1, 25, 'assets/dist/img/parks/bel_pysh.png'),
(30, 2, 25, 'assets/dist/img/parks/bel_pysh_2.png'),
(31, 1, 26, 'assets/dist/img/parks/pripitski.png'),
(32, 2, 26, 'assets/dist/img/parks/pripitski_2.png'),
(33, 1, 27, 'assets/dist/img/parks/braslov.png'),
(34, 2, 27, 'assets/dist/img/parks/braslov_2.png'),
(35, 1, 28, 'assets/dist/img/parks/naroch.png'),
(36, 2, 28, 'assets/dist/img/parks/naroch_2.png'),
(37, 1, 29, 'assets/dist/img/parks/nalibov.png'),
(38, 2, 29, 'assets/dist/img/parks/nalibov_2.png'),
(39, 1, 30, 'assets/dist/img/parks/zakazni-el.png'),
(40, 2, 30, 'assets/dist/img/parks/zakazni-el_2.png'),
(41, 1, 32, 'assets/dist/img/palaces/rymin.png'),
(42, 2, 32, 'assets/dist/img/palaces/rymin_2.png'),
(43, 1, 33, 'assets/dist/img/palaces/halecki.png'),
(44, 2, 33, 'assets/dist/img/palaces/halecki_2.png'),
(45, 1, 34, 'assets/dist/img/palaces/oginskogo.png'),
(46, 2, 34, 'assets/dist/img/palaces/oginskogo_2.png'),
(47, 1, 35, 'assets/dist/img/palaces/krichevski.png'),
(48, 2, 35, 'assets/dist/img/palaces/krichevski_2.png'),
(49, 1, 36, 'assets/dist/img/palaces/bytimovich.png'),
(50, 2, 36, 'assets/dist/img/palaces/bytimovich_2.png'),
(51, 1, 37, 'assets/dist/img/palaces/rdytlovski.png'),
(52, 2, 37, 'assets/dist/img/palaces/rdytlovski_2.png'),
(53, 1, 38, 'assets/dist/img/palaces/ymestovski.png'),
(54, 2, 38, 'assets/dist/img/palaces/ymestovski_2.png'),
(55, 1, 39, 'assets/dist/img/palaces/valovichi.png'),
(56, 2, 39, 'assets/dist/img/palaces/valovichi_2.png'),
(57, 1, 41, 'assets/dist/img/street/minsk_zb.png'),
(58, 1, 42, 'assets/dist/img/street/minsk_art.png'),
(59, 1, 43, 'assets/dist/img/street/brest_savok.png'),
(60, 1, 44, 'assets/dist/img/street/grodno_savok.png'),
(61, 1, 45, 'assets/dist/img/street/vitebsk_syvorova.png'),
(62, 1, 46, 'assets/dist/img/street/mogilov_lenin.png'),
(63, 1, 47, 'assets/dist/img/street/gomel_sovok.png'),
(64, 1, 48, 'assets/dist/img/street/grodno_most.png'),
(65, 3, 6, 'assets/dist/music/boi.mp3'),
(66, 3, 7, 'assets/dist/music/boi.mp3'),
(67, 3, 8, 'assets/dist/music/boi.mp3'),
(68, 3, 9, 'assets/dist/music/boi.mp3'),
(69, 3, 11, 'assets/dist/music/boi.mp3'),
(70, 3, 13, 'assets/dist/music/boi.mp3'),
(71, 3, 10, 'assets/dist/music/ogn.mp3'),
(72, 3, 12, 'assets/dist/music/ogn.mp3'),
(73, 3, 27, 'assets/dist/music/river.mp3'),
(74, 3, 28, 'assets/dist/music/lebed.mp3'),
(75, 3, 29, 'assets/dist/music/lesleto.mp3'),
(76, 3, 30, 'assets/dist/music/ruchey.mp3'),
(77, 3, 25, 'assets/dist/music/lesleto.mp3'),
(78, 3, 24, 'assets/dist/music/river.mp3'),
(79, 3, 23, 'assets/dist/music/river.mp3'),
(80, 3, 26, 'assets/dist/music/ruchey.mp3');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesite_tmplvar_templates`
--

CREATE TABLE `belarustablesite_tmplvar_templates` (
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `templateid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesite_tmplvar_templates`
--

INSERT INTO `belarustablesite_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(2, 3, 0),
(2, 5, 0),
(2, 6, 0),
(3, 2, 0),
(3, 4, 0),
(3, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesystem_eventnames`
--

CREATE TABLE `belarustablesystem_eventnames` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesystem_eventnames`
--

INSERT INTO `belarustablesystem_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustablesystem_settings`
--

CREATE TABLE `belarustablesystem_settings` (
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xtype` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustablesystem_settings`
--

INSERT INTO `belarustablesystem_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.font_size', '15px', 'textfield', 'ace', 'general', '2022-09-02 19:52:56'),
('ace.grow', '', 'textfield', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('ace.html_elements_mime', '', 'textfield', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.theme', 'monokai', 'textfield', 'ace', 'general', '2022-09-02 19:59:46'),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'numberfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'sibling', 'textfield', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'numberfield', 'core', 'authentication', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_db_session', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'numberfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_format', '0', 'numberfield', 'core', 'caching', NULL),
('cache_handler', 'xPDO\\Cache\\xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('ckeditor.autocorrect_dash', '—', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.autocorrect_double_quotes', '«»', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.autocorrect_single_quotes', '„“', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.extra_plugins', '', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.format_tags', 'p;h1;h2;h3;h4;h5;h6;pre;address;div', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.native_spellchecker', '1', 'combo-boolean', 'ckeditor', 'general', NULL),
('ckeditor.object_resizing', '0', 'combo-boolean', 'ckeditor', 'general', NULL),
('ckeditor.remove_plugins', '', 'textfield', 'ckeditor', 'general', '2022-09-02 20:00:22'),
('ckeditor.resource_editor_height', '600', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.skin', 'moono-lisa', 'textfield', 'ckeditor', 'general', NULL),
('ckeditor.styles_set', 'default', 'textarea', 'ckeditor', 'general', NULL),
('ckeditor.toolbar', '', 'textarea', 'ckeditor', 'general', NULL),
('ckeditor.toolbar_groups', '[{\"name\":\"document\",\"groups\":[\"mode\",\"document\",\"doctools\"]},{\"name\":\"clipboard\",\"groups\":[\"clipboard\",\"undo\"]},{\"name\":\"editing\",\"groups\":[\"find\",\"selection\",\"spellchecker\"]},{\"name\":\"links\"},{\"name\":\"insert\"},{\"name\":\"forms\"},\"/\",{\"name\":\"basicstyles\",\"groups\":[\"basicstyles\",\"cleanup\"]},{\"name\":\"paragraph\",\"groups\":[\"list\",\"indent\",\"blocks\",\"align\",\"bidi\"]},{\"name\":\"styles\"},{\"name\":\"colors\"},{\"name\":\"tools\"},{\"name\":\"others\"},{\"name\":\"about\"}]', 'textarea', 'ckeditor', 'general', NULL),
('ckeditor.ui_color', '#DDDDDD', 'textfield', 'ckeditor', 'general', NULL),
('clear_cache_refresh_trees', '', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '', 'textfield', 'core', 'furls', '2022-09-02 19:45:50'),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2022-09-02 19:40:52'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'numberfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('emailsender', 'belarus@mail.ru', 'textfield', 'core', 'authentication', '2022-09-02 19:40:52'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '', 'combo-boolean', 'core', 'manager', NULL),
('enable_template_picker_in_tree', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'numberfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'numberfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'numberfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2022-09-02 19:46:32'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2022-09-02 19:51:46'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2022-09-02 19:51:46'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2022-09-02 19:45:57'),
('friendly_urls_strict', '', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'numberfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'numberfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('login_background_image', '', 'textfield', 'core', 'authentication', NULL),
('login_help_button', '', 'combo-boolean', 'core', 'authentication', NULL),
('login_logo', '', 'textfield', 'core', 'authentication', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_secure', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', 'favicon.ico', 'textfield', 'core', 'manager', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_logo', '', 'textfield', 'core', 'manager', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'H:i', 'textfield', 'core', 'manager', NULL),
('manager_tooltip_delay', '2300', 'numberfield', 'core', 'manager', NULL),
('manager_tooltip_enable', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'numberfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'numberfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'numberfield', 'core', 'authentication', NULL),
('passwordless_activated', '', 'combo-boolean', 'core', 'authentication', NULL),
('passwordless_expiration', '3600', 'textfield', 'core', 'authentication', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_filter_path', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'MODX\\Revolution\\modAccessContext,MODX\\Revolution\\modAccessResourceGroup,MODX\\Revolution\\modAccessCategory,MODX\\Revolution\\Sources\\modAccessMediaSource,MODX\\Revolution\\modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'numberfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '1', 'combo-boolean', 'core', 'site', '2022-09-07 18:35:32'),
('quick_search_in_content', '1', 'combo-boolean', 'core', 'manager', NULL),
('quick_search_result_max', '10', 'numberfield', 'core', 'manager', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'alias', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2022-09-02 19:40:52'),
('server_offset_time', '0', 'numberfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'numberfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'MODX\\Revolution\\modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '3.0.1-pl', 'textfield', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('site_name', 'Belarus', 'textfield', 'core', 'site', '2022-09-02 19:48:04'),
('site_start', '1', 'numberfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', '[[%site_unavailable_message]]', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'numberfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '', 'combo-boolean', 'core', 'manager', NULL),
('unauthorized_page', '1', 'numberfield', 'core', 'site', NULL),
('upload_file_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '52428800', 'numberfield', 'core', 'file', '2022-09-02 19:40:52'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('upload_translit', '1', 'combo-boolean', 'core', 'file', NULL),
('use_alias_path', '', 'combo-boolean', 'core', 'furls', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2022-09-02 19:40:52'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2022-09-02 19:41:47'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.30.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', 'CKEditor', 'modx-combo-rte', 'core', 'editor', '2022-09-02 19:51:33'),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2022-09-02 19:51:19'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabletransport_packages`
--

CREATE TABLE `belarustabletransport_packages` (
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext COLLATE utf8mb4_unicode_ci,
  `manifest` text COLLATE utf8mb4_unicode_ci,
  `attributes` mediumtext COLLATE utf8mb4_unicode_ci,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabletransport_packages`
--

INSERT INTO `belarustabletransport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ace-1.9.3-pl', '2022-09-02 22:50:17', '2022-09-02 19:51:19', '2022-09-02 22:51:19', 0, 1, 1, 0, 'ace-1.9.3-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:271:\"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.\";s:9:\"changelog\";s:4624:\"Changelog for Ace integration into MODx Revolution.\n\nAce 1.9.3 [15.05.2022]\n====================================\n- Updated: Move settings into an own file [#12]\n- Fixed: Ace TV input [#11]\n- Fixed: Prevent PHP warning: Undefined variable $field [#10]\n\nAce 1.9.2\n====================================\n- Updated: Corrected search form [#8]\n- Added: TV input Ace field [#9]\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"signature\";s:12:\"ace-1.9.3-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:40:\"/workspace/package/install/ace-1.9.3-pl/\";s:14:\"package_action\";i:0;}', 'Ace', 'a:38:{s:2:\"id\";s:24:\"628075bba8801031285d3f42\";s:7:\"package\";s:24:\"4f6e2782f245544fe8000014\";s:12:\"display_name\";s:12:\"ace-1.9.3-pl\";s:4:\"name\";s:3:\"Ace\";s:7:\"version\";s:5:\"1.9.3\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"9\";s:13:\"version_patch\";s:1:\"3\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"ibochkarev\";s:11:\"description\";s:376:\"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>\";s:12:\"instructions\";s:341:\"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to \"ace\").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b> (global usage), or <i>richtext</i> setting of certain resource to <b>false</b> (specific usage).</p><p></p>\";s:9:\"changelog\";s:4571:\"Ace 1.9.3 [15.05.2022]\n====================================\n- Updated: Move settings into an own file [#12]\n- Fixed: Ace TV input [#11]\n- Fixed: Prevent PHP warning: Undefined variable $field [#10]\n\nAce 1.9.2\n====================================\n- Updated: Corrected search form [#8]\n- Added: TV input Ace field [#9]\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"createdon\";s:24:\"2022-05-15T03:38:35+0000\";s:9:\"createdby\";s:10:\"ibochkarev\";s:8:\"editedon\";s:24:\"2022-09-02T19:28:43+0000\";s:10:\"releasedon\";s:24:\"2022-05-15T03:38:35+0000\";s:9:\"downloads\";s:6:\"343827\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"2\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=628075bba8801031285d3f43\";s:9:\"signature\";s:12:\"ace-1.9.3-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:68:\"http://modx.s3.amazonaws.com/extras/4f6e2782f245544fe8000014/ace.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"628075bba8801031285d3f43\";s:7:\"version\";s:24:\"628075bba8801031285d3f42\";s:8:\"filename\";s:26:\"ace-1.9.3-pl.transport.zip\";s:9:\"downloads\";s:4:\"9894\";s:6:\"lastip\";s:13:\"87.249.38.253\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=628075bba8801031285d3f43\";}s:17:\"package-signature\";s:12:\"ace-1.9.3-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 9, 3, 'pl', 0),
('ckeditor-1.4.1-pl', '2022-09-02 22:50:47', '2022-09-02 19:51:33', '2022-09-02 22:51:33', 0, 1, 1, 0, 'ckeditor-1.4.1-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:279:\"--------------------\nExtra: CKEditor\n--------------------\nVersion: 1.2.0\nCreated: December 7th, 2014\nSince: December 5th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates CKEditor WYSYWYG Editor into MODx Revolution.\";s:9:\"changelog\";s:1882:\"Changelog for CKEditor integration into MODx Revolution.\n\nCKEditor 1.4.1\n====================================\n- Replaced MODX.action by string (MODX3 support)\n\nCKEditor 1.4.0\n====================================\n- Fixed Save shortcut command (Patrick Reisert @Boddlnagg)\n- Added Resource Editor Height option\n- Default skin is Moono-Lisa\n- CKEditor core is updated to 4.8.0\n\nCKEditor 1.3.0\n====================================\n- Add third-party components support (MODx.loadRTE()) (Romain @rtripault)\n- Add improved image plugin\n\nCKEditor 1.2.0\n====================================\n- Fixed MODx 2.3 compatibility\n- Added new settings (stylesSet, removePlugins, toolbarGroups, formatTags, nativeSpellchecker) (thanks to MokoJumbie and exside [Lukas Zahnd])\n- Addes plugins: SCAYT, QuickTable, AutoGrow (disabled by default)\n- Improved AutoCorrect Plugin (settings dialog, bugfixes, other improvements)\n- Fixed Ctrl+Z in Source mode\n- Simplified toolbar configuration (used less painful \"toolbarGroups\" option rather then \"toolbar\")\n\nCKEditor 1.1.1\n====================================\n- Fixed AjaxManager compatibility (tree drag\'drop bug)\n- Added de language (settings localization: miduku)\n- Added plugins: youtube, wordcount, autocorrect\n- Simplified drag\'n\'drop from tree (remove dnd context menu)\n- IE8 support\n\nCKEditor 1.1.0\n====================================\n- MODx file browser integration\n- richtext TV support\n- Custom Resource Classes (Articles for ex.) support\n- Improved drag\'d\'drop from trees (insert images directly from File Tree)\n- Fixed Ctrl+S shorcut\n- Extra plugins setting\n- Editor skin setting\n\nCKEditor 1.0.2\n====================================\n- Fixed blocking bug occured in Firefox\n\nCKEditor 1.0.1\n====================================\n- Fixed fatal error\n- Inherit height of textarea\n\nCKEditor 1.0.0\n====================================\n- Initial commit\";s:9:\"signature\";s:17:\"ckeditor-1.4.1-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:45:\"/workspace/package/install/ckeditor-1.4.1-pl/\";s:14:\"package_action\";i:0;}', 'CKEditor', 'a:38:{s:2:\"id\";s:24:\"626ff859554dae0d4524fbc2\";s:7:\"package\";s:24:\"50c06e7af245544310000044\";s:12:\"display_name\";s:17:\"ckeditor-1.4.1-pl\";s:4:\"name\";s:8:\"CKEditor\";s:7:\"version\";s:5:\"1.4.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"4\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"dramspro\";s:11:\"description\";s:192:\"This is release for MODX3 support whith dont break and still works in MODX2/\nProof of work, screenshots and reference for changes here:\nhttps://github.com/danyaPostfactum/modx-ckeditor/pull/39\";s:12:\"instructions\";s:169:\"<p>Install package, make sure `use_editor` is set to `true`, `wich_editor` is `CKEditor`</p><p>See ckeditor.com examples if you want to change toolbar configuration.</p>\";s:9:\"changelog\";s:54:\"CKEditor 1.4.1\nFixed js errors when installed on MODX3\";s:9:\"createdon\";s:24:\"2022-05-02T15:27:21+0000\";s:9:\"createdby\";s:8:\"dramspro\";s:8:\"editedon\";s:24:\"2022-09-02T19:26:24+0000\";s:10:\"releasedon\";s:24:\"2022-05-05T12:21:29+0000\";s:9:\"downloads\";s:5:\"76184\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=626ff859554dae0d4524fbc3\";s:9:\"signature\";s:17:\"ckeditor-1.4.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:1:\"3\";s:10:\"screenshot\";s:73:\"http://modx.s3.amazonaws.com/extras/50c06e7af245544310000044/ckeditor.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"626ff859554dae0d4524fbc3\";s:7:\"version\";s:24:\"626ff859554dae0d4524fbc2\";s:8:\"filename\";s:31:\"ckeditor-1.4.1-pl.transport.zip\";s:9:\"downloads\";s:4:\"1901\";s:6:\"lastip\";s:14:\"94.130.112.184\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=626ff859554dae0d4524fbc3\";}s:17:\"package-signature\";s:17:\"ckeditor-1.4.1-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 4, 1, 'pl', 0);
INSERT INTO `belarustabletransport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-3.0.1-pl', '2022-09-02 23:03:53', '2022-09-02 20:04:29', '2022-09-02 23:04:29', 0, 1, 1, 0, 'pdotools-3.0.1-pl.transport.zip', NULL, 'a:9:{s:9:\"changelog\";s:31233:\"Changelog for pdoTools.\r\n\r\n3.0.1-pl (01.08.2022)\r\n==============\r\n- Fixed incorrect next and prev canonical URLs (#318).\r\n- Fixed bug in the Fenom parser (#331).\r\n- Fixed bug when clearing cache (#347).\r\n- Added aliases \"pdoTools\" and \"pdoFetch\" for the service container.\r\n\r\n3.0.0-pl (25.07.2022)\r\n==============\r\n- Fixed bug in the App::makeUrl function (#322).\r\n- Replaced the simple class name with FQN (#326).\r\n- Fixed incorrect functioning of the pdoNeighbors snippet (#327).\r\n- Changed $_SERVER[\'DOCUMENT_ROOT\'] to dirname function in the connector.php (#332).\r\n- Fixed bug with inaccessible property Fetch::config (#334).\r\n- Fixed bug with prepareTVs and processTVs parameters of the pdoTools snippets (#335).\r\n- Fixed fatal error in connector.php (#336).\r\n- Fixed a typo in the connector ($this on $modx) (338).\r\n- Fixed fatal error caused by loop (#341).\r\n- Fixed checking TV before adding to the query (#343).\r\n\r\n3.0.0-beta (06.12.2021)\r\n==============\r\n- Requires MODX 3.\r\n- Requires PHP 7.2+.\r\n- Refactored to use PSR-4 autoload.\r\n- pdoTools snippet logs are stored now in the corresponding placeholder (#316).\r\n- Added system setting \"pdotools_filter_path\".\r\n- Removed anchor links in skip/empty templates (#303).\r\n- Removed \"nestedChunkPrefix\" parameter.\r\n- Removed the system settings \"pdoTools.class\", \"pdotools_class_path\", \"pdoFetch.class\" and \"pdofetch_class_path\".\r\n- Removed the \"setOption\" Fenom modifier.\r\n- Removed the snippet parameters \"tplPath\" and \"elementsPath\".\r\n\r\n2.13.2-pl (02.09.2021)\r\n==============\r\n- Fixed some snippets.\r\n\r\n2.13.1-pl (01.09.2021)\r\n==============\r\n- Installed composer packages.\r\n\r\n2.13.0-pl (01.09.2021)\r\n==============\r\n- Some security fixes.\r\n- The \"setOption\" modifier is marked as deprecated.\r\n- The snippet parameters \"tplPath\" and \"elementsPath\" are marked as deprecated.\r\n- Added the ability for snippets to return an array of raw data (it is necessary when using the Fenom template engine).\r\n- The settings \"parser_class\" and \"parser_class_path\" will be registered in the core namespace.\r\n- Update the ajax connector.\r\n\r\n2.12.10 pl\r\n==============\r\n- [#308] [pdoPage] Fixed the type of snippet property \"field\"\r\n\r\n2.12.9 pl\r\n==============\r\n- [Fenom] Update to version 2.12.0\r\n\r\n2.12.8 pl\r\n==============\r\n- [pdoPage] Fix reflected XSS in generated meta links\r\n\r\n2.12.7 pl\r\n==============\r\n- Make pdoTools canonical url work with Babel #304\r\n\r\n2.12.6 pl\r\n==============\r\n- [pdoPage] Reverted back #287\r\n\r\n2.12.5 pl\r\n==============\r\n- [Fenom] Added caching dinamic properties to prevent speed degradation.\r\n\r\n2.12.4 pl\r\n==============\r\n- [#290] Improved running snippet via @FILE binding.\r\n- [#296] Fix adding quotes to numeric values.\r\n- [#297] Make cross context weblink url possible.\r\n- [#274] [Fenom] User, resource and context properties are now dinamic.\r\n- [#287] [pdoPage] Remove prev & next meta tags\r\n- [#294] [#298] Improved pdopage.js and updated minified js files\r\n\r\n2.12.3 pl\r\n==============\r\n- Fixed E_NOTICE introduced in #285.\r\n\r\n2.12.2 pl\r\n==============\r\n- Updated chunks for Bootstrap 4.\r\n\r\n2.12.1 pl\r\n==============\r\n- [pdoMenu] Reverted back #283 and fixed docs for &tplCategoryFolder.\r\n- [#284] [Fenom] Fixed properties of $_modx->context variable.\r\n- [#275] [Fenom] Added \"reset\" and \"end\" modifiers.\r\n\r\n2.12.0 pl\r\n==============\r\n- [Fenom] More security fixes from Sergey Shlokov.\r\n- [#278] [pdoPage] Fixed caching.\r\n- [pdoPage] Show internal log on &showLog=`1`.\r\n- [#283] [pdoMenu] Fixed use of &tplCategoryFolder according to docs.\r\n- [#281] [pdoTools] Fixed load of models from case sensitive paths.\r\n- [#277] [pdoCrumbs] Ability to specify &customParents.\r\n- [#265] [pdoFetch] Fixed return of \"Array\" on SQL errors.\r\n\r\n2.11.3 pl\r\n==============\r\n- Added French lexicon entries.\r\n\r\n2.11.2 pl\r\n==============\r\n- Fix detection of element names starting with a number.\r\n\r\n2.11.1 pl\r\n==============\r\n- Faster processing of static files.\r\n\r\n2.11.0 pl\r\n==============\r\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\r\n- [pdoFetch] Option \"setTotal\" disabled by default.\r\n- [pdoPage] Forces \"setTotal\" to provide pagination.\r\n\r\n2.10.6 pl\r\n==============\r\n- Improved German lexicons.\r\n\r\n2.10.5 pl\r\n==============\r\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\r\n- [FenomX] Fixed method \"getStore\".\r\n\r\n2.10.4 pl\r\n==============\r\n- [Fenom] Do not output raw tags if there was a compile errors.\r\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\r\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\r\n\r\n2.10.3 pl\r\n==============\r\n- Improved compatibility with PHP 7.2\r\n- [pdoFetch] Ability to use arrays in \"&sortby\".\r\n\r\n2.10.2 pl\r\n==============\r\n- [Fenom] Improved processing of caching snippets inside uncached.\r\n\r\n2.10.1 pl\r\n==============\r\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\r\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\r\n- [Fenom] Improved regular expression to detect Fenom syntax.\r\n\r\n2.10.0 pl\r\n==============\r\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\r\n- [#258] [pdoPage] Canonical urls always must be \"full\".\r\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\r\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\r\n\r\n2.9.3 pl\r\n==============\r\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\r\n\r\n2.9.2 pl\r\n==============\r\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\r\n\r\n2.9.1 pl\r\n==============\r\n- [Fenom] Updated to version 2.11.8.\r\n\r\n2.9.0 pl\r\n==============\r\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\r\n- [#249] A little improvement for resource modifier.\r\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\r\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\r\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\r\n\r\n2.8.6 pl\r\n==============\r\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\r\n- [Fenom] Added all options to json modifiers.\r\n\r\n2.8.5 pl\r\n==============\r\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\r\n\r\n2.8.4 pl\r\n==============\r\n- Ability to use file elements in core path outside base path.\r\n- Fixed bug with the caching of elements.\r\n\r\n2.8.3 pl\r\n==============\r\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\r\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\r\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\r\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\r\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\r\n\r\n2.8.2 pl\r\n==============\r\n- [pdoMenu] Fixed the checking of permissions for containers.\r\n- [pdoPage] Added the ability to run files as &element.\r\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\r\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\r\n\r\n2.8.1 pl\r\n==============\r\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\r\n- Added fallback class for the enable modParser.\r\n\r\n2.8.0 pl\r\n==============\r\n- Ability to use an arrays in the parameters of the snippets.\r\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\r\n\r\n2.7.5 pl\r\n==============\r\n- Fenom is now managed via composer.\r\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\r\n- [Fenom] Modifier \"strrev\" now can work with arrays.\r\n- [Fenom] Improved modifier \"ismember\".\r\n\r\n2.7.4 pl\r\n==============\r\n- [#242] Added jquery.pdopage.js plugin and minified versions.\r\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\r\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\r\n\r\n2.7.3 pl\r\n==============\r\n- Improved compatibility with MODX 2.5.2.\r\n\r\n2.7.2 pl\r\n==============\r\n- [pdoFetch] Some security improvements.\r\n\r\n2.7.1 pl\r\n==============\r\n- Some security improvements in the connector.php.\r\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\r\n\r\n2.7.0 pl\r\n==============\r\n- [Fenom] Updated to the version 2.11.4.\r\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\r\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\r\n- [Fenom] New output filter \"number\" (or \"number_format\").\r\n\r\n2.6.5 pl\r\n==============\r\n- Fixed undeclared variable (PHP 7.1)\r\n\r\n2.6.4 pl\r\n==============\r\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\r\n- [#239] Improved work of the &decodeJSON option.\r\n\r\n2.6.3 pl\r\n==============\r\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\r\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\r\n\r\n2.6.2 pl\r\n==============\r\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\r\n\r\n2.6.1 pl\r\n==============\r\n- Improved compatibility with PHP 5.3.\r\n\r\n2.6.0 pl\r\n==============\r\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\r\n\r\n2.5.6 pl\r\n==============\r\n- [pdoFetch] Ability to join TVs not only to the query main class.\r\n\r\n2.5.5 pl\r\n==============\r\n- Fixed parse of INLINE chunks with \"@\" symbols.\r\n\r\n2.5.4 pl\r\n==============\r\n- [#224] Added microMODX::cleanAlias().\r\n- [#226] [Fenom] Added \"declension\" modifier.\r\n\r\n2.5.3 pl\r\n==============\r\n- [#221] Fixed typo in month name.\r\n- [Fenom] Fixed path to compile dir.\r\n\r\n2.5.2 pl\r\n==============\r\n- [#220] Cache code of snippet with respect to property set.\r\n\r\n2.5.1 pl\r\n==============\r\n- Fixed cache of snippets in pdoTools::runSnippet().\r\n\r\n2.5.0 pl\r\n==============\r\n- Improved support of debugParser.\r\n- [#209] Improved loading of the models.\r\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\r\n- [Fenom] New elements provider: \"file\".\r\n- New method pdoTools::runSnippet().\r\n\r\n2.4.0 pl\r\n==============\r\n- Added snippet pdoArchive.\r\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\r\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\r\n- [#207] [pdoMenu] Fixed &webLinkClass option.\r\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\r\n- [#203] [Fenom] Added more PCRE modifiers.\r\n\r\n2.3.5 pl\r\n==============\r\n- [pdoFetch] Added escaping of columns names in query.\r\n\r\n2.3.4 pl\r\n==============\r\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\r\n\r\n2.3.3 pl\r\n==============\r\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\r\n\r\n2.3.2 pl\r\n==============\r\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\r\n- [Fenom] Added general MODX output filters as Fenom modifiers.\r\n- [Fenom] Implemented autoload of modifiers from snippets.\r\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\r\n\r\n2.3.1 pl\r\n==============\r\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\r\n- [Fenom] Improved check of syntax before processing.\r\n\r\n2.3.0 pl\r\n==============\r\n- Removed shortcuts from system core.\r\n- PSR-2.\r\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\r\n- [pdoCrumbs] Changed default chunks to ul -> li.\r\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\r\n\r\n2.2.8 pl\r\n==============\r\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\r\n\r\n2.2.7 pl\r\n==============\r\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\r\n\r\n2.2.6 pl\r\n==============\r\n- [#184] [Fenom] Updated to version 2.8.2.\r\n\r\n2.2.5 pl\r\n==============\r\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\r\n- [pdoSitemap] Added processing of MODX tags if needed.\r\n- Added method pdoTools::makeUrl().\r\n- [#181] New url schema type - \"uri\".\r\n\r\n2.2.4 pl\r\n==============\r\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\r\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\r\n\r\n2.2.3 pl\r\n==============\r\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\r\n\r\n2.2.2 pl\r\n==============\r\n- [pdoPage] Added new parameter &pageLinkScheme.\r\n\r\n2.2.1 pl\r\n==============\r\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\r\n- [pdoPage] Added connector for requests in ajax mode.\r\n\r\n2.2.0 pl\r\n==============\r\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\r\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\r\n\r\n2.1.21 pl\r\n==============\r\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\r\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\r\n\r\n2.1.20 pl\r\n==============\r\n- [pdoSitemap] Fixed default &cacheKey.\r\n\r\n2.1.19 pl\r\n==============\r\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\r\n\r\n2.1.18 pl\r\n==============\r\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\r\n- [Fenom] Improved method {$_modx->runProcessor()}.\r\n\r\n2.1.17 pl\r\n==============\r\n- [Fenom] Added {$_modx->getResource($id, $options)}.\r\n- [Fenom] Added {$_modx->getResources($where, $options)}.\r\n- [Fenom] Improved support of debugParser.\r\n\r\n2.1.16 pl\r\n==============\r\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\r\n- [Fenom] Added {$_modx->getPlaceholders()}.\r\n\r\n2.1.15 pl\r\n==============\r\n- [pdoPage] Added parameter &strictMode.\r\n\r\n2.1.14 pl\r\n==============\r\n- [pdoSitemap] Added options for cache snippets results.\r\n- [pdoSitemap] Cache enabled by default.\r\n\r\n2.1.13 pl\r\n==============\r\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\r\n\r\n2.1.12 pl\r\n==============\r\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\r\n\r\n2.1.11 pl\r\n==============\r\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\r\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\r\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\r\n\r\n2.1.10 pl\r\n==============\r\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\r\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\r\n\r\n2.1.9 pl\r\n==============\r\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\r\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\r\n\r\n2.1.8 pl\r\n==============\r\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\r\n- [Fenom] Added support of debugParser.\r\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\r\n\r\n2.1.7 pl\r\n==============\r\n- Fixed work with integer values from system setting \"link_tag_scheme\".\r\n\r\n2.1.6 pl\r\n==============\r\n- [Fenom] Updated to version 2.8.0.\r\n- [Fenom] Improved check of syntax to process content of chunks.\r\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\r\n\r\n2.1.5 pl\r\n==============\r\n- [Fenom] Fixed register of scripts and styles by cached snippets.\r\n\r\n2.1.4 pl\r\n==============\r\n- [Fenom] Fixed TVs in {$_modx->resource}\r\n- [Fenom] Added new method {$_modx->getInfo()}\r\n\r\n2.1.3 pl\r\n==============\r\n- Improved work of system setting \"pdotools_fenom_php\".\r\n\r\n2.1.2 pl\r\n==============\r\n- [Fenom] Replaced {$_modx->placeholders} to functions.\r\n\r\n2.1.1 pl\r\n==============\r\n- pdoParser enabled by default.\r\n- [Fenom] Fixed return content in {$_modx->getChunk}.\r\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\r\n- [pdoTools] Added processing of property sets for chunks.\r\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\r\n\r\n2.1.0 pl\r\n==============\r\n- [Fenom] Updated Fenom to version 2.7.1.\r\n- [Fenom] Added safe system variable {$_modx}.\r\n- [Fenom] Added MODX template provider for chunks and templates.\r\n\r\n2.0.5 pl\r\n==============\r\n- [#132] Fixed possible E_WARNING on empty chunks.\r\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\r\n- [#118] [pdoPage] Fixed parameter &offset.\r\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\r\n\r\n2.0.4 pl\r\n==============\r\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\r\n\r\n2.0.3 pl\r\n==============\r\n- [#125] [pdoTitle] Fixed parameter &id.\r\n\r\n2.0.2 pl\r\n==============\r\n- Improved processing of @FILE binding.\r\n\r\n2.0.1 pl\r\n==============\r\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\r\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\r\n\r\n2.0.0 pl\r\n==============\r\n- New system settings to control the Fenom.\r\n- Ability to enable caching of Fenom compiled chunks.\r\n- Improved handling of parameter \"cache_key\".\r\n- [pdoMenu] Improved work when &cache is enabled.\r\n\r\n2.0.0 rc2\r\n==============\r\n- Compiled Fenom templates cached to RAM instead of HDD.\r\n- Removed plugin pdoTools.\r\n\r\n2.0.0 rc1\r\n==============\r\n- Added Fenom template engine.\r\n- Fenom enabled by default.\r\n- pdoParser uses Fenom to process pages.\r\n\r\n1.11.2 pl\r\n==============\r\n- [#116] [pdoTitle] Disabled &register_js by default.\r\n\r\n1.11.1 pl\r\n==============\r\n- [pdoSitemap] Fixed default url scheme after last update.\r\n\r\n1.11.0 pl1\r\n==============\r\n- [pdoTitle] Added new snippet.\r\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\r\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\r\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\r\n\r\n1.10.2 pl1\r\n==============\r\n- [#112] Parameter &scheme was set to system default in all snippets.\r\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\r\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\r\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\r\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\r\n\r\n1.10.1 pl\r\n==============\r\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\r\n- [pdoFetch] Added new parameter &sortbyTVType.\r\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\r\n\r\n1.10.0 pl\r\n==============\r\n- [pdoMenu] Returned and fixed parameter &showDeleted.\r\n- [pdoPage] Improved default javascript.\r\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\r\n- [pdoFetch] Ability to specify functions in select fields.\r\n- [pdoTools] Ability to use compound quick placeholders.\r\n\r\n1.10.0 beta4\r\n==============\r\n- [pdoPage] Ajax pagination out from the box.\r\n- [pdoFetch] Improved log of getCollection.\r\n- [pdoTools] Added tplOperator \"contains\".\r\n\r\n1.9.7 pl\r\n==============\r\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\r\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\r\n- [#85] [pdoFetch] Added function getChildIds().\r\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\r\n\r\n1.9.6 pl2\r\n==============\r\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\r\n- [pdoMenu] Improved parameter &countChildren.\r\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\r\n\r\n1.9.6 rc\r\n==============\r\n- Added execution of SQL_BIG_SELECTS = 1 before query.\r\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\r\n\r\n1.9.5 pl1\r\n==============\r\n- Rolled back #72 due to issues in pdoMenu.\r\n\r\n1.9.5 pl\r\n==============\r\n- Added ability to return JSON or serialized string from pdoFetch::run().\r\n- [#83] [pdoMenu] Added level placeholder to outer templates.\r\n- [#82] [pdoFetch] Added support for complex &where parameter.\r\n- [#81] [pdoPage] Improved handling of arrays in url.\r\n- [#77] Fixed making of url for modWebLink to another context.\r\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\r\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\r\n- [#57] [pdoMenu] Improved placeholder [[+children]].\r\n- [#57] [pdoMenu] Added parameter &countChildren.\r\n\r\n1.9.4 pl1\r\n==============\r\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\r\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\r\n\r\n1.9.3 pl1\r\n==============\r\n- [pdoTools] Ability to specify value for empty quick placeholders.\r\n- [pdoTools] Ability to use INLINE snippets and filters.\r\n- [pdoFetch] Improved loading of 3rd party models.\r\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\r\n\r\n1.9.2 pl2\r\n==============\r\n- [#56] [pdoParser] Fixed wrong links processing.\r\n- [#53] Improved loading of classes.\r\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\r\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\r\n\r\n1.9.1 pl6\r\n==============\r\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\r\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\r\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\r\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\r\n\r\n1.9.1 pl\r\n==============\r\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\r\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\r\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\r\n- [#37] [pdoField] get the default, only if the field was empty.\r\n- [#34] Fixed processing of \"modSymLink\" documents.\r\n- [#32] Improved cache methods.\r\n- [#26] Replaced FIND_IN_SET() to FIELD().\r\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\r\n- [pdoPage] New parameter &cacheAnonymous.\r\n- [pdoMenu] New parameter &cacheAnonymous.\r\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\r\n- Removed unnecessary query in pdoFetch::getCollection().\r\n- Improved pdoFetch::getCollection().\r\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\r\n- pdoTools::setCache() now returns cacheKey.\r\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\r\n\r\n1.9.0 pl2\r\n==============\r\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\r\n- [pdoNeighbors] Speed improvements.\r\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\r\n- [pdoParser] Handles TVs in resource tags.\r\n- [pdoParser] Handles output filters.\r\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\r\n- [pdoSitemap] Pass the whole row so we can use more columns.\r\n\r\n1.9.0 rc\r\n==============\r\n- Improved method pdoTools::getChunk().\r\n- Improved method pdoTools::parseChunk().\r\n- Improved method pdoTools::fastProcess().\r\n- Improved method pdoTools::makePlaceholders().\r\n- Accelerated snippet pdoNeighbors.\r\n- Fixed bug in pdoUsers when usersgroups was specified by names.\r\n- getObject and getCollection() runs in separate instance.\r\n- Added pdoParser with FastField tags.\r\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\r\n- [#24] Fixed prepareTVs and empty tvPrefix.\r\n- [#23] [pdoResources] Ability to return ids to placeholder.\r\n- Fixed warning when getObject returns false.\r\n- Fixed placeholders prefix in recursive makePlaceholders.\r\n\r\n1.8.9 pl4\r\n==============\r\n- Added german lexicon.\r\n- [#20] Ability to specify not JSON string in &where=``.\r\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\r\n- [pdoPage] Support Bootstrap3.\r\n- [pdoField] Ability to specify class for fetching field.\r\n- Improved joining of tables in pdoFetch.\r\n- Added preparing and processing TVs in getObject and getCollection methods.\r\n- Improved load of 3rd party models.\r\n\r\n1.8.8 pl2\r\n==============\r\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\r\n- New methods pdoTools::getCache() and pdoTools::setCache().\r\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\r\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\r\n\r\n1.8.7 pl\r\n==============\r\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\r\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\r\n\r\n1.8.6 pl2\r\n==============\r\n- Fixed possibly E_NOTICE when site has no extension packages installed.\r\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\r\n- [#16] [pdoMenu] Disabled status verification of specified parents.\r\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\r\n- [pdoMenu] Fixed bug when specified parent has only the one child.\r\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\r\n\r\n1.8.5 pl\r\n==============\r\n- [#15] [pdoPage] Improved generation of links to pages.\r\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\r\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\r\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\r\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\r\n\r\n1.8.4 pl\r\n==============\r\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\r\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\r\n- More accuracy when try to decode json in fetch results.\r\n\r\n1.8.3 pl3\r\n==============\r\n- Improved preparation of template variables.\r\n- Improved transfer of additional parameters from snippet to results.\r\n- [pdoMenu] Added lexicon entries for parameters.\r\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\r\n- [#12] Added parameter \"toPlaceholder\".\r\n- Increased accuracy of timings log.\r\n\r\n1.8.1 pl2\r\n==============\r\n- Accelerated method pdoTools::getChunk().\r\n- Added snippet pdoMenu.\r\n- Added support for tags [^qt^] and [^q^].\r\n\r\n1.8.0 pl\r\n==============\r\n- [#10] [pdoPage] Added placeholder \"page\".\r\n- [#9] [pdoPage] Added placeholder \"pageCount\".\r\n- [#8] Improved support of big numbers when sorting by TVs.\r\n- Fixed work of pdoPage when it called multiple times on page.\r\n- Fixed mistype in pdoFetch::getCollection().\r\n\r\n1.8.0 rc5\r\n==============\r\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\r\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\r\n- Fixed getting chunk without any parameters.\r\n- Added snippet pdoPage.\r\n\r\n1.8.0 beta1\r\n==============\r\n- Improved handling of \"default_text\" parameter in TVs.\r\n- Fixed and improved method pdoTools::buildTree().\r\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\r\n- Improved method pdoFetch::addSelects().\r\n- Improved method pdoFetch::addSort().\r\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\r\n\r\n1.7.4 pl\r\n==============\r\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\r\n\r\n1.7.3 pl1\r\n==============\r\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\r\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\r\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\r\n\r\n1.7.2 pl1\r\n==============\r\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\r\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\r\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\r\n- Ability to send arrays into common config parameters. JSON is still supported.\r\n- Improved select of default values in TVs.\r\n\r\n1.7.1 pl\r\n==============\r\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\r\n\r\n1.7.0 pl1\r\n==============\r\n- New snippet pdoCrumbs.\r\n- New snippet pdoField.\r\n- New snippet pdoSitemap.\r\n- New snippet pdoNeighbors.\r\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\r\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\r\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\r\n- [pdoResources] Improved parameter \"&context\".\r\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\r\n\r\n1.6.0 pl1\r\n==============\r\n- Fixed compatibility issues in PHP < 5.3.\r\n\r\n1.6.0 pl\r\n==============\r\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\r\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\r\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\r\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\r\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\r\n- Removed method pdoTools::getPlaceholders.\r\n\r\n1.5.0 pl2\r\n==============\r\n- Fixed sort of decimals in TVs.\r\n\r\n1.5.0 pl1\r\n==============\r\n- Added processing of simple [[~id]] placeholders in fastMode.\r\n- Added support of default value for TVs.\r\n- Improved sort by TVs of types \"number\" and \"date\".\r\n\r\n1.5.0 rc\r\n==============\r\n- [pdoUsers] Added new snippet \"pdoUsers\".\r\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\r\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\r\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\r\n\r\n1.4.1 pl1\r\n==============\r\n- Improved \"context\" processing.\r\n- Fixed \"idx\" when multiple snippets called at one page.\r\n- Fixed default sortby when joined tables exists.\r\n\r\n1.4.1 beta3\r\n==============\r\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\r\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\r\n- Added parameter \"toSeparatePlaceholders\".\r\n- Improved \"pdoResources\" snippet.\r\n\r\n1.4.0 beta1\r\n==============\r\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\r\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\r\n- Added automatic replacement of tvs in \"sortby\" parameter.\r\n- Removed example snippet\r\n- Added snippet \"pdoResources\", that could replace \"getResources\".\r\n- Added method pdoTools::defineChunk() for chunk of given idx.\r\n- Added \"memory usage\" in log.\r\n\r\n1.3.0\r\n==============\r\n- Improved placeholders processing when fastMode is enabled.\r\n- Added support of \"having\" conditions.\r\n\r\n1.2.1\r\n==============\r\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\r\n\r\n1.2.0\r\n==============\r\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\r\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\r\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\r\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\r\n\r\n1.1.0\r\n==============\r\n- Improved getChunk function.\r\n\r\n1.0.1\r\n==============\r\n- Fixed setting total in \"chunks\" mode.\r\n- Improved displaying \"where\" condition in log.\r\n\r\n1.0.0\r\n==============\r\n- Initial release.\";s:7:\"license\";s:1121:\" The MIT License (MIT)\r\n\r\nCopyright © 2021 MODX RSC (Russian Speaking Community)\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\r\n\r\nTHE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n\";s:6:\"readme\";s:666:\"--------------------\r\npdoTools\r\n--------------------\r\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\r\n--------------------\r\n\r\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\r\n\r\nRequired by Tickets and miniShop2.\r\n\r\nMain features\r\n- Builds queries with xPDO.\r\n- Retrieve results with PDO.\r\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\r\n\r\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\r\n\r\n--------------------\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttp://github.com/modx-pro/pdoTools/issues\r\n\";s:8:\"requires\";a:2:{s:3:\"php\";s:7:\">=7.2.0\";s:4:\"modx\";s:12:\">=3.0.0-beta\";}s:9:\"signature\";s:17:\"pdotools-3.0.1-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:45:\"/workspace/package/install/pdotools-3.0.1-pl/\";s:14:\"package_action\";i:0;}', 'pdoTools', 'a:38:{s:2:\"id\";s:24:\"62e808f0b0479618e90538a2\";s:7:\"package\";s:24:\"50f8468bf2455436ec00000d\";s:12:\"display_name\";s:17:\"pdotools-3.0.1-pl\";s:4:\"name\";s:8:\"pdoTools\";s:7:\"version\";s:5:\"3.0.1\";s:13:\"version_major\";s:1:\"3\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"sergant210\";s:11:\"description\";s:25:\"<p>pdoTools for MODX3</p>\";s:12:\"instructions\";s:77:\"<p></p><p>For example just run:</p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"changelog\";s:162:\"<a href=\"https://raw.githubusercontent.com/bezumkin/pdoTools/master/core/components/pdotools/docs/changelog.txt\" title=\"\" target=\"_blank\">See on GitHub</a><p></p>\";s:9:\"createdon\";s:24:\"2022-08-01T17:10:08+0000\";s:9:\"createdby\";s:10:\"sergant210\";s:8:\"editedon\";s:24:\"2022-09-02T19:55:09+0000\";s:10:\"releasedon\";s:24:\"2022-08-01T17:10:08+0000\";s:9:\"downloads\";s:6:\"393798\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:21:\"The MIT License (MIT)\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"3\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=62e808f0b0479618e90538a3\";s:9:\"signature\";s:17:\"pdotools-3.0.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"3\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:97:\"http://modx.s3.amazonaws.com/extras/50f8468bf2455436ec00000d/ffe1e89f12c51f01ad55ce39b88731b1.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"62e808f0b0479618e90538a3\";s:7:\"version\";s:24:\"62e808f0b0479618e90538a2\";s:8:\"filename\";s:31:\"pdotools-3.0.1-pl.transport.zip\";s:9:\"downloads\";s:3:\"862\";s:6:\"lastip\";s:13:\"87.249.38.253\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=62e808f0b0479618e90538a3\";}s:17:\"package-signature\";s:17:\"pdotools-3.0.1-pl\";s:10:\"categories\";s:14:\"administration\";s:4:\"tags\";s:0:\"\";}', 3, 0, 1, 'pl', 0);
INSERT INTO `belarustabletransport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('translit-1.0.0-beta', '2022-09-02 22:49:43', '2022-09-02 19:51:46', '2022-09-02 22:51:46', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:7:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:453:\"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/translit-1.0.0-beta/\";s:14:\"package_action\";i:0;}', 'translit', 'a:38:{s:2:\"id\";s:24:\"4d556cf0b2b083396d000eeb\";s:7:\"package\";s:24:\"4d556cf0b2b083396d000eea\";s:12:\"display_name\";s:19:\"translit-1.0.0-beta\";s:4:\"name\";s:8:\"translit\";s:7:\"version\";s:5:\"1.0.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:8:\"opengeek\";s:11:\"description\";s:585:\"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>\";s:12:\"instructions\";s:37:\"<p>Install via Package Management</p>\";s:9:\"changelog\";s:0:\"\";s:9:\"createdon\";s:24:\"2010-10-20T11:53:35+0000\";s:9:\"createdby\";s:8:\"opengeek\";s:8:\"editedon\";s:24:\"2022-09-02T19:14:01+0000\";s:10:\"releasedon\";s:24:\"2010-10-20T11:57:11+0000\";s:9:\"downloads\";s:6:\"210606\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:47:\"http://modxcms.com/forums/index.php?topic=56059\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"2\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=4d556cf1b2b083396d000eec\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"4d556cf1b2b083396d000eec\";s:7:\"version\";s:24:\"4d556cf0b2b083396d000eeb\";s:8:\"filename\";s:33:\"translit-1.0.0-beta.transport.zip\";s:9:\"downloads\";s:6:\"210808\";s:6:\"lastip\";s:13:\"5.101.156.170\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:61:\"https://modx.com/extras/download/?id=4d556cf1b2b083396d000eec\";}s:17:\"package-signature\";s:19:\"translit-1.0.0-beta\";s:10:\"categories\";s:36:\"internationalization,core-extensions\";s:4:\"tags\";s:15:\"transliteration\";}', 1, 0, 0, 'beta', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustabletransport_providers`
--

CREATE TABLE `belarustabletransport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `service_url` tinytext COLLATE utf8mb4_unicode_ci,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustabletransport_providers`
--

INSERT INTO `belarustabletransport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2022-04-28 10:20:05', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableusers`
--

CREATE TABLE `belarustableusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cachepwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_data` text COLLATE utf8mb4_unicode_ci,
  `hash_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MODX\\Revolution\\Hashing\\modNative',
  `salt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text COLLATE utf8mb4_unicode_ci,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableusers`
--

INSERT INTO `belarustableusers` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'Bel', '$2y$10$oj5vR7wPUdPdbx1Z24J63usiWqM5Iie2f6az/IzqC4iMxHT.aLjqi', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', '7a6fc187c6689783f5dc286aa9db4145', 1, NULL, 1, 1662147652);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableuser_attributes`
--

CREATE TABLE `belarustableuser_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobilephone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extended` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableuser_attributes`
--

INSERT INTO `belarustableuser_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'belarus@mail.ru', '', '', 0, 0, 0, 1, 0, 1662147704, 0, '6femme5qtll6ip50ko99neelsta88nhp', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableuser_group_roles`
--

CREATE TABLE `belarustableuser_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableuser_group_roles`
--

INSERT INTO `belarustableuser_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableuser_group_settings`
--

CREATE TABLE `belarustableuser_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `xtype` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableuser_messages`
--

CREATE TABLE `belarustableuser_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recipient` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableuser_settings`
--

CREATE TABLE `belarustableuser_settings` (
  `user` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  `xtype` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `belarustableworkspaces`
--

CREATE TABLE `belarustableworkspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `belarustableworkspaces`
--

INSERT INTO `belarustableworkspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2022-09-02 22:40:40', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `belarustableaccess_actiondom`
--
ALTER TABLE `belarustableaccess_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `belarustableaccess_category`
--
ALTER TABLE `belarustableaccess_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableaccess_context`
--
ALTER TABLE `belarustableaccess_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `belarustableaccess_elements`
--
ALTER TABLE `belarustableaccess_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableaccess_media_source`
--
ALTER TABLE `belarustableaccess_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableaccess_menus`
--
ALTER TABLE `belarustableaccess_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `belarustableaccess_namespace`
--
ALTER TABLE `belarustableaccess_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableaccess_permissions`
--
ALTER TABLE `belarustableaccess_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `belarustableaccess_policies`
--
ALTER TABLE `belarustableaccess_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `belarustableaccess_policy_templates`
--
ALTER TABLE `belarustableaccess_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `belarustableaccess_policy_template_groups`
--
ALTER TABLE `belarustableaccess_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `belarustableaccess_resources`
--
ALTER TABLE `belarustableaccess_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableaccess_resource_groups`
--
ALTER TABLE `belarustableaccess_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableaccess_templatevars`
--
ALTER TABLE `belarustableaccess_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `belarustableactiondom`
--
ALTER TABLE `belarustableactiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `belarustableactions_fields`
--
ALTER TABLE `belarustableactions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `belarustableactive_users`
--
ALTER TABLE `belarustableactive_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `belarustablecategories`
--
ALTER TABLE `belarustablecategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `belarustablecategories_closure`
--
ALTER TABLE `belarustablecategories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `belarustablecontent_type`
--
ALTER TABLE `belarustablecontent_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `belarustablecontext`
--
ALTER TABLE `belarustablecontext`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `belarustablecontext_resource`
--
ALTER TABLE `belarustablecontext_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `belarustablecontext_setting`
--
ALTER TABLE `belarustablecontext_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `belarustabledashboard`
--
ALTER TABLE `belarustabledashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `belarustabledashboard_widget`
--
ALTER TABLE `belarustabledashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `belarustabledashboard_widget_placement`
--
ALTER TABLE `belarustabledashboard_widget_placement`
  ADD PRIMARY KEY (`user`,`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `belarustabledeprecated_call`
--
ALTER TABLE `belarustabledeprecated_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `method` (`method`),
  ADD KEY `call_count` (`call_count`),
  ADD KEY `caller` (`caller`),
  ADD KEY `caller_file` (`caller_file`),
  ADD KEY `caller_line` (`caller_line`);

--
-- Индексы таблицы `belarustabledeprecated_method`
--
ALTER TABLE `belarustabledeprecated_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `definition` (`definition`);

--
-- Индексы таблицы `belarustabledocumentgroup_names`
--
ALTER TABLE `belarustabledocumentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `belarustabledocument_groups`
--
ALTER TABLE `belarustabledocument_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `belarustableelement_property_sets`
--
ALTER TABLE `belarustableelement_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `belarustableextension_packages`
--
ALTER TABLE `belarustableextension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `belarustablefc_profiles`
--
ALTER TABLE `belarustablefc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `belarustablefc_profiles_usergroups`
--
ALTER TABLE `belarustablefc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `belarustablefc_sets`
--
ALTER TABLE `belarustablefc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `belarustablelexicon_entries`
--
ALTER TABLE `belarustablelexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `belarustablemanager_log`
--
ALTER TABLE `belarustablemanager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `belarustablemedia_sources`
--
ALTER TABLE `belarustablemedia_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `belarustablemedia_sources_contexts`
--
ALTER TABLE `belarustablemedia_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `belarustablemedia_sources_elements`
--
ALTER TABLE `belarustablemedia_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `belarustablemembergroup_names`
--
ALTER TABLE `belarustablemembergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `belarustablemember_groups`
--
ALTER TABLE `belarustablemember_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `belarustablemenus`
--
ALTER TABLE `belarustablemenus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `belarustablenamespaces`
--
ALTER TABLE `belarustablenamespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `belarustableproperty_set`
--
ALTER TABLE `belarustableproperty_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `belarustableregister_messages`
--
ALTER TABLE `belarustableregister_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `belarustableregister_queues`
--
ALTER TABLE `belarustableregister_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `belarustableregister_topics`
--
ALTER TABLE `belarustableregister_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `belarustablesession`
--
ALTER TABLE `belarustablesession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `belarustablesite_content`
--
ALTER TABLE `belarustablesite_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `belarustablesite_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `belarustablesite_htmlsnippets`
--
ALTER TABLE `belarustablesite_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `belarustablesite_plugins`
--
ALTER TABLE `belarustablesite_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `belarustablesite_plugin_events`
--
ALTER TABLE `belarustablesite_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `belarustablesite_snippets`
--
ALTER TABLE `belarustablesite_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `belarustablesite_templates`
--
ALTER TABLE `belarustablesite_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `belarustablesite_tmplvars`
--
ALTER TABLE `belarustablesite_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `belarustablesite_tmplvar_access`
--
ALTER TABLE `belarustablesite_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `belarustablesite_tmplvar_contentvalues`
--
ALTER TABLE `belarustablesite_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `belarustablesite_tmplvar_templates`
--
ALTER TABLE `belarustablesite_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `belarustablesystem_eventnames`
--
ALTER TABLE `belarustablesystem_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `belarustablesystem_settings`
--
ALTER TABLE `belarustablesystem_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `belarustabletransport_packages`
--
ALTER TABLE `belarustabletransport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `belarustabletransport_providers`
--
ALTER TABLE `belarustabletransport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `belarustableusers`
--
ALTER TABLE `belarustableusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `belarustableuser_attributes`
--
ALTER TABLE `belarustableuser_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `belarustableuser_group_roles`
--
ALTER TABLE `belarustableuser_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `belarustableuser_group_settings`
--
ALTER TABLE `belarustableuser_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `belarustableuser_messages`
--
ALTER TABLE `belarustableuser_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `belarustableuser_settings`
--
ALTER TABLE `belarustableuser_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `belarustableworkspaces`
--
ALTER TABLE `belarustableworkspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_actiondom`
--
ALTER TABLE `belarustableaccess_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_category`
--
ALTER TABLE `belarustableaccess_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_context`
--
ALTER TABLE `belarustableaccess_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_elements`
--
ALTER TABLE `belarustableaccess_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_media_source`
--
ALTER TABLE `belarustableaccess_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_menus`
--
ALTER TABLE `belarustableaccess_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_namespace`
--
ALTER TABLE `belarustableaccess_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_permissions`
--
ALTER TABLE `belarustableaccess_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_policies`
--
ALTER TABLE `belarustableaccess_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_policy_templates`
--
ALTER TABLE `belarustableaccess_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_policy_template_groups`
--
ALTER TABLE `belarustableaccess_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_resources`
--
ALTER TABLE `belarustableaccess_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_resource_groups`
--
ALTER TABLE `belarustableaccess_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableaccess_templatevars`
--
ALTER TABLE `belarustableaccess_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableactiondom`
--
ALTER TABLE `belarustableactiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableactions_fields`
--
ALTER TABLE `belarustableactions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT для таблицы `belarustablecategories`
--
ALTER TABLE `belarustablecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `belarustablecontent_type`
--
ALTER TABLE `belarustablecontent_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `belarustabledashboard`
--
ALTER TABLE `belarustabledashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustabledashboard_widget`
--
ALTER TABLE `belarustabledashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `belarustabledeprecated_call`
--
ALTER TABLE `belarustabledeprecated_call`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `belarustabledeprecated_method`
--
ALTER TABLE `belarustabledeprecated_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `belarustabledocumentgroup_names`
--
ALTER TABLE `belarustabledocumentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustabledocument_groups`
--
ALTER TABLE `belarustabledocument_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableextension_packages`
--
ALTER TABLE `belarustableextension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustablefc_profiles`
--
ALTER TABLE `belarustablefc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustablefc_sets`
--
ALTER TABLE `belarustablefc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustablelexicon_entries`
--
ALTER TABLE `belarustablelexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustablemanager_log`
--
ALTER TABLE `belarustablemanager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=933;

--
-- AUTO_INCREMENT для таблицы `belarustablemedia_sources`
--
ALTER TABLE `belarustablemedia_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustablemembergroup_names`
--
ALTER TABLE `belarustablemembergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustablemember_groups`
--
ALTER TABLE `belarustablemember_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustableproperty_set`
--
ALTER TABLE `belarustableproperty_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableregister_queues`
--
ALTER TABLE `belarustableregister_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `belarustableregister_topics`
--
ALTER TABLE `belarustableregister_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_content`
--
ALTER TABLE `belarustablesite_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_htmlsnippets`
--
ALTER TABLE `belarustablesite_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_plugins`
--
ALTER TABLE `belarustablesite_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_snippets`
--
ALTER TABLE `belarustablesite_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_templates`
--
ALTER TABLE `belarustablesite_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_tmplvars`
--
ALTER TABLE `belarustablesite_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_tmplvar_access`
--
ALTER TABLE `belarustablesite_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustablesite_tmplvar_contentvalues`
--
ALTER TABLE `belarustablesite_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `belarustabletransport_providers`
--
ALTER TABLE `belarustabletransport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustableusers`
--
ALTER TABLE `belarustableusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustableuser_attributes`
--
ALTER TABLE `belarustableuser_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `belarustableuser_group_roles`
--
ALTER TABLE `belarustableuser_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `belarustableuser_messages`
--
ALTER TABLE `belarustableuser_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `belarustableworkspaces`
--
ALTER TABLE `belarustableworkspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
