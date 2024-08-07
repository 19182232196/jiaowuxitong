/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80038
 Source Host           : localhost:3306
 Source Schema         : xm_educational_manager

 Target Server Type    : MySQL
 Target Server Version : 80038
 File Encoding         : 65001

 Date: 07/08/2024 11:43:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', '', 'ADMIN', '13677889922', 'admin@xm.com');
INSERT INTO `admin` VALUES (2, '1', '1', '管理员', NULL, 'ADMIN', NULL, NULL);

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NULL DEFAULT NULL COMMENT '学生ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '请假说明',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请假时间',
  `day` int NULL DEFAULT NULL COMMENT '请假天数',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '请假信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (1, 1, '我老妈喊我回老家相亲，我都20大几了，还木得女朋友，家里催的我都没心思学习了！！', '2023-12-20', 5, '审核通过', '快去快回！');
INSERT INTO `apply` VALUES (3, 1, '父母病种，需要回家探望一下，希望批准！！', '2023-12-21', 4, '审核通过', '允许申请');
INSERT INTO `apply` VALUES (4, 2, '家里有点事，请2天假，望批准', '2023-12-21', 2, '待审核', NULL);

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NULL DEFAULT NULL COMMENT '学生ID',
  `teacher_id` int NULL DEFAULT NULL COMMENT '教师ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上课时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '考勤状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '考勤信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (1, 1, 1, 1, '2023-12-21', '正常');
INSERT INTO `attendance` VALUES (2, 2, 1, 1, '2023-12-21', '迟到');
INSERT INTO `attendance` VALUES (3, 4, 1, 5, '2023-12-21', '早退');
INSERT INTO `attendance` VALUES (4, 1, 1, 5, '2023-12-21', '缺勤');
INSERT INTO `attendance` VALUES (5, 4, 3, 4, '2023-12-22', '早退');
INSERT INTO `attendance` VALUES (6, 2, 3, 4, '2023-12-21', '正常');
INSERT INTO `attendance` VALUES (9, 4, 3, 4, '2023-12-21', '缺勤');
INSERT INTO `attendance` VALUES (10, 3, 3, 4, '2023-12-21', '正常');
INSERT INTO `attendance` VALUES (11, 1, 3, 4, '2023-12-21', '正常');

-- ----------------------------
-- Table structure for choice
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `teacher_id` int NULL DEFAULT NULL COMMENT '授课教师',
  `student_id` int NULL DEFAULT NULL COMMENT '学生ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '选课信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES (8, 1, 1, 5);
INSERT INTO `choice` VALUES (9, 3, 1, 4);
INSERT INTO `choice` VALUES (10, 1, 1, 1);
INSERT INTO `choice` VALUES (11, 4, 2, 6);
INSERT INTO `choice` VALUES (12, 1, 2, 1);
INSERT INTO `choice` VALUES (13, 4, 2, 3);
INSERT INTO `choice` VALUES (14, 3, 2, 4);
INSERT INTO `choice` VALUES (15, 4, 3, 6);
INSERT INTO `choice` VALUES (16, 3, 3, 4);
INSERT INTO `choice` VALUES (17, 2, 3, 2);
INSERT INTO `choice` VALUES (18, 1, 4, 5);
INSERT INTO `choice` VALUES (19, 3, 4, 4);
INSERT INTO `choice` VALUES (20, 4, 4, 3);
INSERT INTO `choice` VALUES (21, 2, 4, 2);
INSERT INTO `choice` VALUES (24, 5, 5, 7);

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '班级名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '班级描述',
  `teacher_id` int NULL DEFAULT NULL COMMENT '教师ID',
  `speciality_id` int NULL DEFAULT NULL COMMENT '专业ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '班级信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, '计科1班', '', 1, 1);
INSERT INTO `classes` VALUES (2, '计科2班', '', 2, 1);
INSERT INTO `classes` VALUES (3, '123', '123', 5, 6);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学院名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学院介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '学院信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1, '信息工程学院', '');
INSERT INTO `college` VALUES (2, '软件学院', '');
INSERT INTO `college` VALUES (3, '外国语学院', '');
INSERT INTO `college` VALUES (4, '马克思主义学院', '');
INSERT INTO `college` VALUES (5, '物流工程学院', '');
INSERT INTO `college` VALUES (6, '文理学院', '');
INSERT INTO `college` VALUES (7, '123', '123');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '授课教师',
  `student` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评教学生',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '评教内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评教时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评教信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '高等数学', '张天志', '张三', '张老师人长得帅，说话又好听，课讲的又好，很喜欢上他的课', '2023-12-20 15:23:35');
