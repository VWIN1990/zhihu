/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : zhihu

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-03 16:43:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answerer_id` int(11) NOT NULL,
  `answer_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `answer_agreements` int(11) NOT NULL,
  `answer_disagreements` int(11) DEFAULT NULL,
  `answer_modify_date` datetime DEFAULT NULL,
  `answer_create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `index_answerer_id` (`answerer_id`),
  KEY `index_question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140947012 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('12202039', '19550277', '5539', ' 以下是 Brandon Smietana 在 Quora 上的回答（<a href=\"//link.zhihu.com/?target=http%3A//b.qr.ae/bqJJAJ\" class=\" external\" target=\"_blank\" rel=\"nofollow noreferrer\"><span class=\"invisible\">http://</span><span class=\"visible\">b.qr.ae/bqJJAJ</span><span class=\"invisible\"></span><i class=\"icon-external\"></i></a>），翻译过来：<br><br><ul><li>他很走运<br></li><li>搬到了硅谷</li><li>遇到了肖恩·帕克（Sean Parker）<br></li><li>决定做这个产品<br></li><li>赶上了 Web 2.0 热潮，并依靠他的关系获得了忠告和人才<br></li><li>选择了保持对公司的控制</li></ul><br>我想说的是扎克伯格并非那么天才。他曾经想去做一些很愚蠢的决定，不过他周围有一些很有经验的人，让他避免了做出错误决定。<br><br>比如，扎克伯格曾经想回去哈佛完成大学学业，而不是全职在 Facebook 工作（肖恩·帕克劝说他不要回去）。扎克伯格几乎将董事会的控制权完全交给了投资者（恩·帕克让他不要那样做。恩·帕克之前三次创办公司最后都被董事会踢出来了，所以他学到这堂课的代价不菲。）<br><br>扎克伯格的成功和他身边的人有脱不开的关系，因为他们影响了马克许多很多很重要的决定。<br><br>有一个关键的决定，我认为极其重要并且应该归功于扎克伯格一个人的是，他当年决定不以 10 亿美元的价格把 Facebook 卖给雅虎。这个决定让 Facebook 能够走到今天。<br><br>Facebook 决定从一个校园一个校园的扩张战略，天才地利用了外部的自然网络。这看上去是来自马克身边的少数非常聪明的人的决定，比如肖恩·帕克、彼得·泰尔(Peter Thiel) 和马克·安德里森(Marc Anderson)。很多 Facebook 的核心战略（社会化图形）杠杆利用了外部的自然社交网络（经典的夏皮罗和瓦里安，注：两位经济学教授合著了《信息规则：网络经济的策略指导》一书成为信息社交化方面的基础研究），我不清楚扎克伯格是否会了解这些，如果他的身边没有那一群有趣的智囊团的话。<br><br>我觉得很难用「伟大的先知人物」的理论来解释 Facebook 的成功，也就是一个临界人物在一个临界的成功中发挥作用的公司，像乔布斯那种。 ', '11', null, '2011-01-31 00:00:00', null);
