-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-04-13 09:22:15
-- 服务器版本： 5.5.48-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cilicili`
--

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL COMMENT '唯一id',
  `video_id` int(11) NOT NULL COMMENT '视频id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` varchar(250) NOT NULL COMMENT '评论内容',
  `sendtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `count_like` int(11) NOT NULL COMMENT '点赞量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

-- --------------------------------------------------------

--
-- 表的结构 `moments`
--

CREATE TABLE `moments` (
  `id` int(11) NOT NULL COMMENT '唯一id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `video_id` int(11) NOT NULL COMMENT '视频id',
  `sendtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发送时间',
  `content` varchar(250) NOT NULL COMMENT '弹幕内容',
  `color` varchar(10) NOT NULL COMMENT '弹幕颜色',
  `offtime` int(11) NOT NULL COMMENT '播放偏移时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='弹幕表';

-- --------------------------------------------------------

--
-- 表的结构 `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL COMMENT '唯一id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `token` varchar(30) NOT NULL COMMENT '授权码',
  `applytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '申请时间',
  `expiretime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '失效时间',
  `count_auth` int(11) NOT NULL COMMENT '授权次数',
  `max_count_auth` int(11) NOT NULL COMMENT '最大授权次数',
  `ussage` varchar(30) NOT NULL COMMENT '用途'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='授权记录表';

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '唯一id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `identity` varchar(20) NOT NULL COMMENT '身份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `identity`) VALUES
(0, 'admin', 'admin', '普通会员');

-- --------------------------------------------------------

--
-- 表的结构 `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL COMMENT '唯一id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `url` varchar(100) NOT NULL COMMENT '播放地址',
  `upload_userid` int(11) NOT NULL COMMENT '上传用户id',
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上传时间',
  `count_play` int(11) NOT NULL DEFAULT '0' COMMENT '播放量',
  `count_like` int(11) NOT NULL DEFAULT '0' COMMENT '点赞量',
  `pic_url` varchar(100) NOT NULL COMMENT '封面地址',
  `description` varchar(500) DEFAULT NULL COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='视频信息表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comments_id_uindex` (`id`);

--
-- Indexes for table `moments`
--
ALTER TABLE `moments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `moments_id_uindex` (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id_uindex` (`id`),
  ADD UNIQUE KEY `token_token_uindex` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_uindex` (`id`),
  ADD UNIQUE KEY `users_username_uindex` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_id_uindex` (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id';

--
-- 使用表AUTO_INCREMENT `moments`
--
ALTER TABLE `moments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id';

--
-- 使用表AUTO_INCREMENT `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id';

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id';

--
-- 使用表AUTO_INCREMENT `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
