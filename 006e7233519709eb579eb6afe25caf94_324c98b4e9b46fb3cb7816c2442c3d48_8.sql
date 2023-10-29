/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : flawsweeper

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-05-25 11:07:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES ('1', '1234', '1234', '张三');
INSERT INTO `b_user` VALUES ('2', '12345', '12345', '张三');
INSERT INTO `b_user` VALUES ('3', 'zss', '1234', '李思思');
INSERT INTO `b_user` VALUES ('4', '111', '222', 'name');
INSERT INTO `b_user` VALUES ('5', 'ls1', '1234', '李四');
INSERT INTO `b_user` VALUES ('6', '123', '1234', 'w5');
INSERT INTO `b_user` VALUES ('7', 'w5', '11', 'w5');
INSERT INTO `b_user` VALUES ('8', '12345677', '1234', '??');
INSERT INTO `b_user` VALUES ('9', '123asd', '123', '李逵');
INSERT INTO `b_user` VALUES ('20', 'zzrr', '1234', '朱正');

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `classifyid` int NOT NULL AUTO_INCREMENT,
  `classifyname` varchar(50) NOT NULL,
  PRIMARY KEY (`classifyid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', '数学');
INSERT INTO `classify` VALUES ('2', '英语');
INSERT INTO `classify` VALUES ('3', '政治');
INSERT INTO `classify` VALUES ('4', '专业课');

-- ----------------------------
-- Table structure for errorquestion
-- ----------------------------
DROP TABLE IF EXISTS `errorquestion`;
CREATE TABLE `errorquestion` (
  `questionid` int NOT NULL AUTO_INCREMENT,
  `title1` longtext NOT NULL,
  `title2` longtext,
  `titletype` int NOT NULL DEFAULT '0',
  `answer` longtext,
  `analysis` longtext,
  `classifyid` int NOT NULL DEFAULT '1',
  `questiontime` datetime DEFAULT NULL,
  `notes` longtext,
  `imagesrc` longtext,
  `inrecycle` int DEFAULT '0',
  `incollect` int DEFAULT '0',
  `uid` int NOT NULL,
  `proficiency` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`questionid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of errorquestion
-- ----------------------------
INSERT INTO `errorquestion` VALUES ('20', '这是问题', '0,1,2,3', '1', '????', '????', '4', '2023-04-03 13:45:18', '数据库', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('21', '这是问题', '0,1,2,3', '1', '????', '分析', '4', '2023-04-03 13:46:07', '数据库', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('22', '这是题目', null, '0', '这是答案', '这是分析', '4', '2023-04-03 13:46:08', '计算机网络', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '3', '1');
INSERT INTO `errorquestion` VALUES ('25', '这是题目', '5,6,7,8', '1', '这是答案', '这是分析', '4', '2023-04-03 13:47:57', '嘛/数', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('26', '这是题目', '5,6,7,8♞null♞null♞null', '1', '这是答案', '这是分析', '3', '2023-05-21 17:49:30', '马克思', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('27', '这是题目', '5,6,7,8', '1', '这是答案', '这是分析', '4', '2023-04-03 21:01:46', '马克期', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('28', '这是题目', '', '0', '这是答案', '这是分析', '4', '2023-04-03 21:02:18', '', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '1', '2', '1');
INSERT INTO `errorquestion` VALUES ('29', '题目1', '', '0', '这是答案', '这是分析', '2', '2023-04-03 21:02:43', '期末', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '3', '1');
INSERT INTO `errorquestion` VALUES ('30', '这是题目2', '', '0', '这是答案', '这是分析', '2', '2023-04-11 23:54:18', '期末', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '1', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('31', '这是题目3', '', '0', '这是答案', '这是分析', '2', '2023-04-11 23:55:49', '期末', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('32', '这是题目4', '', '0', '这是答案', '这是分析', '2', '2023-04-12 00:13:53', '期末', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('34', '这是题目6', '', '0', '这是答案', '这是分析', '2', '2023-05-22 00:51:50', '期末', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-21-42953a7c0872498d8098b64d6f3f209e.jpg', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('36', '这是题目7', '', '0', '这是答案', '这是分析', '2', '2023-04-14 13:55:01', '期末', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('37', '题目', '是,否', '1', '答案', '分析', '3', '2023-04-15 01:24:49', '1,2,3', '', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('38', '题目', '是,否', '1', '答案', '分析', '3', '2023-04-15 11:08:37', '1,2,3', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('39', '题目', '是,否', '1', '答案', '分析', '2', '2023-04-17 11:08:59', '1,2,3', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '1', '2', '1');
INSERT INTO `errorquestion` VALUES ('42', '题目', '是,否', '1', '答案', '分析', '1', '2023-04-18 22:11:49', '1,2,3', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('43', '题目', '是,否', '1', '答案', '分析', '1', '2023-04-18 22:12:37', '1,2,3', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('44', '题目（3星）', '是,否♞null♞null♞null', '1', '答案', '分析', '3', '2023-05-22 10:23:08', '1,2,3', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '3');
INSERT INTO `errorquestion` VALUES ('45', '题目', '是,否', '1', '答案', '分析', '2', '2023-04-19 00:25:38', '1,2,3', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('46', '题干', '1,2', '1', '答案', '分析', '2', '2023-04-28 16:58:51', '1,2', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('47', '题干', '1,2', '1', '答案', '分析', '4', '2023-04-19 16:59:24', '1,2', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '2', '1');
INSERT INTO `errorquestion` VALUES ('48', '干题', '1,2', '1', '答案', '分析', '3', '2023-04-18 17:37:49', '1,2', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '3', '1');
INSERT INTO `errorquestion` VALUES ('49', '题目', '', '0', '答案', null, '2', '2023-04-28 17:47:59', '软工,数据库，期', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('51', '题目', '', '0', '答案', '分析', '1', '2023-04-28 12:01:14', '', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('53', '题目', '', '0', '答案', '分析', '2', '2023-05-01 00:41:37', '', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '2');
INSERT INTO `errorquestion` VALUES ('54', 'asdfas', 'A.sdaf♞B.sdfa♞C.sdaf♞D.asdfa', '1', 'asdfasd', 'asdfasdf', '2', '2023-05-07 15:46:33', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('55', 'sdfa', '', '0', 'sdfa', 'sadfsdf', '2', '2023-05-07 15:48:35', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('56', '暗示法萨芬撒', '', '0', '暗示法法师', '撒F按时发生发顺丰', '3', '2023-05-07 15:51:42', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('57', 'aaaa', '', '0', 'aaa', 'aaa', '1', '2023-05-07 15:52:15', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('58', '1', 'A.♞B.♞C.♞D.', '1', '1', '1', '2', '2023-05-07 15:54:26', '标签1♞标签2', 'http://rsivbncuj.hn-bkt.clouddn.com/code/duck/2023-05-07-b493edb1fe814d09b0a9778daad3e666.jpg', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('59', '', '', '0', '', '', '1', '2023-05-07 16:00:29', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('60', '1234', 'A.♞B.♞C.♞D.', '1', '123', '123', '2', '2023-05-07 16:00:52', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('61', 'Q', 'A.♞B.♞C.♞D.', '1', 'Q', 'Q', '2', '2023-05-07 16:23:34', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('62', 'asdf', '', '0', '撒旦法', '士大夫', '2', '2023-05-07 21:45:44', '标签1♞标签2', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('63', '撒旦法', '', '0', '撒旦法', '是打法', '2', '2023-05-07 22:13:17', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('65', 'asdfas', 'A.sdaf♞B.sdfa♞C.sdaf♞D.asdfa', '1', 'asdfasd', 'asdfasdf', '2', '2023-05-07 15:46:33', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('66', 'sdfa', '', '0', 'sdfa', 'sadfsdf', '2', '2023-05-07 15:48:35', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('67', '暗示法萨芬撒', '', '0', '暗示法法师', '撒F按时发生发顺丰', '3', '2023-05-07 15:51:42', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('68', 'aaaa', '', '0', 'aaa', 'aaa', '1', '2023-05-07 15:52:15', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('69', '1', 'A.♞B.♞C.♞D.', '1', '1', '1', '2', '2023-05-07 15:54:26', '标签1♞标签2', 'http://rsivbncuj.hn-bkt.clouddn.com/code/duck/2023-05-07-b493edb1fe814d09b0a9778daad3e666.jpg', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('70', '', '', '0', '', '', '1', '2023-05-07 16:00:29', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('71', '1234', 'A.♞B.♞C.♞D.', '1', '123', '123', '2', '2023-05-07 16:00:52', '标签1♞标签2', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('73', 'asdf', '', '0', '撒旦法', '士大夫', '2', '2023-05-07 21:45:44', '标签1♞标签2', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-07-fac05346cfee4fc3ac856858f2931f37.png', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('74', '撒旦法（0分修改）水电费多少分水电费', '', '0', '撒旦法2水电费', '是打法2', '2', '2023-05-22 00:33:46', '标签1♞标签2', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-21-edd4dc377de745b3b1030b6f0b0e32a0.jpg', '0', '1', '1', '1');
INSERT INTO `errorquestion` VALUES ('75', '撒旦法', '', '0', '深大', '深大发', '1', '2023-05-07 22:23:49', '多少分', '', '1', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('76', '', '', '0', '', '', '2', '2023-05-21 01:22:55', '撒旦法♞打法', '', '1', '0', '1', '4');
INSERT INTO `errorquestion` VALUES ('77', '水电费多少分', '', '0', '是打法', ' 啥的', '1', '2023-05-22 00:38:14', '水电费', '', '1', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('78', '题目描述（修改2次）', 'A.选项1（改1）♞B.选项2（改2）♞C.选项3（改3）♞D.选项4（改4）', '1', '题目解析2', '个人理解2', '2', '2023-05-21 01:22:02', '水电费♞手动阀', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-20-1bdd3dc8961b41ee882d2d39cde843e1.png', '0', '0', '1', '3');
INSERT INTO `errorquestion` VALUES ('79', '水电费', '', '0', '水电费', '水电费', '2', '2023-05-20 16:49:09', '', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-20-691b7f825f68464ebe0448f76ec23308.jpg', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('80', '打法', '', '0', '是', ' 是', '2', '2023-05-20 17:13:12', '手动阀', '', '0', '0', '1', '4');
INSERT INTO `errorquestion` VALUES ('81', '已知无向图G 如下所示，使用克鲁斯卡尔(Kruskal) 算法求图G 的最小生成树，加入到最小生成树中的边依次是:', 'A.(b, f) (b, d) (a, e) (c, e) (b, e)♞B.(b,f)(b,d)(b,e)(a,e)(e,c)♞C.(a,e)(b,e)(c,e)(b,d) (b,f)♞D.(a,e)(c,e)(b,e)(b,f) (b,d)', '1', '答案是A', '暂无', '4', '2023-05-22 10:54:58', '数据结构', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-21-92c6f8267a4f43b39ec9c21d7dbb8f62.png', '0', '0', '1', '5');
INSERT INTO `errorquestion` VALUES ('82', '啥的发', '', '0', '是的发', ' 啥的', '4', '2023-05-21 22:41:28', '地方', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('83', '但是发（膝盖）是浮动水电费但是', '', '0', ' 是', '是 ', '4', '2023-05-22 00:28:53', '', '', '0', '0', '1', '3');
INSERT INTO `errorquestion` VALUES ('84', '水电费', '', '0', '啥的', ' 是', '3', '2023-05-22 10:22:02', '', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('85', '二 ', '', '0', '饿我', ' 为', '3', '2023-05-22 10:22:24', '', '', '0', '0', '1', '1');
INSERT INTO `errorquestion` VALUES ('86', '的', '', '0', '是非得失', '是的', '4', '2023-05-22 10:53:50', '多少分', 'http://ruajpw350.hn-bkt.clouddn.com/code/duck/2023-05-22-9ee750adcd4344979947952db22d2942.jpg', '0', '1', '1', '4');