INSERT INTO `answer` VALUES ('12203311', '19551088', '1426', ' 谢谢把问题扔给我的黄继新。<br><br>其实知乎和维基（以Wikipedia为代表）的区别，就像马和兔子之间的区别一样明显。对绝大部分用户来说，访问维基，跟从书架上取下一本辞典没太大区别，你确切地知道，关于无穷大（Infinity）这个词，维基百科会给你一个完整的解释，包括它的历史源流。但访问知乎，动因显然更加复杂。我试着从这样几个角度去看知乎和维基的区别：<br><br><ol><li>目标。维基是工程，以建设并维护整个工程为目标；知乎是社区，其目标不在问答本身，而在问答的方式和过程，以及由此带动的整个社区的运转。</li><li>用户。维基有两种用户，作者和读者，这两种用户都是隐身的，所以维基基本不存在关系网络；知乎也有两种用户，问者和答者，但其角色不是固定的，几乎时时发生转换，而且他们都是有名有姓的，彼此构成一个关系网络。</li><li>资源。维基所依赖的资源，是无组织的组织力量；知乎所依赖的资源，是用户间的人际关系网络。</li><li>运营。维基的运营，围绕工程质量进行。知乎的运营，围绕社区质量。前者是运营物，后者是运营人。</li></ol><br><br>想法粗略，请拍砖。 ', '1', null, '2011-02-25 00:00:00', null);
INSERT INTO `answer` VALUES ('12208846', '19550554', '1426', ' 乔布斯真正打动我的，不是他的商业成就，不是他的人生传奇，也不是他所缔造的那些完美之物，而是他在斯坦福说过的几句话：<br><blockquote>I have looked in the mirror every morning and asked myself: \"If today were the last day of my life, would I want to do what I am about to do today?\" And whenever the answer has been \"No\" for too many days in a row, I know I need to change something.</blockquote><blockquote>我每天早晨都会对镜自问：“如果今天是我生命的最后一天，那些原本今天要做的事我还想去做吗？”如果答案连续多次都是“不”，我知道我得改变一下了。</blockquote>', '685', null, '2011-01-26 00:00:00', null);

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) NOT NULL,
  `event_type` tinyint(4) NOT NULL,
  `object_type` tinyint(4) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`user_id`,`target_id`,`target_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `conversation_id` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `has_read` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '18846', '6590', '你好！！', '6590_18846', '2017-02-13 06:55:22', '1');
INSERT INTO `message` VALUES ('2', '6590', '18846', '你也好~~', '6590_18846', '2017-02-13 10:56:09', '1');
INSERT INTO `message` VALUES ('3', '6590', '18846', '你是？', '6590_18846', '2017-02-13 12:56:39', '1');
INSERT INTO `message` VALUES ('4', '18846', '6590', '我是XXX', '6590_18846', '2017-02-13 16:57:10', '1');
INSERT INTO `message` VALUES ('5', '250', '6590', '约吗？', '250_6590', '2017-02-13 15:58:14', '1');
INSERT INTO `message` VALUES ('6', '250', '6590', '约？？', '250_6590', '2017-02-13 16:59:09', '1');
INSERT INTO `message` VALUES ('7', '6590', '250', '叔叔不约', '250_6590', '2017-02-14 07:59:56', '1');
INSERT INTO `message` VALUES ('8', '250', '6590', '真的不约？', '250_6590', '2017-02-14 10:55:25', '1');
INSERT INTO `message` VALUES ('12', '6590', '250', '不', '250_6590', '2017-02-14 16:38:17', '1');
INSERT INTO `message` VALUES ('13', '6590', '250', '真的', '250_6590', '2017-02-14 16:44:41', '1');
INSERT INTO `message` VALUES ('14', '6590', '250', '真的', '250_6590', '2017-02-14 16:45:37', '1');
INSERT INTO `message` VALUES ('15', '6590', '250', '真的？', '250_6590', '2017-02-14 16:46:24', '1');
INSERT INTO `message` VALUES ('16', '6590', '250', '真的？？？', '250_6590', '2017-02-14 16:47:08', '1');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `questioner_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `question_title` varchar(255) NOT NULL,
  `question_content` text,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54763150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('19550252', '0', '19550258', '拉里·佩奇和谢尔盖·布林在 Google 早期做出的最重要的决定有哪些？', ' 拉里·佩奇（Larry Page）和谢尔盖·布林（Sergey Brin）两人共同创办了 Google 。 ');
INSERT INTO `question` VALUES ('19550277', '0', '19550258', '马克·扎克伯格在 Facebook 早期做出的最重要的决定有哪些？', null);
INSERT INTO `question` VALUES ('19550389', '0', '19550372', '第一次创业的人通常都有哪些能力缺陷？', '如何避免这些缺陷，或者这样问，面对这所有的缺陷，该如何去快速的应对，，和解决，主要是解决');
INSERT INTO `question` VALUES ('19550542', '0', '19557244', '上海有哪些比较地道的港式/粤式餐厅？', null);
INSERT INTO `question` VALUES ('19550554', '0', '19550246', '乔布斯教给人的最重要的事是什么？', null);
INSERT INTO `question` VALUES ('19551007', '0', '19552497', '如何高效地睡眠？', ' 如何睡眠才是最有效恢复身体疲劳度的？为什么有时候睡足10余个小时醒来依旧觉得很疲惫？睡多长时间才是最健康的？睡午觉和分段睡眠法等民间偏方真的有效吗？ ');
INSERT INTO `question` VALUES ('19551070', '0', '19550234', '几个朋友合伙创业，如何分配股权？', ' 假设一个负责内容，一个负责技术，一个负责销售，大家的资历又差不多 ');
INSERT INTO `question` VALUES ('19551084', '0', '19554564', '创业经历教给你的最重要的东西是什么？', null);
INSERT INTO `question` VALUES ('19551088', '0', '19551563', '知乎和维基百科有什么区别？', null);
INSERT INTO `question` VALUES ('19551409', '0', '19644003', '初创公司如何设置期权池（Option Pool）？如何操作？', ' 如何选择设置 Pool 的时机？ ');
INSERT INTO `question` VALUES ('19551593', '0', '19550234', '创业公司怎么招人？', null);
INSERT INTO `question` VALUES ('19551913', '0', '19552582', '天使投资人通过哪些方面来判断一个早期创业者的好坏？', ' 当这个创业者连团队、产品、技术壁垒、市场份额都还没有的时候，天使投资人凭什么会相信这个人能成功？ ');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(20) NOT NULL,
  `topic_description` varchar(255) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('19553732', '单机游戏', '单机游戏（Single-Player Game），相对于联网游戏而言的单人游戏');
