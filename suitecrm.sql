-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2019 at 12:11 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suitecrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('94aeef80-db3f-49c0-5fd1-5d01709a0c94', 'Clientes Taller', '2019-06-12 21:35:09', '2019-06-12 21:35:09', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', NULL, '', NULL, 'http://', NULL, '', NULL, '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('94aeef80-db3f-49c0-5fd1-5d01709a0c94', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_opportunities`
--

INSERT INTO `accounts_opportunities` (`id`, `opportunity_id`, `account_id`, `date_modified`, `deleted`) VALUES
('cbfb4b78-afa9-2633-5a44-5d0170b7e3be', 'c8133211-42a6-b495-9ba0-5d017070c08a', '94aeef80-db3f-49c0-5fd1-5d01709a0c94', '2019-06-12 21:39:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('1090bf5a-cc66-a675-3ae0-5becbe0ca819', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('10a08a3c-04eb-9e13-6c8f-5becbd65c036', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Emails', 'module', 90, 0),
('10d64c68-755b-d0cb-61b7-5becbe6746bb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('120cb63c-a49b-c811-4900-5becbd4198b9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Project', 'module', 90, 0),
('1272eab0-ab6b-ed63-a427-5becbe9ff564', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('12a16393-ff3d-c2ef-5e5d-5becbee7b557', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('12c87fd5-344a-7718-7386-5becbebb108b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('12ca316e-2387-7204-c6d7-5becbe385f93', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('13d63364-5bc8-2975-d140-5becbe54498d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('1454ef81-5919-f275-35bc-5becbe093812', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('14887541-89c7-1719-ed51-5becbd51ab07', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('16154f04-f8c2-ad2b-7300-5becbebfbf71', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('1648d467-ed79-77a9-4839-5becbe541b7a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Tasks', 'module', 90, 0),
('165c77f3-b42e-51b7-925b-5becbd9ceff2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('169f01d0-27e1-21ff-60a7-5becbe9486cf', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('17a5328c-d697-6db1-0837-5becbea43e9b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('1842680a-17b2-9631-fc6d-5becbe04c468', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('188d2ca6-d1c6-15c9-7a41-5becbd8b50dd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('1981fc2d-6fd6-b6dc-f2e1-5becbe2f20c6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('19d21fbb-d354-e750-0155-5becbdb2cd61', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Users', 'module', 90, 0),
('19fb4948-839c-4171-2260-5becbdd56f59', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('1af194f5-a10c-eb84-1c42-5becbdf75fa0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Leads', 'module', 90, 0),
('1bfa2343-0412-9c03-046b-5becbeb068d7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('1ccaef92-2699-fbd6-ab55-5becbd838bb4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Project', 'module', 90, 0),
('1dd383f2-f6c4-663e-c35a-5becbebc6a76', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('1ec9b3fc-a750-0dd1-4e98-5becbd131390', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Emails', 'module', 90, 0),
('1fc045d6-a1cf-4efa-47d0-5becbe80f5fe', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Reminders', 'module', 90, 0),
('1fd42723-b83f-69cc-57aa-5becbe43e00b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1ff0837f-d43d-f70d-90fd-5becbe08e239', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('207f264a-5ce8-25b2-fe52-5becbd1e8297', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('20949b5b-fa47-dad4-f523-5becbddb61e7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('215c9cc7-220d-6e29-7f01-5becbdf426a6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('2581a30d-bcc9-9e89-dd13-5becbea86369', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('258a4190-cdc1-9e08-5b1e-5becbd80d01f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Users', 'module', 90, 0),
('261c08e7-e37b-67b8-b182-5becbd8fafd6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Users', 'module', 90, 0),
('26b10f92-65b5-9c24-2d2a-5becbe85a6c2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('27ab4d16-8545-6ac1-bebb-5becbe29f3ff', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('289899fc-0b29-1a9e-9350-5becbed6aeb3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('28f21c36-95af-973b-903c-5becbe81e45c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('29e4d91c-0edd-b563-3379-5becbef9223d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('2a5c5c4d-7373-6831-f4ad-5becbd42876c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Prospects', 'module', 89, 0),
('2a81e2eb-026f-4496-daa0-5becbd96c0fd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Emails', 'module', 90, 0),
('2b7c0897-d14f-05e9-d73d-5becbed82932', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Reminders_Invitees', 'module', 89, 0),
('2bb34230-009b-e999-9dd5-5becbdba0967', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Calls', 'module', 90, 0),
('2d415663-0a8c-5dd8-93f8-5becbd17391b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Leads', 'module', 90, 0),
('2d5e1139-3477-97dd-11b2-5becbd3731bb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Notes', 'module', 90, 0),
('2d854e26-38e0-6629-0049-5becbd213232', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('2d9eabf3-32c7-8a9c-b7c3-5becbe3ed211', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('2f13b6cc-66ee-233c-a5d8-5becbec0c241', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('2f6267f7-3d17-090a-e597-5becbeec8df5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('309c6adf-87e6-bb39-deee-5becbdb5a77f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('3100727f-d14d-aa09-31b4-5becbddc6d4a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('3180ff85-b377-a98b-2761-5becbd9542f5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Users', 'module', 90, 0),
('31d89c08-c096-efb5-54a1-5becbd573a67', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Meetings', 'module', 89, 0),
('32dc0ed8-106c-243b-d788-5becbe05d440', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('337c449b-ac7f-f5b0-cd93-5becbdab92d7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Notes', 'module', 90, 0),
('35d2a554-1b73-4ad8-d51e-5becbe88b341', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('35d9eddb-7de0-87ed-3620-5becbe4d935c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('3622cd5c-7405-cfc4-1f8c-5becbd1182b5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('363a1b92-066c-83ac-b581-5becbd0e2aa0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('36c5a0c4-ad93-20ef-e52d-5becbecca658', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('36eac67c-d446-01dd-1c73-5becbd5b26ef', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Project', 'module', 90, 0),
('3782d3ce-a479-9bce-9860-5becbec530db', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('37ada9ae-59ef-5cc5-738d-5becbe0bf094', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Reminders', 'module', 90, 0),
('37cf75b4-3d12-2996-c2da-5becbd86ad68', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('37e87634-62ea-bba4-98ff-5becbd3316c8', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Calls', 'module', 90, 0),
('38e49d9c-cf62-ba54-38ba-5becbe126866', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('3a8b0198-8c5a-3aa5-e52a-5becbdc84b0f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Calls', 'module', 90, 0),
('3acbe210-251b-d7dd-1785-5becbe7ec769', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('3b5a82a1-a877-b090-339d-5becbddd0681', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('3d3924c5-208b-5a1c-dc05-5becbd4d252c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('3d3ec4e0-8b47-c688-7dba-5becbeec4a6b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('3e6cb411-d4f5-9392-bc9d-5becbe15152d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('3ec941a8-ebda-144c-9af9-5becbd35a4a9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Meetings', 'module', 90, 0),
('40a0ba00-49f1-454d-a2cd-5becbd6db7b4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('410d9539-a89d-5e79-4e89-5becbd997c34', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('42b6e796-a2b2-a745-1986-5becbe7625a6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('43c6180b-8ab7-f572-49f6-5becbd924452', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('4481b29a-d655-d5f6-32cf-5becbebc98bf', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('44ce8e4a-a212-cc2b-e3e3-5becbe0e105a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('456d93db-f3f7-0e66-005f-5becbe47e8d2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('45ba63f5-35eb-3d16-c971-5becbe4e17c0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('45d32ede-4431-ef13-ab6f-5becbdf14938', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Calls', 'module', 90, 0),
('45f0027f-57a8-b68b-bfd1-5becbe7da8eb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('4657775c-d2ac-b35e-eb62-5becbe9bbbb0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Reminders_Invitees', 'module', 90, 0),
('46fbc674-5035-1daf-e32a-5becbe3a5b56', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('472bbc39-6c41-a5f9-e7d7-5becbd94d037', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Prospects', 'module', 90, 0),
('48242c38-607e-896a-801d-5becbef2114f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('4899c650-b8ef-b80f-68a3-5becbdc05f29', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Leads', 'module', 90, 0),
('493a8549-8724-bb6d-4b4e-5becbd355517', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Project', 'module', 90, 0),
('4a332806-83ed-ed75-794b-5becbe9d0dfe', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('4c1fc177-44d8-d381-1029-5becbe4a219d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('4d52e7a5-b766-998a-2652-5becbd79b7d1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('4e8bad07-bf74-09ce-e2ae-5becbecfe1b6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('4ef686fa-17c9-cb62-4420-5becbd196e25', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Accounts', 'module', 90, 0),
('4ffb4151-1a62-df5f-f0b1-5becbd1f1f26', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('504839fa-625f-8a0e-14d5-5becbe2221ea', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('505308b2-dc0f-e9d8-1ab9-5becbed0dc41', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('506316ee-89b5-b84f-2432-5becbe3a8397', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('50b70f2d-ccb0-fc7d-29c1-5becbea6f6f1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('518b52ec-8e57-81c9-32f9-5becbd14845b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Calls', 'module', 90, 0),
('53584b57-ef94-6fa2-cf96-5becbe4cce7d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('53dc14cb-9230-1114-cc09-5becbdc0879e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Cases', 'module', 89, 0),
('54075571-c816-5191-9852-5becbe21780d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('541c61da-9f9e-c6f4-d09b-5becbdbfb489', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Prospects', 'module', 90, 0),
('5475bcb5-ad25-0c14-7924-5becbdd85be3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Project', 'module', 90, 0),
('562d42a8-3bba-01fa-097d-5becbe850bf7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('567f2325-b995-d5a0-9f78-5becbd923529', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('57b61547-0d8b-0a95-bbf4-5becbe61faf2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'EAPM', 'module', 89, 0),
('58cc9582-ad44-61bb-d86f-5becbd69bca0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('5927a4cf-35ce-4cab-9868-5becbd551a23', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Meetings', 'module', 90, 0),
('5a28f178-4fb4-af4a-ffb1-5becbedd9ba4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('5a7b01e6-3302-381d-1e64-5becbe2cda01', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('5b7e1d32-9e4c-8ac2-e00e-5becbe4f6903', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('5b85364b-d575-f7f3-6818-5becbe90a061', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('5baad0fd-1265-c62b-c5be-5becbed9a876', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('5bf1f6f9-7aba-d8cd-9d19-5becbdbc4e16', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('5bf2307b-2777-cc41-44ad-5becbe4bda77', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('5c0ebe01-b89a-e5e6-6fba-5becbebb1e06', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Reminders', 'module', 90, 0),
('5e1d3cbb-c2ff-0503-cca0-5becbde120a9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Cases', 'module', 90, 0),
('5e93787b-7b3f-87af-7814-5becbecc024f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('5eb363f4-24b7-2f82-201d-5becbd3a19f8', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('5f7255d4-a537-ec44-1fc9-5becbda5a6fc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('5ff30e73-2633-9706-daa0-5becbd9f3383', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('60759b15-c725-1e24-ba7f-5becbecd05b2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('60978683-3270-fa65-1360-5becbe5358cb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('612dacd3-5674-5d73-ed69-5becbebb9a77', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('627b2b87-ce29-c280-7ef9-5becbdb02922', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Leads', 'module', 90, 0),
('637e25aa-1e26-ecb0-215e-5becbd983cd4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('642491a4-42e3-5aa8-9286-5becbe14e65d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('6452df35-77f3-8c26-4b20-5becbe32a454', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Documents', 'module', 89, 0),
('64faba4b-4b92-cb9d-494d-5becbe01f882', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('658d2bad-3faf-fc09-4afa-5becbec93236', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('65d9dc4e-78e6-c9f6-85b8-5becbd81ff21', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('66c084f3-92dd-369e-22bd-5becbe38883e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('673d682c-c931-56b8-3e22-5becbea77bf9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('6749d43a-34ff-4aaf-0f9d-5becbe86bb7f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Reminders', 'module', 90, 0),
('675823d3-3bda-7eb4-1067-5becbe2c1a55', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('678be84a-ae94-1470-f0ff-5becbe0398cd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Reminders_Invitees', 'module', 90, 0),
('67aa6526-c06d-178f-38d1-5becbebbe0de', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('67cf9a3b-10bc-834d-2a71-5becbd746133', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Contacts', 'module', 89, 0),
('67e8a164-636b-7b1f-02bf-5becbde58fc2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('68304bef-4031-0cfe-bab6-5becbe77ed91', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('69586b28-1aad-792a-9588-5becbd6cb0a9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Cases', 'module', 90, 0),
('69958efe-cbe9-ab96-c896-5becbe17bd2c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('6ac5220b-c07c-966f-191a-5becbe86cd51', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('6acc1c1c-f3be-3f4e-f6b4-5becbe379e53', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('6b7cf304-6214-4e00-8bb4-5becbeb92cec', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('6b9425c1-f9a8-0af7-cdfa-5becbeb91dcb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('6b997c54-0ec0-39da-2d70-5becbe68c331', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Favorites', 'module', 89, 0),
('6be9f3a4-ace6-9de0-d984-5becbe1d4aa6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('6dede13e-5a61-c851-717f-5becbe267f38', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'EAPM', 'module', 90, 0),
('7015d58d-ca84-e008-3efc-5becbeb3c166', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('70ca35b3-31b7-8cf8-5c39-5becbe39eef0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'FP_events', 'module', 90, 0),
('715388fb-7cd6-cdf9-0519-5becbd2a5e11', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('7228463d-fd0b-f8d5-2519-5becbe397907', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('727899fd-6663-da9a-a1f3-5becbe71e55d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('73240c59-4653-9371-c7bd-5becbed7cc13', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('734ed3e5-db75-cf66-e259-5becbe0b7190', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('744a51c8-8bf8-8863-0d00-5becbd865b25', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Leads', 'module', 89, 0),
('74700cf4-d97d-ff02-b1f6-5becbe1182cf', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Documents', 'module', 90, 0),
('7481cdc4-b357-aada-8876-5becbd1d831a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Contacts', 'module', 90, 0),
('74cae0d3-a44b-978e-5086-5becbd439a34', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Leads', 'module', 90, 0),
('7594dacd-97f7-faef-92ed-5becbd42f778', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('75b52268-321c-45d1-f2b3-5becbeffb3d7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Reminders_Invitees', 'module', 90, 0),
('75da7212-c57f-aa23-f22e-5becbdac1fa1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('75dc5d81-82b3-a7b0-012e-5becbe0b019d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Alerts', 'module', 89, 0),
('75fa867e-5722-045d-f5cc-5becbdd66290', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('75fe7813-359e-c753-d2ac-5becbe50bf01', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('77132983-c6e9-44e6-2daf-5becbe6c3688', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Favorites', 'module', 90, 0),
('771347be-1d6a-4c79-abdc-5becbe53a74e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('77216e3a-537a-af67-381e-5becbe03d8f1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('77bca3f9-b197-20f5-f178-5becbd48c5b0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Accounts', 'module', 90, 0),
('789c268c-55af-1ce0-41e1-5becbe3375b1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('78ca4357-961c-0c58-b5a7-5becbded389e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('78ea951b-e859-dbb9-e63d-5becbe9643f9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'EAPM', 'module', 90, 0),
('7abe8801-2c5c-d3ff-3381-5becbeb1a450', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('7c11ba97-0d7e-a2bb-b2b2-5becbdeb25c6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Meetings', 'module', 90, 0),
('7c4a0640-ae60-915d-cce3-5becbeedd823', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('7c7b2fdc-e623-2f0e-5c98-5becbeda8a61', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('7c898715-5884-2959-5172-5becbefa144a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('7cc0dc65-4140-6b49-9821-5becbe6b5430', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'FP_events', 'module', 90, 0),
('7e110821-39b8-f196-f999-5becbe68741f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Tasks', 'module', 90, 0),
('7e193f90-5964-ae77-fce9-5becbd08238c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Cases', 'module', 90, 0),
('7e5f3183-15ed-7c9e-faf9-5becbe595c11', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('7f0fd388-78a5-3fdc-4655-5becbe6612df', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('7f4544b1-4254-90a5-a5b5-5becbd99386c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('7f8eb7ce-8ada-f64d-f1d8-5becbe2cd037', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('7f921786-5915-949e-7c04-5becbd3803b0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('7fc791e9-8baa-f45e-37f3-5becbd51d883', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('7fd47336-b12b-cc15-82ce-5becbe75f26e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('7fe6576b-0cb4-0ba2-1f38-5becbe3428e7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('8052e5a6-c398-358a-a3a3-5becbd2810d0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Bugs', 'module', 89, 0),
('807a3418-a912-94e3-f974-5becbde97bfc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('811783c5-b0fc-3604-a325-5becbeb2406a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Alerts', 'module', 90, 0),
('822c85c0-0b23-2363-ec8f-5becbe1c8c7e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('8238bf75-4418-d060-03d1-5becbdabbfd7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Accounts', 'module', 89, 0),
('82472154-dfbf-7c11-6f82-5becbe0d4aee', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('828cc7b5-4146-ccf3-6d0b-5becbe287855', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Favorites', 'module', 90, 0),
('829eca7d-71be-84b0-ff47-5becbe8efd61', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('82d9965f-0c43-3f1e-64df-5becbe6763e3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('83f1dd40-8ba7-68ba-95f3-5becbd201eea', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('8414169d-1453-a6cf-86c8-5becbec11125', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('8534061b-e0c0-feca-bd27-5becbdc4ef04', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('8676d694-f41f-ccb4-b30d-5becbe1bf945', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('86efe9c5-cfe1-3e78-f592-5becbd9f4ceb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('881bd996-ad6f-8989-cbec-5becbd2c07fb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Cases', 'module', 90, 0),
('8846d5d7-95ca-a29a-6c6b-5becbd7d5b6b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Meetings', 'module', 90, 0),
('88f60c08-9f0b-c043-5fd1-5becbe990c4a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('8907cb1d-e510-d1c6-4a1a-5becbe7bafbc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('89a147da-b2c3-be00-815d-5becbd67461d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('8a0c85a1-2522-3e14-cc26-5becbe76281a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('8a0e8ef8-5bde-c900-57e9-5becbe211ee6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('8a67ac2d-8b05-2230-d6b4-5becbeea1fb9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('8b588138-a570-2de9-d3df-5becbd89816b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('8b76df42-dc3d-ccd8-3540-5becbde67312', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('8bc3edc7-df29-9ca2-fd63-5becbe2a8a33', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('8c52ca30-c82c-c801-f618-5becbeac8600', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('8d0512de-73ca-74ba-7706-5becbd67476f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Bugs', 'module', 90, 0),
('8d4218b6-6330-414f-b5c7-5becbe914377', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('8e050c15-30b8-2aed-1a4a-5becbded6206', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Leads', 'module', 90, 0),
('8e46b31c-1c07-182b-629f-5becbe64960b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Alerts', 'module', 90, 0),
('8e98cbf4-f1e7-9514-f4f6-5becbd4db33d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Emails', 'module', 89, 0),
('8ea03203-1039-5768-42e5-5becbe13a4ad', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('8ec1fb9e-82a5-e044-80e2-5becbe54f4a9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Favorites', 'module', 90, 0),
('8ed236b2-4abe-24f8-6163-5becbe9a56d7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('8f2962f8-9f94-e1ee-799a-5becbd9c5a56', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Accounts', 'module', 90, 0),
('8ff37818-9319-8d55-f0e8-5becbea37fdc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('9008af57-c223-0836-52b5-5becbdaa86b5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Calls', 'module', 89, 0),
('903c7a58-fdd8-c38b-9435-5becbd5957a4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Notes', 'module', 89, 0),
('9095bb20-2604-5cbf-2479-5becbd5ca705', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Contacts', 'module', 90, 0),
('92498af7-2019-9b73-6953-5becbdbe809c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('92e35cea-b0d0-cf18-9237-5becbe077e61', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('930c61c1-a722-17f8-7274-5becbe5fd8f9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('932e0ffe-ea67-2299-e708-5becbe6125e4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('93958e8f-6094-b3d0-78d3-5becbd7a8412', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Cases', 'module', 90, 0),
('93a00748-6cc2-3252-9477-5becbea40927', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('93a60084-7e42-223d-698e-5becbe5bc68c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('93e099b7-dadb-62c9-7dea-5becbdb000f5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('9549ac15-134f-2306-4399-5becbef4ac49', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('956092d1-1ddd-f002-6ee0-5becbdab60db', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Notes', 'module', 90, 0),
('956b947b-60cf-6b7e-4bb4-5becbea38c8e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('9597f8f4-8d57-a628-8564-5becbd767aca', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('95af6bb2-e57b-e8f7-8652-5becbee70b07', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('95cbd5cb-e037-0c7a-fa11-5becbe626cc4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('95fa5658-d9ee-eb62-ed5a-5becbe65c9fd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('9707bc6e-caf7-1a3b-d4d2-5becbd12296f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Bugs', 'module', 90, 0),
('970f3edf-2041-d0d2-c7cc-5becbe4ecc6c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('9710bd7f-f30f-e5ff-7f73-5becbdd5efd0', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('97dfff6c-ddbb-e7d1-96bf-5becbd9cb0f8', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Emails', 'module', 90, 0),
('980af4ab-819c-df4b-7dba-5becbef3eddc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('988617b7-b3d6-08d7-dc6b-5becbe650992', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Favorites', 'module', 90, 0),
('989f23f9-e85d-208d-8272-5becbeb4d049', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Reminders_Invitees', 'module', 90, 0),
('98a003f9-85f6-97d7-c44d-5becbdb2eb4d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('99774dcb-fc62-e928-1884-5becbea704ed', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('99a03335-ef44-72c6-5417-5becbd7195cb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Tasks', 'module', 89, 0),
('9a07a30d-64ad-e319-5d64-5becbd2e86db', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Project', 'module', 89, 0),
('9a9c0e7c-7cb9-eb01-2421-5becbe1cdb74', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('9a9fdcd1-0336-33b3-e9c3-5becbe419303', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9aba6425-1d5c-03ad-6f24-5becbe725b17', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('9b526348-9598-c3e1-443f-5becbeff2080', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('9b6d2fdf-e9cb-b5fc-6791-5becbeb3f3a5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('9c1a14c4-9910-c3ad-f84a-5becbd660474', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Accounts', 'module', 90, 0),
('9c3a663a-8ac9-f16f-038c-5becbeadfa30', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('9c8c6865-a005-6dd3-0d31-5becbd407203', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('9d0b2b39-f892-29be-824b-5becbd2baba2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('9de4fad3-2697-9924-db2c-5becbd5625f1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Users', 'module', 89, 0),
('9ea2a21c-eb98-bd53-b9ff-5becbe5bfc31', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('9eda00d6-957d-80c8-e99b-5becbed80647', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('9f0f23b5-353a-851e-c6cf-5becbd3acbd4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Cases', 'module', 90, 0),
('a06b7ecd-47dd-afea-d3c9-5becbddb81d2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('a08a06ad-16fb-3e35-7745-5becbeeec8bd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('a1a6080c-c207-d9f4-301d-5becbec9346b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('a1bd5a0e-15c0-f91d-e8c6-5becbe7124ab', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('a1f10016-2947-bcae-b47f-5becbe0cec0c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('a2816c18-e1c0-9979-641e-5becbdf950cc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('a33d0af3-6403-cd6d-9035-5becbe737f0a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Alerts', 'module', 90, 0),
('a34442c5-0671-0bb7-a47b-5becbeda4525', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Favorites', 'module', 90, 0),
('a3ca6d88-bcca-89e2-262b-5becbe7a06eb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('a3ffe4c7-8e3c-196d-3c8d-5becbe5f24ac', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('a46b091f-112e-646f-88d2-5becbe8f3e4c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('a53a2b57-f09d-b124-cf32-5becbee2cb21', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('a6862dde-b19f-a80d-c9db-5becbd3c7e84', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Emails', 'module', 90, 0),
('a761f1b3-2f57-a790-37e7-5becbe07d266', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('a7b416de-9730-4dde-87fa-5becbe815f49', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('a83694d9-c468-f1b9-43f8-5becbe85e556', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('a884e96e-afb6-8dd4-bfe0-5becbdb532a1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Tasks', 'module', 90, 0),
('a88f8dfc-3e0f-bbb7-3f2d-5becbde07cc7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('a8cacc52-de41-15c9-40e2-5becbebd4e75', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('a8f3d53b-6e36-3a23-a01d-5becbef24f99', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('a93e97fe-0522-3e1f-8186-5becbd909313', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('a9e850b1-dd5a-48a9-5fa4-5becbe9be92d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Documents', 'module', 90, 0),
('aa4a5c2d-8b4f-8832-7028-5becbd3dcf66', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('ab410a56-6964-56d3-729e-5becbe3617d4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('ac0e201f-254d-43b0-97ae-5becbd22734d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Users', 'module', 90, 0),
('ad010161-2e73-9a0f-e13f-5becbda40da6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('ad758990-c4f9-b27e-ed28-5becbea0f023', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('ad9cb5d0-72c3-22f5-a51c-5becbe5e7dcf', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('af3afb0d-a0a5-64fc-5ad5-5becbe08dfb5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Favorites', 'module', 90, 0),
('aff65eb9-76e8-f0ae-101b-5becbd3d3577', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('aff81b9f-335b-1cd8-5807-5becbd2f61e4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('b01f6f53-f162-bc8b-f1ba-5becbdbdf1d4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('b0a03475-8d2f-63cb-d1f8-5becbe39deb4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('b0d3e2eb-eebf-2371-f527-5becbebff70e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'EAPM', 'module', 90, 0),
('b0dce790-f7bd-f933-0d0c-5becbe527d43', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('b130d6bd-a2b8-faf7-f05c-5becbe5cdde9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('b2e28715-fd51-1009-7596-5becbd0ed537', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('b2f9b1a9-c0e9-db8b-e202-5becbdbf945b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('b38c2412-a190-4f25-f778-5becbdc3f9af', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('b44ed957-7ec2-970e-244f-5becbd9e7ea5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Prospects', 'module', 90, 0),
('b4ea803f-7e32-a68f-0af0-5becbe16a889', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('b573c53d-bc8b-485d-61be-5becbd67408b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Contacts', 'module', 90, 0),
('b61d895c-76d6-0689-dea8-5becbef8943d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Documents', 'module', 90, 0),
('b6b58262-405b-ba51-fff3-5becbe8eee30', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('b9b56178-f9a0-118d-a4cd-5becbea5ee4d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('bb51bfd0-c09e-ad56-c71f-5becbd80668b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Tasks', 'module', 90, 0),
('bb702342-45e9-2f91-ba1e-5becbe44f939', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Favorites', 'module', 90, 0),
('bbb096ea-d027-1fd4-f9c5-5becbefbc5fd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('bc4f6932-4ac0-b45f-8f89-5becbe1399dd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('bc58602d-36ef-f6fc-c2bd-5becbec96299', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('bc9107f9-b001-babc-aea8-5becbd122a84', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('bd059ec7-8e58-6ee3-d684-5becbe263feb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('c16a6d39-a0bf-07ab-6f95-5becbd1598c8', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Contacts', 'module', 90, 0),
('c2142769-e57d-8067-5bab-5becbeb3841d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Documents', 'module', 90, 0),
('c26da973-55ec-8e2e-8903-5becbeffe580', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('c323a417-9f73-e186-ee4a-5becbe1b2fe3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'EAPM', 'module', 90, 0),
('c3df6d31-a920-e1d3-b935-5becbe72b1df', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('c3ff3fae-8683-0219-4c86-5becbd9a0ebe', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Notes', 'module', 90, 0),
('c57f015f-21e4-29e7-e82e-5becbd9c9d5b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Prospects', 'module', 90, 0),
('c5b4d1ec-1dee-b384-08e9-5becbe81d858', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('c786dfb3-7226-8625-6233-5becbde5d150', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('c7b73d80-042b-f1a7-20b5-5becbe1d1ec3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Reminders', 'module', 89, 0),
('c7c541df-0772-67a2-b605-5becbdadc2c5', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('c8096365-8482-8a0d-e608-5becbe4437fc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('c8109945-3e28-8554-5f26-5becbe8688a6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('c908b3aa-0a5d-044c-bffe-5becbe85343e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('c93ac295-c051-c0a9-706d-5becbe7580df', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('c95c9084-f63d-dc1d-e9a4-5becbef60fa6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('cbddd5c0-0cd8-ce2b-55fb-5becbe8bdcf9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('cd10d0f4-32a3-0ee8-499e-5becbeabcba8', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Documents', 'module', 90, 0),
('cdb8846a-cf4f-c1ae-77f3-5becbd69098e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Bugs', 'module', 90, 0),
('cdcc7f08-dcb4-aac8-3fc4-5becbe7d432a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'FP_events', 'module', 89, 0),
('cdde1bca-22db-6e1c-d32b-5becbd14554b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('ce0eae91-4ecd-7f67-958b-5becbeeff97f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('ce2b053e-5013-8b37-a256-5becbe7c707d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('ce9d51d9-7651-42c0-2441-5becbee81a75', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('cea2debf-e3ba-d99c-414b-5becbe51d470', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('cebbe3b5-61fa-70a9-f1c9-5becbe17ae9d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('cffd207f-d8e7-25ab-b131-5becbe838a5a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('d030b01b-351c-bd3f-0b20-5becbd8b11f2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Users', 'module', 90, 0),
('d2210f50-7033-a234-2dca-5becbe868b37', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('d2d5a59d-9c18-4770-3bc9-5becbd522dd7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('d2f5ce4b-8022-7c97-f2e0-5becbda8bf3e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Emails', 'module', 90, 0),
('d33d6c06-d436-ec6b-001a-5becbe64685a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('d342d523-46a7-ee66-5402-5becbe663ee8', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('d3bc013c-7f59-5ff8-3e10-5becbdc661ce', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('d445b96c-8ec4-e687-dfd5-5becbef42948', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('d4826ed7-0a38-e2de-f89f-5becbe5ac21e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('d499980e-7361-791d-0734-5becbed5abd2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('d4e2bfaf-318f-c75f-1b58-5becbd894dd4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Calls', 'module', 90, 0),
('d5baac0f-531b-b366-b434-5becbd14f11f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('d61ee5b0-f2d4-daa3-a62a-5becbef82e77', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Reminders', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('d62601d5-6723-bdc9-f821-5becbe8c2556', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Reminders_Invitees', 'module', 90, 0),
('d67f4f25-393f-aaa0-ff0c-5becbefdff23', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('d701d5b4-5ea2-8407-71e0-5becbefb5a80', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('d7994a67-8cf5-0e64-2127-5becbd5813db', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('d79d334f-c5b6-2113-3127-5becbe657cbf', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('d88aacea-d1e9-4e27-0e5b-5becbed2393b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'FP_events', 'module', 90, 0),
('d96bb595-102c-a0f5-100e-5becbe0cdf2a', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('da640c2a-750b-e8b2-1563-5becbe19f082', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('db2f99e0-fbc0-1bd3-a4ac-5becbe68e276', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('db718747-eef8-902a-d255-5becbea0422b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('dc9bbe49-0bea-92f2-4b02-5becbe93fb09', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('dfb84142-f5f4-e880-7a4f-5becbe1846bc', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('e03c6576-c030-46c1-dccf-5becbe140c5d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('e06506fb-5db6-880e-df74-5becbdeeda2b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('e0b790fa-b8e3-cfd5-8ad3-5becbe769e23', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('e16131f7-c23b-9538-f726-5becbec5a7d3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Reminders_Invitees', 'module', 90, 0),
('e18184e9-f37f-deae-2653-5becbea33ae6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('e2543ae3-7fb5-4d3a-a100-5becbe6b20c1', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('e28d4369-7f56-499a-9c64-5becbe736803', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'FP_events', 'module', 90, 0),
('e2fdde49-ee0d-d6c1-0dff-5becbe516e9e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('e3cb1836-b3e2-d114-e4b6-5becbe74acb6', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Reminders', 'module', 90, 0),
('e429ea77-8337-8918-4b4d-5becbeaa7f7b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('e4b6b813-60db-6679-17f7-5becbd1a1791', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'Notes', 'module', 90, 0),
('e5177064-70a1-7694-71a7-5becbeee49b7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e68f0287-3891-5ded-24f2-5becbe34faf9', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('e6a3c4b9-e9a1-22c6-8b32-5becbe7f3ea7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('e76f3303-9638-60f9-a032-5becbe049e45', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Documents', 'module', 90, 0),
('e782fce1-bce6-ab33-67fc-5becbe6823c7', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('e86748a4-67bc-2159-3b09-5becbd153c95', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'Project', 'module', 90, 0),
('e893e72d-4e2c-f658-86e9-5becbd30d2f3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'Bugs', 'module', 90, 0),
('ea766158-7fa6-e3bf-d161-5becbee0d5ed', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('eac8a981-4a28-26d0-2758-5becbe04f94c', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('eaec4561-7dde-9d1c-3e13-5becbecd7399', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('eb0e02de-b5a8-ac4e-b599-5becbed6f41b', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Alerts', 'module', 90, 0),
('ebb61296-59b1-ca07-6be9-5becbec4700e', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('ecaffa43-a869-e6e2-cc18-5becbeec7c02', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('ed141289-57ad-36eb-6952-5becbea105fb', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('eda846c6-a8eb-2c55-2214-5becbe7ec464', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('ee2c8725-b383-be7c-032a-5becbee65d7f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('ee5b0ef2-c7ec-1ba0-3e63-5becbe96abcd', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('eeceed2d-6b9b-b6a7-7564-5becbe6eecf2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'massupdate', 'Reminders_Invitees', 'module', 90, 0),
('eff56430-ecab-6863-ecf6-5becbd6a66d2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'import', 'Notes', 'module', 90, 0),
('f16add4d-2c88-579d-28d7-5becbeb3bd5f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('f232cc37-cdce-78b1-cebf-5becbe2b89e4', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'edit', 'Reminders', 'module', 90, 0),
('f3d30be3-55cf-da84-71e5-5becbe8451e2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('f49b05d6-19d7-4062-2954-5becbe491332', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('2c9397c8-7320-94cc-9f01-5d0170a84ba1', 'Pintura', '2019-06-12 21:36:10', '2019-06-12 21:39:34', '1', '1', NULL, 0, '', NULL, 1, 'c8133211-42a6-b495-9ba0-5d017070c08a', 'Opportunities'),
('77699fb9-8db9-a2f1-63dc-5d0170a633c0', 'Clientes Taller', '2019-06-12 21:35:09', '2019-06-12 21:35:09', '1', '1', NULL, 0, NULL, NULL, 1, '94aeef80-db3f-49c0-5fd1-5d01709a0c94', 'Accounts'),
('9b957184-6722-6a73-a489-5bed926a4c9f', 'Cita de Prueba 1', '2018-11-15 15:36:17', '2018-11-15 15:36:17', '1', '1', NULL, 0, NULL, NULL, 1, '8fc7d501-8eb6-9604-9e02-5bed924aa861', 'Meetings'),
('c2e62b9a-128e-3f08-1943-5bed925c8d05', 'Daniel Gonzalez', '2018-11-15 15:35:29', '2018-11-23 21:18:13', '1', '1', NULL, 0, '', NULL, 1, '721509bd-6082-497d-0063-5bed92fd4228', 'Contacts'),
('c4162121-5f3c-4bbc-78cf-5d0170eef94d', 'Daniel González', '2019-06-12 21:38:23', '2019-06-12 21:39:34', '1', '1', NULL, 0, '', NULL, 1, '928251b3-aaee-4f30-c6d4-5d0170710139', 'Leads');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.20'),
('MySettings', 'tab', 'YTozNTp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjk6IkNhbXBhaWducyI7aToxMDtzOjU6IkNhbGxzIjtpOjExO3M6ODoiTWVldGluZ3MiO2k6MTI7czo1OiJUYXNrcyI7aToxMztzOjU6Ik5vdGVzIjtpOjE0O3M6MTI6IkFPU19JbnZvaWNlcyI7aToxNTtzOjEzOiJBT1NfQ29udHJhY3RzIjtpOjE2O3M6NToiQ2FzZXMiO2k6MTc7czo5OiJQcm9zcGVjdHMiO2k6MTg7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxOTtzOjc6IlByb2plY3QiO2k6MjA7czoxOToiQU1fUHJvamVjdFRlbXBsYXRlcyI7aToyMTtzOjE2OiJBTV9UYXNrVGVtcGxhdGVzIjtpOjIyO3M6OToiRlBfZXZlbnRzIjtpOjIzO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7aToyNDtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MjU7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToyNjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7aToyNztzOjk6Impqd2dfTWFwcyI7aToyODtzOjEyOiJqandnX01hcmtlcnMiO2k6Mjk7czoxMDoiamp3Z19BcmVhcyI7aTozMDtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO2k6MzE7czoxMToiQU9SX1JlcG9ydHMiO2k6MzI7czoxMjoiQU9XX1dvcmtGbG93IjtpOjMzO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtpOjM0O3M6Mjk6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzIjt9'),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '2');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT '0',
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('721509bd-6082-497d-0063-5bed92fd4228', '2018-11-15 15:35:29', '2018-11-23 21:18:13', '1', '1', NULL, 0, '1', NULL, 'Daniel', 'Gonzalez', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Carrera 22 76-57', 'Bogota', NULL, NULL, 'Colombia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, 0, 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `location_c` varchar(255) DEFAULT 'https://www.google.com/maps/embed/v1/place?key=AIzaSyC3e6tl0_9HDD5D9FDhJpdQaH2Fcq-NG7k&q={direccion_c}, {ciudad_c}',
  `marca_c` varchar(255) DEFAULT NULL,
  `linea_c` varchar(255) DEFAULT NULL,
  `placa_c` varchar(255) DEFAULT NULL,
  `modelo_c` varchar(255) DEFAULT NULL,
  `kilometraje_c` varchar(255) DEFAULT NULL,
  `color_c` varchar(255) DEFAULT NULL,
  `soat_c` date DEFAULT NULL,
  `tecnomecanica_c` date DEFAULT NULL,
  `direccion_c` varchar(255) DEFAULT NULL,
  `ciudad_c` varchar(255) DEFAULT NULL,
  `marca_alternativa_1_c` varchar(255) DEFAULT NULL,
  `linea_alternativa_1_c` varchar(255) DEFAULT NULL,
  `placa_alternativa_1_c` varchar(255) DEFAULT NULL,
  `modelo_alternativo_1_c` varchar(255) DEFAULT NULL,
  `kilometraje_alternativo_1_c` varchar(255) DEFAULT NULL,
  `color_alternativo_1_c` varchar(255) DEFAULT NULL,
  `soat_alternativo_1_c` date DEFAULT NULL,
  `tecnomecanica_alternativa_1_c` date DEFAULT NULL,
  `marca_alternativa_2_c` varchar(255) DEFAULT NULL,
  `linea_alternativa_2_c` varchar(255) DEFAULT NULL,
  `placa_alternativa_2_c` varchar(255) DEFAULT NULL,
  `modelo_alternativo_2_c` varchar(255) DEFAULT NULL,
  `kilometraje_alternativo_2_c` varchar(255) DEFAULT NULL,
  `color_alternativo_2_c` varchar(255) DEFAULT NULL,
  `soat_alternativo_2_c` date DEFAULT NULL,
  `tecnomecanica_alternativa_2_c` date DEFAULT NULL,
  `marca_alternativa_3_c` varchar(255) DEFAULT NULL,
  `linea_alternativa_3_c` varchar(255) DEFAULT NULL,
  `placa_alternativa_3_c` varchar(255) DEFAULT NULL,
  `modelo_alternativo_3_c` varchar(255) DEFAULT NULL,
  `kilometraje_alternativo_3_c` varchar(255) DEFAULT NULL,
  `color_alternativo_3_c` varchar(255) DEFAULT NULL,
  `soat_alternativo_3_c` date DEFAULT NULL,
  `tecnomecanica_alternativa_3_c` date DEFAULT NULL,
  `marca_alternativa_4_c` varchar(255) DEFAULT NULL,
  `linea_alternativa_4_c` varchar(255) DEFAULT NULL,
  `placa_alternativa_4_c` varchar(255) DEFAULT NULL,
  `modelo_alternativo_4_c` varchar(255) DEFAULT NULL,
  `color_alternativo_4_c` varchar(255) DEFAULT NULL,
  `soat_alternativo_4_c` date DEFAULT NULL,
  `tecnomecanica_alternativa_4_c` date DEFAULT NULL,
  `kilometraje_alternativo_4_c` varchar(255) DEFAULT NULL,
  `marca_alternativa_5_c` varchar(255) DEFAULT NULL,
  `linea_alternativa_5_c` varchar(255) DEFAULT NULL,
  `placa_alternativa_5_c` varchar(255) DEFAULT NULL,
  `modelo_alternativo_5_c` varchar(255) DEFAULT NULL,
  `kilometraje_alternativo_5_c` varchar(255) DEFAULT NULL,
  `color_alternativo_5_c` varchar(255) DEFAULT NULL,
  `soat_alternativo_5_c` date DEFAULT NULL,
  `tecnomecanica_alternativa_5_c` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `location_c`, `marca_c`, `linea_c`, `placa_c`, `modelo_c`, `kilometraje_c`, `color_c`, `soat_c`, `tecnomecanica_c`, `direccion_c`, `ciudad_c`, `marca_alternativa_1_c`, `linea_alternativa_1_c`, `placa_alternativa_1_c`, `modelo_alternativo_1_c`, `kilometraje_alternativo_1_c`, `color_alternativo_1_c`, `soat_alternativo_1_c`, `tecnomecanica_alternativa_1_c`, `marca_alternativa_2_c`, `linea_alternativa_2_c`, `placa_alternativa_2_c`, `modelo_alternativo_2_c`, `kilometraje_alternativo_2_c`, `color_alternativo_2_c`, `soat_alternativo_2_c`, `tecnomecanica_alternativa_2_c`, `marca_alternativa_3_c`, `linea_alternativa_3_c`, `placa_alternativa_3_c`, `modelo_alternativo_3_c`, `kilometraje_alternativo_3_c`, `color_alternativo_3_c`, `soat_alternativo_3_c`, `tecnomecanica_alternativa_3_c`, `marca_alternativa_4_c`, `linea_alternativa_4_c`, `placa_alternativa_4_c`, `modelo_alternativo_4_c`, `color_alternativo_4_c`, `soat_alternativo_4_c`, `tecnomecanica_alternativa_4_c`, `kilometraje_alternativo_4_c`, `marca_alternativa_5_c`, `linea_alternativa_5_c`, `placa_alternativa_5_c`, `modelo_alternativo_5_c`, `kilometraje_alternativo_5_c`, `color_alternativo_5_c`, `soat_alternativo_5_c`, `tecnomecanica_alternativa_5_c`) VALUES
('721509bd-6082-497d-0063-5bed92fd4228', 0.00000000, 0.00000000, '', 'Carrera 22 # 76-57', '', 'Renault', 'Clio', 'CVL685', '2008', '95000', 'Gris', '2018-11-21', '2018-11-17', 'Calle 169 16C 92', 'Bogota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('d7687ce6-a49d-d813-16b1-5bed92f7b2d3', 'dgonzalez@servitalleres.com', 'DGONZALEZ@SERVITALLERES.COM', 0, 0, '2018-11-15 15:35:29', '2018-11-15 15:35:29', 0),
('e19b1c42-bcdd-c3eb-f964-5becbf0c0299', 'example@admin.com', 'EXAMPLE@ADMIN.COM', 0, 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('d76876ce-0ca9-2e94-4002-5bed924664cc', 'd7687ce6-a49d-d813-16b1-5bed92f7b2d3', '721509bd-6082-497d-0063-5bed92fd4228', 'Contacts', 1, 0, '2018-11-15 15:35:29', '2018-11-15 15:35:29', 0),
('dc7a812a-ce10-c7cf-9349-5becbffa3a26', 'e19b1c42-bcdd-c3eb-f964-5becbf0c0299', '1', 'Users', 1, 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('153bb719-d420-72a5-b6e5-5becbe0cec8f', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('2652f652-c2a3-43cf-a04b-5becbe1e62c3', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('3a96ba70-8e2d-24ec-377d-5becbe7d27d2', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p> </p>\r\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ', 0, NULL, NULL, NULL),
('3cc5bc67-6f01-1e62-7966-5becbe2e5872', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('51e709b2-327c-57b2-e047-5becbe52c4ab', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('54399bc3-28c9-2e91-d2bf-5becbe479da1', '2013-05-24 14:31:45', '2018-11-15 00:28:56', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('e869b490-27ea-cf6d-90e7-5becbe92fa5d', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('f5bf0919-cd75-da07-e95e-5becbee12443', '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsciudad_c', 'ciudad_c', 'LBL_CIUDAD', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 20:29:10', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactscolor_alternativo_1_c', 'color_alternativo_1_c', 'LBL_COLOR_ALTERNATIVO_1', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 21:47:16', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactscolor_alternativo_2_c', 'color_alternativo_2_c', 'LBL_COLOR_ALTERNATIVO_2', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:18:55', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactscolor_alternativo_3_c', 'color_alternativo_3_c', 'LBL_COLOR_ALTERNATIVO_3', NULL, NULL, 'Contacts', 'varchar', 255, 0, NULL, '2018-11-23 23:48:34', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactscolor_alternativo_4_c', 'color_alternativo_4_c', 'LBL_COLOR_ALTERNATIVO_4', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:33:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactscolor_alternativo_5_c', 'color_alternativo_5_c', 'LBL_COLOR_ALTERNATIVO_5', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:49:32', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactscolor_c', 'color_c', 'LBL_COLOR', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 20:13:27', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsdireccion_c', 'direccion_c', 'LBL_DIRECCION', NULL, NULL, 'Contacts', 'varchar', 255, 0, NULL, '2018-11-23 20:32:55', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactskilometraje_alternativo_1_c', 'kilometraje_alternativo_1_c', 'LBL_KILOMETRAJE_ALTERNATIVO_1', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 21:44:21', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactskilometraje_alternativo_2_c', 'kilometraje_alternativo_2_c', 'LBL_KILOMETRAJE_ALTERNATIVO_2', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:16:41', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactskilometraje_alternativo_3_c', 'kilometraje_alternativo_3_c', 'LBL_KILOMETRAJE_ALTERNATIVO_3', NULL, NULL, 'Contacts', 'varchar', 255, 0, NULL, '2018-11-23 23:35:35', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactskilometraje_alternativo_4_c', 'kilometraje_alternativo_4_c', 'LBL_KILOMETRAJE_ALTERNATIVO_4', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:38:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactskilometraje_alternativo_5_c', 'kilometraje_alternativo_5_c', 'LBL_KILOMETRAJE_ALTERNATIVO_5', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:48:33', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactskilometraje_c', 'kilometraje_c', 'LBL_KILOMETRAJE', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 20:12:27', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslinea_alternativa_1_c', 'linea_alternativa_1_c', 'LBL_LINEA_ALTERNATIVA_1', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 21:25:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslinea_alternativa_2_c', 'linea_alternativa_2_c', 'LBL_LINEA_ALTERNATIVA_2', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:10:06', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslinea_alternativa_3_c', 'linea_alternativa_3_c', 'LBL_LINEA_ALTERNATIVA_3', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:29:10', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslinea_alternativa_4_c', 'linea_alternativa_4_c', 'LBL_LINEA_ALTERNATIVA_4', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:29:19', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslinea_alternativa_5_c', 'linea_alternativa_5_c', 'LBL_LINEA_ALTERNATIVA_5', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:41:44', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslinea_c', 'linea_c', 'LBL_LINEA', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 20:00:32', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactslocation_c', 'location_c', 'LBL_LOCATION', NULL, NULL, 'Contacts', 'iframe', 255, 0, 'https://www.google.com/maps/embed/v1/place?key=AIzaSyC3e6tl0_9HDD5D9FDhJpdQaH2Fcq-NG7k&q={direccion_c}, {ciudad_c}', '2018-11-23 20:30:59', 0, 0, 0, 0, 1, 'false', NULL, NULL, '1', '200'),
('Contactsmarca_alternativa_1_c', 'marca_alternativa_1_c', 'LBL_MARCA_ALTERNATIVA_1', NULL, NULL, 'Contacts', 'varchar', 255, 0, NULL, '2018-11-23 23:01:52', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactsmarca_alternativa_2_c', 'marca_alternativa_2_c', 'LBL_MARCA_ALTERNATIVA_2', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:07:16', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmarca_alternativa_3_c', 'marca_alternativa_3_c', 'LBL_MARCA_ALTERNATIVA_3', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:27:39', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmarca_alternativa_4_c', 'marca_alternativa_4_c', 'LBL_MARCA_ALTERNATIVA_4', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:27:24', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmarca_alternativa_5_c', 'marca_alternativa_5_c', 'LBL_MARCA_ALTERNATIVA_5', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:40:12', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmarca_c', 'marca_c', 'LBL_MARCA', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 19:58:04', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmodelo_alternativo_1_c', 'modelo_alternativo_1_c', 'LBL_MODELO_ALTERNATIVO_1', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 21:41:43', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmodelo_alternativo_2_c', 'modelo_alternativo_2_c', 'LBL_MODELO_ALTERNATIVO_2', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:14:17', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmodelo_alternativo_3_c', 'modelo_alternativo_3_c', 'LBL_MODELO_ALTERNATIVO_3', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:32:44', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmodelo_alternativo_4_c', 'modelo_alternativo_4_c', 'LBL_MODELO_ALTERNATIVO_4', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:32:39', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmodelo_alternativo_5_c', 'modelo_alternativo_5_c', 'LBL_MODELO_ALTERNATIVO_5', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:44:11', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsmodelo_c', 'modelo_c', 'LBL_MODELO', NULL, NULL, 'Contacts', 'varchar', 255, 0, NULL, '2018-11-23 20:17:18', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactsplaca_alternativa_1_c', 'placa_alternativa_1_c', 'LBL_PLACA_ALTERNATIVA_1', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 21:27:54', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsplaca_alternativa_2_c', 'placa_alternativa_2_c', 'LBL_PLACA_ALTERNATIVA_2', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:11:55', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsplaca_alternativa_3_c', 'placa_alternativa_3_c', 'LBL_PLACA_ALTERNATIVA_3', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 23:31:22', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsplaca_alternativa_4_c', 'placa_alternativa_4_c', 'LBL_PLACA_ALTERNATIVA_4', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:31:32', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsplaca_alternativa_5_c', 'placa_alternativa_5_c', 'LBL_PLACA_ALTERNATIVA_5', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-24 14:42:34', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsplaca_c', 'placa_c', 'LBL_PLACA', '', '', 'Contacts', 'varchar', 255, 0, '', '2018-11-23 20:05:31', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactssoat_alternativo_1_c', 'soat_alternativo_1_c', 'LBL_SOAT_ALTERNATIVO_1', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 22:58:07', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactssoat_alternativo_2_c', 'soat_alternativo_2_c', 'LBL_SOAT_ALTERNATIVO_2', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 23:21:36', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactssoat_alternativo_3_c', 'soat_alternativo_3_c', 'LBL_SOAT_ALTERNATIVO_3', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 23:42:05', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactssoat_alternativo_4_c', 'soat_alternativo_4_c', 'LBL_SOAT_ALTERNATIVO_4', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-24 14:35:00', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactssoat_alternativo_5_c', 'soat_alternativo_5_c', 'LBL_SOAT_ALTERNATIVO_5', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-24 14:51:25', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactssoat_c', 'soat_c', 'LBL_SOAT', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 20:15:04', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactstecnomecanica_alternativa_1_c', 'tecnomecanica_alternativa_1_c', 'LBL_TECNOMECANICA_ALTERNATIVA_1', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 22:59:47', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactstecnomecanica_alternativa_2_c', 'tecnomecanica_alternativa_2_c', 'LBL_TECNOMECANICA_ALTERNATIVA_2', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 23:23:25', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactstecnomecanica_alternativa_3_c', 'tecnomecanica_alternativa_3_c', 'LBL_TECNOMECANICA_ALTERNATIVA_3', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-23 23:44:56', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactstecnomecanica_alternativa_4_c', 'tecnomecanica_alternativa_4_c', 'LBL_TECNOMECANICA_ALTERNATIVA_4', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-24 14:36:53', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactstecnomecanica_alternativa_5_c', 'tecnomecanica_alternativa_5_c', 'LBL_TECNOMECANICA_ALTERNATIVA_5', '', '', 'Contacts', 'date', NULL, 0, '', '2018-11-24 14:52:17', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactstecnomecanica_c', 'tecnomecanica_c', 'LBL_TECNOMECANICA', NULL, NULL, 'Contacts', 'date', NULL, 0, NULL, '2018-11-23 20:19:01', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Leadscilindraje_c', 'cilindraje_c', 'LBL_CILINDRAJE', '', '', 'Leads', 'varchar', 255, 0, '', '2019-05-24 17:48:52', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadskilometraje_c', 'kilometraje_c', 'LBL_KILOMETRAJE', NULL, NULL, 'Leads', 'varchar', 255, 0, NULL, '2019-05-22 22:21:36', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Leadslinea_c', 'linea_c', 'LBL_LINEA', NULL, NULL, 'Leads', 'varchar', 255, 0, NULL, '2019-05-22 22:23:56', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Leadsmarca_c', 'marca_c', 'LBL_MARCA', NULL, NULL, 'Leads', 'varchar', 255, 0, NULL, '2019-05-22 22:25:58', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Leadsmodelo_c', 'modelo_c', 'LBL_MODELO', NULL, NULL, 'Leads', 'varchar', 255, 0, NULL, '2019-05-22 22:26:50', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Leadsplaca_c', 'placa_c', 'LBL_PLACA', NULL, NULL, 'Leads', 'varchar', 255, 0, NULL, '2019-05-22 22:27:37', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiescontact_c', 'contact_c', 'LBL_CONTACT', NULL, NULL, 'Opportunities', 'relate', 255, 0, NULL, '2019-06-12 21:29:51', 0, 0, 0, 0, 1, 'true', NULL, 'Contacts', 'contact_id_c', NULL),
('Opportunitiescontact_id_c', 'contact_id_c', 'LBL_CONTACT_CONTACT_ID', '', '', 'Opportunities', 'id', 36, 0, NULL, '2019-06-12 21:28:07', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitieslead_c', 'lead_c', 'LBL_LEAD', '', '', 'Opportunities', 'relate', 255, 0, NULL, '2019-06-12 21:32:31', 0, 0, 0, 0, 1, 'true', '', 'Leads', 'lead_id_c', ''),
('Opportunitieslead_id_c', 'lead_id_c', 'LBL_LEAD_LEAD_ID', '', '', 'Opportunities', 'id', 36, 0, NULL, '2019-06-12 21:32:31', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2018-11-15 00:28:56', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(26,8) DEFAULT NULL,
  `lng` float(26,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(26,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(26,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(26,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('928251b3-aaee-4f30-c6d4-5d0170710139', '2019-06-12 21:38:23', '2019-06-12 21:39:34', '1', '1', NULL, 0, '', NULL, 'Daniel', 'González', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', 'c8133211-42a6-b495-9ba0-5d017070c08a', 'Pintura', NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `marca_c` varchar(255) DEFAULT NULL,
  `linea_c` varchar(255) DEFAULT NULL,
  `modelo_c` varchar(255) DEFAULT NULL,
  `placa_c` varchar(255) DEFAULT NULL,
  `kilometraje_c` varchar(255) DEFAULT NULL,
  `cilindraje_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `marca_c`, `linea_c`, `modelo_c`, `placa_c`, `kilometraje_c`, `cilindraje_c`) VALUES
('928251b3-aaee-4f30-c6d4-5d0170710139', 0.00000000, 0.00000000, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `location`, `password`, `join_url`, `host_url`, `displayed_url`, `creator`, `external_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `type`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `sequence`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('8fc7d501-8eb6-9604-9e02-5bed924aa861', 'Cita de Prueba 1', '2018-11-15 15:36:17', '2018-11-15 15:36:17', '1', '1', '', 0, '1', 'Servitalleres', NULL, '', '', NULL, '', '', 0, 15, '2018-11-15 15:45:00', '2018-11-15 16:00:00', 'Contacts', 'Planned', 'Sugar', '721509bd-6082-497d-0063-5bed92fd4228', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings_contacts`
--

INSERT INTO `meetings_contacts` (`id`, `meeting_id`, `contact_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('48d45861-d88d-f154-f9fd-5bed923ecb91', '8fc7d501-8eb6-9604-9e02-5bed924aa861', '721509bd-6082-497d-0063-5bed92fd4228', '1', 'none', '2018-11-15 15:36:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings_cstm`
--

INSERT INTO `meetings_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('8fc7d501-8eb6-9604-9e02-5bed924aa861', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetings_users`
--

INSERT INTO `meetings_users` (`id`, `meeting_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('227f45db-1504-9c91-425d-5bed923e8000', '8fc7d501-8eb6-9604-9e02-5bed924aa861', '1', '1', 'accept', '2018-11-15 15:36:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities`
--

INSERT INTO `opportunities` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `opportunity_type`, `campaign_id`, `lead_source`, `amount`, `amount_usdollar`, `currency_id`, `date_closed`, `next_step`, `sales_stage`, `probability`) VALUES
('c8133211-42a6-b495-9ba0-5d017070c08a', 'Pintura', '2019-06-12 21:36:10', '2019-06-12 21:39:34', '1', '1', NULL, 0, '1', NULL, '', NULL, 2000, 2000, '-99', '2019-06-30', NULL, 'Prospecting', 10);

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts_1_c`
--

CREATE TABLE `opportunities_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `opportunities_contacts_1opportunities_ida` varchar(36) DEFAULT NULL,
  `opportunities_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `lead_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities_cstm`
--

INSERT INTO `opportunities_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `contact_id_c`, `lead_id_c`) VALUES
('c8133211-42a6-b495-9ba0-5d017070c08a', 0.00000000, 0.00000000, '', '', '721509bd-6082-497d-0063-5bed92fd4228', '928251b3-aaee-4f30-c6d4-5d0170710139');

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('d4eaa360-5a51-d182-9546-5becbee9bb73', 'system', 'system', '1', 'SMTP', 'other', 'smtp.mailtrap.io', 25, 'eaeebf76dc1871', '1qVGOS+5ByFt+OcY1EbF3Q==', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('109c3e3d-75a8-9b8d-ca11-5d017426fa9a', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('10b36c0a-2100-b7f2-b715-5d0174988c92', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('11b49812-dc10-f14a-db77-5d0174251935', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11f6a0dd-601a-5397-d6ba-5d017437df77', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12000315-00b9-a0ba-1d9d-5d0174d9150e', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('126c8d0e-00f2-7092-ca86-5d01747c2a9a', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('12c4063a-e010-2505-cdd9-5d01746e99ad', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('138dd6af-ce77-cf00-abac-5d01748a6741', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('146ed1b3-27fc-5d99-857a-5d0174ea6975', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1649d3e2-ef17-5ced-a3aa-5d01741a3f18', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('1721fe96-8f9f-6c35-bf00-5d017497bc06', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('1924433d-214e-5e62-364e-5d0174e5508c', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19ca5996-f9e4-32c0-f4a1-5d01748daadb', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a6055d9-c2bc-80fb-880f-5d01742299bc', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('1aab5f79-2a2d-b951-0663-5d017412a84b', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('1ab60db3-50d2-3454-ca3b-5d0174fe6d65', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('1bb73b02-5784-b153-67c3-5d0174e0e72a', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c4d32da-ecf5-3589-4611-5d0174ca4468', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d95c7fc-c1d4-bdd5-e33e-5d0174643d83', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1eb40af7-8a90-f78a-aa87-5d0174ecb6fd', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f178ff3-2878-9794-4eac-5d0174813632', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('227f04c8-eb82-1800-237b-5d01746e9f5d', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('22e868ee-9c47-a527-6873-5d017451894e', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23c96fec-4c65-9f7a-b709-5d0174eba8e4', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('240f00e5-647d-bc1a-64de-5d0174d78b34', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('24a18b54-2bc2-7927-3888-5d0174a56541', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('2535b5fc-9cff-148e-dea9-5d0174986baa', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25b9d872-16e0-19c8-3c64-5d0174b6ed04', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2633419f-d9bd-c3bf-7f5a-5d0174679fe8', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c432b1c-0a2e-a0a9-1615-5d01744a2449', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ceb143e-a607-074d-eb65-5d017480be8a', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ea42560-1445-dc93-af6c-5d0174519d2f', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('2f2a0876-af5f-9f7d-0c90-5d0174e80e93', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f431f22-e321-a452-6abc-5d01745b98fa', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fb1cb24-3f3e-3bd2-0c13-5d0174dcb1ef', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('323bdd3e-2bae-0774-605a-5d0174e0f743', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('3421939e-c409-0442-e555-5d017427754b', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('351476fa-ba7c-5744-7a21-5d01741ff518', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38831e24-9a0d-d87b-4c45-5d0174cac067', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38e553d6-834c-1780-d047-5d0174bc913b', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3999a5c4-4800-d601-cdba-5d01740fa62a', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a01354a-87b2-4977-8ffc-5d0174fca523', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('3ba879d8-6fd3-9806-0684-5d0174770ffe', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('3db91e41-9147-7d64-5417-5d0174142a54', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f1714c0-4386-fb43-7614-5d01740e4f66', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f6b062c-9949-6fbc-920d-5d01742777e2', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f85bfbb-2224-3ca1-11d7-5d017445265f', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40183c2c-e033-312b-5603-5d0174d96f4d', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('406c3fd7-580f-bbfc-712f-5d017413ed58', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4309d7c0-70c4-2fab-b098-5d01744101bf', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('4434042c-67e8-2d7d-a445-5d0174061181', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('46c1bea2-bf5a-40c7-d0fa-5d0174655580', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a305c81-11c3-5642-3d44-5d01747ec7c0', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a9453ec-8515-792e-c27c-5d01747738b6', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a97e6f0-84b0-b307-89a2-5d01740d4f00', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b2de607-f4a4-bd94-222b-5d017497f65b', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d4b0160-53f0-30f9-d1f0-5d01741130b4', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('4fa307cf-37a2-cce2-8670-5d01748ccbb1', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('50c45124-d22a-89cd-b8ba-5d017471059c', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('541d8767-628f-5401-5fd9-5d0174924c96', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('547177f0-3f5e-7b17-518c-5d0174385eb4', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5742fb56-dc96-7943-71a3-5d0174dbb606', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('578c2d06-76d0-1758-5363-5d0174a6d02d', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5a84e927-fdef-9645-7db4-5d0174948ac9', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b058388-bc0b-6e0a-8f5d-5d017452f4f6', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('5b276c7c-7a40-3527-6e9f-5d0174e6f51b', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c06a5de-8db8-a5f9-abe4-5d0174e8add6', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e7427ff-8229-3b0b-9890-5d01742aa980', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('5fc04724-ea1e-365f-f3da-5d0174aa12a8', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('618ed216-2ac4-fa90-8484-5d0174f3b574', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('61c90d14-7c7d-c7a1-4632-5d0174a5a739', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6389fb10-b370-c38f-2d11-5d01748afc73', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6512e73b-c45e-a48e-1701-5d0174521f6e', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65267cd6-a763-0f3a-3b1a-5d0174ea7758', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67240e89-b5eb-65cf-ec9e-5d01745f7a5c', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('68181d4d-7d8c-8f38-8761-5d017487e830', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6876c777-5761-eafb-aacd-5d0174d4a21d', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('698003fc-ab6c-be61-7447-5d0174fac8a2', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('69ba0087-8572-27ec-be5d-5d0174a8df36', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b22c94b-0a54-8bfc-d34a-5d0174b47e74', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('6b917f93-abeb-3482-9052-5d017449d54c', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('6d60002f-48be-2f94-6e38-5d0174b5eb57', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f80abe7-2c29-4584-af5b-5d017492bb63', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7061a8c8-c62c-01a8-f8e6-5d0174693d0d', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72100f4a-0081-ea84-b4eb-5d01743f136f', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('721acc57-d814-3c1f-8bca-5d0174ef30bc', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72796fe4-77c8-2685-130c-5d0174b0379f', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('72c2a7ad-3058-9873-d368-5d0174033117', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77360911-1034-f2e3-b982-5d0174e2959f', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7762abba-e284-f26f-0f58-5d017427376a', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('794bfa3c-17f0-b2e1-0ad3-5d0174435ef5', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79f92dcd-43b1-b9a4-e28f-5d0174e3e97b', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('7a7d458b-f4bc-8231-8da8-5d0174c04edf', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c1d634b-ff79-a36d-3bd3-5d017492c75d', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c365e1c-8202-98a4-be1e-5d01748bfa6d', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c96d5f6-1ee7-5136-bd3a-5d017462617f', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cba9ced-45cf-d9c0-c7a0-5d017451b34d', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7cc5364a-2c6e-3756-3b60-5d0174e880b3', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ffab0e6-e511-7126-f169-5d01746695ea', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('816542a4-a84e-aa6b-e4cb-5d0174deb5b7', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('847ff9de-b604-ffa8-9477-5d01741026ef', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('85c33385-1db8-573b-14b5-5d017493dbd8', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('865e8fea-9395-dbf8-1593-5d01746b1d37', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8699701c-60f2-7c40-b951-5d0174968c5f', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('86c7f584-486e-33d9-c065-5d0174ab72e7', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('8775283a-5640-53ab-815d-5d0174beed18', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87e3e83f-f06e-10cd-5e73-5d0174fcc173', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('89bd248d-c9ae-b031-93fe-5d01742a3402', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b67f957-d7e1-8631-c9a0-5d01747bb258', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bf16c32-d90a-e13a-e216-5d01749f0c87', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('92acc129-3576-1bc5-f6a6-5d0174006199', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('948b553c-18e6-0e20-0e48-5d0174c8e4f7', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('9a794171-07c3-8d1c-4cda-5d017470f9be', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('9c9b0bd8-edc8-9bfc-1953-5d01741f53b4', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ec55694-89cc-1c94-0305-5d017452874c', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('9ff4fabc-3563-2b44-a2be-5d0174625445', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2fa33f0-052d-1bfa-0bd9-5d0174a52256', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3891388-ca9c-ed65-bbb8-5d0174931ca6', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a9f79e3f-fe5f-7196-510e-5d0174f53c73', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab4e7d50-b878-fe7c-27fb-5d0174c4c35c', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('aecc0093-659f-6fa2-eb71-5d0174909cc6', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('af7fca80-0270-13c6-2c92-5d01746ac3ae', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('b47903cd-9ae5-a635-30c3-5d0174beecc2', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b6f13739-326f-854b-aaef-5d017471368d', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('b9826492-4ec2-0b61-0df4-5d01746e4433', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('b9dbac82-43ad-8df1-5b3f-5d0174f7584e', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be680ebc-ea0b-27a8-650d-5d017485d55d', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('becc004c-dcec-bd05-7a43-5d0174642286', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('beffc794-bb98-7262-3468-5d01743fbf2d', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('c0ce5504-dd57-a744-4904-5d0174767a75', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3c386e8-c5a4-fda4-9ead-5d01746fd490', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('cc17d53f-d0a6-67bc-15fd-5d01749f1f0f', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd87b193-117d-e773-8e77-5d0174d0c878', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('cde0f6a1-6735-5154-859a-5d017420935b', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1d746a9-1930-ba55-cdc5-5d0174893f3a', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d34ac5b2-a274-dea4-0cfa-5d01745434db', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('d537a5b4-a713-a677-aff5-5d0174dfcb9c', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d608916d-19c6-05e4-5d2c-5d0174d70b58', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8075c20-cce5-e28f-4661-5d017443d797', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8d4b8d5-ead6-c34a-9428-5d01748cf9c7', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8fa3060-4d3a-79c3-a19d-5d0174bf01de', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9d7ad59-d518-e556-e299-5d01741c2176', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db5cf8d3-4008-5c4f-6d34-5d0174365367', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db9447a8-da1c-3161-32b3-5d0174dbe4f8', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('dd07be8c-ea01-8499-700a-5d0174984caf', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e06ba392-48cb-bf91-6116-5d0174758972', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('e248780a-9077-b316-7e55-5d01741bb836', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('e2d76fe1-2639-5703-18ff-5d017415907a', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2fcd84a-16f0-e5f2-6a53-5d01743450c8', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3b30212-44aa-bd3c-86b5-5d0174003ba9', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e418ccb6-3de5-04e0-5b3b-5d01740574c2', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e6178b4b-1db7-7d3a-390c-5d0174b18393', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('e6f6c238-50b5-2d08-b241-5d0174957cdc', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e738d3d7-d8d2-e070-cc4a-5d01748dba54', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e792233c-145a-18f3-7963-5d01748b2e79', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec4b2243-7836-dc2f-fc2e-5d01744042d3', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ecda0d02-635c-ae53-0471-5d0174230259', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ecff814d-88d0-422d-8d4c-5d0174b59485', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed637dee-0cb6-68d2-6331-5d0174429916', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee9f91d1-cb00-b983-acf2-5d01740fee45', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('efff6b85-8078-6393-2d1e-5d017457f6a3', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f194cf32-483c-32ae-4458-5d017412eb9b', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f312f742-df03-e14f-96b2-5d0174a65dda', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3eb0d07-ee11-066e-4e5d-5d01747cad2c', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `popup`, `email`, `email_sent`, `timer_popup`, `timer_email`, `related_event_module`, `related_event_module_id`) VALUES
('b382d3b5-6c5d-d385-3860-5bed92c0be5a', '', '2018-11-15 15:36:17', '2018-11-15 15:36:17', '1', '1', NULL, 0, NULL, 1, 0, 0, '1800', '3600', 'Meetings', '8fc7d501-8eb6-9604-9e02-5bed924aa861');

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reminders_invitees`
--

INSERT INTO `reminders_invitees` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `reminder_id`, `related_invitee_module`, `related_invitee_module_id`) VALUES
('dd0463ae-60af-7c01-b235-5bed92290d9a', '', '2018-11-15 15:36:17', '2018-11-15 15:36:17', '1', '1', NULL, 0, NULL, 'b382d3b5-6c5d-d385-3860-5bed92c0be5a', 'Users', '1');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('1a4a64e1-cf16-6ca4-c1c6-5becbec9fd1f', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 08:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2d97c822-685f-41a6-4ecc-5becbea568db', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 07:00:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('486f9b40-5fba-b250-c75a-5becbe1acd26', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 17:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('51f53e47-8021-5d24-a0bc-5becbe2a17be', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 11:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('60608497-e826-9d79-2cf4-5becbea84e67', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 10:15:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('6b9ba445-a56c-0ba9-e583-5becbed8e886', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 11:45:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('759e56f4-19ca-23b3-f508-5becbee25ad1', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 07:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('82c9e5e5-205c-f10e-5975-5becbe770beb', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 08:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('90f6bbc3-42f5-f2fc-58cf-5becbe49fa27', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 06:15:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b6134a8d-2d1c-856c-a5a9-5becbef9475f', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 08:45:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('c62ce83b-a76d-dfd1-cb06-5becbea55612', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 07:45:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('d553b3c0-1131-5ef1-13e1-5becbebc03a6', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 09:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('e3b7d7d9-a699-1a64-be98-5becbe1b40e5', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 19:45:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('5e5ebe8d-ebda-9a45-55fa-5d0170e99ebf', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:c8133211-42a6-b495-9ba0-5d017070c08a:Pintura] {SugarFeed.WITH} [Accounts:94aeef80-db3f-49c0-5fd1-5d01709a0c94:Clientes Taller] {SugarFeed.FOR} $2,000.00', '2019-06-12 21:36:10', '2019-06-12 21:36:10', '1', '1', NULL, 0, '1', 'Opportunities', 'c8133211-42a6-b495-9ba0-5d017070c08a', NULL, NULL),
('7b97821c-3239-0b3d-2cb3-5bed926ac9e1', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:721509bd-6082-497d-0063-5bed92fd4228:Daniel Gonzalez]', '2018-11-15 15:35:29', '2018-11-15 15:35:29', '1', '1', NULL, 0, '1', 'Contacts', '721509bd-6082-497d-0063-5bed92fd4228', NULL, NULL),
('a22294c6-cbf5-e444-f041-5d0170a3be1a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:928251b3-aaee-4f30-c6d4-5d0170710139:Daniel González]', '2019-06-12 21:38:23', '2019-06-12 21:38:23', '1', '1', NULL, 0, NULL, 'Leads', '928251b3-aaee-4f30-c6d4-5d0170710139', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(2, '112d18c3-7d1a-a384-6c82-5bed924158e7', '1', 'Meetings', '8fc7d501-8eb6-9604-9e02-5bed924aa861', 'Cita de Prueba 1', '2018-11-15 15:36:24', 'detailview', 't9a4val11hvskcn1124o156p21', 1, 0),
(97, '8c9ac02d-b364-9479-b2eb-5ce5cbde6d55', '1', 'Contacts', '721509bd-6082-497d-0063-5bed92fd4228', 'Daniel Gonzalez', '2019-05-22 22:20:37', 'editview', 'uevin725parkvho3mute5nh515', 1, 0),
(99, 'ce340079-8dfb-5386-4e39-5cf6f4492478', '1', 'Users', '1', 'Administrator', '2019-06-04 22:45:47', 'editview', 'h4hdu0cg8pgnb3ich1l0oulik0', 1, 0),
(100, '8caaf1ac-412b-a074-318e-5d0170e91e90', '1', 'Accounts', '94aeef80-db3f-49c0-5fd1-5d01709a0c94', 'Clientes Taller', '2019-06-12 21:35:12', 'detailview', 'j9voo3la9kepba32ml0ac190j1', 1, 0),
(109, 'db817aac-5eb7-fe36-ca91-5d0171d74398', '1', 'Leads', '928251b3-aaee-4f30-c6d4-5d0170710139', 'Daniel González', '2019-06-12 21:39:50', 'detailview', 'j9voo3la9kepba32ml0ac190j1', 1, 0),
(111, '7d983d5d-c99d-81a1-291d-5d0174acf2c7', '1', 'Opportunities', 'c8133211-42a6-b495-9ba0-5d017070c08a', 'Pintura', '2019-06-12 21:54:48', 'detailview', 'j9voo3la9kepba32ml0ac190j1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$kx3.d95.$PPS1dFn0Z/0Telafebr4G0', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('12480370-f74c-e974-3713-5becbef16067', 'global', 0, '2018-11-15 00:28:56', '2019-06-04 21:29:40', '1', 'YTozMzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjdmOTlkYTJlLTllOGYtODI4Ni0zOTQ2LTViZWNiNTYwNGJlOSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7TjtzOjI6InV0IjtzOjE6IjEiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjE6IjEiO3M6MTI6Im1haWxfc210cHNzbCI7aToxO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjQ6IlRvZG8iO3M6OToiTWVldGluZ3NRIjthOjExOntzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjc6Im9yZGVyQnkiO3M6MTI6IkRBVEVfRU5URVJFRCI7czo5OiJzb3J0T3JkZXIiO3M6NDoiREVTQyI7czoxMDoibmFtZV9iYXNpYyI7czowOiIiO3M6MjM6ImN1cnJlbnRfdXNlcl9vbmx5X2Jhc2ljIjtzOjE6IjAiO3M6MTU6Im9wZW5fb25seV9iYXNpYyI7czoxOiIwIjtzOjIwOiJmYXZvcml0ZXNfb25seV9iYXNpYyI7czoxOiIwIjtzOjY6ImJ1dHRvbiI7czo2OiJCdXNjYXIiO31zOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjt9'),
('16f8b95f-cf27-cc65-3668-5becbfe7c021', 'ETag', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('2a50e289-a0a4-1684-9c92-5bed922fab64', 'Contacts2_CONTACT', 0, '2018-11-15 15:34:55', '2018-11-15 15:34:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3471ea17-dce1-2504-5b58-5becbfd050d1', 'Home2_ACCOUNT', 0, '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('39a5c2e5-182b-8ff6-8145-5bed91992d87', 'Meetings2_MEETING', 0, '2018-11-15 15:33:20', '2018-11-15 15:33:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4af9ddba-e3f0-b5bc-8786-5c7ee46f8054', 'Leads2_LEAD', 0, '2019-03-05 21:04:34', '2019-03-05 21:04:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('67792a76-8d68-87f2-42c6-5becbf9dd24d', 'Home2_LEAD', 0, '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('84067714-33f9-b5b4-f007-5becbf4bf8de', 'Home', 0, '2018-11-15 00:34:28', '2018-11-15 15:33:06', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjc6e3M6MzY6IjEyMzhhNjIyLWNmZjItM2Y3OS0xMzJmLTViZWNiZjkxYjc3MSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3MToiY3VzdG9tL21vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiIxMmY0M2ViMC1lMzcyLTBhY2QtMjM4OS01YmVjYmZjYmY1OTQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxM2FmYjcwNy00MzYyLTIxNjItOGNiYS01YmVjYmYwNGQ5YTIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxNDZiMzVhNi0wYzBlLTE0YTEtMDg0NC01YmVjYmZlNDBiMGUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE1NjUzMzQxLWVkMTktZjQzNy0zM2ViLTViZWNiZmM2NWFlMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE2NWYzYmU5LWI5NjYtZjhjOC1iYWVhLTViZWNiZjc5YThiMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjgxNjEyMjU5LTI2MWQtYjVmMi1jZGE1LTViZWQ5MTI1MTgxOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNToiQ2FsZW5kYXJEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo0OiJIb21lIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2MToibW9kdWxlcy9DYWxlbmRhci9EYXNobGV0cy9DYWxlbmRhckRhc2hsZXQvQ2FsZW5kYXJEYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiODE2MTIyNTktMjYxZC1iNWYyLWNkYTUtNWJlZDkxMjUxODE4IjtpOjE7czozNjoiMTNhZmI3MDctNDM2Mi0yMTYyLThjYmEtNWJlY2JmMDRkOWEyIjtpOjI7czozNjoiMTQ2YjM1YTYtMGMwZS0xNGExLTA4NDQtNWJlY2JmZTQwYjBlIjtpOjM7czozNjoiMTU2NTMzNDEtZWQxOS1mNDM3LTMzZWItNWJlY2JmYzY1YWUyIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjM6e2k6MDtzOjM2OiIxMjM4YTYyMi1jZmYyLTNmNzktMTMyZi01YmVjYmY5MWI3NzEiO2k6MTtzOjM2OiIxNjVmM2JlOS1iOTY2LWY4YzgtYmFlYS01YmVjYmY3OWE4YjAiO2k6MjtzOjM2OiIxMmY0M2ViMC1lMzcyLTBhY2QtMjM4OS01YmVjYmZjYmY1OTQiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('95d9474d-9615-ba2d-ec82-5becbfdaad26', 'Home2_CALL', 0, '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9b7a672a-812a-e5ce-7e29-5becbf5ec85b', 'Home2_SUGARFEED', 0, '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c3dc31e-04b3-d6d3-b50b-5d016c19970a', 'Opportunities2_OPPORTUNITY', 0, '2019-06-12 21:21:39', '2019-06-12 21:21:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a6738e01-d223-eeb0-7658-5becbf0b8632', 'Home2_MEETING', 0, '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c8c1e47f-7bdb-c3c2-166d-5d016fc74455', 'Accounts2_ACCOUNT', 0, '2019-06-12 21:34:34', '2019-06-12 21:34:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f2239987-b10a-cde7-1548-5becbfcd2f0e', 'Home2_OPPORTUNITY', 0, '2018-11-15 00:34:28', '2018-11-15 00:34:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f32e4c8e-6c6c-e5c4-df9f-5ce82b1bf5c6', 'Campaigns2_CAMPAIGN', 0, '2019-05-24 17:35:24', '2019-05-24 17:35:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('6ac4561e-e878-c2c9-fd08-5bed92e47e5d', 0, '2018-11-15 15:36:17', '2018-11-15 15:36:17', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Administrator:VFREEBUSY\r\nDTSTART:2018-11-14 00:00:00\r\nDTEND:2019-01-14 00:00:00\r\nFREEBUSY:20181115T154500Z/20181115T160000Z\r\nX-FREEBUSY-ID:8fc7d501-8eb6-9604-9e02-5bed924aa861\r\nX-FREEBUSY-TYPE:Meeting\r\nDTSTAMP:2018-11-15 15:36:17\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES
('4935d7dc-63bb-9846-e5df-5becbe66f0b0', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('6c5e599c-a559-fc3b-cc91-5becbeafd2f8', 0, '2018-11-15 00:28:56', '2018-11-15 00:28:56', '1', '1', 'htaccess', '3.5.1', '3.5.1'),
('a32e16a8-3768-d145-5c5b-5bf97cedae24', 0, '2018-11-24 16:29:21', '2018-11-24 16:29:21', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0'),
('ee1f1b79-cea7-6d0d-2b8a-5bf97c97f75c', 0, '2018-11-24 16:29:20', '2018-11-24 16:29:20', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_contacts_1_c`
--
ALTER TABLE `opportunities_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opportunities_contacts_1_ida1` (`opportunities_contacts_1opportunities_ida`),
  ADD KEY `opportunities_contacts_1_alt` (`opportunities_contacts_1contacts_idb`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oe_user_id_idx` (`id`,`user_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_version` (`name`,`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
