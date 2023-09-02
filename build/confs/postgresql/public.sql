-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student";
CREATE TABLE "public"."student" (
  "name" varchar(255) COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO "public"."student" VALUES ('lisi');
INSERT INTO "public"."student" VALUES ('wangwu');