INSERT INTO `topic` VALUES ('19553734', 'Flipboard', 'Flipboard（中文译名：飞丽博）是一款免费的应用程序，支持Android和iOS操作系统，将Facebook和新浪微博等社交媒体上的内容整合起来以杂志的形式呈现给用户阅读。');
INSERT INTO `topic` VALUES ('19554051', '装修', '装修是把生活的各种情形「物化」到房间之中，买的一般房间的设计业已完成，不能做大的调整了，所以剩下可以动的就是装修装点（大的装修概念包括房间设计、装修、布置、富有情趣的小装点）。');
INSERT INTO `topic` VALUES ('19554827', '体育', '体育，又称体育运动或简称运动，是人们遵循人体的生长发育规律和身体的活动规律，通过身体锻炼、技术、训练、竞技比赛等方式达到增强体质，提高运动技术水平，丰富文化生活为目的的社会活动。');
INSERT INTO `topic` VALUES ('19555480', '大学生', '大学生（本科生、研究生、博士生）是社会的一个特殊群体，是指接受过大学教育的人，作为社会新技术、新思想的前沿群体、国家培养的高级专业人才，代表着最先进的流行文化。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_email` varchar(32) DEFAULT NULL,
  `user_password` varchar(50) NOT NULL DEFAULT '0',
  `user_salt` varchar(10) NOT NULL DEFAULT '0',
  `user_avatar` varchar(100) NOT NULL,
  `user_gender` tinyint(4) DEFAULT '-1',
  `user_short_description` varchar(50) DEFAULT NULL,
  `user_description` varchar(255) DEFAULT NULL,
  `user_location` varchar(50) DEFAULT NULL,
  `user_job` varchar(30) DEFAULT NULL,
  `user_business` varchar(30) DEFAULT NULL,
  `user_school` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_phone` (`user_phone`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=18847 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('600', '冯黎明', null, null, '0', '0', 'https://pic1.zhimg.com/c12257214_xl.jpg', '1', '首先我是留学顾问。然后...把利物浦踢下他妈的王座才是我最伟大的成就！！！', '希望做最有良心的留学顾问', '甘肃', null, '教育', null);
INSERT INTO `user` VALUES ('601', '越南', null, null, '0', '0', 'https://pic2.zhimg.com/5899422848aa928001ee15bbbcc48a09_xl.jpg', '1', '什么都想试试', '退知乎，不答题，之前的答案随意转载。', '杭州', null, '计算机软件', '杭州电子科技大学');
INSERT INTO `user` VALUES ('602', '青墟', null, null, '0', '0', 'https://pic2.zhimg.com/1e1486419_xl.jpg', '0', null, '\",', null, null, '信息传媒', null);
INSERT INTO `user` VALUES ('603', 'Tse Allen', null, null, '0', '0', 'https://pic3.zhimg.com/3eb50c48f8cc9e7919ec620e7c551c06_xl.jpg', '1', 'Mia San Mia', '\",', '南昌/昆明', null, null, null);
INSERT INTO `user` VALUES ('604', '张佳玮', null, null, '0', '0', 'https://pic2.zhimg.com/424c70919_xl.jpg', '1', '公众号：张佳玮写字的地方', '优秀回答者', null, null, null, null);
