-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-18 15:46:45
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oa`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_check_num`
--

CREATE TABLE `think_check_num` (
  `id` int(11) NOT NULL,
  `check_num` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 0, '', 1, '高新区管委会', '高新区管委会', '1', '', 0),
(2, 1, '', 2, '综合办公室', '综合办公室', '1', '', 0),
(3, 1, '', 2, '组织人事局', '组织人事局', '2', '', 0),
(4, 1, '', 2, '纪工委办公室', '纪工委办公室', '3', '', 0),
(5, 1, '', 2, '财政局', '财政局', '4', '', 0),
(6, 1, '', 2, '招商中心', '招商中心', '5', '', 0),
(7, 1, '', 2, '招商一局', '招商一局', '6', '', 0),
(8, 1, '', 2, '招商二局', '招商二局', '7', '', 0),
(9, 1, '', 2, '招商三局', '招商三局', '8', '', 0),
(10, 1, '', 2, '经济发展局', '经济发展局', '9', '', 0),
(11, 1, '', 2, '规建局', '规建局', '90', '', 0),
(12, 1, '', 2, '社会发展局', '社会发展局', '91', '', 0),
(13, 1, '', 2, '科技促进局', '科技促进局', '92', '', 0),
(14, 1, '', 2, '执法局', '执法局', '93', '', 0),
(15, 1, '', 2, '创业服务中心', '创业服务中心', '94', '', 0),
(16, 1, '', 2, '居民服务中心', '居民服务中心', '95', '', 0),
(17, 1, '', 2, '石河子安南经济建设投资有限公司', '石河子安南经济建设投资有限公司', '96', '', 0),
(18, 17, '', 3, '办公室', '办公室', '1', '', 0),
(19, 17, '', 3, '财务部', '财务部', '2', '', 0),
(20, 17, '', 3, '工程部', '工程部', '3', '', 0),
(21, 17, '', 3, '经营部', '经营部', '4', '', 0),
(22, 17, '', 3, '工勤人员', '工勤人员', '5', '', 0),
(23, 17, '', 3, '后勤人员', '后勤人员', '6', '', 0);

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
(1, '', '一级', '1', 0),
(2, '', '二级', '2', 0),
(3, '', '三级', '3', 0);

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
(19, '', '公文', '1', 0, '');

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
(16, '1.jpg', '58529a3e0ce16.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481808445),
(17, '1.jpg', '58529a5d6131a.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481808477),
(18, '1.jpg', '58529a77ac1a8.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481808503),
(19, '1.jpg', '58529a95dcde4.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481808533),
(20, '1.jpg', '58529a9f9b777.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481808543),
(21, '1.jpg', '5852a27548b90.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481810549),
(22, '1.jpg', '5852a28437189.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481810564),
(23, '3.jpg', '5852a2aea9490.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 2803, '8f24c33592a452c8b908158455b35b7f', '5033d56beeae05ae7cde822b9ec16a1b1ce44cdc', 0, '', 1481810606),
(24, '1.jpg', '5852a2c6ddbaf.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481810630),
(25, '1.jpg', '5852a2d39a394.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481810643),
(26, '1.jpg', '5852a31187d3a.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 1299, 'd3b84d16cd625064f04b4b5502367e51', 'cbef5a50d6f2b65996a615237e9b9d0fc7181539', 0, '', 1481810705),
(27, '3.jpg', '5852a350476bb.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 2803, '8f24c33592a452c8b908158455b35b7f', '5033d56beeae05ae7cde822b9ec16a1b1ce44cdc', 0, '', 1481810768),
(28, '3.jpg', '5852a38b03474.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 2803, '8f24c33592a452c8b908158455b35b7f', '5033d56beeae05ae7cde822b9ec16a1b1ce44cdc', 0, '', 1481810826),
(29, '1.jpg', '5852a3c04b36f.jpg', 'popup/2016-12/', 'jpg', 'image/jpeg', 47718, '0ef3fbd3dbac13543dc9a9ee654c35c3', '626f6886feaba099b8e88792f401555dfcd27f78', 0, '', 1481810879);

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
(66, '86', '{YYYY}{M}{D}{######}', '公文签发', '公文签发', '', '', '', '', '', '', '', 1481811690, 1481811690, 0, 1, 0, 0, 19, 19, '', 1),
(67, '86', '{YYYY}{M}{D}{######}', '公文接收', '公文接收', '', '', '', '', '', '', '', 1481811727, 1481811727, 0, 0, 0, 0, 19, 19, '', 1),
(68, '86', '{YYYY}{M}{D}{######}', '公文审批', '公文审批', '', '', '', '', '', '', '', 1481811789, 1481811789, 0, 0, 0, 0, 19, 19, '', 1),
(69, '86', '{YYYY}{M}{D}{######}', '公文撰写', '公文撰写', '', '', '', '', '', '', '', 1481811858, 1481811858, 0, 1, 0, 0, 19, 19, '', 1),
(70, '87', '{YY}{M}{D}{XXXX}', '招聘', '招聘', '', '', '', '', '', '', '', 1481815284, 1481815284, 0, 0, 0, 0, 19, 19, '', 1),
(71, '88', '{YY}{M}{D}{XXXX}', '设备申请', '设备申请', '', '', '', '', '', '', '', 1481815627, 1481815627, 0, 0, 0, 0, 19, 19, '', 1),
(72, '89', 'CW{YY}{M}{D}{XXXX}', '财务审批', '财务审批', '', '', '', '', '', '', '', 1481863659, 1481863659, 0, 0, 0, 0, 19, 19, '', 1),
(73, '90', 'ZBSP{YY}{M}{D}', '招标审批', '招标审批', '', '', '', '', '', '', '', 1482029114, 1482029114, 0, 0, 0, 0, 19, 19, '', 1);

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

-- --------------------------------------------------------

--
-- 表的结构 `think_info_scope`
--

CREATE TABLE `think_info_scope` (
  `info_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, '管理', 'System/index', 'fa fa-cogs', '', '', '999', 0, 0, ''),
(2, '邮件', 'Mail/index', 'fa fa-envelope-o bc-mail', '', '', '1', 0, 1, 'badge_sum'),
(3, '审批', 'Flow/index', 'fa fa-pencil bc-flow', '', '', '2', 0, 0, 'badge_sum'),
(4, '消息', 'Info/index##', 'fa fa-paper-plane', 'InfoFolder', '', '4', 0, 0, 'badge_sum'),
(5, '日程', 'Schedule/index', 'fa fa-calendar bc-personal-schedule', '', '', '9', 51, 0, 'badge_count_schedule'),
(7, '写信', 'Mail/add', 'NULL', '', '', '1', 2, 0, 'NULL'),
(8, '收件箱', 'Mail/folder?fid=inbox', 'bc-mail-inbox', '', '', '3', 2, 0, 'badge_count_mail_inbox'),
(9, '邮件设置', '', 'NULL', 'NULL', 'NULL', '9', 2, 0, 'NULL'),
(10, '垃圾箱', 'Mail/folder?fid=spambox', '', '', '', '5', 2, 0, 'NULL'),
(11, '发件箱', 'Mail/folder?fid=outbox', '', '', '', '6', 2, 0, 'NULL'),
(12, '已删除', 'Mail/folder?fid=delbox', '', '', '', '4', 2, 0, 'NULL'),
(13, '草稿箱', 'Mail/folder?fid=darftbox', '', '', '', '7', 2, 0, 'NULL'),
(14, '邮件帐户设置', 'MailAccount/index', 'NULL', '', '', '1', 9, 0, 'NULL'),
(15, '单位信息管理', '', 'fa fa-cogs', '', '', '1', 1, 0, ''),
(16, '权限管理', '', 'NULL', 'NULL', '', '3', 1, 0, 'NULL'),
(17, '系统设定', '', 'NULL', 'NULL', '', '4', 1, 0, 'NULL'),
(18, '系统参数设置', 'SystemConfig/index', '', '', '', '2', 17, 0, ''),
(19, '组织图', 'Dept/index', '', '', '', '1', 15, 0, 'NULL'),
(20, '员工登记', 'User/index', 'NULL', '', '', '5', 15, 0, 'NULL'),
(21, '权限组管理', 'Role/index', '', '', '', '1', 16, 0, 'NULL'),
(22, '权限设置', 'Role/node', '', '', '', '2', 16, 0, 'NULL'),
(23, '权限分配', 'Role/user', '', '', '', '3', 16, 0, 'NULL'),
(24, '菜单管理', 'Node/index', '', '', '', '1', 17, 0, 'NULL'),
(25, '职位', 'Position/index', 'NULL', '', '', '2', 15, 0, 'NULL'),
(26, '文件夹设置', 'Mail/folder_manage', '', '', '', '2', 9, 0, ''),
(27, '联系人', 'Contact/index', '', '', '', '1', 51, 0, 'NULL'),
(28, '信息搜索', 'Info/index', '', '', '', '1', 4, 0, 'NULL'),
(29, '邮件分类', 'MailOrganize/index', 'NULL', '', '', '', 9, 0, 'NULL'),
(30, '发起', 'Flow/index', '', '', '', '1', 3, 0, 'NULL'),
(31, '流程管理', 'FlowType/index', '', '', '', '9', 3, 0, 'NULL'),
(32, '待审批', 'Flow/folder?fid=confirm', 'bc-flow-confirm', '', '', '4', 3, 0, 'badge_count_flow_todo'),
(33, '已审批', 'Flow/folder?fid=finish', '', '', '', '5', 3, 0, ''),
(34, '草稿箱', 'Flow/folder?fid=darft', '', '', '', '2', 3, 0, ''),
(35, '已提交', 'Flow/folder?fid=submit', '', '', '', '3', 3, 0, ''),
(36, '待办', 'Todo/index', 'fa fa-tasks bc-personal-todo', '', '', '9', 51, 0, 'badge_count_todo'),
(37, '部门级别', 'DeptGrade/index', '', '', '', '4', 15, 0, 'NULL'),
(38, '群组1', 'Customer/index', '', '', '', '2', 39, 0, ''),
(39, '通讯录', 'Staff/index', 'fa fa-group', '', '', '7', 0, 1, 'badge_sum'),
(40, '群组2', 'Supplier/index', '', '', '', '3', 39, 0, ''),
(41, '职员', 'Staff/index', 'NULL', '', '', '', 39, 0, 'NULL'),
(42, '我的文件夹', '##mail', 'bc-mail-myfolder', 'MailFolder', '', '8', 2, 0, 'badge_count_mail_user_folder'),
(43, '流程分组', 'FlowType/tag_manage', '', '', '', '8', 3, 0, 'NULL'),
(44, '审批报告', 'Flow/folder?fid=report', 'bc-flow-receive', '', '', '7', 3, 0, ''),
(45, '信息分类', 'Info/folder_manage', '', '', '', 'C1', 4, 0, ''),
(46, '消息', 'Message/index', 'fa fa-inbox bc-message', '', '', '1', 51, 0, 'badge_count_message'),
(47, '用户设置', '', '', '', '', '99', 51, 0, ''),
(48, '用户资料', 'Profile/index', '', '', '', '', 47, 0, 'NULL'),
(49, '修改密码', 'Profile/password', '', '', '', '', 47, 0, 'NULL'),
(50, '用户设置', 'UserConfig/index', '', '', '', '999', 47, 0, 'NULL'),
(51, '个人', 'Contact/index', 'fa fa-user bc-personal', '', '', '9', 0, 0, 'badge_sum'),
(52, '业务角色管理', 'Duty/index', '', '', '', '4', 16, 0, ''),
(53, '业务权限分配', 'Role/duty', '', '', '', '5', 16, 0, ''),
(54, '记账', 'Finance/index', 'fa fa-jpy', '', '', '3', 0, 0, ''),
(55, '我的信息', 'Info/my_info', '', '', '', 'B1', 4, 0, 'NULL'),
(56, '我的签收', 'Info/my_sign', '', '', '', 'B2', 4, 0, 'NULL'),
(57, '文档', 'Doc/index', 'fa fa-inbox', 'DocFolder', '', '5', 0, 0, 'badge_sum'),
(58, '文档管理', 'Doc/folder_manage', 'fa fa-inbox', '', '', '4', 57, 0, 'badge_sum'),
(59, '成果池', 'Form/index', 'fa fa-thumb-tack ', 'FormFolder', '', '6', 0, 0, 'badge_sum'),
(60, '项目管理', 'Form/folder_manage', 'fa fa-inbox', '', '', '4', 59, 0, 'badge_sum'),
(61, '项目字段类型', 'Form/field_type', 'fa fa-inbox', '', '', '5', 59, 0, 'badge_sum'),
(62, '群组3', 'Group/index', 'fa fa-group', '', '', '7', 39, 0, 'badge_sum'),
(63, '参阅箱', 'Flow/folder?fid=receive', 'bc-flow-receive', '', '', '6', 3, 0, 'badge_count_flow_receive'),
(64, '学习', 'Study/index##', 'fa fa-book', 'StudyFolder', 'NULL', '6', 0, 0, 'badge_sum'),
(65, '学习任务', 'Study/index', '', '', '', '', 65, 0, 'badge_count_study'),
(66, '项目', 'Task/index##', 'fa fa-table', 'TaskFolder', '', '5', 0, 0, 'badge_sum'),
(67, '项目管理', 'Task/index', '', '', '', '', 67, 0, 'badge_count_task'),
(68, '公文', 'Office/index', 'fa fa-file-o', 'OfficeFolder', '', '1', 0, 0, 'badge_sum'),
(69, '公文列表', 'Office/index', '', '', NULL, '1', 68, 0, ''),
(70, '公文管理', 'Office/folder_manage', '', '', NULL, '999', 68, 0, ''),
(71, '我的公文', 'Office/my_office', '', '', NULL, '9', 68, 0, ''),
(72, '我的签收', 'Office/my_sign', '', '', NULL, '99', 68, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `think_office`
--

CREATE TABLE `think_office` (
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

-- --------------------------------------------------------

--
-- 表的结构 `think_office_scope`
--

CREATE TABLE `think_office_scope` (
  `office_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_office_sign`
--

CREATE TABLE `think_office_sign` (
  `id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '登录用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登录用户名称',
  `is_sign` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否签收',
  `sign_time` int(11) UNSIGNED DEFAULT NULL COMMENT '签收时间',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `dept_name` varchar(20) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(6, '', '书记', '', 0),
(7, '', '副书记', '', 0),
(8, '', '主任', '', 0),
(9, '', '副主任', '', 0),
(10, '', '局长', '', 0),
(11, '', '副局长', '', 0),
(12, '', '科员', '', 0),
(13, '', '副主任科员', '', 0),
(14, '', '工作人员', '', 0),
(15, '', '纪工委书记', '', 0),
(16, '', '志愿者', '', 0),
(17, '', '党工委副书记、主任', '', 0),
(18, '', '党工委副书记、纪工委书记', '', 0),
(19, '', '局长、团工委书记', '', 0),
(20, '', '副局长、女工主任', '', 0),
(21, '', '总经济师', '', 0),
(22, '', '副总经理', '', 0),
(23, '', '支部书记、副总经理', '', 0),
(24, '', '总经理', '', 0),
(25, '', '系统管理员', '', 0);

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
(1, '管理员', 0, '', '1', 1208784792, 1451291148, 0),
(2, '领导', NULL, '', '2', 1481808660, 1481808660, 0);

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
(1, 19);

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
(1, 6, 1, 1, 1),
(1, 65, 1, 1, 1),
(1, 67, 1, 1, 1),
(2, 2, 1, 1, 1),
(2, 7, NULL, NULL, NULL),
(2, 8, NULL, NULL, NULL),
(2, 12, NULL, NULL, NULL),
(2, 10, NULL, NULL, NULL),
(2, 11, NULL, NULL, NULL),
(2, 13, NULL, NULL, NULL),
(2, 42, NULL, NULL, NULL),
(2, 9, NULL, NULL, NULL),
(2, 29, NULL, NULL, NULL),
(2, 14, NULL, NULL, NULL),
(2, 26, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL),
(2, 30, NULL, NULL, NULL),
(2, 34, NULL, NULL, NULL),
(2, 35, NULL, NULL, NULL),
(2, 32, NULL, NULL, NULL),
(2, 33, NULL, NULL, NULL),
(2, 63, NULL, NULL, NULL),
(2, 44, NULL, NULL, NULL),
(2, 43, NULL, NULL, NULL),
(2, 31, NULL, NULL, NULL),
(2, 54, NULL, NULL, NULL),
(2, 4, NULL, NULL, NULL),
(2, 28, NULL, NULL, NULL),
(2, 55, NULL, NULL, NULL),
(2, 56, NULL, NULL, NULL),
(2, 45, NULL, NULL, NULL),
(2, 66, NULL, NULL, NULL),
(2, 57, NULL, NULL, NULL),
(2, 58, NULL, NULL, NULL),
(2, 59, NULL, NULL, NULL),
(2, 60, NULL, NULL, NULL),
(2, 61, NULL, NULL, NULL),
(2, 64, NULL, NULL, NULL),
(2, 39, NULL, NULL, NULL),
(2, 41, NULL, NULL, NULL),
(2, 38, NULL, NULL, NULL),
(2, 40, NULL, NULL, NULL),
(2, 62, NULL, NULL, NULL),
(2, 51, 1, 1, 1),
(2, 27, 1, 1, 1),
(2, 46, 1, 1, 1),
(2, 36, 1, 1, 1),
(2, 5, 1, 1, 1),
(2, 47, NULL, NULL, NULL),
(2, 48, 1, 1, 1),
(2, 49, NULL, NULL, NULL),
(2, 50, 1, 1, 1),
(2, 24, NULL, NULL, NULL),
(2, 18, NULL, NULL, NULL),
(1, 68, 1, 1, 1),
(1, 69, 1, 1, 1),
(1, 71, NULL, NULL, NULL),
(1, 72, NULL, NULL, NULL),
(1, 70, NULL, NULL, NULL),
(1, 2, 1, 1, 1),
(1, 7, NULL, NULL, NULL),
(1, 8, NULL, NULL, NULL),
(1, 12, NULL, NULL, NULL),
(1, 10, NULL, NULL, NULL),
(1, 11, NULL, NULL, NULL),
(1, 13, NULL, NULL, NULL),
(1, 42, 1, 1, 1),
(1, 9, NULL, NULL, NULL),
(1, 29, 1, 1, 1),
(1, 14, 1, 1, 1),
(1, 26, NULL, NULL, NULL),
(1, 3, 1, 1, 1),
(1, 30, 1, 1, 1),
(1, 34, NULL, NULL, NULL),
(1, 35, NULL, NULL, NULL),
(1, 32, NULL, NULL, NULL),
(1, 33, NULL, NULL, NULL),
(1, 63, NULL, NULL, NULL),
(1, 44, NULL, NULL, NULL),
(1, 43, NULL, NULL, NULL),
(1, 31, 1, 1, 1),
(1, 54, 1, 1, 1),
(1, 4, 1, 1, 1),
(1, 28, 1, 1, 1),
(1, 55, NULL, NULL, NULL),
(1, 56, NULL, NULL, NULL),
(1, 45, NULL, NULL, NULL),
(1, 57, 1, 1, 1),
(1, 58, NULL, NULL, NULL),
(1, 66, 1, 1, 1),
(1, 59, 1, 1, 1),
(1, 60, NULL, NULL, NULL),
(1, 61, NULL, NULL, NULL),
(1, 64, 1, 1, 1),
(1, 39, 1, 1, 1),
(1, 41, 1, 1, 1),
(1, 38, 1, 1, 1),
(1, 40, 1, 1, 1),
(1, 62, 1, 1, 1),
(1, 51, 1, 1, 1),
(1, 46, 1, 1, 1),
(1, 27, 1, 1, 1),
(1, 5, 1, 1, 1),
(1, 36, 1, 1, 1),
(1, 47, NULL, NULL, NULL),
(1, 49, NULL, NULL, NULL),
(1, 48, 1, 1, 1),
(1, 50, 1, 1, 1),
(1, 1, 1, 1, 1),
(1, 15, NULL, NULL, NULL),
(1, 19, 1, 1, 1),
(1, 25, 1, 1, 1),
(1, 37, 1, 1, 1),
(1, 20, 1, 1, 1),
(1, 16, NULL, NULL, NULL),
(1, 21, 1, 1, 1),
(1, 22, NULL, NULL, NULL),
(1, 23, NULL, NULL, NULL),
(1, 52, 1, 1, 1),
(1, 53, NULL, NULL, NULL),
(1, 17, NULL, NULL, NULL),
(1, 24, 1, 1, 1),
(1, 18, 1, 1, 1);

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
(2, '4'),
(2, '5'),
(2, '6'),
(2, '7'),
(2, '8'),
(2, '9'),
(2, '10'),
(2, '11'),
(2, '12'),
(2, '13'),
(2, '14'),
(2, '15'),
(2, '16'),
(2, '17'),
(2, '18'),
(2, '19'),
(2, '20'),
(2, '21'),
(2, '22'),
(2, '23'),
(2, '24'),
(2, '25'),
(2, '26'),
(2, '27'),
(2, '28'),
(2, '29'),
(2, '30'),
(2, '31'),
(2, '32'),
(2, '33'),
(2, '34'),
(2, '35'),
(2, '36'),
(2, '37'),
(2, '38'),
(2, '39'),
(2, '40'),
(2, '41'),
(2, '42'),
(2, '43'),
(2, '44'),
(2, '45'),
(2, '46'),
(2, '47'),
(2, '48'),
(2, '49'),
(2, '50'),
(2, '51'),
(2, '52'),
(2, '53'),
(2, '54'),
(2, '55'),
(2, '56'),
(2, '57'),
(2, '58'),
(2, '59'),
(2, '60'),
(2, '61'),
(2, '62'),
(2, '63'),
(2, '64'),
(2, '65'),
(2, '66'),
(2, '67'),
(2, '68'),
(2, '69'),
(2, '70'),
(2, '71'),
(2, '72'),
(2, '73'),
(2, '74'),
(2, '75'),
(2, '76'),
(2, '77'),
(2, '78'),
(2, '79'),
(2, '80'),
(2, '81'),
(2, '82'),
(2, '83'),
(2, '84'),
(2, '85'),
(2, '86'),
(2, '87'),
(2, '88'),
(2, '89'),
(2, '90'),
(2, '91'),
(2, '92'),
(2, '93'),
(2, '94'),
(2, '95'),
(2, '96'),
(2, '97'),
(2, '98'),
(2, '99'),
(2, '100'),
(2, '101'),
(2, '102'),
(2, '103'),
(2, '104'),
(2, '105'),
(2, '106'),
(2, '107'),
(2, '108'),
(2, '109'),
(2, '110');

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

--
-- 转存表中的数据 `think_schedule`
--

INSERT INTO `think_schedule` (`id`, `name`, `content`, `location`, `priority`, `actor`, `user_id`, `start_time`, `end_time`, `add_file`, `is_del`) VALUES
(1, '123123', '<p>123</p>', '12313', 0, '王惠林/党工委副书记、主任|undefined;', 1, '2016-12-15 22:51:00', '2016-12-15 22:51:00', '', 1),
(2, '1111', '', '111', 0, '高新区管委会|dept_1;', 1, '2016-12-15 22:55:00', '2016-12-15 22:55:00', '', 0);

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
(109, 'system_name', '', '石河子高新区办公系统', 0, NULL, 0, 'system'),
(110, 'upload_file_ext', '', '', 0, NULL, 0, 'system'),
(111, 'login_verify_code', '', '', 0, NULL, 0, 'system');

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
(13, 0, 'Info', '站内消息', '管理员/系统管理员|admin;管理员/系统管理员|admin;', '高新区管委会|dept_1;管理员/系统管理员|admin;', '高新区管委会|dept_1;管理员/系统管理员|admin;', '1', 0, ''),
(14, 0, 'Info', '123', '高新区管委会|dept_1;', '高新区管委会|dept_1;', '高新区管委会|dept_1;', '1', 1, ''),
(15, 0, 'Info', '111123123', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '管理员/系统管理员|admin;', '', 1, NULL),
(16, 0, 'Doc', '人事信息', '组织人事局|dept_3;管理员/系统管理员|admin;', '组织人事局|dept_3;管理员/系统管理员|admin;', '组织人事局|dept_3;管理员/系统管理员|admin;', '', 0, ''),
(17, 0, 'Doc', '服务信息', '综合办公室|dept_2;管理员/系统管理员|admin;', '综合办公室|dept_2;管理员/系统管理员|admin;', '综合办公室|dept_2;管理员/系统管理员|admin;', '', 0, ''),
(18, 0, 'Office', '石河子高新区管委会', '王惠林/党工委副书记、主任|10000;管理员/系统管理员|admin;', '王惠林/党工委副书记、主任|10000;管理员/系统管理员|admin;', '王惠林/党工委副书记、主任|10000;管理员/系统管理员|admin;', '2', 0, NULL),
(19, 0, 'Office', '石河子高新区党工委', '管理员/系统管理员|admin;王惠林/党工委副书记、主任|10000;乔玮华/党工委副书记、纪工委书记|10002;', '管理员/系统管理员|admin;王惠林/党工委副书记、主任|10000;乔玮华/党工委副书记、纪工委书记|10002;', '管理员/系统管理员|admin;王惠林/党工委副书记、主任|10000;乔玮华/党工委副书记、纪工委书记|10002;', '3', 0, NULL),
(20, 0, 'Office', '石河子高新区纪工委', '管理员/系统管理员|admin;乔玮华/党工委副书记、纪工委书记|10002;', '管理员/系统管理员|admin;乔玮华/党工委副书记、纪工委书记|10002;', '管理员/系统管理员|admin;乔玮华/党工委副书记、纪工委书记|10002;', '4', 0, NULL),
(21, 0, 'Office', '石河子高新区综合办公室', '管理员/系统管理员|admin;彭  强/主任|10007;', '管理员/系统管理员|admin;彭  强/主任|10007;', '管理员/系统管理员|admin;彭  强/主任|10007;', '5', 0, NULL);

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
(119, 1, 1481876975, 14, NULL),
(120, 2, 1481876975, 0.0659151, NULL),
(121, 1, 1481877230, 14, NULL),
(122, 2, 1481877230, 0.0659151, NULL),
(123, 1, 1482028462, 14, NULL),
(124, 2, 1482028462, 0.0659151, NULL);

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
(86, 0, 'FlowType', '公文管理', '1', ''),
(87, 0, 'FlowType', '人事管理', '2', ''),
(88, 0, 'FlowType', '设备资源管理', '3', ''),
(89, 0, 'FlowType', '财务管理', '4', ''),
(90, 0, 'FlowType', '招标管理', '5', '');

-- --------------------------------------------------------

--
-- 表的结构 `think_system_tag_data`
--

CREATE TABLE `think_system_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'admin', '管理员', 'GLY', '21232f297a57a5a743894a0e4a801fc3', 1, 25, 'male', '0000-00-00', '202.113.176.159', 3536, '', '', '', '', '', 1222907803, 1481812955, 0, '', 1, 1, 'c81e728d9d4c2f636f067f89cc14862c'),
(2, '10000', '王惠林', 'WHL', 'e10adc3949ba59abbe56e057f20f883e', 1, 17, 'male', '0000-00-00', '202.113.176.141', 6, 'Uploads/emp_pic/2.jpeg', '', '', '', '', 0, 1481810555, 0, '', 0, 0, ''),
(3, '10001', '杜晓洪', 'DXH', 'e10adc3949ba59abbe56e057f20f883e', 1, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809070, 0, '', 0, 0, ''),
(4, '10002', '乔玮华', 'QH', 'e10adc3949ba59abbe56e057f20f883e', 1, 18, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809086, 0, '', 0, 0, ''),
(5, '10003', '焦孟良', 'JML', 'e10adc3949ba59abbe56e057f20f883e', 1, 9, 'male', '0000-00-00', '0.0.0.0', 0, 'Uploads/emp_pic/5.jpeg', '', '', '', '', 0, 1481810679, 0, '', 0, 0, ''),
(6, '10004', '王佐飞', 'WZF', 'e10adc3949ba59abbe56e057f20f883e', 1, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809101, 0, '', 0, 0, ''),
(7, '10005', '张  洪', 'ZH', 'e10adc3949ba59abbe56e057f20f883e', 1, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809107, 0, '', 0, 0, ''),
(8, '10006', '李世平', 'LSP', 'e10adc3949ba59abbe56e057f20f883e', 1, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809112, 0, '', 0, 0, ''),
(9, '10007', '彭  强', 'PQ', 'e10adc3949ba59abbe56e057f20f883e', 2, 8, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809185, 0, '', 0, 0, ''),
(10, '10008', '李  阳', 'LY', 'e10adc3949ba59abbe56e057f20f883e', 2, 7, 'male', '0000-00-00', '0.0.0.0', 0, 'Uploads/emp_pic/10.jpeg', '', '', '', '', 0, 1481810709, 0, '', 0, 0, ''),
(11, '10009', '金  燕', 'JY', 'e10adc3949ba59abbe56e057f20f883e', 2, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809210, 0, '', 0, 0, ''),
(12, '10010', '徐靖晶', 'XJJ', 'e10adc3949ba59abbe56e057f20f883e', 2, 16, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809216, 0, '', 0, 0, ''),
(13, '10011', '张  鑫', 'Z', 'e10adc3949ba59abbe56e057f20f883e', 3, 19, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809278, 0, '', 0, 0, ''),
(14, '10012', '周燕桃', 'ZYT', 'e10adc3949ba59abbe56e057f20f883e', 3, 20, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809304, 0, '', 0, 0, ''),
(15, '10013', '李琴芳', 'LQF', 'e10adc3949ba59abbe56e057f20f883e', 3, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809310, 0, '', 0, 0, ''),
(16, '10014', '谢  彤', 'XT', 'e10adc3949ba59abbe56e057f20f883e', 3, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809316, 0, '', 0, 0, ''),
(17, '10015', '令彦海', 'LYH', 'e10adc3949ba59abbe56e057f20f883e', 3, 16, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809333, 0, '', 0, 0, ''),
(18, '10016', '胡爱军', 'HAJ', 'e10adc3949ba59abbe56e057f20f883e', 4, 8, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809343, 0, '', 0, 0, ''),
(19, '10017', '张  鹏', 'ZP', 'e10adc3949ba59abbe56e057f20f883e', 5, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809355, 0, '', 0, 0, ''),
(20, '10018', '姚婷玉', 'YY', 'e10adc3949ba59abbe56e057f20f883e', 5, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809371, 0, '', 0, 0, ''),
(21, '10019', '肖  林', 'XL', 'e10adc3949ba59abbe56e057f20f883e', 5, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809384, 0, '', 0, 0, ''),
(22, '10020', '孟志新', 'MZX', 'e10adc3949ba59abbe56e057f20f883e', 5, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809405, 0, '', 0, 0, ''),
(23, '10021', '张咏梅', 'ZYM', 'e10adc3949ba59abbe56e057f20f883e', 5, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809410, 0, '', 0, 0, ''),
(24, '10022', '李  毅', 'LY', 'e10adc3949ba59abbe56e057f20f883e', 6, 8, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809438, 0, '', 0, 0, ''),
(25, '10023', '王龙斌', 'WLB', 'e10adc3949ba59abbe56e057f20f883e', 6, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809452, 0, '', 0, 0, ''),
(26, '10024', '李  毅', 'LY', 'e10adc3949ba59abbe56e057f20f883e', 7, 10, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809469, 0, '', 0, 0, ''),
(27, '10025', '徐  玮', 'X', 'e10adc3949ba59abbe56e057f20f883e', 7, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809487, 0, '', 0, 0, ''),
(28, '10026', '潘  雪', 'PX', 'e10adc3949ba59abbe56e057f20f883e', 7, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809493, 0, '', 0, 0, ''),
(29, '10027', '张  毅', 'ZY', 'e10adc3949ba59abbe56e057f20f883e', 7, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809507, 0, '', 0, 0, ''),
(30, '10028', '王  浩', 'WH', 'e10adc3949ba59abbe56e057f20f883e', 8, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809522, 0, '', 0, 0, ''),
(31, '10029', '王泳泉', 'WYQ', 'e10adc3949ba59abbe56e057f20f883e', 8, 12, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809531, 0, '', 0, 0, ''),
(32, '10030', '刘  攀', 'LP', 'e10adc3949ba59abbe56e057f20f883e', 8, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809536, 0, '', 0, 0, ''),
(33, '10031', '王龙斌', 'WLB', 'e10adc3949ba59abbe56e057f20f883e', 9, 10, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809546, 0, '', 0, 0, ''),
(34, '10032', '孙志鹏', 'SZP', 'e10adc3949ba59abbe56e057f20f883e', 9, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809554, 0, '', 0, 0, ''),
(35, '10033', '李雪巍', 'LXW', 'e10adc3949ba59abbe56e057f20f883e', 9, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809561, 0, '', 0, 0, ''),
(36, '10034', '张燕新', 'ZYX', 'e10adc3949ba59abbe56e057f20f883e', 10, 10, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809575, 0, '', 0, 0, ''),
(37, '10035', '闫文波', 'WB', 'e10adc3949ba59abbe56e057f20f883e', 10, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809584, 0, '', 0, 0, ''),
(38, '10036', '姜  莱', 'JL', 'e10adc3949ba59abbe56e057f20f883e', 10, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809592, 0, '', 0, 0, ''),
(39, '10037', '李  茜', 'L', 'e10adc3949ba59abbe56e057f20f883e', 10, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809597, 0, '', 0, 0, ''),
(40, '10038', '苗  晶', 'MJ', 'e10adc3949ba59abbe56e057f20f883e', 10, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809605, 0, '', 0, 0, ''),
(41, '10039', '熊忠明', 'XZM', 'e10adc3949ba59abbe56e057f20f883e', 11, 10, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809618, 0, '', 0, 0, ''),
(42, '10040', '鞠  鹏', 'JP', 'e10adc3949ba59abbe56e057f20f883e', 11, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809639, 0, '', 0, 0, ''),
(43, '10041', '谢  添', 'XT', 'e10adc3949ba59abbe56e057f20f883e', 11, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809645, 0, '', 0, 0, ''),
(44, '10042', '王晓薇', 'WX', 'e10adc3949ba59abbe56e057f20f883e', 11, 13, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809651, 0, '', 0, 0, ''),
(45, '10043', '李  尧', 'LY', 'e10adc3949ba59abbe56e057f20f883e', 11, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809657, 0, '', 0, 0, ''),
(46, '10044', '张  鑫', 'Z', 'e10adc3949ba59abbe56e057f20f883e', 11, 16, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809662, 0, '', 0, 0, ''),
(47, '10045', '刘彩霞', 'LCX', 'e10adc3949ba59abbe56e057f20f883e', 12, 10, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809678, 0, '', 0, 0, ''),
(48, '10046', '曹  璨', 'C', 'e10adc3949ba59abbe56e057f20f883e', 12, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809685, 0, '', 0, 0, ''),
(49, '10047', '李志勇', 'LZY', 'e10adc3949ba59abbe56e057f20f883e', 13, 10, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809701, 0, '', 0, 0, ''),
(50, '10048', '严  静', 'YJ', 'e10adc3949ba59abbe56e057f20f883e', 13, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809709, 0, '', 0, 0, ''),
(51, '10049', '刘  庆', 'LQ', 'e10adc3949ba59abbe56e057f20f883e', 14, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809730, 0, '', 0, 0, ''),
(52, '10050', '刘  东', 'LD', 'e10adc3949ba59abbe56e057f20f883e', 14, 11, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809739, 0, '', 0, 0, ''),
(53, '10051', '周成龙', 'ZCL', 'e10adc3949ba59abbe56e057f20f883e', 14, 12, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809745, 0, '', 0, 0, ''),
(54, '10052', '金远峤', 'JY', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809754, 0, '', 0, 0, ''),
(55, '10053', '杜金坤', 'DJK', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809810, 0, '', 0, 0, ''),
(56, '10054', '孔祥乾', 'KXQ', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809764, 0, '', 0, 0, ''),
(57, '10055', '孟  坤', 'MK', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809840, 0, '', 0, 0, ''),
(58, '10056', '王江涛', 'WJT', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809847, 0, '', 0, 0, ''),
(59, '10057', '何志卿', 'HZQ', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809853, 0, '', 0, 0, ''),
(60, '10058', '宋振豪', 'SZH', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809858, 0, '', 0, 0, ''),
(61, '10059', '李  杰', 'LJ', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809863, 0, '', 0, 0, ''),
(62, '10060', '王  峰', 'WF', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809885, 0, '', 0, 0, ''),
(63, '10061', '孙  庆', 'SQ', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809891, 0, '', 0, 0, ''),
(64, '10062', '张  勇', 'ZY', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809897, 0, '', 0, 0, ''),
(65, '10063', '李永桓', 'LYH', 'e10adc3949ba59abbe56e057f20f883e', 14, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809902, 0, '', 0, 0, ''),
(66, '10064', '杨  磊', 'YL', 'e10adc3949ba59abbe56e057f20f883e', 15, 8, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809917, 0, '', 0, 0, ''),
(67, '10065', '连贵敏', 'LGM', 'e10adc3949ba59abbe56e057f20f883e', 15, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809922, 0, '', 0, 0, ''),
(68, '10066', '张  丹', 'ZD', 'e10adc3949ba59abbe56e057f20f883e', 15, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809928, 0, '', 0, 0, ''),
(69, '10067', '杨丽仙', 'YLX', 'e10adc3949ba59abbe56e057f20f883e', 15, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809934, 0, '', 0, 0, ''),
(70, '10068', '何佳伟', 'HJW', 'e10adc3949ba59abbe56e057f20f883e', 15, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809943, 0, '', 0, 0, ''),
(71, '10069', '奚林峰', 'LF', 'e10adc3949ba59abbe56e057f20f883e', 16, 8, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809958, 0, '', 0, 0, ''),
(72, '10070', '安国昌', 'AGC', 'e10adc3949ba59abbe56e057f20f883e', 16, 6, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809964, 0, '', 0, 0, ''),
(73, '10071', '何建勇', 'HJY', 'e10adc3949ba59abbe56e057f20f883e', 16, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809976, 0, '', 0, 0, ''),
(74, '10072', '李志龙', 'LZL', 'e10adc3949ba59abbe56e057f20f883e', 16, 9, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809981, 0, '', 0, 0, ''),
(75, '10073', '丁卫新', 'DWX', 'e10adc3949ba59abbe56e057f20f883e', 16, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809987, 0, '', 0, 0, ''),
(76, '10074', '马俊武', 'MJW', 'e10adc3949ba59abbe56e057f20f883e', 16, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809977, 0, '', 0, 0, ''),
(77, '10075', '候  帆', 'HF', 'e10adc3949ba59abbe56e057f20f883e', 16, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809970, 0, '', 0, 0, ''),
(78, '10076', '荣  旭', 'RX', 'e10adc3949ba59abbe56e057f20f883e', 16, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809961, 0, '', 0, 0, ''),
(79, '10077', '朱永春', 'ZYC', 'e10adc3949ba59abbe56e057f20f883e', 17, 24, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809942, 0, '', 0, 0, ''),
(80, '10078', '原  松', 'YS', 'e10adc3949ba59abbe56e057f20f883e', 17, 23, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809927, 0, '', 0, 0, ''),
(81, '10079', '陈  静', 'CJ', 'e10adc3949ba59abbe56e057f20f883e', 17, 22, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809912, 0, '', 0, 0, ''),
(82, '10080', '归  英', 'GY', 'e10adc3949ba59abbe56e057f20f883e', 17, 21, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809888, 0, '', 0, 0, ''),
(83, '10081', '郑剑锋', 'ZJF', 'e10adc3949ba59abbe56e057f20f883e', 18, 8, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809722, 0, '', 0, 0, ''),
(84, '10082', '韩  笑', 'HX', 'e10adc3949ba59abbe56e057f20f883e', 18, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809715, 0, '', 0, 0, ''),
(85, '10083', '李  敏', 'LM', 'e10adc3949ba59abbe56e057f20f883e', 19, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809680, 0, '', 0, 0, ''),
(86, '10084', '齐  琪', 'Q', 'e10adc3949ba59abbe56e057f20f883e', 19, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809669, 0, '', 0, 0, ''),
(87, '10085', '赖永明', 'LYM', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809650, 0, '', 0, 0, ''),
(88, '10086', '谢明德', 'XMD', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809646, 0, '', 0, 0, ''),
(89, '10087', '宋潇帆', 'SF', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809638, 0, '', 0, 0, ''),
(90, '10088', '刘新疆', 'LXJ', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809632, 0, '', 0, 0, ''),
(91, '10089', '安  宁', 'AN', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809625, 0, '', 0, 0, ''),
(92, '10090', '曾永吉', 'ZYJ', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809617, 0, '', 0, 0, ''),
(93, '10091', '刘晓明', 'LXM', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809609, 0, '', 0, 0, ''),
(94, '10092', '徐志平', 'XZP', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809604, 0, '', 0, 0, ''),
(95, '10093', '胡志阳', 'HZY', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809596, 0, '', 0, 0, ''),
(96, '10094', '成景哲', 'CJZ', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809586, 0, '', 0, 0, ''),
(97, '10095', '侯俊玲', 'HJL', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809580, 0, '', 0, 0, ''),
(98, '10096', '张  璇', 'Z', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809575, 0, '', 0, 0, ''),
(99, '10097', '李跃伟', 'LYW', 'e10adc3949ba59abbe56e057f20f883e', 20, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809569, 0, '', 0, 0, ''),
(100, '10098', '崔江玲', 'CJL', 'e10adc3949ba59abbe56e057f20f883e', 21, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809549, 0, '', 0, 0, ''),
(101, '10099', '苟应忠', 'GYZ', 'e10adc3949ba59abbe56e057f20f883e', 22, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809540, 0, '', 0, 0, ''),
(102, '10100', '符英花', 'FYH', 'e10adc3949ba59abbe56e057f20f883e', 21, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809511, 0, '', 0, 0, ''),
(103, '10101', '曾雅枫', 'ZYF', 'e10adc3949ba59abbe56e057f20f883e', 21, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809503, 0, '', 0, 0, ''),
(104, '10102', '代  凯', 'DK', 'e10adc3949ba59abbe56e057f20f883e', 22, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809481, 0, '', 0, 0, ''),
(105, '10103', '齐惠林', 'QHL', 'e10adc3949ba59abbe56e057f20f883e', 22, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809475, 0, '', 0, 0, ''),
(106, '10104', '李光耀', 'LGY', 'e10adc3949ba59abbe56e057f20f883e', 22, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809468, 0, '', 0, 0, ''),
(107, '10105', '蔡勇强', 'CYQ', 'e10adc3949ba59abbe56e057f20f883e', 22, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809454, 0, '', 0, 0, ''),
(108, '10106', '朱信路', 'ZXL', 'e10adc3949ba59abbe56e057f20f883e', 22, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809424, 0, '', 0, 0, ''),
(109, '10107', '衡  涛', 'HT', 'e10adc3949ba59abbe56e057f20f883e', 23, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809353, 0, '', 0, 0, ''),
(110, '10108', '梁  平', 'LP', 'e10adc3949ba59abbe56e057f20f883e', 23, 14, 'male', '0000-00-00', '0.0.0.0', 0, '', '', '', '', '', 0, 1481809325, 0, '', 0, 0, '');

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
  `push_wechat` varchar(255) DEFAULT NULL,
  `readed_Office` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_user_config`
--

INSERT INTO `think_user_config` (`id`, `home_sort`, `list_rows`, `readed_info`, `push_web`, `push_wechat`, `readed_Office`) VALUES
(0, NULL, 20, NULL, NULL, NULL, NULL),
(1, NULL, 20, NULL, NULL, NULL, NULL),
(5, NULL, 20, NULL, NULL, NULL, NULL),
(6, NULL, 20, NULL, NULL, NULL, NULL),
(7, NULL, 20, NULL, NULL, NULL, NULL),
(8, NULL, 20, NULL, NULL, NULL, NULL),
(9, NULL, 20, NULL, NULL, NULL, NULL),
(10, NULL, 20, NULL, NULL, NULL, NULL),
(11, NULL, 20, NULL, NULL, NULL, NULL),
(12, NULL, 20, NULL, NULL, NULL, NULL),
(13, NULL, 20, NULL, NULL, NULL, NULL),
(14, NULL, 20, NULL, NULL, NULL, NULL);

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
-- Indexes for table `think_check_num`
--
ALTER TABLE `think_check_num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_contact`
--
ALTER TABLE `think_contact`
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
-- Indexes for table `think_office`
--
ALTER TABLE `think_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_office_scope`
--
ALTER TABLE `think_office_scope`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `info_id` (`office_id`);

--
-- Indexes for table `think_office_sign`
--
ALTER TABLE `think_office_sign`
  ADD PRIMARY KEY (`id`);

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
-- 使用表AUTO_INCREMENT `think_check_num`
--
ALTER TABLE `think_check_num`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_contact`
--
ALTER TABLE `think_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_dept`
--
ALTER TABLE `think_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `think_dept_grade`
--
ALTER TABLE `think_dept_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `think_doc`
--
ALTER TABLE `think_doc`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_duty`
--
ALTER TABLE `think_duty`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `think_file`
--
ALTER TABLE `think_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文件ID', AUTO_INCREMENT=30;
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
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `think_flow_log`
--
ALTER TABLE `think_flow_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `think_flow_type`
--
ALTER TABLE `think_flow_type`
  MODIFY `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `think_info_sign`
--
ALTER TABLE `think_info_sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- 使用表AUTO_INCREMENT `think_office`
--
ALTER TABLE `think_office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_office_sign`
--
ALTER TABLE `think_office_sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_position`
--
ALTER TABLE `think_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `think_push`
--
ALTER TABLE `think_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3528;
--
-- 使用表AUTO_INCREMENT `think_rank`
--
ALTER TABLE `think_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `think_role`
--
ALTER TABLE `think_role`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `think_schedule`
--
ALTER TABLE `think_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `think_study`
--
ALTER TABLE `think_study`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `think_study_log`
--
ALTER TABLE `think_study_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `think_supplier`
--
ALTER TABLE `think_supplier`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_system_config`
--
ALTER TABLE `think_system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- 使用表AUTO_INCREMENT `think_system_folder`
--
ALTER TABLE `think_system_folder`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `think_system_log`
--
ALTER TABLE `think_system_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- 使用表AUTO_INCREMENT `think_system_tag`
--
ALTER TABLE `think_system_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- 使用表AUTO_INCREMENT `think_task`
--
ALTER TABLE `think_task`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `think_task_log`
--
ALTER TABLE `think_task_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `think_todo`
--
ALTER TABLE `think_todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_udf_field`
--
ALTER TABLE `think_udf_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
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
