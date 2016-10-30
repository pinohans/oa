-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-10-30 02:12:11
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oa1`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_contact`
--

CREATE TABLE `think_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `letter` varchar(50) NOT NULL DEFAULT '' COMMENT '拼音',
  `company` varchar(30) NOT NULL DEFAULT '' COMMENT '公司',
  `dept` varchar(20) NOT NULL DEFAULT '' COMMENT '部门',
  `position` varchar(20) NOT NULL DEFAULT '' COMMENT '职位',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮件',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `website` varchar(50) NOT NULL DEFAULT '' COMMENT '网站',
  `im` varchar(20) NOT NULL DEFAULT '' COMMENT '即时通讯',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` text COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='think_user_info';

-- --------------------------------------------------------

--
-- 表的结构 `think_customer`
--

CREATE TABLE `think_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `letter` varchar(50) NOT NULL DEFAULT '' COMMENT '拼音',
  `biz_license` varchar(30) NOT NULL DEFAULT '' COMMENT '营业许可',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `contact` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮件地址',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '传真',
  `salesman` varchar(50) NOT NULL DEFAULT '' COMMENT '业务员',
  `im` varchar(20) NOT NULL DEFAULT '' COMMENT '即时通讯',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` text COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_demo`
--

CREATE TABLE `think_demo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_demo`
--

INSERT INTO `think_demo` (`id`, `name`, `create_time`) VALUES
(1, 'name', 1111);

-- --------------------------------------------------------

--
-- 表的结构 `think_dept`
--

CREATE TABLE `think_dept` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `dept_no` varchar(20) NOT NULL DEFAULT '' COMMENT '部门编号',
  `dept_grade_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门等级ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_dept`
--

INSERT INTO `think_dept` (`id`, `pid`, `dept_no`, `dept_grade_id`, `name`, `short`, `sort`, `remark`, `is_del`) VALUES
(1, 0, 'A2', 18, '石河子高新区', '石河子高新区', '', '', 0),
(5, 1, 'ZJB', 18, '管委会', '管委会', '1', '', 0),
(6, 1, 'GLB', 18, '党工委', '党工委', '2', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_dept_grade`
--

