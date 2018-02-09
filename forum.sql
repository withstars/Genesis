-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 02 月 09 日 08:10
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `forum`
--

-- --------------------------------------------------------

--
-- 表的结构 `login_log`
--

CREATE TABLE IF NOT EXISTS `login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登陆时间',
  `ip` varchar(30) NOT NULL COMMENT '登陆IP',
  `device` varchar(200) DEFAULT NULL COMMENT '设备',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=80 ;

--
-- 转存表中的数据 `login_log`
--

INSERT INTO `login_log` (`id`, `user_id`, `login_time`, `ip`, `device`) VALUES
(1, 4, '2018-01-19 09:50:44', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(2, 4, '2018-01-19 09:51:37', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(3, 4, '2018-01-19 09:54:59', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(4, 4, '2018-01-19 10:01:51', '0:0:0:0:0:0:0:1', 'Win64'),
(5, 4, '2018-01-19 10:07:26', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(6, 4, '2018-01-19 10:24:16', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(7, 4, '2018-01-19 10:32:37', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(8, 4, '2018-01-19 10:32:58', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(9, 4, '2018-01-19 12:07:36', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(10, 4, '2018-01-19 12:53:28', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(11, 4, '2018-01-20 02:49:24', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(12, 4, '2018-01-20 03:13:57', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(13, 4, '2018-01-20 03:50:44', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(14, 4, '2018-01-20 03:54:05', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(15, 4, '2018-01-20 06:00:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(16, 4, '2018-01-20 06:03:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(17, 3, '2018-01-20 06:21:55', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(18, 4, '2018-01-20 07:04:02', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(19, 3, '2018-01-20 08:09:58', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(20, 4, '2018-01-20 10:30:48', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(21, 3, '2018-01-20 11:06:34', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(22, 4, '2018-01-20 12:13:21', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(23, 4, '2018-01-20 12:16:14', '0:0:0:0:0:0:0:1', 'Win64'),
(24, 4, '2018-01-21 02:07:31', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(25, 4, '2018-01-21 05:25:29', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(26, 4, '2018-01-24 02:12:07', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(27, 4, '2018-01-24 05:49:59', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(28, 4, '2018-01-24 05:56:08', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(29, 4, '2018-01-24 06:00:49', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(30, 4, '2018-01-24 06:01:06', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(31, 4, '2018-01-24 06:07:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(32, 4, '2018-01-24 06:45:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(33, 4, '2018-01-24 07:32:07', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(34, 4, '2018-01-24 07:33:58', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(35, 4, '2018-01-24 07:49:06', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(36, 4, '2018-01-24 08:51:49', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(37, 4, '2018-01-24 09:28:27', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(38, 4, '2018-01-24 09:39:12', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(39, 4, '2018-01-24 10:53:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(40, 4, '2018-01-24 12:33:56', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(41, 4, '2018-01-25 03:48:10', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),
(42, 4, '2018-01-25 03:56:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),
(43, 4, '2018-01-25 10:55:14', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),
(44, 4, '2018-01-31 11:06:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),
(45, 2, '2018-01-31 12:14:32', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),
(46, 2, '2018-01-31 12:16:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),
(47, 4, '2018-02-02 07:28:24', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(48, 1, '2018-02-02 12:21:00', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(49, 1, '2018-02-02 12:25:27', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(50, 1, '2018-02-02 13:25:08', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(51, 4, '2018-02-02 14:44:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(52, 4, '2018-02-02 14:45:51', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(53, 4, '2018-02-02 14:45:59', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(54, 4, '2018-02-02 14:53:12', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(55, 4, '2018-02-02 14:54:50', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(56, 4, '2018-02-02 14:55:00', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(57, 4, '2018-02-03 02:17:27', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(58, 4, '2018-02-03 04:07:16', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(59, 4, '2018-02-08 11:37:41', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(60, 4, '2018-02-08 12:17:40', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(61, 4, '2018-02-08 13:04:12', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(62, 4, '2018-02-08 13:15:00', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(63, 4, '2018-02-08 13:18:10', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(64, 4, '2018-02-08 13:18:26', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(65, 4, '2018-02-08 13:25:18', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(66, 4, '2018-02-08 13:33:42', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(67, 4, '2018-02-08 13:41:53', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(68, 4, '2018-02-08 13:43:03', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(69, 1, '2018-02-08 14:31:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(70, 1, '2018-02-08 15:06:40', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(71, 1, '2018-02-09 03:17:36', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(72, 1, '2018-02-09 04:21:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(73, 1, '2018-02-09 04:22:44', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(74, 1, '2018-02-09 04:32:29', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(75, 6, '2018-02-09 04:36:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(76, 6, '2018-02-09 07:25:36', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(77, 6, '2018-02-09 07:29:52', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(78, 6, '2018-02-09 07:43:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(79, 6, '2018-02-09 07:50:19', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');

-- --------------------------------------------------------

--
-- 表的结构 `reply`
--

CREATE TABLE IF NOT EXISTS `reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `topic_id` int(11) NOT NULL COMMENT '主题id',
  `reply_user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text CHARACTER SET utf8mb4 NOT NULL COMMENT '回复内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `device` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '设备',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `reply`
--

INSERT INTO `reply` (`id`, `topic_id`, `reply_user_id`, `content`, `create_time`, `update_time`, `device`) VALUES
(1, 2, 2, '测试评论1', '2018-01-19 13:13:59', '2018-02-09 07:51:48', NULL),
(2, 2, 2, '测试留言2', '2018-01-19 13:38:10', '2018-01-18 17:07:07', NULL),
(3, 2, 1, '测试评论1366576', '2018-01-19 13:39:16', '2018-02-09 07:52:06', NULL),
(4, 4, 4, '测试评论1287', '2018-01-20 03:54:11', '2018-02-09 07:53:31', NULL),
(5, 4, 4, '测试评论7689', '2018-01-20 03:54:17', '2018-02-09 07:52:15', NULL),
(6, 2, 4, '测试评论64567575', '2018-01-20 03:54:34', '2018-02-09 07:52:23', NULL),
(7, 1, 4, '测试评论7654323', '2018-01-20 06:03:18', '2018-02-09 07:52:32', NULL),
(8, 3, 3, '测试评论8655', '2018-01-20 07:03:14', '2018-02-09 07:53:23', NULL),
(9, 5, 3, '测试评论2465', '2018-01-20 08:10:37', '2018-02-09 07:52:41', NULL),
(10, 7, 4, 'version ( HTTP/1.1 or HTTP/2 ) \r\n不错！', '2018-01-20 12:14:15', '2018-01-20 12:14:15', NULL),
(11, 7, 4, '测试评论787', '2018-01-20 12:14:21', '2018-02-09 07:52:52', NULL),
(12, 7, 4, '要是 server 也是一行 cli 代码就好了', '2018-01-20 12:14:30', '2018-01-20 12:14:30', NULL),
(13, 8, 4, '这不是队列么……', '2018-01-21 05:27:22', '2018-01-21 05:27:22', NULL),
(14, 8, 4, '活太轻，放队列里去感觉没那么大必要 :-)', '2018-01-21 05:27:32', '2018-01-21 05:27:32', NULL),
(15, 8, 4, '测试评论4324', '2018-01-24 06:01:52', '2018-02-09 07:54:15', NULL),
(16, 9, 4, '测试评论6578', '2018-01-24 11:06:52', '2018-02-09 07:53:04', NULL),
(17, 11, 2, '测试评论5466', '2018-01-31 12:21:27', '2018-02-09 07:54:42', NULL),
(18, 11, 2, 'http://mvnrepository.com/', '2018-01-31 12:23:44', '2018-01-31 12:23:44', NULL),
(19, 7, 4, '测试评论1230', '2018-02-08 13:18:57', '2018-02-09 07:53:13', NULL),
(20, 7, 4, '测试评论3453', '2018-02-08 13:19:03', '2018-02-09 07:54:09', NULL),
(21, 7, 4, '测试评论6475', '2018-02-08 13:19:07', '2018-02-09 07:54:03', NULL),
(22, 1, 4, '测试评论54436', '2018-02-08 13:41:58', '2018-02-09 07:53:56', NULL),
(23, 9, 4, '测试评论5524', '2018-02-08 13:43:09', '2018-02-09 07:53:49', NULL),
(24, 9, 4, '测试评论6754', '2018-02-08 13:43:40', '2018-02-09 07:53:43', NULL),
(25, 11, 1, '测试评论1214', '2018-02-08 14:31:48', '2018-02-09 07:53:38', NULL),
(26, 12, 1, '测试评论65465', '2018-02-09 03:18:08', '2018-02-09 07:54:30', NULL),
(27, 12, 6, '测试评论4364', '2018-02-09 04:38:03', '2018-02-09 07:54:24', NULL),
(28, 12, 6, '嗯嗯', '2018-02-09 07:46:39', '2018-02-09 07:46:39', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tab`
--