INSERT INTO `comment` VALUES (2, '大学计算机基础', '王大治', '张三', '王老师长得一般，但是课讲的非常棒！真的是人不可貌相~~', '2023-12-20 15:33:29');
INSERT INTO `comment` VALUES (3, '大学计算机基础', '王大治', '李四', '王老师上课的课件很新，通俗易懂，学的很爽', '2023-12-20 15:40:02');
INSERT INTO `comment` VALUES (4, '大学计算机基础', '王大治', '王五', '这门课对我来说太难了，还好王老师耐心指导，让我险过，感谢感谢', '2023-12-20 15:40:56');
INSERT INTO `comment` VALUES (5, '大学计算机基础', '王大治', '赵六', '王老师课讲的不错，就是希望以后上课的时候，声音稍微大一点就好了', '2023-12-20 15:41:36');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程类型',
  `teacher_id` int NULL DEFAULT NULL COMMENT '授课教师',
  `score` int NULL DEFAULT NULL COMMENT '课程学分',
  `num` int NULL DEFAULT NULL COMMENT '上课人数',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上课教室',
  `week` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '周几',
  `segment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第几大节',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上课状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '高等数学', '必修', 1, 5, 50, '3A101', '星期一', '第二大节（09:40 ~ 12:00）', '已结课');
INSERT INTO `course` VALUES (2, '大学物理', '必修', 2, 5, 50, '3B202', '星期二', '第三大节（14:00 ~ 15:30）', '已开课');
INSERT INTO `course` VALUES (3, '马克思主义哲学', '选修', 4, 4, 30, '4B202', '星期三', '第四大节（15:40 ~ 17:00）', '未开课');
INSERT INTO `course` VALUES (4, '大学计算机基础', '必修', 3, 4, 60, '1B303', '星期五', '第三大节（14:00 ~ 15:30）', '已结课');
INSERT INTO `course` VALUES (5, '线性代数', '必修', 1, 4, 40, '3C202', '星期三', '第五大节（18:00 ~ 20:00）', '已开课');
INSERT INTO `course` VALUES (6, '中国近代哲学', '选修', 4, 2, 25, '2B303', '星期三', '第五大节（18:00 ~ 20:00）', '已开课');
INSERT INTO `course` VALUES (7, 'qwer', '必修', 5, 1, 1, '1', '星期一', '第一大节（08:00 ~ 09:30）', '已开课');

-- ----------------------------
-- Table structure for examplan
-- ----------------------------
DROP TABLE IF EXISTS `examplan`;
CREATE TABLE `examplan`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '考试安排表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of examplan
-- ----------------------------
INSERT INTO `examplan` VALUES (1, '2023年期末考试时间安排', '', '2023-12-14 14:56:56');
INSERT INTO `examplan` VALUES (2, '2024春节后补考通知', '', '2023-12-14 14:58:57');
INSERT INTO `examplan` VALUES (3, '2024春节后重修通知', '', '2023-12-14 14:59:20');

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程说明',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `student_id` int NULL DEFAULT NULL COMMENT '学生ID',
  `teacher_id` int NULL DEFAULT NULL COMMENT '教师ID',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作业文件',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '打分',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '作业信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES (1, '高等数学第一章第二节作业', 1, 1, 1, '', '80', '还不错');
INSERT INTO `homework` VALUES (2, '大计基第一章作业代码', 4, 2, 3, '', '100', '代码完美运行');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (4, '1', '1', '2024-08-07', '1');

-- ----------------------------
-- Table structure for roomplan
-- ----------------------------
DROP TABLE IF EXISTS `roomplan`;
CREATE TABLE `roomplan`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教室名称',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教室状态',
  `num` int NULL DEFAULT NULL COMMENT '容纳人数',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '使用说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教室安排表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roomplan
-- ----------------------------
INSERT INTO `roomplan` VALUES (1, '自习教室3B101', '空闲', 30, '请保持安静，切勿吵闹！');
INSERT INTO `roomplan` VALUES (2, '多媒体教室3A101', '空闲', 50, '不能偷偷看小电影！！');
INSERT INTO `roomplan` VALUES (3, '自习教授3A303', '占用', 30, '请保持安静，切勿大声喧哗');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NULL DEFAULT NULL COMMENT '学生ID',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  `teacher_id` int NULL DEFAULT NULL COMMENT '教师ID',
  `ordinary_score` double(10, 2) NULL DEFAULT NULL COMMENT '平时分',
  `exam_score` double(10, 2) NULL DEFAULT NULL COMMENT '考试分',
  `score` double(10, 2) NULL DEFAULT NULL COMMENT '总成绩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '成绩信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (8, 2, 1, 1, 80.00, 90.00, 87.00);
INSERT INTO `score` VALUES (9, 1, 1, 1, 90.00, 60.00, 69.00);
INSERT INTO `score` VALUES (10, 1, 5, 1, 70.00, 76.00, 74.20);
INSERT INTO `score` VALUES (11, 1, 4, 3, 90.00, 98.00, 95.60);
INSERT INTO `score` VALUES (12, 2, 4, 3, 90.00, 90.00, 90.00);
INSERT INTO `score` VALUES (14, 4, 4, 3, 70.00, 80.00, 77.00);
INSERT INTO `score` VALUES (16, 3, 4, 3, 70.00, 80.00, 77.00);
INSERT INTO `score` VALUES (17, 5, 7, 5, 1.00, 1.00, 1.00);

-- ----------------------------
-- Table structure for speciality
-- ----------------------------
DROP TABLE IF EXISTS `speciality`;
CREATE TABLE `speciality`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '专业名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '专业描述',
  `college_id` int NULL DEFAULT NULL COMMENT '所属学院',
  `score` int NULL DEFAULT NULL COMMENT '学分限定',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '专业信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of speciality
-- ----------------------------
INSERT INTO `speciality` VALUES (1, '计算机科学与技术', '', 2, 50);
INSERT INTO `speciality` VALUES (2, '网络工程', '', 2, 50);
INSERT INTO `speciality` VALUES (3, '电子科学与技术', '', 1, 50);
INSERT INTO `speciality` VALUES (4, '中国汉语言文学', '', 6, 50);
INSERT INTO `speciality` VALUES (5, '中国古汉语', '', 6, 50);
INSERT INTO `speciality` VALUES (6, '123', '123', 7, 123);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `college_id` int NULL DEFAULT NULL COMMENT '学院ID',
  `speciality_id` int NULL DEFAULT NULL COMMENT '专业ID',
  `class_id` int NULL DEFAULT NULL COMMENT '班级ID',
  `score` int NULL DEFAULT 0 COMMENT '学分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '学生信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'zhangsan', '123456', '张三', '', 'STUDENT', 2, 1, 1, 13);
INSERT INTO `student` VALUES (2, 'lisi', '123456', '李四', '', 'STUDENT', 2, 1, 1, 9);
INSERT INTO `student` VALUES (3, 'wangwu', '123456', '王五', '', 'STUDENT', 2, 1, 2, 0);
INSERT INTO `student` VALUES (4, 'zhaoliu', '123456', '赵六', '', 'STUDENT', 2, 1, 2, 4);
INSERT INTO `student` VALUES (5, '2', '2', '3', NULL, 'STUDENT', 2, 1, 2, 0);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教师信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'zhang', '123456', '张天志', '', 'TEACHER', '18899992222', 'zhang@xm.com', '副教授');
INSERT INTO `teacher` VALUES (2, 'zhao', '123456', '赵千里', '', 'TEACHER', '18877778888', 'zhao@xm.com', '副教授');
INSERT INTO `teacher` VALUES (3, 'wang', '123456', '王大治', '', 'TEACHER', '18866665555', 'wang@xm.com', '教授');
INSERT INTO `teacher` VALUES (4, 'sun', '123456', '孙晓梅', '', 'TEACHER', '18899998888', 'sun@xm.com', '教授');
INSERT INTO `teacher` VALUES (5, '3', '3', '3', NULL, 'TEACHER', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