CREATE TABLE `think_dept_grade` (
  `id` int(11) NOT NULL,
  `grade_no` varchar(10) NOT NULL DEFAULT '' COMMENT '部门级别编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(10) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_dept_grade`
--

INSERT INTO `think_dept_grade` (`id`, `grade_no`, `name`, `sort`, `is_del`) VALUES
(16, 'DG1', '科', '1', 0),
(18, 'DG2', '部', '2', 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_doc`
--

CREATE TABLE `think_doc` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_doc`
--

INSERT INTO `think_doc` (`id`, `doc_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`) VALUES
(1, '2015-0001', 'das', '<p>dsa</p>', 85, '', 1, '管理员', 1451371550, 0, 1),
(2, '2015-0002', 'qwe', '<p>请问</p>', 85, '', 1, '管理员', 1451371967, 0, 1),
(3, '2016-0001', 'kkk', '<p>&nbsp;</p>\r\n<p>''''''''''</p>', 6, '', 1, '管理员', 1476451963, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_duty`
--

CREATE TABLE `think_duty` (
  `id` smallint(3) NOT NULL,
  `duty_no` varchar(20) NOT NULL DEFAULT '' COMMENT '职责编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_duty`
--

INSERT INTO `think_duty` (`id`, `duty_no`, `name`, `sort`, `is_del`, `remark`) VALUES
(14, 'P001', '公文', '', 0, ''),
(15, 'S001', '财务', '', 0, ''),
(16, 'W001', '人事', '', 0, ''),
(17, '', '资源', '4', 0, ''),
(18, '', '招标', '5', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `think_file`
--

CREATE TABLE `think_file` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文件ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `savename` char(20) NOT NULL DEFAULT '' COMMENT '保存名称',
  `savepath` char(30) NOT NULL DEFAULT '' COMMENT '文件保存路径',
  `ext` char(5) NOT NULL DEFAULT '' COMMENT '文件后缀',
  `mime` char(40) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `location` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件保存位置',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '远程地址',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上传时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件表';

--
-- 转存表中的数据 `think_file`
--

INSERT INTO `think_file` (`id`, `name`, `savename`, `savepath`, `ext`, `mime`, `size`, `md5`, `sha1`, `location`, `url`, `create_time`) VALUES
(1, '新建文本文档.txt', '58146b84f2b10.txt', 'flow/2016-10/', 'txt', 'text/plain', 205, '9448ab0f881591581aab3da2cc03352c', '466cdf9e4f891d59dfcfa6cdfa7a43401397789f', 0, '', 1477733252),
(2, 'E660ED15269848561D64F71BEC7D04', '58146c18db7f8.png', 'flow/2016-10/', 'png', 'image/jpeg', 169511, 'e660ed15269848561d64f71bec7d04bb', '91c00687852654a5d3de83009cfc5734e4cebd91', 0, '', 1477733400),
(3, '新建文本文档.txt', '58146c567d428.txt', 'form/2016-10/', 'txt', 'text/plain', 205, '9448ab0f881591581aab3da2cc03352c', '466cdf9e4f891d59dfcfa6cdfa7a43401397789f', 0, '', 1477733462),
(4, 'E660ED15269848561D64F71BEC7D04', '58146cc154fa0.png', 'form/2016-10/', 'png', 'image/jpeg', 169511, 'e660ed15269848561d64f71bec7d04bb', '91c00687852654a5d3de83009cfc5734e4cebd91', 0, '', 1477733569),
(5, '1_255234.jpg', '58148374d9291.jpg', 'info/2016-10/', 'jpg', 'image/jpeg', 64895, 'd491c8219910bb9b65aa40ef13396c71', '81417d20efb4118332c330b1edb33b109834eb62', 0, '', 1477739380);

-- --------------------------------------------------------

--
-- 表的结构 `think_finance`
--

CREATE TABLE `think_finance` (
  `id` int(11) NOT NULL,
  `doc_no` varchar(10) DEFAULT NULL COMMENT '单据编号',
  `remark` varchar(255) DEFAULT NULL,
  `input_date` date DEFAULT NULL COMMENT '录入日期',
  `account_id` int(11) DEFAULT NULL COMMENT '帐号ID',
  `account_name` varchar(20) DEFAULT NULL COMMENT '帐号名',
  `income` int(11) DEFAULT NULL COMMENT '收入',
  `payment` int(11) DEFAULT NULL COMMENT '支出',
  `amount` int(11) DEFAULT NULL COMMENT '合计',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `partner` varchar(50) DEFAULT NULL COMMENT '来往处',
  `actor_name` varchar(10) DEFAULT NULL COMMENT '经办人',
  `user_id` int(11) DEFAULT NULL COMMENT '登陆人',
  `user_name` varchar(10) DEFAULT NULL COMMENT '登录名',
  `create_time` int(11) DEFAULT NULL COMMENT '创建日期',
  `update_time` int(11) DEFAULT NULL COMMENT '更新日期',
  `add_file` varchar(255) DEFAULT NULL COMMENT '附件',
  `doc_type` tinyint(3) DEFAULT NULL COMMENT '类型',
  `is_del` tinyint(3) DEFAULT '0' COMMENT '删除标记',
  `related_account_id` int(11) DEFAULT NULL COMMENT '相关帐号ID',
  `related_account_name` varchar(20) DEFAULT NULL COMMENT '相关帐号名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_finance`
--

INSERT INTO `think_finance` (`id`, `doc_no`, `remark`, `input_date`, `account_id`, `account_name`, `income`, `payment`, `amount`, `type`, `partner`, `actor_name`, `user_id`, `user_name`, `create_time`, `update_time`, `add_file`, `doc_type`, `is_del`, `related_account_id`, `related_account_name`) VALUES
(1, '2016-0001', '11', '2016-10-06', 1, '34', 1111, NULL, NULL, '其他', 'XXXX', '11', 1, '管理员', 1476451499, NULL, '', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_finance_account`
--

CREATE TABLE `think_finance_account` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT '帐号名称',
  `bank` varchar(20) DEFAULT NULL COMMENT '银行',
  `no` varchar(50) DEFAULT NULL COMMENT '银行帐号',
  `init` int(11) DEFAULT NULL COMMENT '初始帐号',
  `balance` int(11) DEFAULT NULL COMMENT '余额',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `is_del` tinyint(3) DEFAULT '0' COMMENT '删除标记',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_finance_account`
--

INSERT INTO `think_finance_account` (`id`, `name`, `bank`, `no`, `init`, `balance`, `remark`, `is_del`, `create_time`, `update_time`) VALUES
(1, '34', '23', '33', 4342, 5453, '1111', 0, 1476451454, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_flow`
--

CREATE TABLE `think_flow` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text COMMENT '内容',
  `confirm` varchar(200) NOT NULL DEFAULT '' COMMENT '裁决数据',
  `confirm_name` text NOT NULL COMMENT '裁决显示内容',
  `consult` varchar(200) NOT NULL DEFAULT '' COMMENT '协商数据',
  `consult_name` text NOT NULL COMMENT '协商显示内容',
  `refer` varchar(200) DEFAULT '' COMMENT '抄送数据',
  `refer_name` text COMMENT '抄送显示内容',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '流程类型',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `emp_no` varchar(20) DEFAULT NULL COMMENT '员工编号',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门ID',
  `dept_name` varchar(20) NOT NULL DEFAULT '' COMMENT '部门名称',
  `create_date` varchar(10) NOT NULL DEFAULT '' COMMENT '创建日期',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '目前阶段状态',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `udf_data` text COMMENT '用户自定义数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_flow`
--

INSERT INTO `think_flow` (`id`, `doc_no`, `name`, `content`, `confirm`, `confirm_name`, `consult`, `consult_name`, `refer`, `refer_name`, `type`, `add_file`, `user_id`, `emp_no`, `user_name`, `dept_id`, `dept_name`, `create_date`, `create_time`, `update_time`, `step`, `is_del`, `udf_data`) VALUES
(1, 'GWQF201610001', '1', '<p>q</p>', '2|1|', '\r\n					<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b></b><i class="fa fa-arrow-right"></i></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b></b><i class="fa"></i></span>				', '', '\r\n									', '', '', '58', '', 1, 'admin', '管理员', 1, '石河子高新区', '', 1476430168, 0, 0, 0, NULL),
(2, 'GWQF201610002', '2', '<p>q</p>', '2|1|', '\r\n					<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b><i class="fa"></i></b></span>				', '', '\r\n									', '', '', '58', '', 1, 'admin', '管理员', 1, '石河子高新区', '', 1476430174, 0, 0, 0, NULL),
(3, 'GWQF201610003', '3', '<p>q</p>', '2|1|', '\r\n					<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b></b><i class="fa"></i></span>				', '', '\r\n									', '', '', '58', '', 1, 'admin', '管理员', 1, '石河子高新区', '', 1476430180, 0, 40, 0, NULL),
(4, 'GWQF201610004', '123', '<p>123</p>', '2|1|', '\r\n					<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b></b><i class="fa fa-arrow-right"></i></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b></b><i class="fa"></i></span>				', '', '\r\n									', '', '', '58', 'MDAwMDAwMDAwMIO0c3M;', 1, 'admin', '管理员', 1, '石河子高新区', '', 1477733258, 0, 20, 0, NULL),
(5, 'GWQF201610005', '123', '<p>123</p>', '2|1|', '\r\n					<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b></b><i class="fa fa-times"></i></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b><i class="fa"></i></b></span>				', '', '\r\n									', '', '', '58', 'MDAwMDAwMDAwMIPKc3M;', 1, 'admin', '管理员', 1, '石河子高新区', '', 1477733404, 0, 20, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_flow_log`
--

CREATE TABLE `think_flow_log` (
  `id` int(11) NOT NULL,
  `flow_id` int(11) NOT NULL DEFAULT '0' COMMENT '流程ID',
  `emp_no` varchar(20) NOT NULL DEFAULT '' COMMENT '员工编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名称',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '当前步骤',
  `result` int(11) DEFAULT NULL COMMENT '审批结果',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `comment` text COMMENT '意见',
  `is_read` tinyint(3) NOT NULL DEFAULT '0' COMMENT '已读',
  `from` varchar(20) DEFAULT NULL COMMENT '传阅人',
  `is_del` tinyint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_flow_log`
--

INSERT INTO `think_flow_log` (`id`, `flow_id`, `emp_no`, `user_id`, `user_name`, `step`, `result`, `create_time`, `update_time`, `comment`, `is_read`, `from`, `is_del`) VALUES
(1, 1, '2', 3, 'Peter', 21, 0, 1476430168, 1476430300, 'n', 0, NULL, 0),
(2, 2, '2', 3, 'Peter', 21, 1, 1476430174, 1476430308, 'y', 0, NULL, 0),
(3, 3, '2', 3, 'Peter', 21, 1, 1476430180, 1476430315, 'y', 0, NULL, 0),
(4, 2, '1', 2, 'Bob', 22, 0, 1476430309, 1476430333, 'n', 0, NULL, 0),
(5, 3, '1', 2, 'Bob', 22, 1, 1476430315, 1476430340, 'y', 0, NULL, 0),
(6, 4, '2', 3, 'Peter', 21, NULL, 1477733258, 0, NULL, 0, NULL, 0),
(7, 5, '2', 3, 'Peter', 21, NULL, 1477733405, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_flow_type`
--

CREATE TABLE `think_flow_type` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `tag` varchar(20) NOT NULL DEFAULT '' COMMENT '分组',
  `doc_no_format` varchar(50) NOT NULL DEFAULT '' COMMENT '文档编码格式',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `content` text NOT NULL COMMENT '内容',
  `confirm` varchar(100) NOT NULL DEFAULT '' COMMENT '裁决数据',
  `confirm_name` text NOT NULL COMMENT '裁决显示内容',
  `consult` varchar(100) NOT NULL DEFAULT '' COMMENT '协商数据',
  `consult_name` text NOT NULL COMMENT '协商显示内容',
  `refer` varchar(100) NOT NULL DEFAULT '' COMMENT '抄送数据',
  `refer_name` text NOT NULL COMMENT '抄送显示内容',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` smallint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `is_edit` tinyint(3) NOT NULL DEFAULT '0' COMMENT '可编辑标记',
  `is_lock` tinyint(3) NOT NULL DEFAULT '0' COMMENT '锁定标记',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `request_duty` int(11) DEFAULT NULL COMMENT '申请权限',
  `report_duty` int(11) DEFAULT NULL COMMENT '报告权限',
  `udf_tpl` varchar(20) DEFAULT NULL,
  `is_show` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_flow_type`
--

INSERT INTO `think_flow_type` (`id`, `tag`, `doc_no_format`, `name`, `short`, `content`, `confirm`, `confirm_name`, `consult`, `consult_name`, `refer`, `refer_name`, `create_time`, `update_time`, `sort`, `is_edit`, `is_lock`, `is_del`, `request_duty`, `report_duty`, `udf_tpl`, `is_show`) VALUES
(34, '83', '{YYYY}-{M}-{D}', '个人请假单', 'QJ', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1401288825, 1477642861, 1, 0, 0, 0, 16, 16, '', 1),
(36, '83', '{YYYY}-{M}-{D}', '外出申请', 'WC', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1412777631, 1477642913, 2, 0, 0, 0, 16, 16, '', 1),
(38, '83', '{YYYY}-{M}-{D}', '离职申请单', '离职', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1427940431, 1477642955, 4, 0, 0, 0, 16, 16, '', 1),
(40, '88', '{YYYY}-{M}-{D}', '个人请假单', '个人请假单', '巅峰时代', '', '', '', '', '', '', 1428649355, 1430715743, 1, 1, 0, 0, 20, 17, NULL, NULL),
(41, '88', '{YYYY}-{M}-{D}', '出差申请', '差旅', '出差申请', '', '', '', '', '', '', 1430201444, 1430709554, 2, 1, 0, 0, 20, 18, NULL, NULL),
(44, '88', '{YYYY}-{M}-{D}', '离职申请单', '离职申请', '<p>\r\n	<br />\r\n</p>', 'dgp_16_2|dgp_18_8|', '<span id="dgp_16_2" data="dgp_16_2"><nobr><b title="科-经理">科-经理</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span id="dgp_18_8" data="dgp_18_8"><nobr><b title="部-部长">部-部长</b></nobr></span>', 'emp_2001|', '<span id="emp_2001" data="emp_2001"><nobr><b title="张三/部长<>">张三/部长&lt;&gt;</b></nobr></span>', '', '', 1430285006, 1430707786, 4, 1, 1, 0, 20, 17, NULL, NULL),
(54, '88', '{YYYY}-{M}-{D}', '员工培训/教育申请', '培训申请', '员工培训教育申请', '', '', '', '', '', '', 1430288450, 1430708546, 3, 1, 0, 0, 18, 17, NULL, NULL),
(58, '81', 'GWQF{YYYY}{M}{###}', '公文签发', 'GWQF', '', 'dp_5_4|dp_5_5|', '<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1476429984, 0, 0, 0, 0, 0, 14, 14, '', 1),
(59, '81', 'GWJS{YYYY}{M}{###}', '公文接收', 'GWJS', '', 'dp_5_4|dp_5_5|', '<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1476430089, 0, 0, 0, 0, 0, 14, 14, '', 1),
(60, '81', 'GWCB{YYYY}{M}{###}', '公文承办', 'GWCB', '', 'dp_5_4|dp_5_5|', '<span data="dp_5_4" id="dp_5_4"><nobr><b title="管委会-副主任">管委会-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dp_5_5" id="dp_5_5"><nobr><b title="管委会-主任">管委会-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1476430138, 0, 3, 0, 0, 0, 14, 14, '', 1),
(61, '84', '{YYYY}-{M}-{D}', '会议室申请', '会议室', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1477643038, 1477643299, 1, 0, 0, 0, 17, 17, '', 1),
(62, '84', '{YYYY}-{M}-{D}', '车辆申请', '车辆', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1477643163, 1477643212, 2, 0, 0, 0, 17, 17, '', 1),
(63, '82', '{YYYY}-{M}-{D}', '报销申请', '报销', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1477643339, 0, 0, 0, 0, 0, 15, 15, '', 1),
(64, '82', '{YYYY}-{M}-{D}', '项目经费申请', '经费', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1477643448, 1477643465, 2, 0, 0, 0, 15, 15, '', 1),
(65, '85', '{YYYY}-{M}-{D}', '招标申请', '招标', '', 'dgp_18_4|dgp_18_5|', '<span data="dgp_18_4" id="dgp_18_4"><nobr><b title="部-副主任">部-副主任</b></nobr><b><i class="fa fa-arrow-right"></i></b></span><span data="dgp_18_5" id="dgp_18_5"><nobr><b title="部-主任">部-主任</b></nobr><b><i class="fa"></i></b></span>', '', '', '', '', 1477645074, 1477645119, 0, 0, 0, 0, 18, 18, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_form`
--

CREATE TABLE `think_form` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `udf_data` text COMMENT '自定义字段数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_form`
--

INSERT INTO `think_form` (`id`, `doc_no`, `name`, `content`, `folder`, `add_file`, `user_id`, `user_name`, `create_time`, `update_time`, `is_del`, `udf_data`) VALUES
(1, '2016-0001', 'xx', '<p>xx</p>', 78, '', 0, '管理员', 1456365366, 0, 1, '{"226":"xxx"}'),
(2, '2016-0002', 'dd', '<p>dd试试</p>', 78, '', 0, '管理员', 1456365653, 1456365677, 0, '{"226":"dd"}'),
(3, '2016-0003', '123', '<p>123</p>', 7, '', 1, '管理员', 1477643745, 0, 1, NULL),
(4, '2016-0004', '123', '<p>123</p>', 7, '', 1, '管理员', 1477643976, 0, 1, '{"238":"2016-10-28"}'),
(5, '2016-0005', '关于A项目的文件1', '<p>这是关于A项目的文件1</p>', 8, '', 1, '管理员', 1477646727, 0, 0, NULL),
(6, '2016-0006', '项目内容', '<p>123</p>', 9, 'MDAwMDAwMDAwMIPac3M;MDAwMDAwMDAwMISkc3M;', 1, '管理员', 1477733464, 1477733570, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_group`
--

CREATE TABLE `think_group` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `is_public` tinyint(3) DEFAULT NULL COMMENT '是否公开',
  `remark` text COMMENT '备注',
  `user_id` int(11) DEFAULT NULL COMMENT '登陆人ID',
  `user_name` varchar(20) DEFAULT NULL COMMENT '登录用户名称',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `sort` varchar(10) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_group_user`
--

CREATE TABLE `think_group_user` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_info`
--

CREATE TABLE `think_info` (
  `id` int(11) NOT NULL,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '分类',
  `is_sign` tinyint(3) DEFAULT '0' COMMENT '是否需要签收',
  `is_public` tinyint(3) DEFAULT NULL COMMENT '是否公开',
  `scope_user_id` text COMMENT '发布范围ID',
  `scope_user_name` text COMMENT '发布范围名称',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '登陆人ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆人名称',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `dept_name` varchar(20) DEFAULT NULL COMMENT '部门名称',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_info`
--

INSERT INTO `think_info` (`id`, `doc_no`, `name`, `content`, `folder`, `is_sign`, `is_public`, `scope_user_id`, `scope_user_name`, `add_file`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `update_time`, `is_del`) VALUES
(1, '2016-0001', '欢迎使用石河子高新区办公系统', '<p>欢迎使用石河子高新区办公系统</p>', 3, 0, 1, '1,2,3,4,', '管理员/系统管理员|1;Bob/主任|2;Peter/副主任|3;John/调研员|4;', '', 1, '管理员', 1, '石河子高新区', 1477733034, 1477739149, 0),
(2, '2016-0002', '雪中栽新绿 师市各部门为石河子高新区义务植树忙', '<p>10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。</p>\r\n<p>&nbsp;</p>\r\n<p><img src="Uploads/Download/info/2016-10/58148374d9291.jpg" alt="" /></p>\r\n<p>在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。</p>\r\n<p>&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo; 师市发改委办公室主任孙永梅说。</p>\r\n<p>&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。</p>\r\n<p>舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;</p>\r\n<p>石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;</p>\r\n<p>在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。</p>\r\n<p>石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;</p>\r\n<p>当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。</p>\r\n<p>&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。</p>\r\n<p>今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。</p>', 2, 0, NULL, 'dept_1,', '石河子高新区|dept_1;', '', 1, '管理员', 1, '石河子高新区', 1477739249, 1477741632, 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_info_scope`
--

CREATE TABLE `think_info_scope` (
  `info_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_info_scope`
--

INSERT INTO `think_info_scope` (`info_id`, `user_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_info_sign`
--

CREATE TABLE `think_info_sign` (
  `id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '登录用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登录用户名称',
  `is_sign` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否签收',
  `sign_time` int(11) UNSIGNED DEFAULT NULL COMMENT '签收时间',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `dept_name` varchar(20) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_mail`
--

CREATE TABLE `think_mail` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `mid` varchar(200) DEFAULT NULL COMMENT '邮件唯一id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `add_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `from` varchar(255) DEFAULT NULL COMMENT '发件人',
  `to` varchar(255) DEFAULT NULL COMMENT '收件人',
  `reply_to` varchar(255) DEFAULT NULL COMMENT '回复到',
  `cc` varchar(255) DEFAULT NULL COMMENT '抄送',
  `read` tinyint(1) NOT NULL DEFAULT '0' COMMENT '已读',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_mail_account`
--

CREATE TABLE `think_mail_account` (
  `id` mediumint(6) NOT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '邮件地址',
  `mail_name` varchar(50) NOT NULL DEFAULT '' COMMENT '邮件显示名称',
  `pop3svr` varchar(50) NOT NULL DEFAULT '' COMMENT 'pop服务器',
  `smtpsvr` varchar(50) NOT NULL DEFAULT '' COMMENT 'smtp服务器',
  `mail_id` varchar(50) NOT NULL DEFAULT '' COMMENT '邮件ID',
  `mail_pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '邮件密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='think_user_info';

--
-- 转存表中的数据 `think_mail_account`
--

INSERT INTO `think_mail_account` (`id`, `email`, `mail_name`, `pop3svr`, `smtpsvr`, `mail_id`, `mail_pwd`) VALUES
(0, '2', '2', '2', '2', '2', '2');

-- --------------------------------------------------------

--
-- 表的结构 `think_mail_organize`
--

CREATE TABLE `think_mail_organize` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `sender_check` int(11) NOT NULL DEFAULT '0' COMMENT '是否确认发件人',
  `sender_option` int(11) NOT NULL DEFAULT '0' COMMENT '发件人选项',
  `sender_key` varchar(50) NOT NULL DEFAULT '' COMMENT '确认发件人值',
  `domain_check` int(11) NOT NULL DEFAULT '0' COMMENT '是否确认域名',
  `domain_option` int(11) NOT NULL DEFAULT '0' COMMENT '域名选项',
  `domain_key` varchar(50) NOT NULL DEFAULT '' COMMENT '确认域名值',
  `recever_check` int(11) NOT NULL DEFAULT '0' COMMENT '是否确认收件人',
  `recever_option` int(11) NOT NULL DEFAULT '0' COMMENT '收件人选项',
  `recever_key` varchar(50) NOT NULL DEFAULT '' COMMENT '确认收信人值',
  `title_check` int(11) NOT NULL DEFAULT '0' COMMENT '是否确认标题',
  `title_option` int(11) NOT NULL DEFAULT '0' COMMENT '确认标题选项',
  `title_key` varchar(50) NOT NULL DEFAULT '' COMMENT '确认标题值',
  `to` int(11) NOT NULL DEFAULT '0' COMMENT '移动到',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_message`
--

CREATE TABLE `think_message` (
  `id` int(11) NOT NULL,
  `content` text COMMENT '内容',
  `add_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `sender_id` int(11) DEFAULT NULL COMMENT '发送人',
  `sender_name` varchar(20) DEFAULT NULL COMMENT '发送人名称',
  `receiver_id` int(11) DEFAULT NULL COMMENT '接收人',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '接收人名称',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `owner_id` int(11) DEFAULT NULL COMMENT '拥有者',
  `is_del` tinyint(3) DEFAULT '0' COMMENT '删除标记',
  `is_read` tinyint(3) DEFAULT '0' COMMENT '是否已读'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_message`
--

INSERT INTO `think_message` (`id`, `content`, `add_file`, `sender_id`, `sender_name`, `receiver_id`, `receiver_name`, `create_time`, `owner_id`, `is_del`, `is_read`) VALUES
(1, '<p>22222222222</p>', '', 1, '管理员', 1, '管理员/系统管理员', 1476451798, 1, 0, 1),
(2, '<p>22222222222</p>', '', 1, '管理员', 1, '管理员/系统管理员', 1476451798, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_node`
--

CREATE TABLE `think_node` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT 'URL地址',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `sub_folder` varchar(20) DEFAULT NULL COMMENT '子文件夹',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` varchar(20) DEFAULT NULL COMMENT '排序',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `badge_function` varchar(50) DEFAULT NULL COMMENT '统计函数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_node`
--

INSERT INTO `think_node` (`id`, `name`, `url`, `icon`, `sub_folder`, `remark`, `sort`, `pid`, `is_del`, `badge_function`) VALUES
(84, '管理', 'System/index', 'fa fa-cogs', '', '', '999', 0, 0, ''),
(85, '邮件', 'Mail/index', 'fa fa-envelope-o bc-mail', '', '', '11', 0, 1, 'badge_sum'),
(87, '审批', 'Flow/index', 'fa fa-pencil bc-flow', '', '', '2', 0, 0, 'badge_sum'),
(88, '公告', 'Info/index##', 'fa fa-file-o', 'InfoFolder', '', '4', 0, 0, 'badge_sum'),
(91, '日程', 'Schedule/index', 'fa fa-calendar bc-personal-schedule', '', '', '9', 198, 0, 'badge_count_schedule'),
(94, '职位', 'Position/index', NULL, NULL, '', '', 1, 0, NULL),
(100, '写信', 'Mail/add', NULL, '', '', '1', 85, 0, NULL),
(101, '收件箱', 'Mail/folder?fid=inbox', 'bc-mail-inbox', '', '', '3', 85, 0, 'badge_count_mail_inbox'),
(102, '邮件设置', '', NULL, NULL, NULL, '9', 85, 0, NULL),
(104, '垃圾箱', 'Mail/folder?fid=spambox', '', '', '', '5', 85, 0, NULL),
(105, '发件箱', 'Mail/folder?fid=outbox', '', '', '', '6', 85, 0, NULL),
(106, '已删除', 'Mail/folder?fid=delbox', '', '', '', '4', 85, 0, NULL),
(107, '草稿箱', 'Mail/folder?fid=darftbox', '', '', '', '7', 85, 0, NULL),
(108, '邮件帐户设置', 'MailAccount/index', NULL, '', '', '1', 102, 0, NULL),
(110, '单位信息管理', '', 'fa fa-cogs', '', '', '1', 84, 0, ''),
(112, '权限管理', '', NULL, NULL, '', '3', 84, 0, NULL),
(113, '系统设定', '', NULL, NULL, '', '4', 84, 0, NULL),
(114, '系统参数设置', 'SystemConfig/index', '', '', '', '2', 113, 0, ''),
(115, '组织图', 'Dept/index', '', '', '', '1', 110, 0, NULL),
(116, '员工登记', 'User/index', NULL, '', '', '5', 110, 0, NULL),
(118, '权限组管理', 'Role/index', '', '', '', '1', 112, 0, NULL),
(119, '权限设置', 'Role/node', '', '', '', '2', 112, 0, NULL),
(120, '权限分配', 'Role/user', '', '', '', '3', 112, 0, NULL),
(121, '菜单管理', 'Node/index', '', '', '', '1', 113, 0, NULL),
(123, '职位', 'Position/index', NULL, '', '', '2', 110, 0, NULL),
(124, '文件夹设置', 'Mail/folder_manage', '', '', '', '2', 102, 0, ''),
(125, '联系人', 'Contact/index', '', '', '', '1', 198, 0, NULL),
(126, '信息搜索', 'Info/index', '', '', '', '1', 88, 0, NULL),
(143, '邮件分类', 'MailOrganize/index', NULL, '', '', '', 102, 0, NULL),
(144, '发起', 'Flow/index', '', '', '', '1', 87, 0, NULL),
(146, '流程管理', 'FlowType/index', '', '', '', '9', 87, 0, NULL),
(147, '待审批', 'Flow/folder?fid=confirm', 'bc-flow-confirm', '', '', '4', 87, 0, 'badge_count_flow_todo'),
(148, '已审批', 'Flow/folder?fid=finish', '', '', '', '5', 87, 0, ''),
(149, '草稿箱', 'Flow/folder?fid=darft', '', '', '', '2', 87, 0, ''),
(150, '已提交', 'Flow/folder?fid=submit', '', '', '', '3', 87, 0, ''),
(152, '待办', 'Todo/index', 'fa fa-tasks bc-personal-todo', '', '', '9', 198, 0, 'badge_count_todo'),
(153, '部门级别', 'DeptGrade/index', '', '', '', '4', 110, 0, NULL),
(156, '群组1', 'Customer/index', '', '', '', '2', 157, 0, ''),
(157, '通讯录', 'Staff/index', 'fa fa-group', '', '', '7', 0, 1, 'badge_sum'),
(158, '群组2', 'Supplier/index', '', '', '', '3', 157, 0, ''),
(169, '职员', 'Staff/index', NULL, '', '', '', 157, 0, NULL),
(177, '我的文件夹', '##mail', 'bc-mail-myfolder', 'MailFolder', '', '8', 85, 0, 'badge_count_mail_user_folder'),
(184, '流程分组', 'FlowType/tag_manage', '', '', '', '8', 87, 0, NULL),
(185, '审批报告', 'Flow/folder?fid=report', 'bc-flow-receive', '', '', '6', 87, 0, ''),
(189, '信息分类', 'Info/folder_manage', '', '', '', 'C1', 88, 0, ''),
(190, '消息', 'Message/index', 'fa fa-inbox bc-message', '', '', '1', 198, 0, 'badge_count_message'),
(191, '用户设置', '', '', '', '', '99', 198, 0, ''),
(192, '用户资料', 'Profile/index', '', '', '', '', 191, 0, NULL),
(193, '修改密码', 'Profile/password', '', '', '', '', 191, 0, NULL),
(194, '用户设置', 'UserConfig/index', '', '', '', '999', 191, 0, NULL),
(198, '个人', 'Contact/index', 'fa fa-user bc-personal', '', '', '9', 0, 0, 'badge_sum'),
(205, '业务角色管理', 'Duty/index', '', '', '', '4', 112, 0, ''),
(206, '业务权限分配', 'Role/duty', '', '', '', '5', 112, 0, ''),
(214, '记账', 'Finance/index', 'fa fa-jpy', '', '', '3', 0, 0, ''),
(219, '我的信息', 'Info/my_info', '', '', '', 'B1', 88, 0, NULL),
(220, '我的签收', 'Info/my_sign', '', '', '', 'B2', 88, 0, NULL),
(221, '文档', 'Doc/index##', 'fa fa-inbox', 'DocFolder', '', '41', 0, 0, 'badge_sum'),
(222, '文档管理', 'Doc/folder_manage', 'fa fa-inbox', '', '', '4', 221, 0, 'badge_sum'),
(226, '成果池', 'Form/index##', 'fa fa-thumb-tack ', 'FormFolder', '', '5', 0, 0, 'badge_sum'),
(227, '项目管理', 'Form/folder_manage', 'fa fa-inbox', '', '', '4', 226, 0, 'badge_sum'),
(228, '项目字段类型', 'Form/field_type', 'fa fa-inbox', '', '', '5', 226, 0, 'badge_sum'),
(229, '群组3', 'Group/index', 'fa fa-group', '', '', '7', 157, 0, 'badge_sum'),
(234, '参阅箱', 'Flow/folder?fid=receive', 'bc-flow-receive', '', '', '6', 87, 0, 'badge_count_flow_receive'),
(247, '设置', '', '', '', '', '3', 242, 0, ''),
(256, '学习', 'Study/index##', 'fa fa-book', 'StudyFolder', NULL, '6', 0, 0, 'badge_sum'),
(257, '学习任务', 'Study/index', '', '', '', '', 256, 0, 'badge_count_study'),
(258, '项目', 'Task/index##', 'fa fa-table', 'TaskFolder', '', '5', 0, 0, 'badge_sum'),
(259, '项目管理', 'Task/index', '', '', '', '', 258, 0, 'badge_count_task');

-- --------------------------------------------------------

--
-- 表的结构 `think_position`
--

CREATE TABLE `think_position` (
  `id` int(11) NOT NULL,
  `position_no` varchar(10) NOT NULL DEFAULT '' COMMENT '编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(10) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_position`
--

INSERT INTO `think_position` (`id`, `position_no`, `name`, `sort`, `is_del`) VALUES
(2, '04', '系统管理员', '4', 0),
(3, '03', '调研员', '3', 0),
(4, '02', '副主任', '2', 0),
(5, '01', '主任', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_push`
--

CREATE TABLE `think_push` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `data` text NOT NULL,
  `status` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_push`
--

INSERT INTO `think_push` (`id`, `user_id`, `data`, `status`, `time`, `info`) VALUES
(3188, 42, '{"type":"签批","action":"","title":"11111111111111","content":"发送人：小微企业-管理员","url":"\\/index.php?m=&c=GovDoc&a=index&return_url=GovDoc%2Findex"}', 0, 1446696291, NULL),
(3190, 42, '{"type":"签批","action":"","title":"11111111111111","content":"发送人：小微企业-管理员","url":"\\/xiaowei\\/index.php?m=&c=GovDoc&a=index&return_url=GovDoc%2Findex"}', 0, 1451031653, NULL),
(3194, 42, '{"type":"消息","action":"","title":"来自：总经办-101的消息","content":"dsadasdsa","url":"\\/xiaowei\\/index.php?m=&c=Message&a=index&return_url=Message%2Findex"}', 0, 1451279340, NULL),
(3195, 42, '{"type":"消息","action":"","title":"来自：总经办-101的消息","content":"dsa dsa dsa","url":"\\/xiaowei\\/index.php?m=&c=Message&a=index&return_url=Message%2Findex"}', 0, 1451279349, NULL),
(3197, 44, '{"type":"任务","action":"需要执行","title":"来自：总经办-101","content":"标题：sadasd","url":"\\/xiaowei\\/index.php?m=&c=Task&a=read&id=36&return_url=Task%2Findex"}', 0, 1451279473, NULL),
(3207, 42, '{"type":"消息","action":"","title":"来自：销售部-1的消息","content":"；；；","url":"\\/xiaowei\\/index.php?m=&c=Message&a=index&return_url=Message%2Findex"}', 0, 1451285661, NULL),
(3208, 42, '{"type":"消息","action":"","title":"来自：小微企业-管理员的消息","content":"asd","url":"\\/index.php?m=&c=Message&a=index&return_url=Message%2Findex"}', 0, 1451286292, NULL),
(3209, 44, '{"type":"消息","action":"","title":"来自：小微企业-管理员的消息","content":"123","url":"\\/xiaowei\\/index.php?m=&c=Message&a=index&return_url=Message%2Findex"}', 0, 1451368088, NULL),
(3211, 43, '{"type":"任务","action":"需要执行","title":"来自：小微企业-管理员","content":"标题：123","url":"\\/xiaowei\\/index.php?m=&c=Task&a=read&id=37&return_url=Task%2Findex"}', 0, 1451369732, NULL),
(3212, 44, '{"type":"任务","action":"需要执行","title":"来自：小微企业-管理员","content":"标题：123","url":"\\/xiaowei\\/index.php?m=&c=Task&a=read&id=37&return_url=Task%2Findex"}', 0, 0, NULL),
(3213, 43, '{"type":"任务","action":"需要执行","title":"来自：小微企业-管理员","content":"标题：123","url":"\\/xiaowei\\/index.php?m=&c=Task&a=read&id=37&return_url=Task%2Findex"}', 0, 1451369749, NULL),
(3214, 44, '{"type":"任务","action":"需要执行","title":"来自：小微企业-管理员","content":"标题：123","url":"\\/xiaowei\\/index.php?m=&c=Task&a=read&id=37&return_url=Task%2Findex"}', 0, 0, NULL),
(3217, 42, '{"type":"签批","action":"","title":"请问","content":"发送人：小微企业-管理员","url":"\\/xiaowei\\/index.php?m=&c=GovDoc&a=index&return_url=GovDoc%2Findex"}', 0, 1451374547, NULL),
(3220, 3, '{"type":"任务","action":"需要执行","title":"来自：石河子高新区-管理员","content":"标题：大家一起来学习！","url":"\\/index.php?m=&c=task&a=read&id=2&return_url=Task%2Findex"}', 0, 0, NULL),
(3223, 2, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：来学系","url":"\\/index.php?m=&c=Study&a=read&id=2&return_url=Study%2Findex"}', 0, 0, NULL),
(3224, 3, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：来学系","url":"\\/index.php?m=&c=Study&a=read&id=2&return_url=Study%2Findex"}', 0, 0, NULL),
(3225, 4, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：来学系","url":"\\/index.php?m=&c=Study&a=read&id=2&return_url=Study%2Findex"}', 0, 0, NULL),
(3227, 2, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：关于A项目的文件1","url":"\\/index.php?m=&c=Study&a=read&id=3&return_url=Study%2Findex"}', 0, 0, NULL),
(3228, 3, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：关于A项目的文件1","url":"\\/index.php?m=&c=Study&a=read&id=3&return_url=Study%2Findex"}', 0, 0, NULL),
(3229, 4, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：关于A项目的文件1","url":"\\/index.php?m=&c=Study&a=read&id=3&return_url=Study%2Findex"}', 0, 0, NULL),
(3230, 2, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：微软微软w","url":"\\/index.php?m=&c=Task&a=read&id=8&return_url=Task%2Findex"}', 0, 1477664088, NULL),
(3231, 3, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：微软微软w","url":"\\/index.php?m=&c=Task&a=read&id=8&return_url=Task%2Findex"}', 0, 0, NULL),
(3232, 4, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：微软微软w","url":"\\/index.php?m=&c=Task&a=read&id=8&return_url=Task%2Findex"}', 0, 0, NULL),
(3238, 2, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：规划中的项目","url":"\\/index.php?m=&c=Task&a=read&id=2&return_url=Task%2Findex"}', 0, 0, NULL),
(3239, 3, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：规划中的项目","url":"\\/index.php?m=&c=Task&a=read&id=2&return_url=Task%2Findex"}', 0, 0, NULL),
(3240, 4, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：规划中的项目","url":"\\/index.php?m=&c=Task&a=read&id=2&return_url=Task%2Findex"}', 0, 0, NULL),
(3243, 2, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：来学习","url":"\\/index.php?m=&c=Study&a=read&id=2&return_url=Study%2Findex"}', 0, 0, NULL),
(3244, 3, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：来学习","url":"\\/index.php?m=&c=Study&a=read&id=2&return_url=Study%2Findex"}', 0, 0, NULL),
(3245, 4, '{"type":"任务","action":"需要学习","title":"来自：石河子高新区-管理员","content":"标题：来学习","url":"\\/index.php?m=&c=Study&a=read&id=2&return_url=Study%2Findex"}', 0, 0, NULL),
(3247, 2, '{"type":"信息","action":"站内通知","title":"你好","content":"测试","url":"\\/index.php?m=&c=Info&a=read&id=1&return_url=Info%2Findex"}', 0, 0, NULL),
(3248, 3, '{"type":"信息","action":"站内通知","title":"你好","content":"测试","url":"\\/index.php?m=&c=Info&a=read&id=1&return_url=Info%2Findex"}', 0, 0, NULL),
(3249, 4, '{"type":"信息","action":"站内通知","title":"你好","content":"测试","url":"\\/index.php?m=&c=Info&a=read&id=1&return_url=Info%2Findex"}', 0, 0, NULL),
(3250, 3, '{"type":"审批","action":"需要审批","title":"123","content":"提交人：石河子高新区-管理员","url":"\\/index.php?m=&c=Flow&a=read&id=4&return_url=Flow%2Findex"}', 0, 1477733258, NULL),
(3251, 3, '{"type":"审批","action":"需要审批","title":"123","content":"提交人：石河子高新区-管理员","url":"\\/index.php?m=&c=Flow&a=read&id=5&return_url=Flow%2Findex"}', 0, 1477733405, NULL),
(3253, 2, '{"type":"信息","action":"站内通知","title":"欢迎使用石河子高新区办公系统","content":"欢迎使用石河子高新区办公系统","url":"\\/index.php?m=&c=Info&a=read&id=1&return_url=Info%2Findex"}', 0, 0, NULL),
(3254, 3, '{"type":"信息","action":"站内通知","title":"欢迎使用石河子高新区办公系统","content":"欢迎使用石河子高新区办公系统","url":"\\/index.php?m=&c=Info&a=read&id=1&return_url=Info%2Findex"}', 0, 0, NULL),
(3255, 4, '{"type":"信息","action":"站内通知","title":"欢迎使用石河子高新区办公系统","content":"欢迎使用石河子高新区办公系统","url":"\\/index.php?m=&c=Info&a=read&id=1&return_url=Info%2Findex"}', 0, 0, NULL),
(3257, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3258, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3259, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3261, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3262, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3263, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3265, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3266, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3267, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3269, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3270, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3271, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3273, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3274, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3275, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3277, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3278, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3279, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3281, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3282, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3283, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3285, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3286, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3287, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3289, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3290, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3291, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3293, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3294, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3295, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3297, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3298, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3299, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL);
INSERT INTO `think_push` (`id`, `user_id`, `data`, `status`, `time`, `info`) VALUES
(3301, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3302, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3303, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3305, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3306, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3307, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3309, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3310, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3311, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3313, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3314, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3315, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3317, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3318, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3319, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3321, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3322, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3323, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3325, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3326, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3327, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3329, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3330, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3331, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3333, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3334, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3335, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3337, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3338, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3339, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3341, 2, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3342, 3, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL),
(3343, 4, '{"type":"信息","action":"新闻资讯","title":"雪中栽新绿 师市各部门为石河子高新区义务植树忙","content":"10月26日，石河子迎来了2016年的第一场雪，气温下降，但八师石河子市发改委、绿化委员会办公室、园林绿化养护中心和石河子安南经济建设投资有限公司的干部职工还是如约来到石河子国家高新区参加义务植树活动，掀起了师市义务植树造林活动的热潮。&nbsp;在滨河北路南侧的片林栽植区，师市发改委的近40名干部职工顾不上满铁锹、满鞋子上粘的泥巴，抢抓时间挥锹、挖土、打埂。&nbsp;&ldquo;义务植树是我们义不容辞责任，昨天我们单位已经挖了1000多个坑，今天还有200多个，今天虽然下雪了，但是想着入冬前，赶快把任务完成，要不然入冬之后地不好挖了。&rdquo;师市发改委办公室主任孙永梅说。&ldquo;再来一棵，再来一棵，够了，够了&hellip;&hellip;&rdquo;在滨河北路上，石河子绿化养护中心工作人员舒宁梅正在数树和验苗，确保卸下来每一棵树苗的质量。舒宁梅说：&ldquo;我们是下雨、下雪一样干，分配的任务一定要完成，因为任务也挺艰巨的，虽然辛苦但是心里是甜的，为了自己的家乡美嘛。&rdquo;石河子园林养护中心主任陈全文&ldquo;到今天早上大概到了30车苗子，大家比较辛苦，冒着雪把每块地段的苗子，根据规格和品种把它卸到位，天气放晴之后，全力以赴抢栽进去。&rdquo;在南八路石河子党校对面的行道树栽植区，一台大吊车正将一棵带有80公分土球，重约200多公斤的大树调入坑中。石河子园林绿化养护中心工作人员叶盛说：&ldquo;这个树的规格是9-10公分的大叶榆，作为南八路党校门前的行道树，我们栽植标准非常高，横竖要对齐，要保持一条直线，每棵树间隔5米，离路沿石是5米8，每个都是拿尺子拿线拉出来。&rdquo;当天，石河子绿化委员会办公室、园林养护中心和石河子安南公司的领导干部在各个路段现场协调苗木，给各单位分配任务。不管是下雨、下雪丝毫都阻挡不了他们的工作的进度和热情，对于他们来说这种工作状态已经是常态化。目前安南公司已修整林床近3500亩。&nbsp;&ldquo;所有的片林、林床的整治都是安南公司在具体实施，平整场地、开沟、挖渠、挖坑、调苗都是我们这块的任务。我们分了三次，第一批东外环-北外环大概有1000多亩地，10月8日之前完成。第二批是1300多亩，第三批1200亩沿着新修的道路两边，截止10月25日地基本全部整完。&rdquo;石河子安南经济建设投资有限公司党支部书记原松说。今年秋季到入冬前，石河子高新区将要完成3560亩，种植苗木近30万株的任务。种植的主要品种有大叶榆、长枝榆、大叶白蜡等品种。截止目前，进入石河子高新区的苗木已有166600株，完成绿化任务1500多亩。","url":"\\/index.php?m=&c=Info&a=read&id=2&return_url=Info%2Findex"}', 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_rank`
--

CREATE TABLE `think_rank` (
  `id` int(11) NOT NULL,
  `rank_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_rank`
--

INSERT INTO `think_rank` (`id`, `rank_no`, `name`, `sort`, `is_del`) VALUES
(1, 'RG40', '部长', '1', 0),
(2, 'RG30', '科长', '2', 0),
(3, 'RG20', '主管', '3', 0),
(4, 'RG10', '助理', '4', 0),
(5, 'RG00', '总经理', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_role`
--

CREATE TABLE `think_role` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `pid` smallint(6) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `create_time` int(11) UNSIGNED DEFAULT '0',
  `update_time` int(11) UNSIGNED DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_role`
--

INSERT INTO `think_role` (`id`, `name`, `pid`, `remark`, `sort`, `create_time`, `update_time`, `is_del`) VALUES
(1, '公司管理员', 0, '', '1', 1208784792, 1451291148, 0),
(2, '基本权限', 0, '', '2', 1215496283, 1368507164, 0),
(7, '领导', 0, '', '2', 1254325787, 1401288337, 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_role_duty`
--

CREATE TABLE `think_role_duty` (
  `role_id` smallint(6) UNSIGNED NOT NULL,
  `duty_id` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_role_duty`
--

INSERT INTO `think_role_duty` (`role_id`, `duty_id`) VALUES
(1, 14),
(2, 14),
(7, 14),
(1, 15),
(2, 15),
(7, 15),
(1, 16),
(2, 16),
(7, 16),
(1, 17),
(2, 17),
(7, 17),
(1, 18),
(2, 18),
(7, 18);

-- --------------------------------------------------------

--
-- 表的结构 `think_role_node`
--

CREATE TABLE `think_role_node` (
  `role_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `write` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_role_node`
--

INSERT INTO `think_role_node` (`role_id`, `node_id`, `admin`, `read`, `write`) VALUES
(2, 136, NULL, NULL, NULL),
(2, 135, NULL, NULL, NULL),
(1, 94, NULL, NULL, NULL),
(1, 97, NULL, NULL, NULL),
(1, 98, NULL, NULL, NULL),
(1, 99, NULL, NULL, NULL),
(1, 69, NULL, NULL, NULL),
(1, 6, NULL, NULL, NULL),
(1, 2, NULL, NULL, NULL),
(1, 7, NULL, NULL, NULL),
(1, 131, 1, 1, 1),
(1, 130, NULL, NULL, NULL),
(1, 133, NULL, NULL, NULL),
(1, 132, NULL, NULL, NULL),
(1, 135, NULL, NULL, NULL),
(1, 136, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 134, NULL, NULL, NULL),
(2, 103, NULL, NULL, NULL),
(2, 133, NULL, NULL, NULL),
(2, 130, NULL, NULL, NULL),
(2, 134, NULL, NULL, NULL),
(2, 132, NULL, NULL, NULL),
(2, 103, NULL, NULL, NULL),
(2, 103, NULL, NULL, NULL),
(2, 109, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 103, NULL, NULL, NULL),
(1, 109, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL),
(1, 163, NULL, NULL, NULL),
(1, 170, NULL, NULL, NULL),
(1, 164, NULL, NULL, NULL),
(1, 155, NULL, NULL, NULL),
(1, 154, 1, 1, 1),
(1, 111, NULL, NULL, NULL),
(1, 168, NULL, NULL, NULL),
(1, 162, NULL, NULL, NULL),
(1, 166, NULL, NULL, NULL),
(1, 161, NULL, NULL, NULL),
(1, 171, NULL, NULL, NULL),
(1, 165, NULL, NULL, NULL),
(1, 174, NULL, NULL, NULL),
(1, 172, NULL, NULL, NULL),
(1, 173, NULL, NULL, NULL),
(1, 160, NULL, NULL, NULL),
(1, 175, NULL, NULL, NULL),
(1, 176, NULL, NULL, NULL),
(1, 167, NULL, NULL, NULL),
(1, 128, NULL, NULL, NULL),
(1, 242, 1, 1, 1),
(1, 246, 1, 1, 1),
(1, 247, NULL, NULL, NULL),
(1, 244, NULL, NULL, NULL),
(1, 245, NULL, NULL, NULL),
(1, 248, 1, 1, 1),
(1, 249, NULL, NULL, NULL),
(1, 250, NULL, NULL, NULL),
(2, 85, 1, 1, 1),
(2, 100, NULL, NULL, NULL),
(2, 101, NULL, NULL, NULL),
(2, 106, NULL, NULL, NULL),
(2, 104, NULL, NULL, NULL),
(2, 105, NULL, NULL, NULL),
(2, 107, NULL, NULL, NULL),
(2, 177, 1, 1, 1),
(2, 102, NULL, NULL, NULL),
(2, 143, 1, 1, 1),
(2, 108, 1, 1, 1),
(2, 124, NULL, NULL, NULL),
(2, 87, 1, 1, 1),
(2, 144, 1, 1, 1),
(2, 149, NULL, NULL, NULL),
(2, 150, NULL, NULL, NULL),
(2, 147, NULL, NULL, NULL),
(2, 148, NULL, NULL, NULL),
(2, 185, NULL, NULL, NULL),
(2, 234, NULL, NULL, NULL),
(2, 184, NULL, NULL, NULL),
(2, 146, NULL, NULL, NULL),
(2, 214, NULL, NULL, NULL),
(2, 88, NULL, 1, 1),
(2, 126, NULL, 1, 1),
(2, 219, NULL, NULL, NULL),
(2, 220, NULL, NULL, NULL),
(2, 189, NULL, NULL, NULL),
(2, 221, NULL, 1, NULL),
(2, 222, NULL, NULL, NULL),
(2, 226, NULL, 1, 1),
(2, 227, NULL, NULL, NULL),
(2, 228, NULL, NULL, NULL),
(2, 157, 1, 1, 1),
(2, 169, 1, 1, 1),
(2, 156, 1, 1, 1),
(2, 158, 1, 1, 1),
(2, 229, NULL, 1, 1),
(2, 198, 1, 1, 1),
(2, 125, 1, 1, 1),
(2, 190, 1, 1, 1),
(2, 91, 1, 1, 1),
(2, 152, 1, 1, 1),
(2, 191, NULL, NULL, NULL),
(2, 193, NULL, NULL, NULL),
(2, 192, 1, 1, 1),
(2, 194, 1, 1, 1),
(2, 84, NULL, NULL, NULL),
(2, 110, NULL, NULL, NULL),
(2, 115, NULL, NULL, NULL),
(2, 123, NULL, NULL, NULL),
(2, 153, NULL, NULL, NULL),
(2, 116, NULL, NULL, NULL),
(2, 112, NULL, NULL, NULL),
(2, 118, NULL, NULL, NULL),
(2, 119, NULL, NULL, NULL),
(2, 120, NULL, NULL, NULL),
(2, 205, NULL, NULL, NULL),
(2, 206, NULL, NULL, NULL),
(2, 113, NULL, NULL, NULL),
(2, 121, NULL, NULL, NULL),
(2, 114, NULL, NULL, NULL),
(7, 85, NULL, NULL, NULL),
(7, 100, NULL, NULL, NULL),
(7, 101, NULL, NULL, NULL),
(7, 106, NULL, NULL, NULL),
(7, 104, NULL, NULL, NULL),
(7, 105, NULL, NULL, NULL),
(7, 107, NULL, NULL, NULL),
(7, 177, NULL, NULL, NULL),
(7, 102, NULL, NULL, NULL),
(7, 143, NULL, NULL, NULL),
(7, 108, NULL, NULL, NULL),
(7, 124, NULL, NULL, NULL),
(7, 87, NULL, NULL, NULL),
(7, 144, NULL, NULL, NULL),
(7, 149, NULL, NULL, NULL),
(7, 150, NULL, NULL, NULL),
(7, 147, NULL, NULL, NULL),
(7, 148, NULL, NULL, NULL),
(7, 185, NULL, NULL, NULL),
(7, 234, NULL, NULL, NULL),
(7, 184, NULL, NULL, NULL),
(7, 146, NULL, NULL, NULL),
(7, 214, NULL, NULL, NULL),
(7, 88, NULL, NULL, NULL),
(7, 126, NULL, NULL, NULL),
(7, 219, NULL, NULL, NULL),
(7, 220, NULL, NULL, NULL),
(7, 189, NULL, NULL, NULL),
(7, 221, NULL, NULL, NULL),
(7, 222, NULL, NULL, NULL),
(7, 226, NULL, NULL, NULL),
(7, 227, NULL, NULL, NULL),
(7, 228, NULL, NULL, NULL),
(7, 157, NULL, NULL, NULL),
(7, 169, NULL, NULL, NULL),
(7, 156, NULL, NULL, NULL),
(7, 158, NULL, NULL, NULL),
(7, 229, NULL, NULL, NULL),
(7, 198, NULL, NULL, NULL),
(7, 125, NULL, NULL, NULL),
(7, 190, NULL, NULL, NULL),
(7, 91, NULL, NULL, NULL),
(7, 152, NULL, NULL, NULL),
(7, 191, NULL, NULL, NULL),
(7, 193, NULL, NULL, NULL),
(7, 192, NULL, NULL, NULL),
(7, 194, NULL, NULL, NULL),
(7, 84, NULL, NULL, NULL),
(7, 110, NULL, NULL, NULL),
(7, 115, NULL, NULL, NULL),
(7, 123, NULL, NULL, NULL),
(7, 153, NULL, NULL, NULL),
(7, 116, NULL, NULL, NULL),
(7, 112, NULL, NULL, NULL),
(7, 118, NULL, NULL, NULL),
(7, 119, NULL, NULL, NULL),
(7, 120, NULL, NULL, NULL),
(7, 205, NULL, NULL, NULL),
(7, 206, NULL, NULL, NULL),
(7, 113, NULL, NULL, NULL),
(7, 121, NULL, NULL, NULL),
(7, 114, NULL, NULL, NULL),
(1, 255, 1, 1, 1),
(1, 85, 1, 1, 1),
(1, 100, NULL, NULL, NULL),
(1, 101, NULL, NULL, NULL),
(1, 106, NULL, NULL, NULL),
(1, 104, NULL, NULL, NULL),
(1, 105, NULL, NULL, NULL),
(1, 107, NULL, NULL, NULL),
(1, 177, 1, 1, 1),
(1, 102, NULL, NULL, NULL),
(1, 143, 1, 1, 1),
(1, 108, 1, 1, 1),
(1, 124, NULL, NULL, NULL),
(1, 87, 1, 1, 1),
(1, 144, 1, 1, 1),
(1, 149, NULL, NULL, NULL),
(1, 150, NULL, NULL, NULL),
(1, 147, NULL, NULL, NULL),
(1, 148, NULL, NULL, NULL),
(1, 185, NULL, NULL, NULL),
(1, 234, NULL, NULL, NULL),
(1, 184, NULL, NULL, NULL),
(1, 146, 1, 1, 1),
(1, 214, 1, 1, 1),
(1, 88, 1, 1, 1),
(1, 126, 1, 1, 1),
(1, 219, NULL, NULL, NULL),
(1, 220, NULL, NULL, NULL),
(1, 189, NULL, NULL, NULL),
(1, 221, 1, 1, 1),
(1, 222, NULL, NULL, NULL),
(1, 258, 1, 1, 1),
(1, 259, 1, 1, 1),
(1, 226, 1, 1, 1),
(1, 227, NULL, NULL, NULL),
(1, 228, NULL, NULL, NULL),
(1, 256, 1, 1, 1),
(1, 257, 1, 1, 1),
(1, 157, 1, 1, 1),
(1, 169, 1, 1, 1),
(1, 156, 1, 1, 1),
(1, 158, 1, 1, 1),
(1, 229, 1, 1, 1),
(1, 198, 1, 1, 1),
(1, 125, 1, 1, 1),
(1, 190, 1, 1, 1),
(1, 91, 1, 1, 1),
(1, 152, 1, 1, 1),
(1, 191, NULL, NULL, NULL),
(1, 193, NULL, NULL, NULL),
(1, 192, 1, 1, 1),
(1, 194, 1, 1, 1),
(1, 84, 1, 1, 1),
(1, 110, NULL, NULL, NULL),
(1, 115, 1, 1, 1),
(1, 123, 1, 1, 1),
(1, 153, 1, 1, 1),
(1, 116, 1, 1, 1),
(1, 112, NULL, NULL, NULL),
(1, 118, 1, 1, 1),
(1, 119, NULL, NULL, NULL),
(1, 120, NULL, NULL, NULL),
(1, 205, 1, 1, 1),
(1, 206, NULL, NULL, NULL),
(1, 113, NULL, NULL, NULL),
(1, 121, 1, 1, 1),
(1, 114, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_role_user`
--

CREATE TABLE `think_role_user` (
  `role_id` mediumint(9) UNSIGNED DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_role_user`
--

INSERT INTO `think_role_user` (`role_id`, `user_id`) VALUES
(1, '1'),
(2, '2'),
(2, '3'),
(2, '4');

-- --------------------------------------------------------

--
-- 表的结构 `think_schedule`
--

CREATE TABLE `think_schedule` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT '',
  `content` text,
  `location` varchar(50) DEFAULT '',
  `priority` int(11) DEFAULT NULL,
  `actor` varchar(200) DEFAULT '',
  `user_id` int(11) DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `add_file` varchar(200) DEFAULT '',
  `is_del` tinyint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_songji`
--

CREATE TABLE `think_songji` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `flight_no` varchar(10) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `depart_location` varchar(200) DEFAULT NULL,
  `passenger_qty` tinyint(3) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `passenger` varchar(10) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `message` text,
  `task_no` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `executor` varchar(200) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_songji_log`
--

CREATE TABLE `think_songji_log` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `assigner` int(11) DEFAULT NULL COMMENT '分配任务的人',
  `executor` varchar(20) DEFAULT NULL COMMENT '执行人',
  `executor_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `plan_time` datetime DEFAULT NULL,
  `transactor_name` varchar(20) DEFAULT NULL,
  `transactor` int(11) DEFAULT NULL COMMENT '由谁处理的',
  `finish_rate` tinyint(3) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `feed_back` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_study`
--

CREATE TABLE `think_study` (
  `id` int(8) UNSIGNED NOT NULL,
  `task_no` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `executor` varchar(200) DEFAULT NULL,
  `add_file` varchar(255) DEFAULT NULL,
  `expected_time` datetime DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_user_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `is_del` tinyint(3) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_study`
--

INSERT INTO `think_study` (`id`, `task_no`, `pid`, `name`, `content`, `executor`, `add_file`, `expected_time`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `update_time`, `update_user_id`, `update_user_name`, `status`, `is_del`, `type`) VALUES
(1, NULL, NULL, '学习吗！', '<p>赶紧来学习</p>', 'Bob|2;Peter|3;John|4;', '', '2016-11-04 21:09:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, '2016-0008', NULL, '来学习', '<p>xxxxxxx</p>', '管理员|1;Bob|2;Peter|3;John|4;', '', '2016-11-05 22:12:00', 1, '管理员', 1, '石河子高新区', 1477663939, 1477730095, NULL, NULL, 10, 0, NULL),
(3, '2016-0008', NULL, '关于A项目的文件1', '<p>法大师傅撒旦</p>', '管理员|1;Bob|2;Peter|3;John|4;', '', '2016-11-06 22:14:00', 1, '管理员', 1, '石河子高新区', 1477664055, NULL, NULL, NULL, 0, 0, NULL),
(4, '2016-0009', NULL, '微软微软w', '<p>rweee</p>', '管理员|1;', '', '2016-11-05 22:17:00', 1, '管理员', 1, '石河子高新区', 1477664235, NULL, NULL, NULL, 10, 0, NULL),
(5, '2016-0010', NULL, '541511332', '<p>123123123</p>', '管理员|1;', '', '2016-11-06 23:04:00', 1, '管理员', 1, '石河子高新区', 1477667070, NULL, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_study_log`
--

CREATE TABLE `think_study_log` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `assigner` int(11) DEFAULT NULL COMMENT '分配任务的人',
  `executor` varchar(20) DEFAULT NULL COMMENT '执行人',
  `executor_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `plan_time` datetime DEFAULT NULL,
  `transactor_name` varchar(20) DEFAULT NULL,
  `transactor` int(11) DEFAULT NULL COMMENT '由谁处理的',
  `finish_rate` tinyint(3) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `feed_back` text,
  `add_file` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_study_log`
--

INSERT INTO `think_study_log` (`id`, `task_id`, `type`, `assigner`, `executor`, `executor_name`, `status`, `plan_time`, `transactor_name`, `transactor`, `finish_rate`, `finish_time`, `feed_back`, `add_file`) VALUES
(1, 2, 1, 1, '1', '管理员', 10, '2016-10-15 22:12:00', '管理员', 1, 50, NULL, '', ''),
(2, 2, 1, 1, '2', 'Bob', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 1, 1, '3', 'Peter', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 1, 1, '4', 'John', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 1, 1, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 1, 1, '2', 'Bob', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 3, 1, 1, '3', 'Peter', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 1, 1, '4', 'John', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 1, 1, '1', '管理员', 10, '2016-11-05 22:17:00', '管理员', 1, 61, NULL, '', ''),
(10, 5, 1, 1, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 1, NULL, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, 1, NULL, '2', 'Bob', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 1, NULL, '3', 'Peter', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 2, 1, NULL, '4', 'John', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_supplier`
--

CREATE TABLE `think_supplier` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `letter` varchar(50) DEFAULT '',
  `short` varchar(30) DEFAULT '',
  `account` varchar(20) DEFAULT '',
  `tax_no` varchar(20) DEFAULT '',
  `payment` varchar(20) DEFAULT NULL,
  `contact` varchar(20) NOT NULL DEFAULT '',
  `office_tel` varchar(20) DEFAULT NULL,
  `mobile_tel` varchar(20) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `im` varchar(20) DEFAULT '',
  `address` varchar(50) DEFAULT '',
  `user_id` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` text,
  `fax` varchar(255) DEFAULT NULL,
  `user_name` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_supplier`
--

INSERT INTO `think_supplier` (`id`, `name`, `letter`, `short`, `account`, `tax_no`, `payment`, `contact`, `office_tel`, `mobile_tel`, `email`, `im`, `address`, `user_id`, `is_del`, `remark`, `fax`, `user_name`) VALUES
(1, 'XXXX', 'XXXX', 'X', 'XX', 'XX', 'X', 'XXX', NULL, 'X', 'X', 'XXX', 'XX', 1, 0, 'XX', 'XX', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_system_config`
--

CREATE TABLE `think_system_config` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `sort` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `data_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_system_config`
--

INSERT INTO `think_system_config` (`id`, `code`, `name`, `val`, `is_del`, `sort`, `pid`, `data_type`) VALUES
(86, 'system_name', '', '石河子高新区办公系统', 0, NULL, 0, 'system'),
(87, 'system_license', '', '112dsa52a5rra53ar535fa32er13', 0, NULL, 0, 'system'),
(88, 'upload_file_ext', '', 'doc,docx,xls,xlsx,ppt,pptx,pdf,gif,png,tif,zip,rar,jpg,jpeg,txt', 0, NULL, 0, 'system'),
(89, 'login_verify_code', '', '', 0, NULL, 0, 'system'),
(97, 'ws_push_config', '', '101', 0, NULL, 0, 'push'),
(102, '记账-支出', '记账-支出', '记账-支出', 0, '1', 0, 'common'),
(103, 'FINANCE_PAYMENT_TYPE', '餐费', '餐费', 0, '1', 102, 'common'),
(104, 'FINANCE_PAYMENT_TYPE', '通讯费', '通讯费', 0, '2', 102, 'common'),
(105, 'FINANCE_PAYMENT_TYPE', '办公费', '办公费', 0, '3', 102, 'common'),
(106, '跟进类型', '跟进类型', '跟进类型', 0, '2', 0, 'common'),
(107, 'CRM_VISIT_TYPE', '咨询', '咨询', 0, '1', 106, 'common'),
(108, 'CRM_VISIT_TYPE', '介绍', '介绍', 0, '2', 106, 'common');

-- --------------------------------------------------------

--
-- 表的结构 `think_system_folder`
--

CREATE TABLE `think_system_folder` (
  `id` int(3) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `admin` varchar(200) NOT NULL,
  `write` varchar(200) NOT NULL,
  `read` varchar(200) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_system_folder`
--

INSERT INTO `think_system_folder` (`id`, `pid`, `controller`, `name`, `admin`, `write`, `read`, `sort`, `is_del`, `remark`) VALUES
(1, 0, 'Info', '政务公开', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '石河子高新区|dept_1;管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, NULL),
(2, 0, 'Info', '新闻资讯', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '石河子高新区|dept_1;管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, NULL),
(3, 0, 'Info', '站内通知', '管理员/系统管理员|admin;', '石河子高新区|dept_1;', '石河子高新区|dept_1;管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, NULL),
(4, 0, 'Info', '党建工作', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '石河子高新区|dept_1;管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, NULL),
(5, 0, 'Info', '科技成果', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '石河子高新区|dept_1;管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 1, NULL),
(6, 0, 'Doc', '人事档案', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, ''),
(7, 0, 'Form', 'aaa', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '', 1, NULL),
(8, 0, 'Form', 'A项目', '管委会|dept_5;Bob/主任|1;Peter/副主任|2;John/调研员|3;党工委|dept_6;管理员/系统管理员|admin;', '党工委|dept_6;Bob/主任|1;Peter/副主任|2;John/调研员|3;管理员/系统管理员|admin;', 'Bob/主任|1;Peter/副主任|2;John/调研员|3;管理员/系统管理员|admin;', '1', 0, ''),
(9, 0, 'Form', 'B项目', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '2', 0, ''),
(10, 8, 'Form', 'A子项目-1', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, NULL),
(11, 10, 'Form', 'A子项目-1-1', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '管理员/系统管理员|admin;Bob/主任|1;Peter/副主任|2;John/调研员|3;', '', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_system_log`
--

CREATE TABLE `think_system_log` (
  `id` int(11) NOT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `data` float DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_system_log`
--

INSERT INTO `think_system_log` (`id`, `type`, `time`, `data`, `text`) VALUES
(1, 1, 1451551272, 44, NULL),
(2, 2, 1451551272, 15.1434, NULL),
(3, 1, 1451873031, 44, NULL),
(4, 2, 1451873031, 15.1434, NULL),
(5, 1, 1456107280, 44, NULL),
(6, 2, 1456107280, 15.1434, NULL),
(7, 1, 1456109753, 44, NULL),
(8, 2, 1456109753, 15.1434, NULL),
(9, 1, 1456204805, 1, NULL),
(10, 2, 1456204805, 0.0440426, NULL),
(11, 1, 1456304706, 3, NULL),
(12, 2, 1456304706, 0.102148, NULL),
(13, 1, 1456452223, 0, NULL),
(14, 2, 1456452223, 0, NULL),
(15, 1, 1456711062, 0, NULL),
(16, 2, 1456711062, 0, NULL),
(17, 1, 1456888227, 0, NULL),
(18, 2, 1456888227, 0, NULL),
(19, 1, 1456986724, 0, NULL),
(20, 2, 1456986724, 0, NULL),
(21, 1, 1457084017, 0, NULL),
(22, 2, 1457084017, 0, NULL),
(23, 1, 1457575511, 0, NULL),
(24, 2, 1457575511, 0, NULL),
(25, 1, 1457921693, 0, NULL),
(26, 2, 1457921693, 0, NULL),
(27, 1, 1457927154, 0, NULL),
(28, 2, 1457927154, 0, NULL),
(29, 1, 1458023171, 0, NULL),
(30, 2, 1458023171, 0, NULL),
(31, 1, 1476429594, 0, NULL),
(32, 2, 1476429594, 0, NULL),
(33, 1, 1476448364, 0, NULL),
(34, 2, 1476448364, 0, NULL),
(35, 1, 1476450411, 0, NULL),
(36, 2, 1476450411, 0, NULL),
(37, 1, 1476454323, 0, NULL),
(38, 2, 1476454323, 0, NULL),
(39, 1, 1476454474, 0, NULL),
(40, 2, 1476454474, 0, NULL),
(41, 1, 1476519716, 0, NULL),
(42, 2, 1476519716, 0, NULL),
(43, 1, 1476522681, 0, NULL),
(44, 2, 1476522681, 0, NULL),
(45, 1, 1476522810, 0, NULL),
(46, 2, 1476522810, 0, NULL),
(47, 1, 1476539655, 0, NULL),
(48, 2, 1476539655, 0, NULL),
(49, 1, 1476540788, 0, NULL),
(50, 2, 1476540788, 0, NULL),
(51, 1, 1476540914, 0, NULL),
(52, 2, 1476540914, 0, NULL),
(53, 1, 1477639258, 0, NULL),
(54, 2, 1477639258, 0, NULL),
(55, 1, 1477645525, 0, NULL),
(56, 2, 1477645525, 0, NULL),
(57, 1, 1477657380, 0, NULL),
(58, 2, 1477657380, 0, NULL),
(59, 1, 1477729669, 0, NULL),
(60, 2, 1477729669, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_system_tag`
--

CREATE TABLE `think_system_tag` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_system_tag`
--

INSERT INTO `think_system_tag` (`id`, `pid`, `controller`, `name`, `sort`, `remark`) VALUES
(81, 0, 'FlowType', '公文管理', '1', ''),
(82, 0, 'FlowType', '财务管理', '2', ''),
(83, 0, 'FlowType', '人事管理', '3', ''),
(84, 0, 'FlowType', '设备资源管理', '4', ''),
(85, 0, 'FlowType', '招标管理', '5', '');

-- --------------------------------------------------------

--
-- 表的结构 `think_system_tag_data`
--

CREATE TABLE `think_system_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_system_tag_data`
--

INSERT INTO `think_system_tag_data` (`row_id`, `tag_id`, `controller`) VALUES
(1, 81, 'Supplier');

-- --------------------------------------------------------

--
-- 表的结构 `think_task`
--

CREATE TABLE `think_task` (
  `id` int(8) UNSIGNED NOT NULL,
  `task_no` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `executor` varchar(200) DEFAULT NULL,
  `add_file` varchar(255) DEFAULT NULL,
  `expected_time` datetime DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_user_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `is_del` tinyint(3) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_task`
--

INSERT INTO `think_task` (`id`, `task_no`, `pid`, `name`, `content`, `executor`, `add_file`, `expected_time`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `update_time`, `update_user_id`, `update_user_name`, `status`, `is_del`, `type`) VALUES
(1, '2016-0001', NULL, 's', '<p>是</p>', '管理员|0;', '', '2016-02-25 10:31:00', 0, '管理员', 1, '小微企业', 1456367482, NULL, NULL, NULL, 0, 1, NULL),
(2, '2016-0002', NULL, '规划中的项目', '<p>学习学习</p>', '管理员|1;Bob|2;Peter|3;John|4;', '', '2016-10-22 13:50:00', 1, '管理员', 1, '石河子高新区', 1476450566, 1477730059, NULL, NULL, 10, 0, NULL),
(3, '2016-0003', NULL, '111111111111111', '<p>222</p>', '管理员|1;', '', '2016-10-21 21:12:00', 1, '管理员', 1, '石河子高新区', 1476450750, NULL, NULL, NULL, 30, 0, NULL),
(4, '2016-0004', NULL, '222', '<p>啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫啊舒服撒打发士大夫</p>', 'Bob|2', '', '2016-10-06 21:19:00', 1, '管理员', 1, '石河子高新区', 1476451189, NULL, NULL, NULL, 30, 0, NULL),
(5, '2016-0005', NULL, 'aaaa', '<p>aaa</p>', '管理员|1;', '', '2016-10-16 16:01:00', 1, '管理员', 1, '石河子高新区', 1476518493, NULL, NULL, NULL, 30, 0, NULL),
(6, '2016-0006', NULL, '111111111111111111111111111', '<p>333333333333333333</p>', '管理员|1;', '', '2016-10-21 17:29:00', 1, '管理员', 1, '石河子高新区', 1476523763, NULL, NULL, NULL, 30, 0, NULL),
(7, '2016-0007', NULL, '00', '<p>0000</p>', '管理员|1;', '', '2016-11-03 18:14:00', 1, '管理员', 1, '石河子高新区', 1476526479, NULL, NULL, NULL, 30, 0, NULL),
(8, '2016-0008', NULL, '微软微软w', '<p>啊飒飒</p>', 'Bob|2;Peter|3;John|4;管理员|1;', '', '2016-10-30 22:14:00', 1, '管理员', 1, '石河子高新区', 1477664088, NULL, NULL, NULL, 0, 0, NULL),
(9, '2016-0009', NULL, '正在执行的项目', '<p>2222czxczxczxc</p>', '管理员|1;', '', '2016-11-06 22:53:00', 1, '管理员', 1, '石河子高新区', 1477666413, 1477730072, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_task_log`
--

CREATE TABLE `think_task_log` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `assigner` int(11) DEFAULT NULL COMMENT '分配任务的人',
  `executor` varchar(20) DEFAULT NULL COMMENT '执行人',
  `executor_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `plan_time` datetime DEFAULT NULL,
  `transactor_name` varchar(20) DEFAULT NULL,
  `transactor` int(11) DEFAULT NULL COMMENT '由谁处理的',
  `finish_rate` tinyint(3) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `feed_back` text,
  `add_file` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_task_log`
--

INSERT INTO `think_task_log` (`id`, `task_id`, `type`, `assigner`, `executor`, `executor_name`, `status`, `plan_time`, `transactor_name`, `transactor`, `finish_rate`, `finish_time`, `feed_back`, `add_file`) VALUES
(1, 1, 1, 0, '0', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 1, '1', '管理员', 20, '2016-10-13 21:10:00', '管理员', 1, 100, '2016-10-14 21:11:40', '<p>已经学习</p>', ''),
(3, 2, 1, 1, '2', 'Bob', 10, '2016-10-16 17:58:00', 'Bob', 2, 22, NULL, '<p>1号已学习</p>', ''),
(4, 2, 1, 1, '3', 'Peter', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 1, 1, '4', 'John', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 1, 1, '1', '管理员', 20, '2016-10-15 21:16:00', '管理员', 1, 100, '2016-10-15 15:58:12', '<p>洒的回复收到回复挥洒的回复收到回复挥洒的</p>', ''),
(7, 5, 1, 1, '1', '管理员', 20, '2016-10-28 16:01:00', '管理员', 1, 100, '2016-10-15 17:11:32', '<p>aaa</p>', ''),
(8, 6, 1, 1, '1', '管理员', 20, '2016-10-21 17:29:00', '管理员', 1, 100, '2016-10-15 18:09:31', '<p>阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是阿斯顿发射点发生fda是</p>', ''),
(9, 4, 1, NULL, '2', 'Bob', 20, '2016-10-22 17:59:00', 'Bob', 2, 100, '2016-10-15 18:11:56', '<p>sss</p>', ''),
(10, 7, 1, 1, '1', '管理员', 20, '2016-10-23 18:14:00', '管理员', 1, 100, '2016-10-15 18:14:54', '<p>00</p>', ''),
(11, 8, 1, 1, '2', 'Bob', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 8, 1, 1, '3', 'Peter', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 8, 1, 1, '4', 'John', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 8, 1, 1, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 9, 1, 1, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2, 1, NULL, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 2, 1, NULL, '2', 'Bob', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 2, 1, NULL, '3', 'Peter', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2, 1, NULL, '4', 'John', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 9, 1, NULL, '1', '管理员', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_todo`
--

CREATE TABLE `think_todo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_udf_field`
--

CREATE TABLE `think_udf_field` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `row_type` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL DEFAULT '0',
  `msg` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  `config` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_udf_field`
--

INSERT INTO `think_udf_field` (`id`, `name`, `row_type`, `sort`, `msg`, `type`, `layout`, `data`, `validate`, `controller`, `is_del`, `config`) VALUES
(56, 'A11', 1, '', '', 'text', '3', '', '', 'Flow', 0, NULL),
(57, 'A2', 1, '', '', 'select', '4', '', '', 'Flow', 0, NULL),
(58, '呵 3 ', 1, '', '', 'select', '1', '', '', 'Flow', 0, NULL),
(59, '姓名', 33, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(60, '申请日期', 33, '', '', 'date', '1', '', '', 'Flow', 0, ''),
(61, '所属部门', 33, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(62, '所属科室', 33, '', '', 'select', '1', 'SYSTEM_CONFIG:FINANCE_INCOME_TYPE', '', 'Flow', 0, ''),
(64, 'B1', 76, '', '', 'text', '1', '', '', 'Flow', 0, NULL),
(65, 'B2', 76, '', '', 'text', '1', '', '', 'Flow', 0, NULL),
(66, '兑现日期', 76, '', '', 'datetime', '1', '', '', 'Form', 0, 'show|col-10'),
(67, '剩余期限', 76, '', '', 'text', '1', '', '', 'Form', 0, 'show|col-10'),
(68, '项目状态', 76, '', '', 'radio', '2', '提交|提交,审核中|审核中,审核失败|审核失败', '', 'Form', 0, 'show|col-10'),
(69, '姓名', 34, '', '请填写姓名', 'datetime', '1', '', 'require', 'Flow', 0, ''),
(71, '申请日期', 34, '', '请填写联系电话', 'text', '1', '', 'require', 'Flow', 0, ''),
(72, '请假开始时间', 34, '', '请选择开始时间', 'datetime', '1', '', 'require', 'Flow', 0, ''),
(73, '请假结束时间', 34, '', '请选择束时间', 'datetime', '1', '', 'require', 'Flow', 0, ''),
(74, '请假原因', 34, '', '请填写请假原因', 'textarea', '2', '', 'require', 'Flow', 0, ''),
(76, '姓名', 38, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(77, '申请日期', 38, '', '', 'date', '1', '', '', 'Flow', 0, ''),
(78, '所属部门', 38, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(79, '所属科室', 38, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(80, '姓名', 36, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(82, '申请日期', 36, '', '', 'date', '1', '', '', 'Flow', 0, ''),
(83, '所属部门、科室', 36, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(85, '姓名', 44, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(86, '部门/科室', 44, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(87, '离职申请日期', 44, '', '', 'date', '2', '', '', 'Flow', 0, ''),
(88, '离职理由', 44, '', '', 'editor', '2', '', '', 'Flow', 0, ''),
(89, '培训申请人', 54, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(90, '部门/科室', 54, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(91, '培训地点', 54, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(92, '培训开始时间', 54, '4', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(93, '培训目的', 54, '6', '', 'editor', '2', '', '', 'Flow', 0, ''),
(94, '培训内容', 54, '7', '', 'editor', '2', '', '', 'Flow', 0, ''),
(95, '姓名', 41, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(96, '部门/科室', 41, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(97, '出差地点', 41, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(98, '出差开始时间', 41, '5', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(99, '预计费用', 41, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(100, '出差事由/目的', 41, '7', '', 'editor', '2', '', '', 'Flow', 0, ''),
(103, '姓名', 40, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(104, '部门/科室', 40, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(105, '请假开始时间', 40, '', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(106, '请假结束时间', 40, '', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(107, '请假事由', 40, '', '', 'editor', '2', '', '', 'Flow', 0, ''),
(108, '培训结束时间', 54, '5', '', 'datetime', '2', '', '', 'Flow', 0, ''),
(109, '出差结束时间', 41, '6', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(110, '申请人', 43, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(112, '部门/科室', 43, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(114, '用途', 43, '3', '', 'editor', '2', '', '', 'Flow', 0, ''),
(115, '申请人', 55, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(116, '部门/科室', 55, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(117, '预算依据', 55, '4', '', 'editor', '2', '', '', 'Flow', 0, ''),
(118, '预算用途', 55, '3', '', 'editor', '2', '', '', 'Flow', 0, ''),
(119, '预算明细请参考附件', 55, '5', '', 'text', '2', '', '', 'Flow', 0, ''),
(120, '申请人', 45, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(121, '部门/科室', 45, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(122, '出差地点', 45, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(123, '出差开始时间', 45, '5', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(124, '出差结束时间', 45, '6', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(125, '住宿费用', 45, '7', '', 'text', '1', '', '', 'Flow', 0, ''),
(126, '交通费用', 45, '8', '', 'text', '1', '', '', 'Flow', 0, ''),
(127, '餐费', 45, '9', '', 'text', '1', '', '', 'Flow', 0, ''),
(128, '补贴', 45, '91', '', 'text', '1', '', '', 'Flow', 0, ''),
(129, '申请人', 19, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(130, '部门/科室', 19, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(131, '招待地点', 19, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(132, '招待时间', 19, '5', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(133, '招待费用', 19, '7', '', 'text', '2', '', '', 'Flow', 0, ''),
(134, '招待目的', 19, '8', '', 'editor', '2', '', '', 'Flow', 0, ''),
(135, '招待对象', 19, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(136, '参加人员', 19, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(137, '出差目的', 45, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(138, '申请人', 53, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(139, '部门/科室', 53, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(140, '辅设备名', 53, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(141, '数量', 53, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(142, '型号规格', 53, '5', '', 'text', '1', '', '', 'Flow', 0, ''),
(143, '预计费用', 53, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(144, '申请理由', 53, '7', '', 'editor', '2', '', '', 'Flow', 0, ''),
(145, '申请人', 51, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(146, '部门/科室', 51, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(147, '设备名称', 51, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(148, '数量', 51, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(149, '型号规格', 51, '5', '', 'text', '1', '', '', 'Flow', 0, ''),
(150, '预计费用', 51, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(151, '申请理由', 51, '7', '', 'editor', '2', '', '', 'Flow', 0, ''),
(152, '申请人', 52, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(153, '部门/科室', 52, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(154, '辅材名称', 52, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(155, '数量', 52, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(156, '型号规格', 52, '5', '', 'text', '1', '', '', 'Flow', 0, ''),
(157, '预计费用', 52, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(158, '申请理由', 52, '7', '', 'editor', '2', '', '', 'Flow', 0, ''),
(159, '申请人', 39, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(160, '部门/科室', 39, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(161, '原材料名称', 39, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(162, '数量', 39, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(163, '型号规格', 39, '5', '', 'text', '1', '', '', 'Flow', 0, ''),
(164, '预计费用', 39, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(165, '申请理由', 39, '7', '', 'editor', '2', '', '', 'Flow', 0, ''),
(166, '申请人', 50, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(167, '部门/科室', 50, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(168, '申请时间', 50, '3', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(169, '出差地点', 50, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(170, '出差事由', 50, '9', '', 'editor', '2', '', '', 'Flow', 0, ''),
(171, '去程', 50, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(172, '回程', 50, '7', '', 'text', '1', '', '', 'Flow', 0, ''),
(173, '出差开始时间', 50, '51', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(176, '出差结束时间', 50, '52', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(177, '申请人', 49, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(178, '部门/科室', 49, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(179, '目的/用途', 49, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(180, '使用开始时间', 49, '4', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(181, '使用结束时间', 49, '5', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(182, '申请时间', 49, '21', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(183, '参会人', 49, '6', '', 'text', '2', '', '', 'Flow', 0, ''),
(184, '申请人', 42, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(185, '部门/科室', 42, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(186, '申请理由', 42, '3', '', 'text', '1', '', '', 'Flow', 0, ''),
(187, '办公用品名称以及数量', 42, '4', '', 'editor', '2', '', '', 'Flow', 0, ''),
(189, '申请时间', 42, '21', '', 'text', '1', '', '', 'Flow', 0, ''),
(190, '申请人', 46, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(191, '部门/科室', 46, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(192, '申请时间', 46, '3', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(193, '申请事由', 46, '5', '', 'text', '2', '', '', 'Flow', 0, ''),
(194, '通讯报销金额', 46, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(195, '申请人', 47, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(196, '部门/科室', 47, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(197, '申请日期', 47, '3', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(199, '出差开始时间', 47, '4', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(200, '出差结束时间', 47, '5', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(201, '出差事由', 47, '31', '', 'text', '1', '', '', 'Flow', 0, ''),
(202, '实际使用费用', 47, '6', '', 'text', '1', '', '', 'Flow', 0, ''),
(203, '标准费用', 47, '7', '', 'text', '1', '', '', 'Flow', 0, ''),
(204, '交通费用明细', 47, '8', '', 'editor', '2', '', '', 'Flow', 0, ''),
(205, '申请人', 48, '1', '', 'text', '1', '', '', 'Flow', 0, ''),
(206, '部门/科室', 48, '2', '', 'text', '1', '', '', 'Flow', 0, ''),
(207, '申请时间', 48, '3', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(208, '实际费用', 48, '4', '', 'text', '1', '', '', 'Flow', 0, ''),
(209, '参加人员', 48, '5', '', 'text', '2', '', '', 'Flow', 0, ''),
(210, '申请事由', 48, '41', '', 'text', '2', '', '', 'Flow', 0, ''),
(211, '11111', 37, '', '', 'link_select', '1', 'dept', '', 'Flow', 0, ''),
(213, '自定义字段', 2, '', '', 'text', '1', '自定义字段', '', 'Crm', 0, ''),
(214, '预算范围', 56, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(215, '物料种类', 56, '', '', 'text', '1', '', '', 'Flow', 0, ''),
(216, '数量', 56, '', '', 'text', '2', '', '', 'Flow', 0, ''),
(217, '物料用途', 56, '', '', 'simple', '2', '', '', 'Flow', 0, ''),
(218, '目标受众', 56, '', '', 'simple', '2', '', '', 'Flow', 0, ''),
(219, '内容方向', 56, '', '', 'editor', '2', '', '', 'Flow', 0, ''),
(220, '其他要求', 56, '', '', 'simple', '2', '', '', 'Flow', 0, ''),
(221, '格式要求', 56, '', '', 'simple', '2', '', '', 'Flow', 0, ''),
(222, '方案确认时间', 56, '', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(223, '初稿时间', 56, '', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(224, '二稿时间', 56, '', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(225, '最终确认时间', 56, '', '', 'datetime', '1', '', '', 'Flow', 0, ''),
(226, 'AAAAAAA', 78, '', '', 'text', '1', '121321', '', 'Form', 0, ''),
(227, 'ssss', 33, '', '', 'select', '2', 'FINANCE_INCOME_TYPE:FINANCE_INCOME_TYPE', '', 'Flow', 0, ''),
(228, 'sad0s000', 33, '', '', 'select', '2', 'SYSTEM_CONFIG:FINANCE_INCOME_TYPE', '', 'Flow', 0, ''),
(229, '002111', 2, '', '', 'text', '1', '', '', 'Crm', 0, ''),
(230, 'asd', 0, 'sad', 'asd', 'text', '1', 'asd', '', 'CrmCompany', 0, 'asd'),
(232, '123', 0, '123', '', 'text', '1', '123', '', 'CrmCompany', 0, '123'),
(233, '阿诗丹顿', 1, '', '', 'text', '1', '玩儿', '', 'CrmContact', 0, ''),
(234, '爱妃', 1, '', '', 'text', '1', '情人网v', '', 'CrmContact', 0, ''),
(235, '123', 79, '', '', 'text', '1', '123', '', 'Product', 0, '123'),
(237, 'asd', 83, 'asd', '', 'text', '2', '阿斯达asd', '', 'Form', 0, 'asd'),
(238, '123', 7, '', '', 'date', '2', '', '', 'Form', 0, ''),
(239, '555', 7, '', '', 'select', '1', '4123', 'require', 'Form', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `think_udf_renew`
--

CREATE TABLE `think_udf_renew` (
  `id` int(11) NOT NULL,
  `renew_date` date DEFAULT NULL,
  `shop_no` varchar(10) DEFAULT NULL,
  `shop_name` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_udf_sales`
--

CREATE TABLE `think_udf_sales` (
  `id` int(11) NOT NULL,
  `sales_date` date DEFAULT NULL,
  `shop_no` varchar(10) DEFAULT NULL,
  `shop_name` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_udf_shop`
--

CREATE TABLE `think_udf_shop` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `shop_no` varchar(20) NOT NULL DEFAULT '' COMMENT '部门编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `sort` varchar(20) NOT NULL DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `duty` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_udf_target`
--

CREATE TABLE `think_udf_target` (
  `id` int(11) NOT NULL,
  `month` varchar(10) DEFAULT NULL,
  `shop_no` varchar(10) DEFAULT NULL,
  `shop_name` varchar(20) DEFAULT NULL,
  `renew_target` float DEFAULT NULL,
  `sales_target` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

CREATE TABLE `think_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `letter` varchar(10) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` int(8) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `duty` varchar(2000) DEFAULT NULL,
  `office_tel` varchar(20) DEFAULT NULL,
  `mobile_tel` varchar(20) DEFAULT NULL,
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `westatus` tinyint(3) DEFAULT '0',
  `init_pwd` tinyint(3) DEFAULT NULL,
  `pay_pwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`id`, `emp_no`, `name`, `letter`, `password`, `dept_id`, `position_id`, `sex`, `birthday`, `last_login_ip`, `login_count`, `pic`, `email`, `duty`, `office_tel`, `mobile_tel`, `create_time`, `update_time`, `is_del`, `openid`, `westatus`, `init_pwd`, `pay_pwd`) VALUES
(1, 'admin', '管理员', 'GLY', '21232f297a57a5a743894a0e4a801fc3', 1, 2, 'male', '0000-00-00', '0.0.0.0', 3488, '', '', '', '', '', 1222907803, 1476429784, 0, '', 1, 1, 'c81e728d9d4c2f636f067f89cc14862c'),
(2, '1', 'Bob', 'BOB', 'c4ca4238a0b923820dcc509a6f75849b', 5, 5, 'male', '1900-01-01', '0.0.0.0', NULL, NULL, '', '', '', '', 1476429824, 0, 0, NULL, 1, NULL, NULL),
(3, '2', 'Peter', 'PETER', 'c81e728d9d4c2f636f067f89cc14862c', 5, 4, 'male', '0000-00-00', '0.0.0.0', NULL, NULL, '', '', '', '', 1476429860, 0, 0, NULL, 1, NULL, NULL),
(4, '3', 'John', 'JOHN', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 5, 3, 'male', '0000-00-00', '0.0.0.0', NULL, NULL, '', '', '', '', 1476429880, 0, 0, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_user_config`
--

CREATE TABLE `think_user_config` (
  `id` int(11) NOT NULL DEFAULT '0',
  `home_sort` varchar(255) DEFAULT NULL,
  `list_rows` int(11) DEFAULT '20',
  `readed_info` text,
  `push_web` varchar(255) DEFAULT NULL,
  `push_wechat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_user_config`
--

INSERT INTO `think_user_config` (`id`, `home_sort`, `list_rows`, `readed_info`, `push_web`, `push_wechat`) VALUES
(0, NULL, 20, NULL, NULL, NULL),
(1, 'undefined11,22,|12,21,', 10, '1,2', 'mail,flow,message', 'mail,flow,message'),
(2, NULL, 20, NULL, NULL, NULL),
(3, NULL, 20, NULL, NULL, NULL),
(4, NULL, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_user_folder`
--

CREATE TABLE `think_user_folder` (
  `id` int(3) NOT NULL,
  `pid` int(11) DEFAULT '0',
  `controller` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_user_tag`
--

CREATE TABLE `think_user_tag` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_user_tag`
--

INSERT INTO `think_user_tag` (`id`, `pid`, `controller`, `user_id`, `name`, `sort`, `remark`) VALUES
(22, 0, 'Contact', 1, 'asd', '', ''),
(23, 0, 'Contact', 1, 'sad', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `think_user_tag_data`
--

CREATE TABLE `think_user_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_work_log`
--

CREATE TABLE `think_work_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_work_log`
--

INSERT INTO `think_work_log` (`id`, `user_id`, `user_name`, `dept_id`, `dept_name`, `create_time`, `content`, `plan`, `start_date`, `end_date`, `is_del`, `add_file`) VALUES
(1, 0, '管理员', 1, '小微企业', 1457941233, '<p>ssss</p>', '<p>ss</p>', '2016-03-14', '2016-03-14', 0, ''),
(2, 1, '管理员', 1, '石河子高新区', 1476451256, '<p>1111111123123</p>', '<p>333333333333</p>', '2016-10-13', '2016-10-14', 0, ''),
(3, 1, '管理员', 1, '石河子高新区', 1476451297, '<p>2222</p>', '<p>3333</p>', '2016-10-13', '2016-10-14', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `think_work_order`
--

CREATE TABLE `think_work_order` (
  `id` int(8) UNSIGNED NOT NULL,
  `task_no` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `executor` varchar(200) DEFAULT NULL,
  `actor` varchar(200) DEFAULT '',
  `add_file` varchar(255) DEFAULT NULL,
  `request_arrive_time` datetime DEFAULT NULL,
  `request_finish_time` datetime DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_user_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `is_del` tinyint(3) DEFAULT '0',
  `other` varchar(20) DEFAULT NULL,
  `arrive_time` int(11) DEFAULT NULL,
  `finish_time` int(11) DEFAULT NULL,
  `arrive_lat` varchar(10) DEFAULT NULL,
  `arrive_lng` varchar(10) DEFAULT NULL,
  `finish_lat` varchar(10) DEFAULT NULL,
  `finish_lng` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_work_order_log`
--

CREATE TABLE `think_work_order_log` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `assigner` int(11) DEFAULT NULL COMMENT '分配任务的人',
  `executor` varchar(20) DEFAULT NULL COMMENT '执行人',
  `executor_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `arrive_time` int(11) DEFAULT NULL,
  `transactor_name` varchar(20) DEFAULT NULL,
  `transactor` int(11) DEFAULT NULL COMMENT '由谁处理的',
  `finish_rate` tinyint(3) DEFAULT NULL,
  `finish_time` int(11) DEFAULT NULL,
  `feed_back` text,
  `arrive_lat` varchar(10) DEFAULT NULL,
  `arrive_lng` varchar(10) DEFAULT NULL,
  `finish_lat` varchar(10) DEFAULT NULL,
  `finish_lng` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_contact`
--
ALTER TABLE `think_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_customer`
--
ALTER TABLE `think_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_demo`
--
ALTER TABLE `think_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_dept`
--
ALTER TABLE `think_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_dept_grade`
--
ALTER TABLE `think_dept_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_doc`
--
ALTER TABLE `think_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_duty`
--
ALTER TABLE `think_duty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_file`
--
ALTER TABLE `think_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_finance`
--
ALTER TABLE `think_finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_finance_account`
--
ALTER TABLE `think_finance_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_flow`
--
ALTER TABLE `think_flow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_flow_log`
--
ALTER TABLE `think_flow_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_flow_type`
--
ALTER TABLE `think_flow_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_form`
--
ALTER TABLE `think_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_group`
--
ALTER TABLE `think_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_group_user`
--
ALTER TABLE `think_group_user`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `think_info`
--
ALTER TABLE `think_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_info_scope`
--
ALTER TABLE `think_info_scope`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `info_id` (`info_id`);

--
-- Indexes for table `think_info_sign`
--
ALTER TABLE `think_info_sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_mail`
--
ALTER TABLE `think_mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `create_time` (`create_time`);

--
-- Indexes for table `think_mail_account`
--
ALTER TABLE `think_mail_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_mail_organize`
--
ALTER TABLE `think_mail_organize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_message`
--
ALTER TABLE `think_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_node`
--
ALTER TABLE `think_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `status` (`is_del`);

--
-- Indexes for table `think_position`
--
ALTER TABLE `think_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_push`
--
ALTER TABLE `think_push`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_rank`
--
ALTER TABLE `think_rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_role`
--
ALTER TABLE `think_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`pid`),
  ADD KEY `ename` (`sort`),
  ADD KEY `status` (`is_del`);

--
-- Indexes for table `think_role_user`
--
ALTER TABLE `think_role_user`
  ADD KEY `group_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `think_schedule`
--
ALTER TABLE `think_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_songji`
--
ALTER TABLE `think_songji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_songji_log`
--
ALTER TABLE `think_songji_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_study`
--
ALTER TABLE `think_study`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_study_log`
--
ALTER TABLE `think_study_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_supplier`
--
ALTER TABLE `think_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_system_config`
--
ALTER TABLE `think_system_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `think_system_folder`
--
ALTER TABLE `think_system_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_system_log`
--
ALTER TABLE `think_system_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_system_tag`
--
ALTER TABLE `think_system_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_system_tag_data`
--
ALTER TABLE `think_system_tag_data`
  ADD KEY `row_id` (`row_id`);

--
-- Indexes for table `think_task`
--
ALTER TABLE `think_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_task_log`
--
ALTER TABLE `think_task_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_todo`
--
ALTER TABLE `think_todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_udf_field`
--
ALTER TABLE `think_udf_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_udf_renew`
--
ALTER TABLE `think_udf_renew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_udf_sales`
--
ALTER TABLE `think_udf_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_udf_shop`
--
ALTER TABLE `think_udf_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_udf_target`
--
ALTER TABLE `think_udf_target`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_user`
--
ALTER TABLE `think_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`emp_no`);

--
-- Indexes for table `think_user_config`
--
ALTER TABLE `think_user_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_user_folder`
--
ALTER TABLE `think_user_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_user_tag`
--
ALTER TABLE `think_user_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_user_tag_data`
--
ALTER TABLE `think_user_tag_data`
  ADD KEY `row_id` (`row_id`);

--
-- Indexes for table `think_work_log`
--
ALTER TABLE `think_work_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_work_order`
--
ALTER TABLE `think_work_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_work_order_log`
--
ALTER TABLE `think_work_order_log`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `think_contact`
--
ALTER TABLE `think_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_customer`
--
ALTER TABLE `think_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_demo`
--
ALTER TABLE `think_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_dept`
--
ALTER TABLE `think_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `think_dept_grade`
--
ALTER TABLE `think_dept_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `think_doc`
--
ALTER TABLE `think_doc`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `think_duty`
--
ALTER TABLE `think_duty`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `think_file`
--
ALTER TABLE `think_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文件ID', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `think_finance`
--
ALTER TABLE `think_finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_finance_account`
--
ALTER TABLE `think_finance_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_flow`
--
ALTER TABLE `think_flow`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `think_flow_log`
--
ALTER TABLE `think_flow_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `think_flow_type`
--
ALTER TABLE `think_flow_type`
  MODIFY `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- 使用表AUTO_INCREMENT `think_form`
--
ALTER TABLE `think_form`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `think_group`
--
ALTER TABLE `think_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_info`
--
ALTER TABLE `think_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `think_info_sign`
--
ALTER TABLE `think_info_sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_mail`
--
ALTER TABLE `think_mail`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_mail_organize`
--
ALTER TABLE `think_mail_organize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_message`
--
ALTER TABLE `think_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `think_node`
--
ALTER TABLE `think_node`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
--
-- 使用表AUTO_INCREMENT `think_position`
--
ALTER TABLE `think_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `think_push`
--
ALTER TABLE `think_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3344;
--
-- 使用表AUTO_INCREMENT `think_rank`
--
ALTER TABLE `think_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `think_role`
--
ALTER TABLE `think_role`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `think_schedule`
--
ALTER TABLE `think_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_songji`
--
ALTER TABLE `think_songji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_songji_log`
--
ALTER TABLE `think_songji_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_study`
--
ALTER TABLE `think_study`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `think_study_log`
--
ALTER TABLE `think_study_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `think_supplier`
--
ALTER TABLE `think_supplier`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_system_config`
--
ALTER TABLE `think_system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- 使用表AUTO_INCREMENT `think_system_folder`
--
ALTER TABLE `think_system_folder`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `think_system_log`
--
ALTER TABLE `think_system_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- 使用表AUTO_INCREMENT `think_system_tag`
--
ALTER TABLE `think_system_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- 使用表AUTO_INCREMENT `think_task`
--
ALTER TABLE `think_task`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `think_task_log`
--
ALTER TABLE `think_task_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `think_todo`
--
ALTER TABLE `think_todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_udf_field`
--
ALTER TABLE `think_udf_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- 使用表AUTO_INCREMENT `think_udf_renew`
--
ALTER TABLE `think_udf_renew`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_udf_sales`
--
ALTER TABLE `think_udf_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_udf_shop`
--
ALTER TABLE `think_udf_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_udf_target`
--
ALTER TABLE `think_udf_target`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_user`
--
ALTER TABLE `think_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `think_user_folder`
--
ALTER TABLE `think_user_folder`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_user_tag`
--
ALTER TABLE `think_user_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `think_work_log`
--
ALTER TABLE `think_work_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `think_work_order`
--
ALTER TABLE `think_work_order`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_work_order_log`
--
ALTER TABLE `think_work_order_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