CREATE TABLE IF NOT EXISTS `tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '板块id',
  `tab_name` varchar(50) NOT NULL COMMENT '板块名',
  `tab_name_en` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tab`
--

INSERT INTO `tab` (`id`, `tab_name`, `tab_name_en`) VALUES
(1, '技术', 'tech'),
(2, '好玩', 'play'),
(3, '创意', 'creative'),
(4, '工作', 'jobs'),
(5, '交易', 'deals');

-- --------------------------------------------------------

--
-- 表的结构 `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `user_id` int(11) NOT NULL COMMENT '发帖人id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `tab_id` tinyint(4) NOT NULL COMMENT '发布板块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `topic`
--

INSERT INTO `topic` (`id`, `user_id`, `create_time`, `update_time`, `title`, `content`, `click`, `tab_id`) VALUES
(1, 2, '2018-01-20 12:02:13', '2018-02-09 05:21:37', '是否有利用云计算进行异地组网的解决方案？', '现有一中大型企业，下属子公司需接入母公司内网。\r\n目前使用华为 AR1220-S 组网，使用 l2tp 搭建 vpn。使用路由器到路由器的解决方案，现已超过 10 家子公司，使用路由器通过 l2tp 接入母公司内网系统。\r\n随着公司业务增长，今年预计需增加 30 个点接入母公司网络。（未来可能需增加超过 200 个点，且分布全国各地）\r\n\r\n1.请问 AR1220-S 能否胜任，是否需要更换 AR2220-S 或 AR3220-S。\r\n2.子公司使用什么设备能较稳定连接母公司通过华为搭建的 l2tp 的 vpn。（目前使用过极路由和普联，普联表现较为稳定。因大规模部署需要，请问 TL-ER7520g 能否稳定胜任。 目前 tp 最贵的企业路由器，官网上看的。）\r\n3.大规模异地租网是否有更优方案，如利用云中转等，请各位大神们指点，谢谢。', 139, 1),
(2, 3, '2018-01-20 11:55:19', '2018-02-09 07:50:38', '你心目中理想的新闻推荐系统是什么样子？', '实时?\r\n根据兴趣推荐？\r\n关注的频道优先推荐？\r\n根据天气、位置等客观参数推荐\r\n有收藏功能，能自动根据收藏发现兴趣，从而更好地推荐\r\n让更多的人变成内容的创作者而不是单单的阅读者？', 40, 1),
(3, 2, '2018-01-20 11:52:38', '2018-02-08 13:47:28', ' 关于“直播答题发钱”辅助工具搜索推荐算法的讨论', '最近直播火热，网上也看到很多通过“抓图 - 文字识别 - 百度搜题推荐”的程序介绍，自己也整理了一份 \r\n###########举例###################### \r\n问题：9.中国历史上,在位时间最长的皇帝是? \r\n备选答案： [''康熙'', ''乾隆'', ''刘彻''] \r\n\r\nAnswer：	[''刘彻(9.091%)'', ''康熙(63.636%)'', ''乾隆(27.273%)''] \r\n####################################### \r\n想问问大家，对搜索答案这块的算法，怎么设计，有什么高见？ \r\n\r\n先抛砖引玉，目前想到的算法： \r\n1. 通过百度网页，请求问题，以答案选项作为关键字，数数判断（主流） \r\n2. 对答案采用“中文分词”，针对答案可能是 xxx-yyy-zzz 无法全字匹配的情况 \r\n3. 对问题进行“中文分词“，逆向搜索，针对 “下面那些不是美国的品牌”这类问题 \r\n\r\n对于 1 已经实现，之前也有人发过存在“不”的情况处理；目前想通过 jieba 实现 2 和 3，但是总感觉这块的思考不是“很专业”，请大家吐槽', 23, 1),
(4, 2, '2018-01-20 12:06:24', '2018-02-08 13:24:29', '企业级应用开发真的需要 Vue, React 这种东西吗？', '本人一直从事后端开发，自带一点前端技能（会用 jquery，extjs 组件）。这两年各种前端框架火爆，让我在完成老板任务时有点迷失。感觉不用 MVVM 这些框架，依然能很快的实现各种业务，而且交接工作也比较简单。\r\n用这些框架要增加学习成本，同行（都是后端自带一点前端技能那种）维护成本。但最终交互给客户的界面，依然是增删改查这些功能以及后台业务表逻辑的串接。而 UI 体验很大程度上又取决于交互视觉设计，而非前端框架。\r\n所以我的问题是：企业级应用开发真的需要 Vue, React 这种东西吗？\r\n各互联网大厂又有多少 to C 页面是基于他们实现，并且提升了交付给客户的价值？\r\n为什么精通 Vue React 的前端，在感觉上比框架本身的发明者还亢奋？', 24, 1),
(5, 3, '2018-01-20 11:55:17', '2018-02-08 15:00:42', '使用 Nginx 自建 CDN，关于回源问题。', '假如 3 台服务器,一台源站，2 个自建 CDN，在 Nginx 配置的时候回源方案目前想到 2 个，但不是很好，请问是否有更好的方案。\r\n\r\nA：源站\r\nB:CDN1\r\nC:CDN2\r\n方案一\r\nCDN 上进行 hosts 回源，但是自建 CDN 一多，这样很麻烦。\r\n\r\n方案二\r\n使用 DNSmasq 自建一个 DNS，然后在 nginx 设置 DNS 来指定回源。\r\n\r\n请问有更好的办法来实现回源吗？尤其是自建 CDN 节点较多的情况下。', 37, 1),
(6, 3, '2018-01-20 08:11:32', '2018-02-09 07:14:58', '请问各位喜欢用 JOOQ Hibernate Mybatis 其中哪个框架', '能说一下喜欢的原因是最好的..', 3, 1),
(7, 4, '2018-01-20 12:13:57', '2018-02-09 07:58:52', 'JDK 9 里的 JDK HTTP Client 的写法', 'HttpClient client = HttpClient.newHttpClient();\r\nHttpRequest request = HttpRequest.newBuilder()\r\n      .uri(URI.create("http://openjdk.java.net/"))\r\n      .build();\r\nclient.sendAsync(request, asString())\r\n      .thenApply(HttpResponse::body)\r\n      .thenAccept(System.out::println)\r\n      .join();\r\n还可以指定使用 HTTP/2：\r\n\r\nHttpClient client = HttpClient.newBuilder()\r\n      .version(Version.HTTP_2)\r\n      .followRedirects(Redirect.SAME_PROTOCOL)\r\n      .proxy(ProxySelector.of(new InetSocketAddress("www-proxy.com", 8080)))\r\n      .authenticator(Authenticator.getDefault())\r\n      .build();', 45, 1),
(8, 4, '2018-01-21 05:26:57', '2018-02-09 07:25:23', '数据库怎么最简单实现 “栈” 结构存储？', '', 46, 1),
(9, 4, '2018-01-24 08:57:44', '2018-02-09 07:14:55', '腾讯云能不能别给我发优惠券短信了', '我对你的优惠券不感兴趣啊，能不能不要发了，每天都发，有时一天还要发好几次', 63, 2),
(10, 4, '2018-01-25 03:52:12', '2018-02-09 07:50:22', '应用程序在服务器上创建文件目录权限 0777，会有风险吗？', '应用程序 App （是 root ）在服务器上创建了一个文件目录，权限设 0777, 会有风险吗？ \r\n（当然，前提是服务器一般不会配除 root 外的其他账户，也不会把这个文件目录直接开给 web server 的公开路径）', 12, 1),
(11, 4, '2018-01-25 04:04:44', '2018-02-09 07:58:45', 'P2P 直播测试，这个数据如何？', '', 114, 1),
(12, 4, '2018-02-08 14:17:16', '2018-02-09 07:58:33', 'Genesis祝各位会员新年好', 'Genesis祝各位会员新年好Genesis祝各位会员新年好', 68, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一ID',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone_num` varchar(15) DEFAULT NULL COMMENT '手机号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `credit` int(11) NOT NULL COMMENT '积分',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像url',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型,0为普通用户,1为管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone_num`, `create_time`, `update_time`, `credit`, `avatar`, `type`) VALUES
(1, 'likky', 'E10ADC3949BA59ABBE56E057F20F883E', '123456789@126.com', '8615712345678', '2018-02-08 15:06:40', '2018-02-09 07:57:05', 23, '/img/avatar/avatar-default-1.png', 0),
(2, 'withstars', 'E10ADC3949BA59ABBE56E057F20F883E', '987654321@qq.com', '8616978945612', '2018-01-31 12:16:54', '2018-02-09 07:57:21', 10, '/img/avatar/avatar-default-2.png', 0),
(3, 'yilia', 'E10ADC3949BA59ABBE56E057F20F883E', '147258369@qq.com', '8615963248962', '2018-01-20 06:18:58', '2018-02-09 07:56:29', 0, '/img/avatar/avatar-default-3.png', 0),
(4, 'sassy', 'E10ADC3949BA59ABBE56E057F20F883E', '159357846@qq.com', '8612543434343', '2018-02-08 14:17:16', '2018-02-09 07:56:39', 156, '/img/avatar/avatar-default-4.png', 0),
(6, 'objectc', 'A45958517604F5CD90D6EE51AD9CFDB6', '963852741@qq.com', '8619345321598', '2018-02-09 04:36:39', '2018-02-09 07:56:46', 7, '/img/avatar/avatar-default-5.png', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
