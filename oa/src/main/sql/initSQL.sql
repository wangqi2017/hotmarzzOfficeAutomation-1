create sequence o_seq;
create sequence o_emp_seq;
create sequence O_SCHOOLDISTRICT_seq;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;
select o_seq.nextval from dual;

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-28 15:38:50
*/


-- ----------------------------
-- Table structure for O_EMP
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_EMP";
CREATE TABLE "HOTMARZZ"."O_EMP" (
"EMPID" NUMBER NOT NULL ,
"EMPNAME" VARCHAR2(50 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NOT NULL ,
"USERPWD" VARCHAR2(255 BYTE) NOT NULL ,
"PHONE" VARCHAR2(50 BYTE) NOT NULL ,
"HIREDATE" DATE NOT NULL ,
"SCHOOLID" NUMBER NULL ,
"DEPTID" NUMBER NULL ,
"ROLEID" NUMBER NULL ,
"STATIONID" NUMBER NULL ,
"ASSOWECHAT" NUMBER NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"SEX" NUMBER(1) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."EMPID" IS '员工id';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."EMPNAME" IS '员工姓名';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."USERNAME" IS '用户名';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."USERPWD" IS '用户密码';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."PHONE" IS '手机号';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."HIREDATE" IS '入职时间';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."SCHOOLID" IS '所属校区';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."DEPTID" IS '所属部门';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."ROLEID" IS '所属角色';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."STATIONID" IS '所属岗位';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."ASSOWECHAT" IS '是否关联微信';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."UPDATEUSER" IS '更新人';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."UPDATEDATE" IS '更新时间';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP"."SEX" IS '员工性别，0代表男，1代表女';

-- ----------------------------
-- Records of O_EMP
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('10', '张三2', 'dfhm001', 'E10ADC3949BA59ABBE56E057F20F883E', '1596661234', TO_DATE('2017-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', '1', '1', '1', '1', null, null, null, null, '0');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('13', '赵六', 'zl001', '123456', '13997877432', TO_DATE('2017-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '1');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('14', '马云', 'mayun001', '123456', '13997111665', TO_DATE('2017-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '1');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('15', '刘伯温', 'liubowen001', '123456', '12345678901', TO_DATE('2017-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '0');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('16', '刘伯温', 'liubowen001', '123456', '12345678901', TO_DATE('2017-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '1');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('12', '王五', 'ww001', '123456', '13997877665', TO_DATE('2017-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '1');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('17', '刘伯温', 'liubowen001', '123456', '12345678901', TO_DATE('2017-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '0');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('18', '卡斯特罗', 'kasi001', '123456', '09876543211', TO_DATE('2017-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '0');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('20', '郭德纲', 'gdg', '123456', '16859403213', TO_DATE('2017-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '0');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('19', '郭德纲', 'gdg', '123456', '16859403213', TO_DATE('2017-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, '1', null, null, null, null, '0');
INSERT INTO "HOTMARZZ"."O_EMP" VALUES ('9', '张三', 'dfhm001', 'E10ADC3949BA59ABBE56E057F20F883E', '1596661234', TO_DATE('2017-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', '1', '1', '1', '1', null, null, null, null, '0');

-- ----------------------------
-- Indexes structure for table O_EMP
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_EMP
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_EMP" ADD CHECK ("EMPID" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_EMP" ADD CHECK ("EMPNAME" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_EMP" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_EMP" ADD CHECK ("USERPWD" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_EMP" ADD CHECK ("PHONE" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_EMP" ADD CHECK ("HIREDATE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_EMP
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_EMP" ADD PRIMARY KEY ("EMPID");


/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-22 17:43:18
*/


-- ----------------------------
-- Table structure for O_DEPT
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_DEPT";
CREATE TABLE "HOTMARZZ"."O_DEPT" (
"DEPTID" NUMBER NOT NULL ,
"DEPTNAME" VARCHAR2(50 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_DEPT"."DEPTID" IS '部门id';
COMMENT ON COLUMN "HOTMARZZ"."O_DEPT"."DEPTNAME" IS '部门名称';

-- ----------------------------
-- Records of O_DEPT
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_DEPT" VALUES ('1', '教学部');
INSERT INTO "HOTMARZZ"."O_DEPT" VALUES ('2', '咨询部');
INSERT INTO "HOTMARZZ"."O_DEPT" VALUES ('3', '就业部');

-- ----------------------------
-- Indexes structure for table O_DEPT
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_DEPT
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_DEPT" ADD CHECK ("DEPTID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_DEPT
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_DEPT" ADD PRIMARY KEY ("DEPTID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-22 17:43:51
*/


-- ----------------------------
-- Table structure for O_ROLE
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_ROLE";
CREATE TABLE "HOTMARZZ"."O_ROLE" (
"ROLEID" NUMBER NOT NULL ,
"ROLENAME" VARCHAR2(50 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_ROLE"."ROLEID" IS '角色id';
COMMENT ON COLUMN "HOTMARZZ"."O_ROLE"."ROLENAME" IS '角色名称';

-- ----------------------------
-- Records of O_ROLE
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('1', '系统管理员');
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('2', '总经理');

-- ----------------------------
-- Indexes structure for table O_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_ROLE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_ROLE" ADD CHECK ("ROLEID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_ROLE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_ROLE" ADD PRIMARY KEY ("ROLEID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-28 00:06:30
*/


-- ----------------------------
-- Table structure for O_SCHOOLDISTRICT
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_SCHOOLDISTRICT";
CREATE TABLE "HOTMARZZ"."O_SCHOOLDISTRICT" (
"SCHOOLID" NUMBER NOT NULL ,
"SCHOOLNAME" VARCHAR2(50 BYTE) NULL ,
"PROVINCE" VARCHAR2(255 BYTE) NULL ,
"TEACHERQUANTITY" NUMBER NULL ,
"CURRENTCLASSQUANTITY" NUMBER NULL ,
"CURRENTSTUQUANTITY" NUMBER NULL ,
"TOTALSTUQUANTITY" NUMBER NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."SCHOOLID" IS '校区id';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."SCHOOLNAME" IS '校区名称';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."PROVINCE" IS '所属省份';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."TEACHERQUANTITY" IS '教师数量';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."CURRENTCLASSQUANTITY" IS '当前开班数';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."CURRENTSTUQUANTITY" IS '当前学员数';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."TOTALSTUQUANTITY" IS '学生总数';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_SCHOOLDISTRICT"."UPDATEDATE" IS '修改时间';

-- ----------------------------
-- Records of O_SCHOOLDISTRICT
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_SCHOOLDISTRICT" VALUES ('1', '南京校区', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Indexes structure for table O_SCHOOLDISTRICT
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_SCHOOLDISTRICT
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_SCHOOLDISTRICT" ADD CHECK ("SCHOOLID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_SCHOOLDISTRICT
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_SCHOOLDISTRICT" ADD PRIMARY KEY ("SCHOOLID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-22 17:44:14
*/


-- ----------------------------
-- Table structure for O_STATION
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_STATION";
CREATE TABLE "HOTMARZZ"."O_STATION" (
"STATIONID" NUMBER NOT NULL ,
"STATIONNAME" VARCHAR2(50 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_STATION"."STATIONID" IS '岗位id';
COMMENT ON COLUMN "HOTMARZZ"."O_STATION"."STATIONNAME" IS '岗位名称';

-- ----------------------------
-- Records of O_STATION
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_STATION" VALUES ('1', '咨询师');
INSERT INTO "HOTMARZZ"."O_STATION" VALUES ('2', '讲师');
INSERT INTO "HOTMARZZ"."O_STATION" VALUES ('3', '助教');
INSERT INTO "HOTMARZZ"."O_STATION" VALUES ('4', '就业推荐');

-- ----------------------------
-- Indexes structure for table O_STATION
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_STATION
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_STATION" ADD CHECK ("STATIONID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_STATION
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_STATION" ADD PRIMARY KEY ("STATIONID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-28 00:05:52
*/


-- ----------------------------
-- Table structure for O_CASH
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_CASH";
CREATE TABLE "HOTMARZZ"."O_CASH" (
"PAYID" NUMBER NOT NULL ,
"PAYTYPE" VARCHAR2(50 BYTE) NULL ,
"TUITION" NUMBER NULL ,
"TOTALPERIOD" NUMBER NULL ,
"PAIDPERIOD" NUMBER NULL ,
"PAIDAMOUNT" NUMBER NULL ,
"ARREARAMOUNT" NUMBER NULL ,
"REMARKS" VARCHAR2(255 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."PAYID" IS '现金ID';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."PAYTYPE" IS '缴费类型';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."TUITION" IS '学费';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."TOTALPERIOD" IS '总期数';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."PAIDPERIOD" IS '已缴期数';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."PAIDAMOUNT" IS '已缴金额';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."ARREARAMOUNT" IS '欠款金额';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."REMARKS" IS '备注';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_CASH"."UPDATEDATE" IS '修改人';

-- ----------------------------
-- Records of O_CASH
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_CASH
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_CASH
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_CASH" ADD CHECK ("PAYID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_CASH
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_CASH" ADD PRIMARY KEY ("PAYID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-28 00:06:06
*/


-- ----------------------------
-- Table structure for O_CLASS
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_CLASS";
CREATE TABLE "HOTMARZZ"."O_CLASS" (
"CLASSID" NUMBER NOT NULL ,
"CLASSNAME" VARCHAR2(255 BYTE) NULL ,
"PREDIRECTION" VARCHAR2(255 BYTE) NULL ,
"CLASTATUS" VARCHAR2(255 BYTE) NULL ,
"OPENTIME" DATE NULL ,
"ENDTIME" DATE NULL ,
"LECTOR" VARCHAR2(50 BYTE) NULL ,
"TUTOR" VARCHAR2(50 BYTE) NULL ,
"ORIGINALSTUS" NUMBER NULL ,
"CURRENTSTUS" NUMBER NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"SCHOOLID" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."CLASSID" IS '班级ID';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."CLASSNAME" IS '班级名称';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."PREDIRECTION" IS '专业方向';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."CLASTATUS" IS '班级状态';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."OPENTIME" IS '开班时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."ENDTIME" IS '结束时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."LECTOR" IS '讲师姓名';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."TUTOR" IS '助教姓名';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."ORIGINALSTUS" IS '之前班级学生人数';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."CURRENTSTUS" IS '现有班级学生人数';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."UPDATEDATE" IS '修改时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CLASS"."SCHOOLID" IS '所属校区ID';

-- ----------------------------
-- Records of O_CLASS
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_CLASS
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_CLASS
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_CLASS" ADD CHECK ("CLASSID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_CLASS
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_CLASS" ADD PRIMARY KEY ("CLASSID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-28 00:32:02
*/


-- ----------------------------
-- Table structure for O_LOAN
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_LOAN";
CREATE TABLE "HOTMARZZ"."O_LOAN" (
"PAYID" NUMBER NOT NULL ,
"CARDNUM" VARCHAR2(255 BYTE) NULL ,
"PAYTYPE" VARCHAR2(50 BYTE) NULL ,
"DEPOSITBANK" VARCHAR2(255 BYTE) NULL ,
"LOANSTATUS" VARCHAR2(50 BYTE) NULL ,
"LOANUNIT" VARCHAR2(255 BYTE) NULL ,
"LOANPLAN" VARCHAR2(50 BYTE) NULL ,
"LOANTIME" DATE NULL ,
"LOANAMOUNT" NUMBER NULL ,
"REPAYMENTTIME" DATE NULL ,
"REMARKS" VARCHAR2(255 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"TUITION" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."PAYID" IS '贷款ID';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."CARDNUM" IS '贷款卡号';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."PAYTYPE" IS '缴费类型';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."DEPOSITBANK" IS '开户行';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."LOANSTATUS" IS '贷款状态';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."LOANUNIT" IS '贷款单位';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."LOANPLAN" IS '贷款方案';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."LOANTIME" IS '放款时间';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."LOANAMOUNT" IS '放款金额';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."REPAYMENTTIME" IS '还款时间';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."REMARKS" IS '备注';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."UPDATEDATE" IS '修改时间';
COMMENT ON COLUMN "HOTMARZZ"."O_LOAN"."TUITION" IS '学费';

-- ----------------------------
-- Records of O_LOAN
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_LOAN
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_LOAN
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_LOAN" ADD CHECK ("PAYID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_LOAN
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_LOAN" ADD PRIMARY KEY ("PAYID");


/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-06-28 00:06:22
*/


-- ----------------------------
-- Table structure for O_PAY
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_PAY";
CREATE TABLE "HOTMARZZ"."O_PAY" (
"PAYID" NUMBER NOT NULL ,
"PAYTYPE" NUMBER NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"TUITION" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."PAYID" IS '付款ID';
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."PAYTYPE" IS '付款类型';
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."UPDATEDATE" IS '修改时间';
COMMENT ON COLUMN "HOTMARZZ"."O_PAY"."TUITION" IS '学费';

-- ----------------------------
-- Records of O_PAY
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_PAY
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_PAY
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_PAY" ADD CHECK ("PAYID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_PAY
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_PAY" ADD PRIMARY KEY ("PAYID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-03 11:31:57
*/


-- ----------------------------
-- Table structure for O_STU
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_STU";
CREATE TABLE "HOTMARZZ"."O_STU" (
"STUID" NUMBER NOT NULL ,
"PHONE" VARCHAR2(50 BYTE),
"STUNAME" VARCHAR2(50 BYTE) NOT NULL ,
"IDNUMBER" VARCHAR2(100 BYTE) NULL ,
"SEX" NUMBER(1) NULL ,
"ENTRANCETIME" DATE NULL ,
"FIRSTCLASSID" NUMBER NULL ,
"CURRENTCLASSID" NUMBER NULL ,
"STUSTATUS" VARCHAR2(50 BYTE) NULL ,
"GRADUATION" DATE NULL ,
"GRASCHOOL" VARCHAR2(100 BYTE) NULL ,
"EDUCATION" VARCHAR2(50 BYTE) NULL ,
"PROFESSION" VARCHAR2(100 BYTE) NULL ,
"WSKLEVEL" VARCHAR2(50 BYTE) NULL ,
"COMPUTERSKILL" VARCHAR2(50 BYTE) NULL ,
"QQ" VARCHAR2(100 BYTE) NULL ,
"EMAIL" VARCHAR2(255 BYTE) NULL ,
"CONTACTPERSON" VARCHAR2(255 BYTE) NULL ,
"REMARKS" VARCHAR2(255 BYTE) NULL ,
"LOCKED" NUMBER(1) NULL ,
"LOCKUSER" VARCHAR2(100 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"PAYID" NUMBER NULL ,
"STUAGE" NUMBER NULL ,
"LOCKTIME" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."STUID" IS '学生ID';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."PHONE" IS '联系电话';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."STUNAME" IS '学生姓名';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."IDNUMBER" IS '学生身份证号';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."SEX" IS '性别，0代表男，1代表1';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."ENTRANCETIME" IS '入校时间';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."FIRSTCLASSID" IS '首次分班ID';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."CURRENTCLASSID" IS '当前班级ID';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."STUSTATUS" IS '学生状态';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."GRADUATION" IS '毕业时间';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."GRASCHOOL" IS '毕业院校';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."EDUCATION" IS '学历';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."PROFESSION" IS '专业';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."WSKLEVEL" IS '外语水平';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."COMPUTERSKILL" IS '计算机技能';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."QQ" IS 'QQ号';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."EMAIL" IS '邮箱';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."CONTACTPERSON" IS '紧急联系人信息';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."REMARKS" IS '备注';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."LOCKED" IS '是否锁定，0代表锁定，1代表未锁定';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."LOCKUSER" IS '锁定人姓名';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."UPDATEDATE" IS '修改时间';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."PAYID" IS '付款信息ID';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."STUAGE" IS '学生年龄';
COMMENT ON COLUMN "HOTMARZZ"."O_STU"."LOCKTIME" IS '锁定时间';

-- ----------------------------
-- Records of O_STU
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_STU
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_STU
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_STU" ADD CHECK ("STUID" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_STU" ADD CHECK ("STUNAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_STU
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_STU" ADD PRIMARY KEY ("STUID");

create sequence o_student_seq;
select o_student_seq.nextval from dual;

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-12 16:31:18
*/


-- ----------------------------
-- Table structure for O_CAMPUSWATER
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_CAMPUSWATER";
CREATE TABLE "HOTMARZZ"."O_CAMPUSWATER" (
"WATERID" NUMBER NOT NULL ,
"SCHOOLID" NUMBER NULL ,
"SUBJECTID" NUMBER NULL ,
"SUBJECTDETAILID" NUMBER NULL ,
"WATERTYPE" NUMBER(1) DEFAULT 0  NULL ,
"WATERBANCH" VARCHAR2(50 BYTE) NULL ,
"WATERSUM" NUMBER NULL ,
"REMARK" VARCHAR2(255 BYTE) NULL ,
"WATERDATE" DATE NULL ,
"BILLPATH" VARCHAR2(255 BYTE) NULL ,
"BROKERAGE" VARCHAR2(50 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"ISSUPPLE" NUMBER(1) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."WATERID" IS '流水ID';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."SCHOOLID" IS '校区ID';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."SUBJECTID" IS '科目ID';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."SUBJECTDETAILID" IS '科目明细ID';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."WATERTYPE" IS '流水类型。0代表支出，1代表收入';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."WATERBANCH" IS '流水批次';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."WATERSUM" IS '流水金额';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."REMARK" IS '备注';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."WATERDATE" IS '流水日期';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."BILLPATH" IS '票据路径';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."BROKERAGE" IS '经手人';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."UPDATEDATE" IS '修改时间';
COMMENT ON COLUMN "HOTMARZZ"."O_CAMPUSWATER"."ISSUPPLE" IS '是否补单，0代表是，1代表否';

-- ----------------------------
-- Records of O_CAMPUSWATER
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_CAMPUSWATER
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_CAMPUSWATER
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_CAMPUSWATER" ADD CHECK ("WATERID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_CAMPUSWATER
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_CAMPUSWATER" ADD PRIMARY KEY ("WATERID");


/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-10 15:36:09
*/


-- ----------------------------
-- Table structure for O_SUBJECT
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_SUBJECT";
CREATE TABLE "HOTMARZZ"."O_SUBJECT" (
"SUBJECTID" NUMBER NOT NULL ,
"SUBJECTNAME" VARCHAR2(255 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECT"."SUBJECTID" IS '科目ID';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECT"."SUBJECTNAME" IS '科目名称';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECT"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECT"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECT"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECT"."UPDATEDATE" IS '修改时间';

-- ----------------------------
-- Records of O_SUBJECT
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('1', '公司拨款', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('2', '机房建设', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('3', '教学部', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('4', '就业部', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('5', '市场部', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('6', '行政-日常费', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('7', '固定资产', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('8', '耗材', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('9', '房屋租赁', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('10', '物业管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('11', '班级管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('12', '学生管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECT" VALUES ('13', '其它', null, null, null, null);

-- ----------------------------
-- Checks structure for table O_SUBJECT
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_SUBJECT" ADD CHECK ("SUBJECTID" IS NOT NULL);

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-10 15:36:15
*/


-- ----------------------------
-- Table structure for O_SUBJECTDETAIL
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_SUBJECTDETAIL";
CREATE TABLE "HOTMARZZ"."O_SUBJECTDETAIL" (
"SUBJECTDETAILID" NUMBER NOT NULL ,
"SUBJECTDETAILNAME" VARCHAR2(255 BYTE) NULL ,
"SUBJECTID" NUMBER NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"DETAILTITLE" VARCHAR2(1000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."SUBJECTDETAILID" IS '流水明细ID';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."SUBJECTDETAILNAME" IS '科目明细名称';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."SUBJECTID" IS '所属科目ID';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."UPDATEDATE" IS '修改时间';
COMMENT ON COLUMN "HOTMARZZ"."O_SUBJECTDETAIL"."DETAILTITLE" IS '科目明细说明';

-- ----------------------------
-- Records of O_SUBJECTDETAIL
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('1', '奖金', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('2', '工资', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('3', '备用金', '1', null, null, null, null, '公司备用金');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('4', '公司垫付', '1', null, null, null, null, '学生贷款9+15模式前9期企业垫付');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('5', '机房建设费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('6', '教学费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('7', '就业费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('8', '市场费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('9', '行政—日常费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('10', '固定资产费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('11', '耗材费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('12', '房屋租赁费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('13', '物业管理费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('14', '班级管理费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('15', '学生管理费', '1', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('16', '施工费', '2', null, null, null, null, '机房地板、天花板铺设;墙面刷新、隔断施工、综合布线等施工费');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('17', '材料费', '2', null, null, null, null, '教室、机房装修的材料费。比如：电料，门窗，玻璃、电线等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('18', '其他', '3', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('19', '差旅', '3', null, null, null, null, '教学老师出差外出乘坐交通工具，住宿费等。注明起点，终点，出差事由');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('20', '交通费', '3', null, null, null, null, '教学老师外出办理公司业务发生的交通费。写明支付对象，地点，重点，外出事由等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('21', '教材费', '3', null, null, null, null, '讲师购买的教学书籍等。注明教材的数量，名称，金额，用途即可');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('22', '教学部工薪', '3', null, null, null, null, '注明月份，校区，发放对象，金额等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('23', '教学部奖金', '3', null, null, null, null, '注明奖励对象，金额，奖励事由等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('24', '教学部提成', '3', null, null, null, null, '注明提成对象，金额，提成事由等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('25', '差旅', '4', null, null, null, null, '就业老师出差外出乘坐交通工具，住宿费等。注明起点，终点，出差事由');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('26', '通信费', '4', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('27', '交通费', '4', null, null, null, null, '外出办理公司业务发生的打车费。需写明，支付对象，打车起点、终点，外出办理事宜');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('28', '就业部工薪', '4', null, null, null, null, '注明月份，校区，发放对象，金额等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('29', '就业奖金', '4', null, null, null, null, '注明班级、奖励对象等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('30', '就业提成', '4', null, null, null, null, '写明班级，提成对象；比如：济南总部就业部发放济南23期提成，备注中写明：发放济南总部23期就业部提成为XXX元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('31', '市场宣传', '5', null, null, null, null, '宣传品的制作：包括条幅、易拉宝、宣传彩页等。录入时写明数量，单价，用途等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('32', '市场推广费', '5', null, null, null, null, '招聘端口开通、品牌宣传（比如与百度，今日头条等合作进行宣传发生的费用）录入时注明合作运营商名称，周期，金额，用途等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('33', '市场部工薪', '5', null, null, null, null, '录入时注明：注明月份，校区、金额。比如：2016年2月济南东校区市场人员工薪XXX元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('34', '市场奖金', '5', null, null, null, null, '录入时注明提成对象，具体事宜');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('35', '市场提成', '5', null, null, null, null, '录入时注明提成对象，具体提成事宜');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('36', '业务招待费', '5', null, null, null, null, '市场人员开拓公司业务与客户发生的餐费。录入时写明：时间，支付对象，事由');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('37', '通信费', '5', null, null, null, null, '市场人员的电话费。录入时写明：支付对象，费用周期');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('38', '燃油费', '5', null, null, null, null, '市场人员本市内办理公司业务发生的燃油费。录入时写明时间，起点、终点、外出事由，支付对象');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('39', '交通费', '5', null, null, null, null, '市场人员本市内外出办理公司业务发生的打车费。录入时写明时间（按发票时间），支付对象，打车起点、终点，外出事由');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('40', '差旅费', '5', null, null, null, null, '市场人员外地出差的费用，一般包括：火车票、汽车票，住宿费，业务招待费等。录入时写明支付对象，出差时间，出差事由等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('41', '押金', '6', null, null, null, null, '桶装水押金，其他行政项目需要支付的押金等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('42', '维修费', '6', null, null, null, null, '公司日常办公设备的维修；注明维修设备的名称，金额，维修时间等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('43', '行政部工薪', '6', null, null, null, null, '行政部门的工薪，录入时写明发放月份，部门人数，金额等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('44', '交通费', '6', null, null, null, null, '行政部门的交通费，注明：支付对象，起始地点，事宜等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('45', '通信费', '6', null, null, null, null, '行政部门的固话费，注明：话费周期');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('46', '办公费', '6', null, null, null, null, '协议印刷、快递费、日常办公用品、劳保用品、桶装水，公司宽带费；教学用的麦克风、话筒，优盘等；录入时注明事由，项目名称，金额等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('47', '其他', '7', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('48', '办公设备', '7', null, null, null, null, '打印机、投影机、办公桌椅、办公文件柜、公司沙发、办公白板、公司自购的饮水机；教学设备');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('49', '机房设备', '7', null, null, null, null, '笔记本电脑、台式电脑显示器、主机，空调、交换机、路由器、机房服务器、工具等；录入时写明：型号，数量，单价，用途');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('50', '电脑耗材', '8', null, null, null, null, '鼠标、键盘、电源线等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('51', '办公耗材', '8', null, null, null, null, '日常清洁用具：拖把、扫帚、簸箕、抹布、垃圾袋、浇花器等；低值易耗品：硒鼓、卡扣、水晶头、铆钉、扎带、网线等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('52', '房租押金', '9', null, null, null, null, '注明付费地点，押金金额，同时写明押金金额是几个月房租');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('53', '中介费', '9', null, null, null, null, '注明付费地点，金额');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('54', '房租', '9', null, null, null, null, '公司办公地房屋租金、公司租用的员工宿舍的房屋租金等；录入时，需清楚写明，付费地点，周期，月租金金额，总额等；比如：济南总部泺口支付2017年上半年房租，备注中录入：支付济泺口2017年1月1日至6月30日房租6000元，1000元/月');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('55', '车位管理费', '10', null, null, null, null, '注明付费地点，周期，金额（仅限于公司公共车辆）');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('56', '电费', '10', null, null, null, null, '录入时，需清楚写明，付费地点，周期，月租金金额，总额等；比如：济南总部泺口支付2017年1月电费，备注中录入：支付济泺口2017年1月电费6000元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('57', '水费', '10', null, null, null, null, '录入时，需清楚写明，付费地点，周期，月租金金额，总额等；比如：济南总部泺口支付2017年1月电费，备注中录入：支付济泺口2017年1月电费6000元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('58', '公摊费', '10', null, null, null, null, '录入时，需清楚写明，付费地点，周期，月租金金额，总额等；比如：济南总部泺口支付2017年1月电费，备注中录入：支付济泺口2017年1月电费6000元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('59', '供暖费', '10', null, null, null, null, '录入时，需清楚写明，付费地点，周期，月租金金额，总额等；比如：济南总部泺口支付2017年1月电费，备注中录入：支付济泺口2017年1月电费6000元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('60', '物业费', '10', null, null, null, null, '录入时，需清楚写明，付费地点，周期，月租金金额，总额等；比如：济南总部泺口支付2017年1月电费，备注中录入：支付济泺口2017年1月电费6000元');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('61', '学生交通费', '11', null, null, null, null, '注明接学生时间，学生班级、乘坐交通工具、支付对象等');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('62', '学生奖金、奖励', '11', null, null, null, null, '注明学生班级、学生人数、奖励事宜、金额');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('63', '班级管理费', '11', null, null, null, null, '注明班级、支付对象、金额');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('64', '学生奖学金', '12', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('65', '企业垫付', '12', null, null, null, null, '学生贷款9+15模式前9期企业垫付');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('66', '学生提前还款', '12', null, null, null, null, '提前还款的学生注明学生班级、姓名，金额');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('67', '学生退费', '12', null, null, null, null, '注明学生班级、姓名，退学原因，应还本金，违约金等金额');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('68', '学生保险', '12', null, null, null, null, '注明学生班级、人数、单价、金额');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('69', '学生补贴', '12', null, null, null, null, '注明学生班级、发放补贴次数，班级人数，单价');
INSERT INTO "HOTMARZZ"."O_SUBJECTDETAIL" VALUES ('70', '其他', '13', null, null, null, null, '无匹配项目时，使用其它，但是要备注清楚事由');

-- ----------------------------
-- Indexes structure for table O_SUBJECTDETAIL
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_SUBJECTDETAIL
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_SUBJECTDETAIL" ADD CHECK ("SUBJECTDETAILID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_SUBJECTDETAIL
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_SUBJECTDETAIL" ADD PRIMARY KEY ("SUBJECTDETAILID");


/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-11 14:07:52
*/


-- ----------------------------
-- Table structure for O_FINANCIAL
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_FINANCIAL";
CREATE TABLE "HOTMARZZ"."O_FINANCIAL" (
"FINAPPID" NUMBER NOT NULL ,
"FINAPPSUM" NUMBER NULL ,
"FINAPPDES" VARCHAR2(500 BYTE) NULL ,
"FINSUBJECTID" NUMBER NULL ,
"FINSUBDETID" NUMBER NULL ,
"APPLYUSER" VARCHAR2(50 BYTE) NULL ,
"APPROVEUSER" VARCHAR2(50 BYTE) NULL ,
"APPROVEVIEW" VARCHAR2(255 BYTE) NULL ,
"APPROPRIATIONUSER" VARCHAR2(50 BYTE) NULL ,
"APPROPRIATIONTIME" DATE NULL ,
"FINSTATUS" VARCHAR2(50 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."FINAPPID" IS '财务申请ID';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."FINAPPSUM" IS '财务申请金额';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."FINAPPDES" IS '申请描述';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."FINSUBJECTID" IS '所属财务科目ID';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."FINSUBDETID" IS '所属财务科目明细ID';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."APPLYUSER" IS '财务申请人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."APPROVEUSER" IS '财务审批人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."APPROVEVIEW" IS '财务审批意见';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."APPROPRIATIONUSER" IS '拨款人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."APPROPRIATIONTIME" IS '拨款时间';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."FINSTATUS" IS '财务审批状态--未审核，通过，拒绝，已拨款';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINANCIAL"."UPDATEDATE" IS '修改时间';

-- ----------------------------
-- Records of O_FINANCIAL
-- ----------------------------

-- ----------------------------
-- Indexes structure for table O_FINANCIAL
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_FINANCIAL
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_FINANCIAL" ADD CHECK ("FINAPPID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_FINANCIAL
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_FINANCIAL" ADD PRIMARY KEY ("FINAPPID");


/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-11 14:34:32
*/


-- ----------------------------
-- Table structure for O_FINSUBDETAIL
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_FINSUBDETAIL";
CREATE TABLE "HOTMARZZ"."O_FINSUBDETAIL" (
"FINSUBDETAILID" NUMBER NOT NULL ,
"FINSUBDETAILNAME" VARCHAR2(50 BYTE) NULL ,
"FINSUBJECTID" NUMBER NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."FINSUBDETAILID" IS '财务科目明细ID';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."FINSUBDETAILNAME" IS '财务科目明细名称';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."FINSUBJECTID" IS '所属财务科目ID';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBDETAIL"."UPDATEDATE" IS '修改时间';

-- ----------------------------
-- Records of O_FINSUBDETAIL
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('1', '奖金', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('2', '工资', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('3', '备用金', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('4', '公司垫付', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('5', '机房建设费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('6', '教学费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('7', '就业费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('8', '市场费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('9', '行政--日常费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('10', '固定资产费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('11', '耗材费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('12', '房屋租赁费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('13', '物业管理费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('14', '班级管理费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('15', '学生管理费', '1', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBDETAIL" VALUES ('16', '其它', '2', null, null, null, null);

-- ----------------------------
-- Indexes structure for table O_FINSUBDETAIL
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_FINSUBDETAIL
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_FINSUBDETAIL" ADD CHECK ("FINSUBDETAILID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_FINSUBDETAIL
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_FINSUBDETAIL" ADD PRIMARY KEY ("FINSUBDETAILID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-07-11 14:34:40
*/


-- ----------------------------
-- Table structure for O_FINSUBJECT
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_FINSUBJECT";
CREATE TABLE "HOTMARZZ"."O_FINSUBJECT" (
"FINSUBJECTID" NUMBER NULL ,
"FINSUBJECTNAME" VARCHAR2(50 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBJECT"."FINSUBJECTID" IS '财务科目ID';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBJECT"."FINSUBJECTNAME" IS '财务科目名称';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBJECT"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBJECT"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBJECT"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_FINSUBJECT"."UPDATEDATE" IS '修改时间';

-- ----------------------------
-- Records of O_FINSUBJECT
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_FINSUBJECT" VALUES ('1', '公司拨款', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_FINSUBJECT" VALUES ('2', '其它', null, null, null, null);





-- ---------
-- 权限处理
-- update 2017-8-2
create sequence o_role_seq start with 100;

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-08-04 20:45:36
*/


-- ----------------------------
-- Table structure for O_ROLE
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_ROLE";
CREATE TABLE "HOTMARZZ"."O_ROLE" (
"ROLEID" NUMBER NOT NULL ,
"ROLENAME" VARCHAR2(50 BYTE) NULL ,
"REMARK" VARCHAR2(500 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_ROLE"."ROLEID" IS '角色id';
COMMENT ON COLUMN "HOTMARZZ"."O_ROLE"."ROLENAME" IS '角色名称';

-- ----------------------------
-- Records of O_ROLE
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('4', '校区就业老师', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('5', '校区就业经理', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('6', '校区财务', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('7', '校区教务', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('8', '教学检查员', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('9', '校区人力', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('10', '后台教师', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('11', '后台助教', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('1', '系统管理员', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('2', '校区行政', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('3', '校区咨询师', null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_ROLE" VALUES ('12', '财务审批', null, null, null, null, null);

-- ----------------------------
-- Indexes structure for table O_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_ROLE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_ROLE" ADD CHECK ("ROLEID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_ROLE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_ROLE" ADD PRIMARY KEY ("ROLEID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-08-04 20:46:02
*/


-- ----------------------------
-- Table structure for O_RESOURCE
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_RESOURCE";
CREATE TABLE "HOTMARZZ"."O_RESOURCE" (
"RESOURCEID" NUMBER NOT NULL ,
"RESOURCETYPE" VARCHAR2(50 BYTE) NULL ,
"REMARK" VARCHAR2(500 BYTE) NULL ,
"MENUNAME" VARCHAR2(50 BYTE) NULL ,
"PARENTMENU" NUMBER NULL ,
"MENUPATH" VARCHAR2(255 BYTE) NULL ,
"MENUICON" VARCHAR2(255 BYTE) NULL ,
"MENUSORT" VARCHAR2(255 BYTE) NULL ,
"MENULEV" NUMBER(2) NULL ,
"FUNCTIONNAME" VARCHAR2(50 BYTE) NULL ,
"BELONGMENU" VARCHAR2(50 BYTE) NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of O_RESOURCE
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('1', 'menu', null, '人力资源管理', null, null, null, '1', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('2', 'menu', null, '教务管理', null, null, null, '2', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('3', 'menu', null, '学员管理', null, null, null, '3', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('4', 'menu', null, '统计管理', null, null, null, '4', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('5', 'menu', null, '招生咨询', null, null, null, '5', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('6', 'menu', null, '就业管理', null, null, null, '6', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('7', 'menu', null, '财务流水管理', null, null, null, '7', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('8', 'menu', null, '规章制度', null, null, null, '8', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('9', 'menu', null, '教师评估', null, null, null, '9', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('10', 'menu', null, '文件管理', null, null, null, '10', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('11', 'menu', null, '系统权限管理', null, null, null, '11', '1', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('12', 'menu', null, '公司员工管理', '1', 'emps.do', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('13', 'menu', null, '部门岗位管理', '1', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('14', 'menu', null, '校区管理', '2', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('15', 'menu', null, '班级管理', '2', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('16', 'menu', null, '教师管理', '2', '#', null, '3', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('17', 'menu', null, '基本信息管理', '3', 'stus.do', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('18', 'menu', null, '贷款信息管理', '3', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('19', 'menu', null, '现金缴费管理', '3', '#', null, '3', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('20', 'menu', null, '保险信息', '3', '#', null, '4', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('21', 'menu', null, '补贴申请', '3', '#', null, '5', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('22', 'menu', null, '成绩管理', '3', '#', null, '6', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('23', 'menu', null, '申请记录', '3', '#', null, '7', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('24', 'menu', null, '教学质量统计', '4', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('25', 'menu', null, '学员基本信息统计', '4', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('26', 'menu', null, '校区电话量统计', '5', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('27', 'menu', null, '安排面试/就业', '6', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('28', 'menu', null, '学生就业管理', '6', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('29', 'menu', null, '学员就业统计', '6', '#', null, '3', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('30', 'menu', null, '合作公司管理', '6', '#', null, '4', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('31', 'menu', null, '分配就业老师', '6', '#', null, '5', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('32', 'menu', null, '就业专员工作统计', '6', '#', null, '6', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('33', 'menu', null, '班级就业统计', '6', '#', null, '7', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('34', 'menu', null, '特殊学员管理', '6', '#', null, '8', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('35', 'menu', null, '就业审核', '6', '#', null, '9', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('36', 'menu', null, '校区流水', '7', 'fins.do', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('37', 'menu', null, '财务申请', '7', 'financial.do', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('38', 'menu', null, '维护规章制度', '8', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('39', 'menu', null, '查看规章制度', '8', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('40', 'menu', null, '领导评分', '9', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('41', 'menu', null, '满意度问卷', '9', '#', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('42', 'menu', null, '教员阶段考核', '9', '#', null, '3', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('43', 'menu', null, '文件夹列表', '10', '#', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('45', 'function', null, null, null, null, null, null, null, '公司员工添加', '公司员工管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('44', 'function', null, null, null, null, null, null, null, '公司员工查询', '公司员工管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('46', 'function', null, null, null, null, null, null, null, '公司员工修改', '公司员工管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('47', 'function', null, null, null, null, null, null, null, '公司员工删除', '公司员工管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('48', 'function', null, null, null, null, null, null, null, '学员基本信息查询', '学员基本信息管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('49', 'function', null, null, null, null, null, null, null, '学员基本信息添加', '学员基本信息管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('50', 'function', null, null, null, null, null, null, null, '学员基本信息修改', '学员基本信息管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('51', 'function', null, null, null, null, null, null, null, '学员基本信息删除', '学员基本信息管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('52', 'function', null, null, null, null, null, null, null, '校区流水查询', '校区流水管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('53', 'function', null, null, null, null, null, null, null, '校区流水添加', '校区流水管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('54', 'function', null, null, null, null, null, null, null, '校区流水修改', '校区流水管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('55', 'function', null, null, null, null, null, null, null, '校区流水删除', '校区流水管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('56', 'function', null, null, null, null, null, null, null, '流水票据上传', '校区流水管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('57', 'function', null, null, null, null, null, null, null, '校区流水导出', '校区流水管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('58', 'function', null, null, null, null, null, null, null, '财务申请', '财务申请管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('59', 'function', null, null, null, null, null, null, null, '财务审批', '财务申请管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('60', 'function', null, null, null, null, null, null, null, '财务审批查询', '财务申请管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('61', 'function', null, null, null, null, null, null, null, '角色查询', '角色管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('62', 'function', null, null, null, null, null, null, null, '角色添加', '角色管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('63', 'function', null, null, null, null, null, null, null, '角色修改', '角色管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('64', 'function', null, null, null, null, null, null, null, '角色删除', '角色管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('65', 'function', null, null, null, null, null, null, null, '菜单授权添加', '菜单授权管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('66', 'function', null, null, null, null, null, null, null, '菜单授权修改', '菜单授权管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('67', 'function', null, null, null, null, null, null, null, '功能授权添加', '功能授权管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('68', 'function', null, null, null, null, null, null, null, '功能授权修改', '功能授权管理', null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('69', 'menu', null, '角色管理', '11', 'roles.do', null, '1', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('70', 'menu', null, '菜单授权管理', '11', 'menuGrants.do', null, '2', '2', null, null, null, null, null, null);
INSERT INTO "HOTMARZZ"."O_RESOURCE" VALUES ('71', 'menu', null, '功能授权管理', '11', 'functionGrants.do', null, '3', '2', null, null, null, null, null, null);

-- ----------------------------
-- Indexes structure for table O_RESOURCE
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_RESOURCE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_RESOURCE" ADD CHECK ("RESOURCEID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_RESOURCE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_RESOURCE" ADD PRIMARY KEY ("RESOURCEID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-08-04 20:47:07
*/


-- ----------------------------
-- Table structure for O_ROLE_RESOURCE
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_ROLE_RESOURCE";
CREATE TABLE "HOTMARZZ"."O_ROLE_RESOURCE" (
"ROLEID" NUMBER NOT NULL ,
"RESOURCEID" NUMBER NOT NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL ,
"RESOURCETYPE" VARCHAR2(50 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of O_ROLE_RESOURCE
-- ----------------------------
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '3', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '17', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '18', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '19', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '20', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '21', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '22', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '23', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '5', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('3', '26', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '6', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '27', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '28', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '29', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '30', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '31', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '32', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '33', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '34', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '35', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '8', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '38', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('4', '39', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('6', '7', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('6', '36', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('6', '37', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('8', '9', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('8', '40', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('8', '41', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('8', '42', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('10', '9', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('10', '40', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('10', '41', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('10', '42', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('10', '10', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('10', '43', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '3', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '17', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '18', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '19', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '20', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '21', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '22', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('11', '23', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('12', '1', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('12', '12', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('12', '13', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('13', '1', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('13', '12', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('13', '13', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '12', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '13', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '2', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '14', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '15', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '1', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '16', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '8', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '38', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('2', '39', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '2', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '14', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '15', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '16', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '3', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '17', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '18', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '19', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '20', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '21', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '22', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '23', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '4', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '24', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('7', '25', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '1', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '12', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '13', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '2', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '14', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '15', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '16', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '3', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '17', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '18', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '19', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '20', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '21', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '22', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '23', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '4', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '24', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '25', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '5', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '26', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '6', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '27', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '28', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '29', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '30', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '31', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '32', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '33', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '34', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '35', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '7', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '36', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '37', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '8', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '38', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '39', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '9', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '40', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '41', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '42', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '10', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '43', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '11', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '69', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '70', null, null, null, null, 'menu');
INSERT INTO "HOTMARZZ"."O_ROLE_RESOURCE" VALUES ('1', '71', null, null, null, null, 'menu');

-- ----------------------------
-- Indexes structure for table O_ROLE_RESOURCE
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_ROLE_RESOURCE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_ROLE_RESOURCE" ADD CHECK ("ROLEID" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_ROLE_RESOURCE" ADD CHECK ("RESOURCEID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_ROLE_RESOURCE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_ROLE_RESOURCE" ADD PRIMARY KEY ("ROLEID", "RESOURCEID");

/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : hotMarzz_OA
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : HOTMARZZ

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-08-04 20:48:20
*/


-- ----------------------------
-- Table structure for O_EMP_ROLE
-- ----------------------------
DROP TABLE "HOTMARZZ"."O_EMP_ROLE";
CREATE TABLE "HOTMARZZ"."O_EMP_ROLE" (
"EMPID" NUMBER NOT NULL ,
"ROLEID" NUMBER NOT NULL ,
"CREATEUSER" VARCHAR2(50 BYTE) NULL ,
"CREATEDATE" DATE NULL ,
"UPDATEUSER" VARCHAR2(50 BYTE) NULL ,
"UPDATEDATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "HOTMARZZ"."O_EMP_ROLE"."EMPID" IS 'emp id';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP_ROLE"."ROLEID" IS 'role id';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP_ROLE"."CREATEUSER" IS '创建人';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP_ROLE"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP_ROLE"."UPDATEUSER" IS '修改人';
COMMENT ON COLUMN "HOTMARZZ"."O_EMP_ROLE"."UPDATEDATE" IS '修改时间';

-- ----------------------------
-- Indexes structure for table O_EMP_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table O_EMP_ROLE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_EMP_ROLE" ADD CHECK ("EMPID" IS NOT NULL);
ALTER TABLE "HOTMARZZ"."O_EMP_ROLE" ADD CHECK ("ROLEID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table O_EMP_ROLE
-- ----------------------------
ALTER TABLE "HOTMARZZ"."O_EMP_ROLE" ADD PRIMARY KEY ("EMPID", "ROLEID");

