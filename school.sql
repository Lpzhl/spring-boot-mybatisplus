/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 21/03/2024 19:50:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for choices
-- ----------------------------
DROP TABLE IF EXISTS `choices`;
CREATE TABLE `choices`  (
  `no` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sid` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tid` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cid` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sorce` int NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of choices
-- ----------------------------
INSERT INTO `choices` VALUES ('1', '3242342332', '200012343', '1002', 79);
INSERT INTO `choices` VALUES ('10', '3242342332', '200102901', '1003', 86);
INSERT INTO `choices` VALUES ('11', '67866556', '200102901', '1003', 90);
INSERT INTO `choices` VALUES ('12', '8000120456', '200123443', '1011', 77);
INSERT INTO `choices` VALUES ('13', '67866556', '200123344', '1005', 92);
INSERT INTO `choices` VALUES ('14', '67866556', '200102902', '1007', 90);
INSERT INTO `choices` VALUES ('15', '850955252', '200123344', '1005', 72);
INSERT INTO `choices` VALUES ('16', '800071780', '200123233', '1006', 78);
INSERT INTO `choices` VALUES ('17', '883794999', '200123443', '1008', 45);
INSERT INTO `choices` VALUES ('18', '883794999', '200123344', '1005', 60);
INSERT INTO `choices` VALUES ('19', '800001211', '200016731', '1001', 71);
INSERT INTO `choices` VALUES ('2', '67866556', '200016731', '1001', 80);
INSERT INTO `choices` VALUES ('20', '788675545', '200102901', '1003', 68);
INSERT INTO `choices` VALUES ('21', '788675545', '200012343', '1002', 81);
INSERT INTO `choices` VALUES ('22', '456657454', '200123233', '1006', 76);
INSERT INTO `choices` VALUES ('23', '456657454', '200123443', '1008', 75);
INSERT INTO `choices` VALUES ('24', '67866556', '200102901', '1009', 78);
INSERT INTO `choices` VALUES ('25', '3242342332', '200102901', '1009', 67);
INSERT INTO `choices` VALUES ('26', '800071780', '200102902', '1010', 66);
INSERT INTO `choices` VALUES ('27', '788675545', '200245456', '1009', 89);
INSERT INTO `choices` VALUES ('28', '8000455412', '200245456', '1007', 86);
INSERT INTO `choices` VALUES ('29', '873541269', '200016731', '1004', 79);
INSERT INTO `choices` VALUES ('3', '324234234', '200016731', '1012', 78);
INSERT INTO `choices` VALUES ('30', '813259297', '200102901', '1002', 42);
INSERT INTO `choices` VALUES ('31', '850955252', '200102902', '1008', 72);
INSERT INTO `choices` VALUES ('4', '800009026', '200102902', '1007', 58);
INSERT INTO `choices` VALUES ('5', '800071780', '200102902', '1007', 78);
INSERT INTO `choices` VALUES ('6', '850955252', '200012343', '1002', 96);
INSERT INTO `choices` VALUES ('7', '850955252', '200016731', '1001', 45);
INSERT INTO `choices` VALUES ('8', '67866556', '200245456', '1004', 76);
INSERT INTO `choices` VALUES ('9', '850955252', '200245456', '1004', 67);

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `cid` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cname` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hour` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1001', 'database', '64');
INSERT INTO `courses` VALUES ('1002', 'c++', '80');
INSERT INTO `courses` VALUES ('1003', 'java', '90');
INSERT INTO `courses` VALUES ('1004', '数据库', '100');
INSERT INTO `courses` VALUES ('1005', 'datasad', '76');
INSERT INTO `courses` VALUES ('1006', 'c语言', '70');
INSERT INTO `courses` VALUES ('1007', 'dfdata', '72');
INSERT INTO `courses` VALUES ('1008', 'uml', '85');
INSERT INTO `courses` VALUES ('1009', 'gfh', '78');
INSERT INTO `courses` VALUES ('1010', 'cvbdatacv', '56');
INSERT INTO `courses` VALUES ('1011', 'ERP', '67');
INSERT INTO `courses` VALUES ('1012', '语文', '48');
INSERT INTO `courses` VALUES ('1013', '数学', '80');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `sid` char(202) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `sname` char(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `email` char(202) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `grade` char(102) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '年纪',
  `createtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('202400001', '张三', 'zhangsan@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400002', '李四', 'lisi@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400003', '王五', 'wangwu@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400004', '赵六', 'zhaoliu@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400005', '钱七', 'qianqi@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400006', '孙八', 'sunba@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400007', '周九', 'zhoujiu@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400008', '吴十', 'wushi@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400009', '郑十一', 'zhengshiyi@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400010', '王十二', 'wangshier@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400011', '赵十三', 'zhaoshisan@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400012', '钱十四', 'qianshisi@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400013', '孙十五', 'sunshiwu@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400014', '周十六', 'zhoushiliu@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400015', '吴十七', 'wushiqi@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400016', '郑十八', 'zhengshiba@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400017', '王十九', 'wangshijiu@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400018', '赵二十', 'zhaoshier@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400019', '郑三十二', 'qianshieryi@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400020', '郑三十二', 'sunshierer@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400021', '郑三十二', 'zhoushiersan@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400022', '郑三十二', 'wushiersi@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400023', '郑三十二', 'zhengershiwu@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400024', '郑三十二', 'wangershiliu@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400025', '郑三十二', 'zhaoshierqi@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400026', '郑三十二', 'qianshierba@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400027', '郑三十二', 'sunshierjiu@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400028', '郑三十二', 'zhoushiershi@example.com', 'Grade 12', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400029', '郑三十二', 'wushieryi@example.com', 'Grade 11', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('202400030', '郑三十二', 'zhengershier@example.com', 'Grade 10', '2024-03-21 19:18:02', '2024-03-21 19:18:02');
INSERT INTO `students` VALUES ('3242342332', '王小二', 'dhsajk@sina.com', '2003', NULL, NULL);
INSERT INTO `students` VALUES ('324234234', '小明', 'sddd@126.com', '2001', NULL, NULL);
INSERT INTO `students` VALUES ('456657454', '小张', NULL, '2002', NULL, NULL);
INSERT INTO `students` VALUES ('67866556', '刘昂', 'la@cedm.com', '1999', NULL, NULL);
INSERT INTO `students` VALUES ('788675545', '李小白', NULL, '1999', NULL, NULL);
INSERT INTO `students` VALUES ('800001211', '刘琴', 'lq@cemd.com', '1998', NULL, NULL);
INSERT INTO `students` VALUES ('800009026', '吴庆', 'wq@cedm.com', '2000', NULL, NULL);
INSERT INTO `students` VALUES ('8000120456', '李四', 'jj@126.com', '2001', NULL, NULL);
INSERT INTO `students` VALUES ('8000455412', '张三', NULL, '2001', NULL, NULL);
INSERT INTO `students` VALUES ('800071780', '黄明', 'hm@cemd.com', '2001', NULL, NULL);
INSERT INTO `students` VALUES ('813259297', 'znkoo', 'zkas@cemd.com', '2002', NULL, NULL);
INSERT INTO `students` VALUES ('813726425', '王芳', 'wf@163.com', '2003', NULL, NULL);
INSERT INTO `students` VALUES ('850955252', '杨善德', 'ysd@cemd.com', '2000', NULL, NULL);
INSERT INTO `students` VALUES ('873541269', 'ssssht', 'ssh@126.com', '2000', NULL, NULL);
INSERT INTO `students` VALUES ('883794999', '小丽', 'ag@cemd.com', '2001', NULL, NULL);

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers`  (
  `tid` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tname` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salary` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('200012343', '杜甫', 'yt@cemd.com', 4709);
INSERT INTO `teachers` VALUES ('200016731', '白居易', 'er@cemd.com', 3900);
INSERT INTO `teachers` VALUES ('200102901', '李禹锡', 'asd@cemd.com', 2400);
INSERT INTO `teachers` VALUES ('200102902', '辛弃疾', 'qwe@cemd.com', 2800);
INSERT INTO `teachers` VALUES ('200123233', '李昱', 'po@cmed.com', 5344);
INSERT INTO `teachers` VALUES ('200123344', '欧阳修', 'fg@cemd.com', 3000);
INSERT INTO `teachers` VALUES ('200123443', '柳宗元', 'eqw@cemd.com', 2680);
INSERT INTO `teachers` VALUES ('200245456', 'bn', 'bn@cmed.com', 4003);

SET FOREIGN_KEY_CHECKS = 1;
