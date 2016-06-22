/*
Navicat MySQL Data Transfer

Source Server         : yuedongke
Source Server Version : 50628
Source Host           : 120.55.188.141:3306
Source Database       : yuedongke_2_test

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2016-06-20 14:17:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_activity_info
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_info`;
CREATE TABLE `t_activity_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(20) DEFAULT NULL COMMENT '活动唯一编码',
  `activity_name` varchar(50) DEFAULT NULL COMMENT '活动名称',
  `status` varchar(20) DEFAULT NULL COMMENT '活动状态',
  `activity_rank` int(11) DEFAULT NULL COMMENT '活动等级',
  `begin_time` date DEFAULT NULL COMMENT '开始时间',
  `end_time` date DEFAULT NULL COMMENT '结束时间',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `deleted` varchar(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL COMMENT '活动详情',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `discount_price` int(11) DEFAULT NULL COMMENT '折扣价',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片编码',
  `publisher_code` varchar(20) DEFAULT NULL COMMENT '发布者编码',
  `publisher_name` varchar(20) DEFAULT NULL COMMENT '发布者名称',
  `is_free` varchar(10) DEFAULT NULL COMMENT '是否免费 T是 F否',
  `telephone` varchar(50) DEFAULT NULL,
  `activity_type_name` varchar(20) DEFAULT NULL,
  `institution_code` varchar(20) DEFAULT NULL COMMENT '所属机构',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `deadline` date DEFAULT NULL COMMENT '截止日期',
  `activity_type_code` varchar(20) DEFAULT NULL COMMENT '活动类型编码',
  `is_official` varchar(2) DEFAULT NULL COMMENT '是否是官方活动',
  `service_areas_name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  `join_num` int(11) DEFAULT NULL COMMENT '报名人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_activity_info
-- ----------------------------
INSERT INTO `t_activity_info` VALUES ('9', '20160318144204000009', '宏优中考体育课程', '00', '0', '2016-10-01', '2016-12-12', '体育场路153号浙江省全民健身中心 ', null, 'F', '2016-03-18 14:42:04', '2016-03-22 11:42:28', '1、营业时间：周六、周日（9：00-20：00）\r\n2、适用年龄：初中一年级至三年级\r\n3、需要提前一天预约\r\n4、课程时间两小时\r\n5、每人只能用一次\r\n6、原价：200元\r\n7、活动价：0元\r\n体工校区 下城区体育场路153号浙江省全民健身中心\r\n浙大校区 西湖区天目山路148号浙大西溪校区\r\n\r\n', '20000', '20000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee38ujois11jpm1ofopvu19ts9.jpg', '20160310155410000001', 'shupao', 'F', null, null, '001', '120.1003593843', '30.3004979917', '2016-10-01', null, 'T', '西湖区', '1');
INSERT INTO `t_activity_info` VALUES ('10', '20160318150148000013', '杭州快乐飞翔网球', '00', '0', '2016-10-01', '2016-12-12', '浙大西溪校区', null, 'F', '2016-03-18 15:01:48', '2016-03-22 11:38:03', '明星教练:张教练   全职教练，专业教练，杭州各个球馆专聘教练，浙江高校大学网球队长。11年球龄，现网球技术 级评 5.0 （国际顶尖运动员为7.0）多次杭州业余网球公开赛单打第一，浙江省大学生网球公开赛团体第二，混双第二，全国大学生网球锦标赛甲组团体第二；教学形式：一对一，一对二，一对多，个人，单位，集体培训，教练，陪练，教学，对打，比赛。招生范围：各个年龄段的运动爱好者；教学内容：包括了 网球 启蒙、入门、进阶培训。(启蒙：介绍 正手、反手、发球、截击等知识。了解网球规则、历史、初级战术、 运动保护。陪练正确姿势，规范技术。（入门：陪练:正手、反手、截击、削球、发球，对基本动作进行矫正并强化。（进阶：陪练学习上下旋击球、挑高球、高压球、中场截击、侧旋发球、双打技术、传授比赛心得体会。\r\n价格：150元/小时', '15000', '15000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee38ujois11jpm1ofopvu19ts9.jpg', '20160310155410000001', 'shupao', 'F', null, null, '003', '120.1003593843', '30.3004979917', '2016-10-01', null, 'F', '西湖区', '1');
INSERT INTO `t_activity_info` VALUES ('11', '20160318150154000015', '黄龙体育舞蹈培训中心-少儿中国舞启蒙班（3-4岁）', '00', '0', '2016-10-01', '2016-12-12', '黄龙体育中心', null, 'F', '2016-03-18 15:01:54', '2016-03-22 11:35:38', '上课时间：\r\n周四：17:00-18:30\r\n周日：16:45-18:15\r\n16周每周2小时课时\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee68mr3veh15r653h1m1kqj49.png', '20160317164806000018', 'shupao2', 'F', null, null, '003', '120.1003593843', '30.3004979917', '2016-10-01', null, 'T', '西湖区', '1');
INSERT INTO `t_activity_info` VALUES ('12', '20160318150342000017', '黄龙体育舞蹈培训中心-少儿中国舞启蒙班（5-6岁）', '00', '0', '2016-10-01', '2016-12-12', '黄龙体育中心', null, 'F', '2016-03-18 15:03:42', '2016-03-22 11:34:40', '上课时间：\r\n周四：18:40-20:10\r\n周日：18:40-20:10\r\n16周每周2小时课时\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee66hba1evafi2fccjvpd9.jpg', '20160317164806000018', 'shupao2', 'F', null, null, '003', '120.1003593843', '30.3004979917', '2016-10-01', null, 'T', '拱墅区', null);
INSERT INTO `t_activity_info` VALUES ('13', '20160318150602000019', '杭州尚动体育—田径', '00', '0', '2016-10-01', '2016-12-12', '陈经纶体校', null, 'F', '2016-03-18 15:06:02', '2016-03-22 11:33:10', '价格：一对一1800/人/月；一对二1300/人月；一对三1000/人月；一对四及以上800/月', '80000', '80000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee5s2dd17p11qmb1lreb29voh9.jpg', '20160310155410000001', 'shupao', 'F', null, null, '003', '120.1003593843', '30.3004979917', '2016-10-01', null, 'T', '拱墅区', null);
INSERT INTO `t_activity_info` VALUES ('14', '20160318151458000023', '黄龙体育舞蹈培训中心-少儿芭蕾一级班', '00', '0', '2016-10-01', '2016-12-12', '黄龙体育中心', null, 'F', '2016-03-18 15:14:58', '2016-03-22 11:21:35', '上课时间：\r\n周一：18:30-20:00\r\n周六：9:00-10:30\r\n16周每周2小时课时\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。\r\n', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee38ujois11jpm1ofopvu19ts9.jpg', '20160310155410000001', 'shupao', 'F', null, null, '003', '120.1003593843', '30.3004979917', '2016-10-01', null, 'T', '拱墅区', null);
INSERT INTO `t_activity_info` VALUES ('15', '20160318152200000001', '杭州尚动体育—旱地冰球（特色）', '00', '0', '2016-10-01', '2016-12-12', '城北体育馆  ', null, 'F', '2016-03-18 15:22:00', '2016-03-22 10:41:24', '课程价格：1500/人/12课时；1800/人/12课时（送旱地冰球杆、球包、护具）； 一对二十/三十/100-150元  开班化培训（学校社团内容，器材由校方或者学生承担）\r\n地址：1.合作学校单位  2.杭州城北体育馆  3.杭州江干文体中心\r\n\r\n5月举办14-17周岁杭州首届旱地冰球校级友谊对抗赛；敬请期待  ', '10000', '10000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee34qk01m3019tj10mvovl5a79.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('16', '20160318152504000003', '杭州尚动体育—中考培训', '00', '0', '2016-10-01', '2016-12-12', '陈经纶少体校', null, 'F', '2016-03-18 15:25:04', '2016-03-22 10:39:54', '价格：一对一1800/人/10课时；一对二1300/人10课时；一对三1000/人10课时；一对四及以上800/人10课时\r\n地址：1.杭州陈经纶少体校 2.附近学员就近', '80000', '80000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee32lov1mlt2806hd1lht2en9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('17', '20160318152831000010', '杭州滨江成人儿童网球', '00', '0', '2016-10-01', '2016-12-12', '白金海岸网球场', null, 'F', '2016-03-18 15:28:31', '2016-03-22 10:39:20', '价格：儿童每人50元（包括训练费，场地费，训练用球）成人一对一200元 一对二300元\r\n地址：1白金海岸网球场2之江公寓网球场3盛元慧谷网球场\r\n\r\n欢迎有兴趣的家长可到现场观摩，小朋友可以免费体验。', '5000', '5000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee31kk4lpes8r4sm13ci1hgu9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('18', '20160318153310000013', '黄龙体育舞蹈培训中心-少儿芭蕾启蒙班', '00', '0', '2016-10-01', '2016-12-12', '黄龙体育中心', null, 'F', '2016-03-18 15:33:10', '2016-03-22 10:38:16', '上课时间：\r\n周一：17:00-18:00\r\n周六：10:40-11:40\r\n16周每周2小时课时\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee2vmo31chr55m1mps1pv7kg09.jpg', '20160317164806000018', 'shupao2', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('19', '20160318153613000015', '黄龙体育舞蹈培训中心-少儿芭蕾二级班', '00', '0', '2016-10-01', '2016-12-12', '黄龙体育中心', null, 'F', '2016-03-18 15:36:13', '2016-03-22 10:37:30', '上课时间：\r\n周六：13:30-16:00\r\n16周每周2小时课时\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee2u8m986hsttshs1p0c1ao29.jpg', '20160317164806000018', 'shupao2', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('20', '20160318153824000017', '黄龙体育舞蹈培训中心-少儿芭蕾高级班', '00', '0', '2016-10-01', '2016-12-12', '黄龙体育中心', null, 'F', '2016-03-18 15:38:24', '2016-03-22 10:35:34', '16周每周2小时课时\r\n上课时间：\r\n周日：13:15-16:15\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee29mcd1q9u19071qsq1itp19ls9.png', '20160317164806000018', 'shupao2', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('21', '20160318154102000019', '黄龙体育舞蹈培训中心-少儿拉丁初级班', '00', '0', '2016-10-01', '2016-12-12', '浙江省黄龙体育中心', null, 'F', '2016-03-18 15:41:02', '2016-03-22 10:25:42', '上课时间：\r\n周五：18:30-20:30\r\n周六：16:30-18:30\r\n周日：16:30-18:30\r\n\r\n16周每周2小时课时\r\n\r\n优雅气质从小练起—春季少儿舞蹈课程开始啦！\r\n学习舞蹈，不仅是为了表演或考级，小朋友学习舞蹈能够让他的心态更积极向上，从艺术的角度感知美好的世界，锻炼其合作、信任、尊重等一些好的品格。\r\n黄龙体育舞蹈培训是省级权威国标舞培训机构，浙江省摩登舞，拉丁舞教师、评审培训，教师、评审资格证考试基地。地处杭州黄龙核心枢纽位置，拥有精良的场馆设施、雄厚的师资力量，为少儿、青少年、中老年，以及都都市白领构建健身、艺术、娱乐三位一体的舞蹈平台。', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee27t0u1mt11nqm1ved17vk1voo9.jpg', '20160317164806000018', 'shupao2', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('22', '20160318154244000021', '黄龙体育舞蹈培训中心-少儿拉丁中级班', '00', '1', '2016-10-01', '2016-12-12', '浙江省黄龙体育中心', null, 'F', '2016-03-18 15:42:44', '2016-03-22 10:24:14', '<body  style=\'background-color:#EBEBF3\'><h2>韩寒《后会无期》奇葩的吸金3秘籍</h2><p><a href=\'http://blog.csdn.net/wildcatlele \r\n\r\n\'>我的博客</a> <a href=\'http://jincuodao.baijia.baidu.com/article/26059\'>原文</a>\",</p> <p>韩寒《后会无期》的吸金能力很让我惊讶！8月12日影片票房已成功冲破6亿大关。而且排片量仍保持10 以上，以日收千万的速度稳步向七亿进军。 </p> <img src=\'http://img2.3lian.com/img2007/10/28/126.jpg\' style=\'margin:0 auto; display:inherit;\'  height=\'280\' width=\'300\' /> <br><p> 要知道，《后会无期》不是主流类型片，是一个文艺片。不像《小时代》，是一个商业主流的偶像电影。</p> <p>太奇葩了！有人说，这是中国电影市场的红利，是粉丝电影的成功。但是，有一部投资3000万的粉丝电影《我就是我》，有明星，制作也不错，基本上是惨败。</p> <img src=\'http://f.hiphotos.baidu.com/news/w%3D638/sign=78315beeb1fb43161a1f797918a44642/2934349b033b5bb58cb61bdb35d3d539b600bcb5.jpg\' style=\'margin:0 auto; display:inherit;\'  height=\'280\' width=\'300\' /> <p>《后会无期》卖的不是好故事，是优越感。特别是针对80、90后的人群，你有没有发现，看《后会无期》比看《小时代3》有明显的优越感。故事虽然一般，但是很多人看完后，会在微博、微信上晒照片。所以说，对一个族群靠的不是广度，而是深度。<br>\\\r\n    \\\r\n    很凶残，值得大家借鉴。韩寒《后会无期》还有什么秘密武器，欢迎《后会无期》团队或相关方爆料，直接留言即可，有料的可以送黎万强亲笔签名的《参与感》一书。</p></body>', '120000', '120000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee25lp01lb811pru0f70k1acv9.jpg', '20160317164806000018', 'shupao2', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('23', '20160318154316000023', '杭州小小运动馆—亲子班（小虫班4-10个月）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 15:43:16', '2016-03-26 10:19:33', '课程价格：\r\n单次/258元                   \r\n一年（50节）/9300元                  \r\n一年半（75节）/12600元         \r\n两年（100节）/15900元\r\n', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/s_Js_TAY0VkgC-H_uyPcjvisvYDC2pSj2jInjjPn9nF-ZKp0io4l_4hSCkbjxSweE5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('24', '20160318154515000025', '杭州海誓山盟舞蹈—成人瑜伽年卡', '00', '0', '2016-10-01', '2016-12-12', '秋涛路296号尚筑金座2楼204室', null, 'F', '2016-03-18 15:45:15', '2016-03-22 10:14:55', '全年无限卡—不限课时不限舞种', '298000', '298000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1krmu1p4obbo163khip4t9.jpg', '20160317164806000018', 'shupao2', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('25', '20160318154629000027', '杭州小小运动馆—亲子班（小鸟班10-19个月）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 15:46:29', '2016-03-26 10:25:32', '价格\r\n单次/258元 \r\n一年（50节）/9300元\r\n一年半（75节）/12600元\r\n两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/H_qIe-qFksLprbTvWPNX9X30coYHGnL3ehh3-s0N4vdwi1k427V7JRiUPvRgs7j_E5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('26', '20160318155444000029', '杭州小小运动馆—亲子班（怪兽班19-30个月）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 15:54:44', '2016-03-26 10:24:55', '价格\r\n单次/258元\r\n一年（50节）/9300元\r\n一年半（75节）/12600元\r\n两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/s_Js_TAY0VkgC-H_uyPcjvisvYDC2pSj2jInjjPn9nF-ZKp0io4l_4hSCkbjxSweE5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('27', '20160318155727000031', '杭州小小运动馆—亲子班（超级怪兽30-36个月）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 15:57:27', '2016-03-26 10:24:25', '价格\r\n单次/258元  一年（50节）/9300元   一年半（75节）/12600元   两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/s_Js_TAY0VkgC-H_uyPcjvisvYDC2pSj2jInjjPn9nF-ZKp0io4l_4hSCkbjxSweE5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('28', '20160318155934000033', '杭州小小运动馆—学前班 （咯咯毛虫班4-5岁）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 15:59:34', '2016-03-26 10:23:53', '价格\r\n单次/258元  一年（50节）/9300元   一年半（75节）/12600元   两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/lI60Zr01wgrCAMl7SEdNjhI1vnLwbQeNV5p9h9jd1lu1HxH8OW85iFPae706-9vUE5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('29', '20160318160114000035', '杭州小小运动馆—学前班 （趣味小虫班3-4岁）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 16:01:14', '2016-03-26 10:23:16', '价格\r\n单次/258元  一年（50节）/9300元   一年半（75节）/12600元   两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/lI60Zr01wgrCAMl7SEdNjhI1vnLwbQeNV5p9h9jd1lu1HxH8OW85iFPae706-9vUE5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('30', '20160318160303000037', '杭州小小运动馆—学前班 （好朋友班5-6岁）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 16:03:03', '2016-03-26 10:22:53', '价格\r\n单次/258元  一年（50节）/9300元   一年半（75节）/12600元   两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/lI60Zr01wgrCAMl7SEdNjhI1vnLwbQeNV5p9h9jd1lu1HxH8OW85iFPae706-9vUE5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('31', '20160318160452000039', '杭州小小运动馆—辅修课程 （舞蹈课）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 16:04:52', '2016-03-26 10:22:23', '价格\r\n单次/258元  一年（50节）/9300元   一年半（75节）/12600元   两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/mfZnI7X9qhqY7ItZpd3hDODQ46Yg8jW2_VMYA4OtXv5DJdv7eAopGFsU2W_dSOj2E5YK5hWzfRAfFcOp2HVMLA.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('32', '20160318160631000041', '杭州小小运动馆—辅修课程（空手道）', '00', '0', '2016-10-01', '2016-12-12', '新塘路208号天虹购物中心B座三楼', null, 'F', '2016-03-18 16:06:31', '2016-03-26 10:21:53', '价格\r\n单次/258元  一年（50节）/9300元   一年半（75节）/12600元   两年（100节）/15900元', '25800', '25800', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1elj8k3ndpb134tq531blo9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('34', '20160318193941000003', '杭州海誓山盟舞蹈—成人拉丁舞年卡', '00', '0', '2016-10-01', '2016-12-12', '秋涛路296号尚筑金座2楼204室', null, 'F', '2016-03-18 19:39:41', '2016-03-22 10:22:53', '全年无限卡—不限课时不限舞种', '298000', '298000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee23gvd1h6phqj13ehruq68u9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('35', '20160318194138000005', '杭州海誓山盟舞蹈—成人爵士舞', '00', '0', '2016-10-01', '2016-12-12', '秋涛路296号尚筑金座2楼204室', null, 'F', '2016-03-18 19:41:38', '2016-03-22 10:21:47', '全年无限卡—不限课时不限舞种', '298000', '298000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee21elv1vl81bno12ocvdp1gdu9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('36', '20160318194322000007', '杭州海誓山盟舞蹈—成人肚皮舞', '00', '0', '2016-10-01', '2016-12-12', '秋涛路296号尚筑金座2楼204室', null, 'F', '2016-03-18 19:43:22', '2016-03-22 10:21:19', '全年无限卡—不限课时不限舞种', '298000', '298000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee20joi1m4r1pcr134v9bss359.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('37', '20160318194718000009', '杭州海誓山盟舞蹈—少儿拉丁舞', '00', '0', '2016-10-01', '2016-12-12', '秋涛路296号尚筑金座2楼204室', null, 'F', '2016-03-18 19:47:18', '2016-03-22 10:20:55', '1280元15次课程\r\n\r\n2980元45次课程', '128000', '128000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1voev1lvr1gmn11ra7l163g9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('39', '20160318211049000316', 'Change 体型工作室', '00', '0', '2016-10-01', '2016-12-12', '亲亲家园三期', null, 'F', '2016-03-18 21:10:49', '2016-03-22 10:20:01', '每周三次，每次60-90分钟', '180000', '180000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1t4fnt841dk6u1j1ih09v9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('40', '20160318211347000560', '下沙陈氏小架太极拳培训', '00', '0', '2016-10-01', '2016-12-12', '下沙金沙湖附近', null, 'F', '2016-03-18 21:13:47', '2016-03-22 10:18:02', '太极拳，国家级非物质文化遗产， 是以中国传统儒、道哲学中的太极、阴阳辩证理念为核心思想，集颐养性情、强身健体、技击对抗等多种功能为一体，结合易学的阴阳五行之变化，中医经络学，古代的导引术和吐纳术形成的一种内外兼修、柔和、缓慢、轻灵、刚柔相济的汉族传统拳术。', '200000', '200000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1qi8ldqv1ojrgl1oak48o9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('41', '20160318211905000562', '萧山武加舞艺术培训中心-舞蹈培训', '00', '0', '2016-10-01', '2016-12-12', '北干山南路681号萧山博物馆后面', null, 'F', '2016-03-18 21:19:05', '2016-03-22 10:16:19', '上学期/暑期16节课', '88000', '88000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1ndri1qsi17ua9cr1dkf1n1n9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('42', '20160318212032000564', '萧山武加舞艺术培训中心—舞蹈、武术培训', '00', '0', '2016-10-01', '2016-12-12', '北干山南路681号萧山博物馆后面', null, 'F', '2016-03-18 21:20:32', '2016-03-26 10:15:58', '下学期20节课', '98000', '98000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1mhden48b7713lmq7sasa9.jpg', '20160310155410000001', 'shupao', 'F', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);
INSERT INTO `t_activity_info` VALUES ('43', '20160319102610000001', '杭州海誓山盟舞蹈—少儿街舞', '00', '0', '2016-10-01', '2016-12-12', '秋涛路296号尚筑金座2楼204室', null, 'F', '2016-03-19 10:26:10', '2016-03-26 10:15:14', '1280元15次课', '128000', '128000', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee0adv3126ali6mtlgvg1qiq9.jpg', '20160317164806000018', 'shupao2', 'T', null, null, null, '120.1003593843', '30.3004979917', '2016-10-01', null, null, null, null);

-- ----------------------------
-- Table structure for t_advertisement_info
-- ----------------------------
DROP TABLE IF EXISTS `t_advertisement_info`;
CREATE TABLE `t_advertisement_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ad_code` char(20) DEFAULT NULL COMMENT '唯一编码',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `img_url` char(255) DEFAULT NULL COMMENT '图片',
  `ref_url` varchar(512) DEFAULT NULL COMMENT '图片链接url',
  `remarks` varchar(256) DEFAULT NULL COMMENT '描述',
  `ad_type` char(20) DEFAULT NULL COMMENT '广告类型 活动广告activity',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_advertisement_info
-- ----------------------------
INSERT INTO `t_advertisement_info` VALUES ('2', '20160319131636000014', '活动banner', 'http://7xo774.com2.z0.glb.qiniucdn.com/o_1ae6koo2l1aoi1f8k1pd71khj1ic5l.png', '20160318155444000029', null, 'activity', '2016-03-19 13:16:36', '2016-03-22 11:01:05', 'F');
INSERT INTO `t_advertisement_info` VALUES ('3', '20160319131835000029', '活动banner', 'http://7xo774.com2.z0.glb.qiniucdn.com/o_1ae6ksc0281pvc8aad1rsuutel.png', '20160318152831000010', null, 'activity', '2016-03-19 13:18:35', '2016-03-19 17:46:27', 'F');
INSERT INTO `t_advertisement_info` VALUES ('4', '20160319131845000031', '活动banner', 'http://7xo774.com2.z0.glb.qiniucdn.com/o_1ae6kskahs97oa9a7dvkq13bel.png', '20160318154629000027', null, 'activity', '2016-03-19 13:18:45', '2016-03-21 11:57:23', 'F');

-- ----------------------------
-- Table structure for t_comment_info
-- ----------------------------
DROP TABLE IF EXISTS `t_comment_info`;
CREATE TABLE `t_comment_info` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL COMMENT '编码',
  `user_code` varchar(20) DEFAULT NULL COMMENT '用户编码',
  `target_code` varchar(20) DEFAULT NULL COMMENT '评价对象编码',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `points` float DEFAULT NULL COMMENT '分值',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型(正式课、体验课)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment_info
-- ----------------------------
INSERT INTO `t_comment_info` VALUES ('1', '1', '20160318225024000009', '20160318164450000011', '呵呵', '3', '2016-05-10 13:51:07', '2016-05-10 13:51:09', 'F', 'course');
INSERT INTO `t_comment_info` VALUES ('2', '2', '20160318225024000009', '20160318171833000017', '哈哈', '4', '2016-05-12 16:04:36', '2016-05-12 16:04:38', 'F', 'exp_course');
INSERT INTO `t_comment_info` VALUES ('3', '3', '20160318225024000009', '20160318171833000017', '一叶知秋', '5', '2016-05-19 17:23:07', '2016-05-19 17:23:10', 'F', 'exp_course');

-- ----------------------------
-- Table structure for t_coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `t_coupon_info`;
CREATE TABLE `t_coupon_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(20) DEFAULT NULL COMMENT '优惠券唯一编码',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  `user_code` varchar(20) DEFAULT NULL COMMENT '用户编码',
  `coupon_type_code` varchar(20) DEFAULT NULL COMMENT '优惠券类型编码，如篮球',
  `status` varchar(20) DEFAULT NULL COMMENT '优惠券状态，是否已经使用、过期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_coupon_info
-- ----------------------------
INSERT INTO `t_coupon_info` VALUES ('1', '20160319143932000017', '仅适用于篮球', '2016-03-19 14:39:32', '2016-03-19 14:39:32', 'F', '20160318194815000005', '20160318152735000008', '00');
INSERT INTO `t_coupon_info` VALUES ('2', '20160319143932000018', '仅适用于篮球', '2016-03-19 14:39:32', '2016-03-19 14:39:32', 'F', '20160318225024000009', '20160318152735000008', '00');
INSERT INTO `t_coupon_info` VALUES ('3', '20160319143932000019', '仅适用于篮球', '2016-03-19 14:39:32', '2016-03-19 14:39:32', 'F', '20160319100603000015', '20160318152735000008', '00');
INSERT INTO `t_coupon_info` VALUES ('4', '20160319143932000020', '仅适用于活动', '2016-05-20 15:14:43', '2016-05-20 15:14:46', 'F', '20160318225024000009', '20160318152735000009', '00');

-- ----------------------------
-- Table structure for t_coupon_type
-- ----------------------------
DROP TABLE IF EXISTS `t_coupon_type`;
CREATE TABLE `t_coupon_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type_code` varchar(20) DEFAULT NULL COMMENT '优惠券类型编码',
  `coupon_type_name` varchar(20) DEFAULT NULL COMMENT '优惠券类型名称',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL COMMENT '优惠券个数',
  `deadline` date DEFAULT NULL COMMENT '截止日期',
  `scope_type_code` varchar(20) DEFAULT NULL COMMENT '适用项目',
  `status` varchar(255) DEFAULT NULL COMMENT '优惠券状态',
  `effect_date` date DEFAULT NULL COMMENT '生效日期',
  `discount` int(11) DEFAULT NULL COMMENT '面值',
  `remind` int(11) DEFAULT NULL COMMENT '到期提醒',
  `remarks` varchar(255) DEFAULT NULL,
  `img_code` varchar(20) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `consume_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_coupon_type
-- ----------------------------
INSERT INTO `t_coupon_type` VALUES ('1', '20160318152735000008', '篮球优惠券', '2016-03-18 15:27:35', '2016-03-21 12:57:00', 'F', '10', '2016-06-24', '0', '00', '2016-03-19', '1000', '0', '仅适用于篮球', null, '满100元使用', '10000');
INSERT INTO `t_coupon_type` VALUES ('2', '20160318152735000009', '活动优惠券', '2016-05-20 15:13:13', '2016-05-20 15:13:16', 'F', '20', '2016-07-01', 'activity', '00', '2016-05-20', '1000', '0', '仅适用于活动', null, '满100元使用', '10000');

-- ----------------------------
-- Table structure for t_course_info
-- ----------------------------
DROP TABLE IF EXISTS `t_course_info`;
CREATE TABLE `t_course_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(64) DEFAULT NULL COMMENT '课程名称',
  `course_code` char(20) DEFAULT NULL COMMENT '课程编码',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `service_city_name` char(20) DEFAULT NULL COMMENT '服务城市名称',
  `service_areas_name` varchar(128) DEFAULT NULL COMMENT '服务区域名称',
  `trainer_code` char(20) DEFAULT NULL COMMENT '教练编码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(2) DEFAULT NULL COMMENT '课程状态',
  `course_type_name` varchar(32) DEFAULT NULL COMMENT '课程类型名称',
  `course_rank` int(32) DEFAULT NULL COMMENT '课程等级',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片编码',
  `begin_time` date DEFAULT NULL COMMENT '课程开始时间',
  `end_time` date DEFAULT NULL COMMENT '课程结束时间',
  `address` varchar(255) DEFAULT NULL COMMENT '上课地址',
  `max_join_num` int(11) DEFAULT NULL COMMENT '最大人数',
  `min_join_num` int(11) DEFAULT NULL COMMENT '最小报名人数',
  `join_num` int(11) DEFAULT NULL COMMENT '报名人数',
  `remarks` varchar(255) DEFAULT NULL COMMENT '课程描述',
  `deleted` varchar(1) DEFAULT NULL,
  `course_type_code` varchar(20) DEFAULT NULL COMMENT '课程类型编码',
  `discount_price` int(11) DEFAULT NULL COMMENT '折扣价',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `publisher_code` varchar(20) DEFAULT NULL COMMENT '发布者编码',
  `publisher_name` varchar(20) DEFAULT NULL COMMENT '发布者姓名',
  `is_online` varchar(2) DEFAULT NULL COMMENT '是否支持线上付款 F否 T是',
  `telephone` varchar(20) DEFAULT NULL COMMENT '电话',
  `exp_course_code` varchar(20) DEFAULT NULL,
  `deadline` date DEFAULT NULL COMMENT '截止日期',
  `institution_code` varchar(20) DEFAULT NULL COMMENT '所属机构编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_course_info
-- ----------------------------
INSERT INTO `t_course_info` VALUES ('5', '杰司特游泳培训', '20160318164450000011', '80000', '杭州市', '萧山区', '', '2016-03-18 16:44:50', '2016-03-24 11:54:00', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/YawVzFtfeQAAYnfD01sxdAAA&bo=WAKOAQAAAAABBPY!&rf=viewer_4.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-01-01', '金城路333号加州阳光4楼', '20', '1', '1', '暑期游泳培训', 'F', '2', '80000', '120.1003593843', '30.3004909917', null, null, 'F', null, '20160318171833000017', '2016-07-01', '001');
INSERT INTO `t_course_info` VALUES ('6', '私人羽毛球培训班     羽毛球私教—1对3', '20160318165001000016', '13500', '杭州市', '西湖区', '', '2016-03-18 16:50:01', '2016-03-25 13:58:51', '00', '羽毛球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005355860.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-09-01', '竞舟路竞舟路文二西路交叉口', '3', '3', '1', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', '6', '13500', '120.1003593843', '30.3004909917', null, null, 'T', null, '20160318165759000019', '2016-08-01', '001');
INSERT INTO `t_course_info` VALUES ('9', '私人羽毛球培训班   羽毛球私教—1对2', '20160318165759000019', '15000', '杭州市', '西湖区', '', '2016-03-18 16:57:59', '2016-03-25 13:59:09', '03', '羽毛球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2015-10-01', '2015-11-01', '竞舟路竞舟路文二西路交叉口', '2', '2', '0', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', '6', '15000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2015-10-01', null);
INSERT INTO `t_course_info` VALUES ('10', ' 私人羽毛球培训班   羽毛球私教—1对3', '20160318170221000021', '13500', '杭州市', '拱墅区', '', '2016-03-18 17:02:21', '2016-03-24 13:26:06', '03', '羽毛球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2015-07-01', '2015-08-01', '大关游泳中心', '3', '3', '0', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', '6', '13500', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2015-07-01', null);
INSERT INTO `t_course_info` VALUES ('11', '私人羽毛球培训班   羽毛球私教—1对2', '20160318170328000023', '15000', '杭州市', '拱墅区', '', '2016-03-18 17:03:28', '2016-03-24 13:25:47', '03', '羽毛球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2015-06-01', '2015-07-01', '大关游泳中心', '2', '2', '0', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', '6', '15000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2015-06-01', null);
INSERT INTO `t_course_info` VALUES ('12', '私人羽毛球培训班   羽毛球私教—1对1', '20160318170442000025', '20000', '杭州市', '西湖区', '', '2016-03-18 17:04:42', '2016-03-25 13:59:57', '03', '羽毛球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2015-07-01', '2015-08-01', '竞舟路竞舟路文二西路交叉口', '1', '1', '0', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', '6', '20000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2015-07-01', null);
INSERT INTO `t_course_info` VALUES ('13', '私人羽毛球培训班   羽毛球私教—1对1', '20160318170551000027', '20000', '杭州市', '拱墅区', '', '2016-03-18 17:05:51', '2016-03-24 13:34:18', '03', '羽毛球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2015-06-01', '2015-07-01', '大关游泳中心', '1', '1', '0', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', '6', '20000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2015-06-01', null);
INSERT INTO `t_course_info` VALUES ('14', '乒乓球成人儿童训练班-1对1', '20160318171114000001', '15000', '杭州市', '萧山区', '', '2016-03-18 17:11:15', '2016-03-24 13:21:43', '03', '乒乓球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2015-05-01', '2015-06-01', '杭州市萧山区文化路266号', '15', '1', '0', '\"乒乓球（一次性缴费20次，免费送2节课，\r\n一次性缴费30次，免费送5节课）\"\r\n', 'F', '7', '15000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2015-05-01', null);
INSERT INTO `t_course_info` VALUES ('15', '乒乓球成人儿童训练班-1对2', '20160318171532000007', '10000', '杭州市', '萧山区', '', '2016-03-18 17:15:32', '2016-03-25 14:01:08', '02', '乒乓球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '文化路266号', '15', '2', '1', '\"乒乓球（一次性缴费20次，免费送2节课，\r\n一次性缴费30次，免费送5节课）\"\r\n', 'F', '7', '10000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('16', '乒乓球成人儿童训练班-1对4', '20160318171623000012', '8000', '杭州市', '萧山区', '', '2016-03-18 17:16:23', '2016-03-25 14:00:30', '02', '乒乓球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '文化路266号', '15', '4', '0', '\"乒乓球（一次性缴费20次，免费送2节课，\r\n一次性缴费30次，免费送5节课）\"\r\n', 'F', '7', '8000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('17', '智道国际跆拳道学校', '20160318171833000017', '18000', '杭州市', '余杭区', '', '2016-03-18 17:18:33', '2016-03-24 13:11:18', '03', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/27FB632984A858BB496F0B50451154B0.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2016-06-01', '良渚十六街区12-4', '20', '5', '0', '跆拳道\r\n180元8节课\r\n', 'F', '3', '18000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('19', '杭州飞扬游泳培训-成人班', '20160318172927000023', '75000', '杭州市', '下城区', '', '2016-03-18 17:29:27', '2016-03-24 11:56:10', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-08-30', '2016-11-01', '杭州游泳馆', '7', '1', '0', '成人班每课时1小时，每次7人以内. 随时开课，共10课时。30天内完成课程，学费750.游泳票需自理。', 'F', '2', '75000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-08-30', null);
INSERT INTO `t_course_info` VALUES ('20', '杭州飞扬游泳培训-中考满分班', '20160318173311000029', '150000', '杭州市', '下城区', '', '2016-03-18 17:33:11', '2016-03-24 11:55:42', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-08-30', '2016-11-01', '杭州游泳馆', '10', '1', '0', '中考班：1500元/20课；中考满分班，针对有满分培训需求的考生，承诺满分，20课时，学费1500，游泳票需自理\r\n', 'F', '2', '150000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-08-30', null);
INSERT INTO `t_course_info` VALUES ('21', '杭州飞扬游泳培训-中小学生班', '20160318173829000035', '75000', '杭州市', '下城区', '', '2016-03-18 17:38:29', '2016-03-24 11:55:20', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-08-30', '2016-11-01', '杭州游泳馆', '6', '1', '0', '中小学生班，人数设定6人以内，仅招收9周岁以上中小学生，学费750，游泳票需自理。10课时，包学会。本期不会免费学到会为止。', 'F', '2', '75000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-08-30', null);
INSERT INTO `t_course_info` VALUES ('22', '宏远体育-篮球-单次年卡52课时', '20160318174316000041', '498000', '杭州市', '滨江区', '', '2016-03-18 17:43:16', '2016-03-25 14:06:38', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', ' 滨文路60号威度运动中心  ', '12', '1', '1', '赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('23', '宏远体育-篮球-单次年卡52课时', '20160318174554000051', '498000', '杭州市', '下城区', '', '2016-03-18 17:45:54', '2016-03-25 14:07:20', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '香积寺路 绿柳巷55号 风帆中学，', '12', '1', '1', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('24', '宏远体育-篮球-单次年卡52课时', '20160318174751000061', '498000', '杭州市', '下城区', '', '2016-03-18 17:47:51', '2016-03-24 11:22:36', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '下城区 风华中学，康宁路 华丰公交总站对面', '12', '1', '1', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('25', '宏远体育-篮球-单次年卡52课时', '20160318174916000071', '498000', '杭州市', '拱墅区', '', '2016-03-18 17:49:16', '2016-03-24 11:22:11', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '北辰球馆，祥园路47号 运河广告大厦傍边', '12', '1', '0', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('26', '宏远体育-篮球-单次年卡52课时', '20160318175034000081', '498000', '杭州市', '西湖区', '', '2016-03-18 17:50:34', '2016-03-24 11:23:29', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '教工路一号，数源科技球馆', '12', '1', '0', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('27', '宏远体育-篮球-单次年卡52课时', '20160318175208000091', '498000', '杭州市', '拱墅区', '', '2016-03-18 17:52:08', '2016-03-24 11:24:58', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '德胜路德胜巷，贝斯特健身房', '12', '1', '0', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('28', '宏远体育-篮球-单次年卡52课时', '20160318175326000101', '498000', '杭州市', '上城区', '', '2016-03-18 17:53:26', '2016-03-18 17:53:26', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-04-01', '2017-04-01', ' 海勤疗养院，南山路与玉皇山路交叉口，玉皇山路76号', '12', '1', '1', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-04-01', null);
INSERT INTO `t_course_info` VALUES ('29', '宏远体育-篮球-单次年卡52课时', '20160318175514000111', '498000', '杭州市', '江干区', '', '2016-03-18 17:55:14', '2016-03-24 11:28:52', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '糖果盒俱乐部 秋涛北路373号 安琪儿灯具城对面', '12', '1', '0', '\"赠送：\r\n1.体能私教课一次\r\n2.请假赠送：4次单次一日课程的假（4次单次一日课程的假最多可以顺延有效期为一个月）\r\n\"\r\n', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('30', '宏远体育-篮球-双次年卡104课时', '20160318175704000117', '798000', '杭州市', '滨江区', '', '2016-03-18 17:57:04', '2016-03-24 11:28:30', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '威度运动中心  滨文路60号   杭州气象局附近', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('31', '宏远体育-篮球-双次年卡104课时', '20160318175831000127', '798000', '杭州市', '西湖区', '', '2016-03-18 17:58:31', '2016-03-24 10:17:35', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', ' 风帆中学，香积寺路 绿柳巷55号 好来登大酒店对面', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('32', '宏远体育-篮球-双次年卡104课时', '20160318175943000135', '798000', '杭州市', '下城区', '', '2016-03-18 17:59:43', '2016-03-24 10:16:28', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '风华中学，康宁路 华丰公交总站对面', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('33', '宏远体育-篮球-双次年卡104课时', '20160318180114000145', '798000', '杭州市', '西湖区', '', '2016-03-18 18:01:14', '2016-03-24 10:15:56', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '北辰球馆，祥园路47号 运河广告大厦傍边', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('34', '宏远体育-篮球-双次年卡104课时', '20160318180241000155', '798000', '杭州市', '西湖区', '', '2016-03-18 18:02:41', '2016-03-24 10:15:36', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', ' 教工路一号，数源科技球馆', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('35', '宏远体育-篮球-双次年卡104课时', '20160318180804000164', '798000', '杭州市', '西湖区', '', '2016-03-18 18:08:04', '2016-03-24 10:14:48', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '海勤疗养院，南山路与玉皇山路交叉口，玉皇山路76号', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('36', '宏远体育-篮球-双次年卡104课时', '20160318180938000174', '798000', '杭州市', '西湖区', '', '2016-03-18 18:09:38', '2016-03-24 10:14:22', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '糖果盒俱乐部 秋涛北路373号 安琪儿灯具城对面', '12', '1', '0', '\"赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n\r\n\r\n\"\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('37', '游泳小分队一对一私教', '20160318181808000184', '150000', '杭州市', '西湖区', '', '2016-03-18 18:18:08', '2016-03-24 10:07:49', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/CE9083A8E077460C8A231146B793C063.jpg?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-11-01', '主城区各游泳馆', '4', '1', '0', '', 'F', '2', '150000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('39', '杭州海誓山盟舞蹈—少儿跆拳道', '20160318185735000189', '128000', '杭州市', '上城区', '', '2016-03-18 18:57:35', '2016-03-24 10:06:34', '02', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '杭州市上城区秋涛路296号尚筑金座2楼204室', '12', '2', '0', '', 'F', '3', '128000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('40', '杭州海誓山盟舞蹈—少儿跆拳道', '20160318185844000193', '298000', '杭州市', '下城区', '', '2016-03-18 18:58:44', '2016-03-24 10:06:12', '02', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '杭州市上城区秋涛路296号尚筑金座2楼204室', '12', '2', '0', '', 'F', '3', '298000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('41', '恒毅跆拳道道馆—初级班', '20160318190034000196', '90000', '杭州市', '拱墅区', '', '2016-03-18 19:00:34', '2016-03-24 09:59:49', '02', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '浙江省杭州市莫干山路841弄23号三宝创意园C座801', '12', '2', '0', '\"教学内容：\r\n1.基本礼仪：如进馆礼仪、鞠躬方法、道服穿着等\r\n2.基本动作：马步冲拳、隔档术\r\n3.跆拳道基本国际用语\r\n4.横、左右竖叉（抽查）\r\n腿法：正前踢\"\r\n', 'F', '3', '90000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('42', '恒毅跆拳道道馆—初级班', '20160318190200000205', '298000', '杭州市', '拱墅区', '', '2016-03-18 19:02:00', '2016-03-24 09:59:16', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-08-01', '浙江省杭州市莫干山路841弄23号三宝创意园C座801', '12', '2', '0', '\"教学内容：\r\n1.基本礼仪：如进馆礼仪、鞠躬方法、道服穿着等\r\n2.基本动作：马步冲拳、隔档术\r\n3.跆拳道基本国际用语\r\n4.横、左右竖叉（抽查）\r\n腿法：正前踢\"\r\n', 'F', '3', '298000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('43', '恒毅跆拳道道馆—中级班', '20160318190257000213', '90000', '杭州市', '拱墅区', '', '2016-03-18 19:02:57', '2016-03-24 09:55:05', '02', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '浙江省杭州市莫干山路841弄23号三宝创意园C座801', '12', '2', '0', '\"教学内容：\r\n1.柔韧：横、左右竖叉\r\n2.基本功：行进间三七步双手刀中位隔档（左右各2次）\r\n3.腿法：a.勾踢b.双飞c.横踢+双飞\r\n4.体能：a.抱膝跳b.拳卧撑c.快速转身左右横踢脚靶\r\n5.品势：太极四章必考，太极一至三章中抽考一章\"\r\n', 'F', '3', '90000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('44', '恒毅跆拳道道馆—中级班', '20160318190352000221', '298000', '杭州市', '拱墅区', '', '2016-03-18 19:03:52', '2016-03-25 14:07:48', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-08-01', '莫干山路841弄23号三宝创意园C座801', '12', '2', '0', '\"教学内容：\r\n1.柔韧：横、左右竖叉\r\n2.基本功：行进间三七步双手刀中位隔档（左右各2次）\r\n3.腿法：a.勾踢b.双飞c.横踢+双飞\r\n4.体能：a.抱膝跳b.拳卧撑c.快速转身左右横踢脚靶\r\n5.品势：太极四章必考，太极一至三章中抽考一章\"\r\n', 'F', '3', '298000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('45', '恒毅跆拳道道馆—高级班', '20160318190504000229', '90000', '杭州市', '拱墅区', '', '2016-03-18 19:05:04', '2016-03-25 14:08:12', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-08-01', '莫干山路841弄23号三宝创意园C座801', '12', '2', '0', '\"教学内容：\r\n1.腿法：a、横踢+360度横踢+后旋踢，b、横踢+双飞+后踢，c.腾空后旋\r\n2.击破：a、腾空二段前踢 b、360度横踢\r\n3.实战：3分钟一回合\r\n4.理论：裁判规则、技术理论笔试（抽查）\r\n5.品势：太极八章必考 太极一至八章抽考两章\"\r\n', 'F', '3', '90000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('46', '恒毅跆拳道道馆—高级班', '20160318190554000238', '298000', '杭州市', '拱墅区', '', '2016-03-18 19:05:54', '2016-03-25 14:09:01', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-08-01', '莫干山路841弄23号三宝创意园C座801', '12', '2', '1', '\"教学内容：\r\n1.腿法：a、横踢+360度横踢+后旋踢，b、横踢+双飞+后踢，c.腾空后旋\r\n2.击破：a、腾空二段前踢 b、360度横踢\r\n3.实战：3分钟一回合\r\n4.理论：裁判规则、技术理论笔试（抽查）\r\n5.品势：太极八章必考 太极一至八章抽考两章\"\r\n', 'F', '3', '298000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('47', '杭州飞扬游泳培训—一对一', '20160318190751000246', '140000', '杭州市', '下城区', '', '2016-03-18 19:07:51', '2016-03-24 09:53:59', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-09-30', '2016-12-01', '杭州市游泳馆', '10', '1', '0', '一对一\r\n', 'F', '2', '140000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-09-30', null);
INSERT INTO `t_course_info` VALUES ('48', '杭州飞扬游泳培训—成人班', '20160318190946000252', '75000', '杭州市', '下城区', '', '2016-03-18 19:09:46', '2016-03-23 09:53:32', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-08-30', '2016-11-01', '杭州市游泳馆', '15', '1', '0', '成人班\r\n', 'F', '2', '75000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-08-30', null);
INSERT INTO `t_course_info` VALUES ('49', '杭州飞扬游泳培训—中考满分班', '20160318191144000258', '150000', '杭州市', '下城区', '', '2016-03-18 19:11:44', '2016-03-24 09:54:17', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-06-18', '2016-07-01', '杭州市游泳馆', '12', '1', '0', '中考满分班\r\n', 'F', '2', '150000', '120.1003593843', '30.3004909917', '20160318171353000006', 'zhangch', 'T', null, null, '2016-06-18', null);
INSERT INTO `t_course_info` VALUES ('51', '杜特篮球—年卡（每周1次）', '20160318195559000012', '428000', '杭州市', '滨江区', '', '2016-03-18 19:55:59', '2016-03-25 14:10:03', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '滨盛路4402号（彩虹城小区27栋地下体育馆）', '20', '10', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('52', '杜特篮球—年卡（每周1次）', '20160318195823000014', '428000', '杭州市', '滨江区', '', '2016-03-18 19:58:23', '2016-03-23 09:48:28', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '信诚路与怀德交叉口康恩贝工厂对面群乐饭店旁', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3. 一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('53', '杜特篮球—年卡（每周1次）', '20160318200157000016', '428000', '杭州市', '江干区', '', '2016-03-18 20:01:57', '2016-03-23 09:48:03', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '凯旋路268号浙江大学华家池校区逸夫体育馆旁', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3. 一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('54', '杜特篮球—年卡（每周1次）', '20160318200353000018', '428000', '杭州市', '江干区', '', '2016-03-18 20:03:53', '2016-03-24 09:54:36', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '新塘路161号景芳五区公交站景芳中学', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('55', '杜特篮球—年卡（每周1次）', '20160318200552000020', '428000', '杭州市', '江干区', '', '2016-03-18 20:05:52', '2016-03-23 09:36:56', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '环丁路925号丁兰小学兰园小区', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3. 一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('56', '杜特篮球—年卡（每周1次）', '20160318201339000022', '428000', '杭州市', '拱墅区', '', '2016-03-18 20:13:39', '2016-03-25 14:10:49', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '半山路半山杭钢健身中心', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3. 一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('57', '天纵少儿棋院—启蒙班', '20160318201713000024', '149300', '杭州市', '下城区', '', '2016-03-18 20:17:13', '2016-03-25 14:11:30', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-05', '庆春路三瑞大厦东面楚庆巷', '20', '2', '0', '1493（包含93元教程费）', 'F', '4', '149300', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('58', '杜特篮球—年卡（每周1次）', '20160318201821000026', '368000', '杭州市', '余杭区', '', '2016-03-18 20:18:21', '2016-03-23 09:39:21', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '临平北沙东路5号世纪公园南门对面', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共63节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：3节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '368000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('59', '天纵少儿棋院—启蒙班', '20160318201846000028', '149300', '杭州市', '西湖区', '', '2016-03-18 20:18:47', '2016-03-25 14:11:46', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '文三西路香樟公寓香樟商贸楼', '20', '2', '0', '1493（包含93元教程费）', 'F', '4', '149300', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('60', '天纵少儿棋院—启蒙班', '20160318202034000030', '149300', '杭州市', '下城区', '', '2016-03-18 20:20:34', '2016-03-25 14:12:01', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '三塘六塘公寓', '20', '2', '0', '1493（包含93元教程费）', 'F', '4', '149300', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('61', '天纵少儿棋院—初级班', '20160318202210000032', '160000', '杭州市', '下城区', '', '2016-03-18 20:22:10', '2016-03-25 14:12:51', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '庆春路三瑞大厦东面楚庆巷', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('62', '天纵少儿棋院—初级班', '20160318202319000034', '160000', '杭州市', '西湖区', '', '2016-03-18 20:23:19', '2016-03-25 14:12:10', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '文三西路香樟公寓香樟商贸楼', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('63', '天纵少儿棋院—初级班', '20160318202418000036', '160000', '杭州市', '下城区', '', '2016-03-18 20:24:18', '2016-03-25 14:12:25', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '三塘六塘公寓', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('64', '天纵少儿棋院—中级班', '20160318202551000038', '160000', '杭州市', '下城区', '', '2016-03-18 20:25:51', '2016-03-25 14:12:39', '02', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-09-01', '庆春路三瑞大厦东面楚庆巷3号一楼', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('65', '杜特篮球—年卡（每周2次）', '20160318202631000040', '598000', '杭州市', '滨江区', '', '2016-03-18 20:26:31', '2016-03-25 14:13:14', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '滨盛路4402号（彩虹城小区27栋地下体育馆）', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '598000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('66', '天纵少儿棋院—中级班', '20160318202653000042', '160000', '杭州市', '西湖区', '', '2016-03-18 20:26:53', '2016-03-25 14:13:34', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '文三西路香樟公寓香樟商贸楼205', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('67', '天纵少儿棋院—中级班', '20160318202753000044', '160000', '杭州市', '下城区', '', '2016-03-18 20:27:53', '2016-03-25 14:14:53', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '三塘六塘公寓', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('68', '杜特篮球—年卡（每周2次）', '20160318202834000046', '598000', '杭州市', '滨江区', '', '2016-03-18 20:28:34', '2016-03-25 14:14:41', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '信诚路与怀德交叉口康恩贝工厂对面群乐饭店旁', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '598000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('69', '天纵少儿棋院—高级班', '20160318202903000048', '160000', '杭州市', '下城区', '', '2016-03-18 20:29:03', '2016-03-25 14:14:27', '02', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-09-01', '庆春路三瑞大厦东面楚庆巷3号一楼', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('70', '天纵少儿棋院—高级班', '20160318203003000050', '160000', '杭州市', '西湖区', '', '2016-03-18 20:30:03', '2016-03-25 14:14:14', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '文三西路香樟公寓香樟商贸楼205', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('71', '杜特篮球—年卡（每周2次）', '20160318203013000052', '598000', '杭州市', '江干区', '', '2016-03-18 20:30:13', '2016-03-18 20:30:13', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '凯旋路268号浙江大学华家池校区逸夫体育馆旁', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '598000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('72', '天纵少儿棋院—高级班', '20160318203058000054', '160000', '杭州市', '下城区', '', '2016-03-18 20:30:58', '2016-03-25 14:13:57', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '三塘六塘公寓', '20', '2', '0', '', 'F', '4', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('73', '天纵少儿棋院—段位班', '20160318203212000056', '240000', '杭州市', '下城区', '', '2016-03-18 20:32:12', '2016-03-25 14:13:48', '02', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-09-01', '庆春路三瑞大厦东面楚庆巷3号一楼', '10', '2', '0', '', 'F', '4', '240000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('74', '杜特篮球—年卡（每周2次）', '20160318203234000058', '598000', '杭州市', '江干区', '', '2016-03-18 20:32:34', '2016-03-18 20:32:34', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '新塘路161号景芳五区公交站景芳中学', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '598000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('75', '天纵少儿棋院—段位班', '20160318203309000060', '240000', '杭州市', '西湖区', '', '2016-03-18 20:33:09', '2016-03-25 14:15:27', '02', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-09-01', '文三西路香樟公寓香樟商贸楼205', '10', '2', '0', '', 'F', '4', '240000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('76', '天纵少儿棋院—段位班', '20160318203405000062', '240000', '杭州市', '下城区', '', '2016-03-18 20:34:05', '2016-03-22 14:49:47', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '杭州三塘六塘公寓', '10', '2', '0', '', 'F', '4', '240000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('77', '杜特篮球—年卡（每周2次）', '20160318203426000064', '598000', '杭州市', '江干区', '', '2016-03-18 20:34:26', '2016-03-22 14:47:46', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '环丁路925号丁兰小学兰园小区', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '598000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('78', '天纵少儿棋院—1对2-4', '20160318203518000066', '200000', '杭州市', '下城区', '', '2016-03-18 20:35:18', '2016-03-25 14:16:39', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '庆春路三瑞大厦东面楚庆巷3号一楼', '10', '1', '0', '', 'F', '4', '200000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('79', '天纵少儿棋院—1对2-4', '20160318203614000068', '200000', '杭州市', '西湖区', '', '2016-03-18 20:36:14', '2016-03-25 14:16:12', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-10-01', '文三西路香樟公寓香樟商贸楼205', '10', '1', '0', '', 'F', '4', '200000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('80', '杜特篮球—年卡（每周2次）', '20160318203641000070', '498000', '杭州市', '余杭区', '', '2016-03-18 20:36:41', '2016-03-22 14:45:09', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '北沙东路5号世纪公园南门对面', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '498000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('81', '天纵少儿棋院—1对2-4', '20160318203711000072', '200000', '杭州市', '下城区', '', '2016-03-18 20:37:11', '2016-03-25 14:16:01', '02', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-09-01', '三塘六塘公寓', '10', '1', '0', '', 'F', '4', '200000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('82', '天纵少儿棋院—1对1', '20160318203809000074', '240000', '杭州市', '下城区', '', '2016-03-18 20:38:09', '2016-03-25 14:15:52', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '庆春路三瑞大厦东面楚庆巷3号一楼', '5', '1', '0', '', 'F', '4', '240000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('83', '杜特篮球—年卡（每周2次）', '20160318203848000076', '598000', '杭州市', '拱墅区', '', '2016-03-18 20:38:48', '2016-03-18 20:38:48', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '半山路半山杭钢健身中心', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共104节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：5节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '598000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('84', '天纵少儿棋院—1对1', '20160318203906000078', '240000', '杭州市', '西湖区', '', '2016-03-18 20:39:06', '2016-03-25 14:15:37', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '文三西路香樟公寓香樟商贸楼205', '5', '1', '0', '', 'F', '4', '240000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('85', '天纵少儿棋院—1对1', '20160318204000000080', '240000', '杭州市', '下城区', '', '2016-03-18 20:40:00', '2016-03-22 14:39:24', '00', '棋类', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-11-01', '三塘六塘公寓', '5', '1', '0', '', 'F', '4', '240000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('86', '杜特篮球—年卡（每周3次）', '20160318204108000082', '798000', '杭州市', '滨江区', '', '2016-03-18 20:41:08', '2016-03-23 09:37:23', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134333.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2017-08-01', '彩虹城小区27栋地下体育馆', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共156节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：8节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('87', '宏远体育-篮球-三次年卡156课时', '20160318204219000084', '998000', '杭州市', '滨江区', '', '2016-03-18 20:42:19', '2016-03-22 14:57:20', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-10-01', '2016-11-01', '威度运动中心  滨文路60号   杭州气象局附近', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-10-01', null);
INSERT INTO `t_course_info` VALUES ('88', '杜特篮球—年卡（每周3次）', '20160318204311000094', '798000', '杭州市', '滨江区', '', '2016-03-18 20:43:11', '2016-03-18 20:43:11', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134333.jpg?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '信诚路与怀德交叉口康恩贝工厂对面群乐饭店旁', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共156节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：8节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('89', '宏远体育-篮球-三次年卡156课时', '20160318204338000096', '998000', '杭州市', '下城区', '', '2016-03-18 20:43:38', '2016-03-22 14:36:57', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-10-01', '风帆中学', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('90', '宏远体育-篮球-三次年卡156课时', '20160318204450000106', '998000', '杭州市', '下城区', '', '2016-03-18 20:44:50', '2016-03-22 14:36:15', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-09-01', '风华中学', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('91', '杜特篮球—年卡（每周3次）', '20160318204503000116', '798000', '杭州市', '江干区', '', '2016-03-18 20:45:03', '2016-03-22 14:35:01', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134333.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '凯旋路268号浙江大学华家池校区逸夫体育馆旁', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共156节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：8节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('92', '宏远体育-篮球-三次年卡156课时', '20160318204615000118', '998000', '杭州市', '拱墅区', '', '2016-03-18 20:46:15', '2016-03-22 14:39:59', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-10-01', ' 北辰球馆', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('93', '杜特篮球—年卡（每周3次）', '20160318204644000128', '798000', '杭州市', '江干区', '', '2016-03-18 20:46:44', '2016-03-18 20:46:44', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134329.jpg?imageView/1/w/200&_=e451a2', '2016-05-01', '2017-05-01', '新塘路161号景芳五区公交站景芳中学', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共156节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：8节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('94', '宏远体育-篮球-三次年卡156课时', '20160318204747000130', '998000', '杭州市', '西湖区', '', '2016-03-18 20:47:47', '2016-03-25 14:17:27', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-10-01', '教工路一号数源科技球馆', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('95', '宏远体育-篮球-三次年卡156课时', '20160318204750000140', '998000', '杭州市', '西湖区', '', '2016-03-18 20:47:50', '2016-03-23 09:35:51', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-10-01', '2016-11-01', '教工路一号数源科技球馆', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-10-01', null);
INSERT INTO `t_course_info` VALUES ('96', '宏远体育-篮球-三次年卡156课时', '20160318204916000150', '998000', '杭州市', '西湖区', '', '2016-03-18 20:49:16', '2016-03-22 14:32:35', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-09-01', '浙江大学紫金港校区风雨篮球馆', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('97', '宏远体育-篮球-三次年卡156课时', '20160318205043000160', '998000', '杭州市', '上城区', '', '2016-03-18 20:50:43', '2016-03-22 14:32:15', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-10-01', '玉皇山路76号', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('98', '宏远体育-篮球-三次年卡156课时', '20160318205214000170', '998000', '杭州市', '江干区', '', '2016-03-18 20:52:14', '2016-03-22 14:31:20', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-10-01', '糖果盒俱乐部秋涛北路373号安琪儿灯具城对面', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('100', '杜特篮球—年卡（每周3次）', '20160318205336000190', '798000', '杭州市', '江干区', '', '2016-03-18 20:53:36', '2016-03-22 13:56:17', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134326.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '环丁路925号丁兰小学兰园小区', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共156节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：8节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('101', '宏远体育-篮球-三次年卡156课时', '20160318205437000192', '998000', '杭州市', '西湖区', '', '2016-03-18 20:54:37', '2016-03-22 14:24:52', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-08-01', '怀城体育', '20', '2', '0', '\"赠送：\r\n1.体能私教课3次\r\n2.物品赠送：篮球、双肩运动包\r\n3.请假赠送：12次单次一日课程的假（12次单次一日课程的假（12次单次一日课程的假最多可以顺延有效期为一个月）\"\r\n', 'F', '0', '998000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('102', '杜特篮球—年卡（每周3次）', '20160318205743000202', '798000', '杭州市', '余杭区', '', '2016-03-18 20:57:43', '2016-03-22 13:48:10', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134326.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-11-01', '北沙东路5号世纪公园南门对面', '20', '5', '0', '杜特体育篮球训练营致力于青少年全面体适能提高、训练特色篮球与私教体适能结合，全面科学打造青少年素质\r\n全年共156节课\r\n赠品：\r\n1.篮球、篮球队服  386元\r\n2.私教课：8节\r\n3.一年体验训练计划\r\n4.全年两次大型比赛，年底全国选拔赛', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('103', '下沙游泳私人教练', '20160318205843000204', '160000', '杭州市', '江干区', '', '2016-03-18 20:58:43', '2016-03-22 13:47:50', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-01-01', '浙江理工大学游泳馆（下沙）', '20', '1', '0', '一对一1600元、一对二1300元/人、一对三1100元/人、4-6人小班800元/人。（包教包会、中考生达到满分标准）\r\n教学内容：蛙泳，自由泳，仰泳，蝶泳。 招生对象：8-60岁所有人群、中考生。', 'F', '2', '160000', '120.1003593843', '30.3004909917', null, null, 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('104', '尚武跆拳道俱乐部-暑假健康卡', '20160318212756000566', '68000', '杭州市', '桐庐县', '', '2016-03-18 21:27:56', '2016-03-22 13:47:24', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-12-01', '迎春南路迎春小区2楼尚武跆拳道', '15', '5', '0', '0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '68000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('105', '尚武跆拳道俱乐部-暑假领袖卡', '20160318213345000568', '128000', '杭州市', '桐庐县', '', '2016-03-18 21:33:45', '2016-03-22 13:45:23', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-09-01', '2016-12-01', '迎春南路迎春小区2楼尚武跆拳道', '15', '5', '0', '1280元48课时\r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '128000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-09-01', null);
INSERT INTO `t_course_info` VALUES ('106', '尚武跆拳道俱乐部-春秋卡', '20160318213558000570', '178000', '杭州市', '桐庐县', '', '2016-03-18 21:35:58', '2016-03-22 13:46:21', '02', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '迎春南路迎春小区2楼尚武跆拳道', '15', '5', '0', '1780元52课时\r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '178000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('107', '尚武跆拳道俱乐部-年卡', '20160318213818000572', '428000', '杭州市', '桐庐县', '', '2016-03-18 21:38:18', '2016-03-19 10:17:48', '02', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2016-07-01', '迎春南路迎春小区2楼尚武跆拳道', '30', '5', '0', '4280元年卡192次课时\r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '428000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('108', '尚武跆拳道俱乐部-精英卡', '20160318214015000574', '688000', '杭州市', '桐庐县', '', '2016-03-18 21:40:15', '2016-03-22 13:44:59', '00', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2016-08-01', '迎春南路迎春小区2楼尚武跆拳道', '10', '2', '0', '6880元192课时\r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '688000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('109', '尚武跆拳道俱乐部-黑带卡', '20160318214222000576', '1880000', '杭州市', '桐庐县', '', '2016-03-18 21:42:22', '2016-03-19 10:01:03', '03', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2016-06-01', '迎春南路迎春小区2楼尚武跆拳道', '10', '2', '0', '黑带卡18800元/5年 \r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '1880000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('110', '尚武跆拳道俱乐部-私教课', '20160318214435000578', '200000', '杭州市', '桐庐县', '', '2016-03-18 21:44:35', '2016-03-22 13:40:48', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '迎春南路迎春小区2楼尚武跆拳道', '1', '1', '0', '私教卡2000元/10课时 \r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '0', '200000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('111', '尚武跆拳道俱乐部-高级私教卡', '20160318214646000580', '400000', '杭州市', '桐庐县', '', '2016-03-18 21:46:46', '2016-03-19 09:51:54', '03', '跆拳道', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2016-06-01', '迎春南路迎春小区2楼尚武跆拳道', '1', '1', '0', '高级私教卡4000元/10课时\r\n0到6岁的 早教期都主要以发展运动为主，什么学习都不会白学，特别是跆拳道，对于发展儿童智力水平，柔韧、灵敏素质，都是有很大好处的。儿童练跆拳道，提高身体协调、灵活度，长个，懂礼仪，性格培养修炼，勇于克服困难 的品质，增强自信，提高免疫力，遵守纪律，尊敬师长，为上学做很好的铺垫。儿童练跆拳道越早越好。，个子比同龄 的要高，身体壮但不胖，自立能力超强，动手能力，与人交流能力，都很强，练跆拳道后很少得病。', 'F', '3', '400000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('112', '游泳小分队一对二私教', '20160319104228000002', '110000', '杭州市', '西湖区', '', '2016-03-19 10:42:28', '2016-03-22 13:36:42', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aeed67g21v1262o1ipd1q3lnkp9.png', '2016-07-01', '2017-07-01', '体育场游泳馆', '2', '2', '0', '1100元10次课程', 'F', '2', '110000', '120.1003593843', '30.3004909917', '20160317164806000018', 'shupao2', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('113', '杭州传奇游泳俱乐部-成人私教', '20160319114120000005', '100000', '杭州市', '拱墅区', '', '2016-03-19 11:41:20', '2016-03-22 13:38:35', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aeed90n01pg91cvt2jduiqtvn9.png', '2016-06-01', '2017-06-01', '大关游泳馆 ', '2', '1', '0', '教练员都是全职，时间上很自由，可以根据您的时间安排，承诺包教包会，学会为止，所有教练均为国家一级运动员；二级运动员；三级运动员，所有教练都持有国家游泳技能证书上岗，高级游泳教练证书（红本）；中级游泳教练（蓝本）；初级游泳教练（绿本），所有教练都持有国家救生技能证书上岗：中级救生员。', 'F', '2', '100000', '120.1003593843', '30.3004909917', '20160317164806000018', 'shupao2', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('114', '杭州传奇游泳俱乐部-成人私教', '20160319114635000012', '100000', '杭州市', '下城区', '', '2016-03-19 11:46:35', '2016-03-22 13:39:02', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/)8QWXX(T)WEAD`X[MVQAJOE.png?imageView/1/w/200&_=e451a2', '2016-06-01', '2017-06-01', '白石巷125城北体育公园游泳馆 ', '2', '1', '0', '教练员都是全职，时间上很自由，可以根据您的时间安排，承诺包教包会，学会为止，所有教练均为国家一级运动员；二级运动员；三级运动员，所有教练都持有国家游泳技能证书上岗，高级游泳教练证书（红本）；中级游泳教练（蓝本）；初级游泳教练（绿本），所有教练都持有国家救生技能证书上岗：中级救生员。', 'F', '2', '100000', '120.1003593843', '30.3004909917', '20160317164806000018', 'shupao2', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('115', '杭州传奇游泳俱乐部-成人私教', '20160319115039000015', '100000', '杭州市', '下城区', '', '2016-03-19 11:50:39', '2016-03-22 13:40:30', '00', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/CE9083A8E077460C8A231146B793C063.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-07-01', '潮王路18号浙工大游泳馆', '2', '1', '0', '教练员都是全职，时间上很自由，可以根据您的时间安排，承诺包教包会，学会为止，所有教练均为国家一级运动员；二级运动员；三级运动员，所有教练都持有国家游泳技能证书上岗，高级游泳教练证书（红本）；中级游泳教练（蓝本）；初级游泳教练（绿本），所有教练都持有国家救生技能证书上岗：中级救生员。', 'F', '2', '100000', '120.1003593843', '30.3004909917', '20160317164806000018', 'shupao2', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('116', '杭州传奇游泳俱乐部—中考包过班', '20160319115644000017', '120000', '杭州市', '拱墅区', '', '2016-03-19 11:56:44', '2016-03-19 11:56:44', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/)8QWXX(T)WEAD`X[MVQAJOE.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2016-07-01', '大关游泳馆', '5', '1', '0', '教练员都是全职，时间上很自由，可以根据您的时间安排，承诺包教包会，学会为止，所有教练均为国家一级运动员；二级运动员；三级运动员，所有教练都持有国家游泳技能证书上岗，高级游泳教练证书（红本）；中级游泳教练（蓝本）；初级游泳教练（绿本），所有教练都持有国家救生技能证书上岗：中级救生员。', 'F', '2', '120000', '120.1003593843', '30.3004909917', '20160317164806000018', 'shupao2', 'T', null, null, '2016-05-01', null);
INSERT INTO `t_course_info` VALUES ('120', '杭州传奇游泳俱乐部—.暑假少儿班', '20160319141241000007', '110000', '杭州市', '拱墅区', '', '2016-03-19 14:12:41', '2016-03-19 14:12:41', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6ntgkvjoucv91ov4mq1hjj9.png', '2016-04-01', '2016-09-01', '大关游泳馆', '10', '5', '0', '教练员都是全职，时间上很自由，可以根据您的时间安排，承诺包教包会，学会为止，所有教练均为国家一级运动员；二级运动员；三级运动员，所有教练都持有国家游泳技能证书上岗，高级游泳教练证书（红本）；中级游泳教练（蓝本）；初级游泳教练（绿本），所有教练都持有国家救生技能证书上岗：中级救生员。', 'F', '2', '110000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-04-01', null);
INSERT INTO `t_course_info` VALUES ('121', '杭州尚动体育—游泳一对一', '20160319141940000009', '180000', '杭州市', '西湖区', '', '2016-03-19 14:19:40', '2016-03-22 12:02:23', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7pgea1ntnnlvbcu1pvk1deh9.jpg', '2016-06-01', '2017-06-01', '陈经纶少体校', '1', '1', '0', '师资力量：省级退役运动员、国家一级运动，持有中级社会指导员。从事游泳培训教育5年以上。和部分酒店培训机构有过合作。', 'F', '2', '180000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('122', '杭州尚动体育—游泳1对2', '20160319142204000011', '130000', '杭州市', '西湖区', '', '2016-03-19 14:22:04', '2016-03-22 12:01:27', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7nh2k1ar0qkuubo7n51eh9.jpg', '2016-06-01', '2017-06-01', '陈经纶少体校', '2', '2', '0', '1300/人10课时\r\n师资力量：省级退役运动员、国家一级运动，持有中级社会指导员。从事游泳培训教育5年以上。和部分酒店培训机构有过合作。', 'F', '2', '130000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('123', '杭州尚动体育—游泳1对3', '20160319142405000013', '100000', '杭州市', '西湖区', '', '2016-03-19 14:24:05', '2016-03-22 12:00:36', '02', '游泳', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7m45s17ur1nvl1atd15j0kn99.jpg', '2016-06-01', '2017-06-01', '陈经纶少体校', '3', '3', '0', '1000/人10课时\r\n师资力量：省级退役运动员、国家一级运动，持有中级社会指导员。从事游泳培训教育5年以上。和部分酒店培训机构有过合作。', 'F', '2', '100000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('124', '杭州尚动体育—游泳1对4以上', '20160319142722000015', '80000', '杭州市', '西湖区', '', '2016-03-19 14:27:22', '2016-03-22 11:55:54', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7bf12fr3o8e1nv16ef1rk99.jpg', '2016-06-01', '2017-06-01', '陈经纶少体校', '10', '4', '0', '一对四及以上：800/人10课时\r\n师资力量：省级退役运动员、国家一级运动，持有中级社会指导员。从事游泳培训教育5年以上。和部分酒店培训机构有过合作。', 'F', '0', '80000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-01', null);
INSERT INTO `t_course_info` VALUES ('125', '宏远体育-篮球每周2次年卡', '20160319144725000023', '798000', '杭州市', '上城区', '', '2016-03-19 14:47:25', '2016-03-22 14:23:35', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6psktl172cdn214qtgj5k0h9.jpg', '2016-07-01', '2017-07-01', '玉皇山路76号', '15', '6', '1', '双次年卡104课时\r\n赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-07-01', null);
INSERT INTO `t_course_info` VALUES ('126', '宏远体育-篮球双次年卡', '20160319144939000025', '798000', '杭州市', '江干区', '', '2016-03-19 14:49:39', '2016-03-22 14:23:15', '00', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6q1dga1c9bjmj37p19211v689.jpg', '2016-08-01', '2017-08-01', '糖果盒俱乐部', '15', '6', '0', '双次年卡104课时\r\n赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-08-01', null);
INSERT INTO `t_course_info` VALUES ('127', '宏远体育-篮球双次年卡', '20160319145247000027', '798000', '杭州市', '西湖区', '', '2016-03-19 14:52:47', '2016-03-22 14:22:47', '02', '篮球', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6q6qovd35utjtgv6cf14949.jpg', '2016-06-20', '2017-06-20', '金地自在城启菲会所', '20', '6', '0', '双次年卡104课时\r\n赠送：\r\n1.体能私教课2次\r\n2.物品赠送：篮球一个\r\n3.请假赠送：8次 单次一日课程的假（8次 单次一日 课程的假最多顺延有效期为一个月\r\n', 'F', '0', '798000', '120.1003593843', '30.3004909917', '20160310155410000001', 'shupao', 'T', null, null, '2016-06-20', null);

-- ----------------------------
-- Table structure for t_course_search
-- ----------------------------
DROP TABLE IF EXISTS `t_course_search`;
CREATE TABLE `t_course_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `titile` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_course_search
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_type
-- ----------------------------
DROP TABLE IF EXISTS `t_course_type`;
CREATE TABLE `t_course_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_type_code` char(20) DEFAULT NULL COMMENT '课程类型编码',
  `course_type_name` varchar(20) DEFAULT NULL COMMENT '课程类型名称',
  `deleted` varchar(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `course_type_title` varchar(50) DEFAULT NULL COMMENT '课程类型标题',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片唯一编码',
  `rank` int(11) DEFAULT NULL COMMENT '等级从0开始依次递增',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_type
-- ----------------------------
INSERT INTO `t_course_type` VALUES ('1', '8', '全部', 'F', '2016-03-04 10:12:58', '2016-03-04 10:13:01', '生命在于运动', 'http://course.yuedongke.com/allCourse@2x.png', '1000');
INSERT INTO `t_course_type` VALUES ('2', '9', '中考培训', 'F', '2016-03-04 10:08:05', '2016-03-04 10:08:08', '少年强则国强', 'http://course.yuedongke.com/youngCourse@2x.png', '999');
INSERT INTO `t_course_type` VALUES ('3', '0', '篮球', 'F', '2016-02-27 10:19:21', '2016-03-05 10:27:54', '你就是下一个科比布莱恩特', 'http://course.yuedongke.com/basketballCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('4', '1', '足球', 'F', '2016-02-27 10:19:21', '2016-03-05 10:27:57', '像梅西一样带球舞蹈', 'http://course.yuedongke.com/footballCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('5', '2', '游泳', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:00', '如鱼得水，其乐无穷', 'http://course.yuedongke.com/swimCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('6', '3', '跆拳道', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:02', '忍耐克己，百折不挠', 'http://course.yuedongke.com/tqdCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('7', '4', '棋类', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:05', '胜固欣然， 败亦可喜', 'http://course.yuedongke.com/chessCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('8', '5', '轮滑', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:11', '生命不息 轮滑不止', 'http://course.yuedongke.com/rollerSkatingCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('9', '6', '羽毛球', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:07', '让我的扣杀来的更猛烈些吧', 'http://course.yuedongke.com/yumaoCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('10', '7', '乒乓球', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:13', '感受国球的魅力', 'http://course.yuedongke.com/pingPangCourse@2x.png', '1');
INSERT INTO `t_course_type` VALUES ('100', '10', '其他', 'F', '2016-02-27 10:19:19', '2016-03-05 10:28:16', '', '20160415141742000005', '0');

-- ----------------------------
-- Table structure for t_dynamic_info
-- ----------------------------
DROP TABLE IF EXISTS `t_dynamic_info`;
CREATE TABLE `t_dynamic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `user_code` varchar(20) DEFAULT NULL,
  `institution_code` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '动态内容',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dynamic_info
-- ----------------------------
INSERT INTO `t_dynamic_info` VALUES ('1', '1', '20160310155410000001', '001', '跃动客', '2016-05-12 16:10:10', '2016-05-12 16:10:13', 'F');
INSERT INTO `t_dynamic_info` VALUES ('2', '2', '20160310155410000001', '001', '舒跑', '2016-05-26 11:40:12', '2016-05-26 11:40:10', 'F');
INSERT INTO `t_dynamic_info` VALUES ('3', '3', '20160310155410000001', '002', 'xx', '2016-05-26 11:40:40', '2016-05-26 11:40:38', 'F');
INSERT INTO `t_dynamic_info` VALUES ('4', '4', '20160310155410000001', '002', 'oo', '2016-05-26 11:40:55', '2016-05-26 11:40:57', 'F');

-- ----------------------------
-- Table structure for t_experience_course
-- ----------------------------
DROP TABLE IF EXISTS `t_experience_course`;
CREATE TABLE `t_experience_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(64) DEFAULT NULL COMMENT '课程名称',
  `course_code` char(20) DEFAULT NULL COMMENT '课程编码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(2) DEFAULT NULL COMMENT '课程状态',
  `course_type_code` varchar(20) DEFAULT NULL COMMENT '课程类型名称',
  `course_rank` int(32) DEFAULT NULL COMMENT '课程等级',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片编码',
  `begin_time` date DEFAULT NULL COMMENT '课程开始时间',
  `end_time` date DEFAULT NULL COMMENT '课程结束时间',
  `address` varchar(255) DEFAULT NULL COMMENT '上课地址',
  `course_time_detail` varchar(255) DEFAULT NULL COMMENT '具体上课时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '课程描述',
  `deleted` varchar(1) DEFAULT NULL,
  `publisher_code` varchar(20) DEFAULT NULL COMMENT '发布者编码',
  `publisher_name` varchar(20) DEFAULT NULL COMMENT '发布者姓名',
  `content` varchar(255) DEFAULT NULL,
  `course_type_name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL COMMENT '电话',
  `price` int(11) DEFAULT NULL COMMENT '原价',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `service_areas_name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_experience_course
-- ----------------------------
INSERT INTO `t_experience_course` VALUES ('5', '杰司特游泳培训', '20160318164450000011', '2016-03-18 16:44:50', '2016-03-24 11:54:00', '00', '2', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/YawVzFtfeQAAYnfD01sxdAAA&bo=WAKOAQAAAAABBPY!&rf=viewer_4.jpg?imageView/1/w/200&_=e451a2', '2016-07-01', '2017-01-01', '金城路333号加州阳光4楼', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '暑期游泳培训', 'F', null, null, null, '游泳', '110', '2000', '120.1003593843', '30.3004979917', '西湖区');
INSERT INTO `t_experience_course` VALUES ('6', '私人羽毛球培训班     羽毛球私教—1对3', '20160318165001000016', '2016-03-18 16:50:01', '2016-03-25 13:58:51', '00', '6', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005355860.jpg?imageView/1/w/200&_=e451a2', '2016-08-01', '2016-09-01', '竞舟路竞舟路文二西路交叉口', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', null, null, null, '羽毛球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('9', '私人羽毛球培训班   羽毛球私教—1对2', '20160318165759000019', '2016-03-18 16:57:59', '2016-03-25 13:59:09', '03', '6', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2015-10-01', '2015-11-01', '竞舟路竞舟路文二西路交叉口', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', null, null, null, '羽毛球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('10', ' 私人羽毛球培训班   羽毛球私教—1对3', '20160318170221000021', '2016-03-18 17:02:21', '2016-03-24 13:26:06', '03', '6', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2015-07-01', '2015-08-01', '大关游泳中心', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', null, null, null, '羽毛球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('11', '私人羽毛球培训班   羽毛球私教—1对2', '20160318170328000023', '2016-03-18 17:03:28', '2016-03-24 13:25:47', '03', '6', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2015-06-01', '2015-07-01', '大关游泳中心', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', null, null, null, '羽毛球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('12', '私人羽毛球培训班   羽毛球私教—1对1', '20160318170442000025', '2016-03-18 17:04:42', '2016-03-25 13:59:57', '03', '6', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2015-07-01', '2015-08-01', '竞舟路竞舟路文二西路交叉口', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', null, null, null, '羽毛球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('13', '私人羽毛球培训班   羽毛球私教—1对1', '20160318170551000027', '2016-03-18 17:05:51', '2016-03-24 13:34:18', '03', '6', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2015-06-01', '2015-07-01', '大关游泳中心', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '教学内容，羽毛球发球，挑球，高远球，吊球，以及羽毛球比赛规则，\r\n', 'F', null, null, null, '羽毛球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('14', '乒乓球成人儿童训练班-1对1', '20160318171114000001', '2016-03-18 17:11:15', '2016-03-24 13:21:43', '03', '7', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2015-05-01', '2015-06-01', '杭州市萧山区文化路266号', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '\"乒乓球（一次性缴费20次，免费送2节课，\r\n一次性缴费30次，免费送5节课）\"\r\n', 'F', null, null, null, '乒乓球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('15', '乒乓球成人儿童训练班-1对2', '20160318171532000007', '2016-03-18 17:15:32', '2016-03-25 14:01:08', '00', '7', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '文化路266号', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '\"乒乓球（一次性缴费20次，免费送2节课，\r\n一次性缴费30次，免费送5节课）\"\r\n', 'F', '20160318171353000006', 'zhangch', null, '乒乓球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('16', '乒乓球成人儿童训练班-1对4', '20160318171623000012', '2016-03-18 17:16:23', '2016-03-25 14:00:30', '00', '7', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-06-01', '2016-07-01', '文化路266号', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '\"乒乓球（一次性缴费20次，免费送2节课，\r\n一次性缴费30次，免费送5节课）\"\r\n', 'F', '20160318171353000006', 'zhangch', null, '乒乓球', null, null, '120.1003593843', '30.3004979917', null);
INSERT INTO `t_experience_course` VALUES ('17', '智道国际跆拳道学校', '20160318171833000017', '2016-03-18 17:18:33', '2016-03-24 13:11:18', '00', '3', '0', 'http://7xryps.com2.z0.glb.qiniucdn.com/27FB632984A858BB496F0B50451154B0.png?imageView/1/w/200&_=e451a2', '2016-05-01', '2016-06-01', '良渚十六街区12-4', '{\'周一\':[\'9:00\',\'10:00\'],\'周二\':[\'8:00\',\'11:00\'],\'周三\':[\'12:00\',\'13:00\'],\'周四\':[\'14:00\',\'15:00\'],\'周五\':[\'16:00\',\'17:00\'],\'周六\':[\'18:00\',\'19:00\'],\'周日\':[\'20:00\',\'21:00\']}', '跆拳道\r\n180元8节课\r\n', 'F', '20160318171353000006', 'zhangch', '跆拳道\r\n180元8节课\r\n', '跆拳道', '110', '2000', '120.1003593843', '30.3004979917', '西湖区');

-- ----------------------------
-- Table structure for t_img_info
-- ----------------------------
DROP TABLE IF EXISTS `t_img_info`;
CREATE TABLE `t_img_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `img_code` char(32) DEFAULT NULL COMMENT '图片唯一标示',
  `img_url` varchar(512) DEFAULT NULL COMMENT '图片地址',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL COMMENT '图片存储空间',
  `token` varchar(255) DEFAULT NULL,
  `ref_code` varchar(20) DEFAULT NULL COMMENT '所属对象编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_img_info
-- ----------------------------
INSERT INTO `t_img_info` VALUES ('1', '20160318143050000002', 'http://7xo774.com2.z0.glb.qiniucdn.com/856042124926607725.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 14:30:50', '2016-03-18 14:30:50', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('2', '20160318143339000004', 'http://7xryxb.com2.z0.glb.qiniucdn.com/QQ图片20160317172802.jpg', '2016-03-18 14:33:39', '2016-03-18 14:33:39', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('3', '20160318143715000006', 'http://7xryxb.com2.z0.glb.qiniucdn.com/QQ图片20160317172742.jpg', '2016-03-18 14:37:15', '2016-03-18 14:37:15', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('20', '20160318150342000018', 'http://7xryxb.com2.z0.glb.qiniucdn.com/627082421242089224.jpg', '2016-03-18 15:03:42', '2016-03-18 15:03:42', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('26', '20160318152539000006', 'http://7xryps.com2.z0.glb.qiniucdn.com/627082421242089224.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 15:25:39', '2016-03-18 15:25:39', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('27', '20160318152539000007', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1457674301867.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 15:25:39', '2016-03-18 15:25:39', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('31', '20160318153824000018', 'http://7xryxb.com2.z0.glb.qiniucdn.com/mmexport1457674301867.jpg', '2016-03-18 15:38:24', '2016-03-18 15:38:24', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('34', '20160318154316000024', 'http://7xryxb.com2.z0.glb.qiniucdn.com/s_Js_TAY0VkgC-H_uyPcjvisvYDC2pSj2jInjjPn9nF-ZKp0io4l_4hSCkbjxSweE5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 15:43:16', '2016-03-18 15:43:16', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('36', '20160318154629000028', 'http://7xryxb.com2.z0.glb.qiniucdn.com/H_qIe-qFksLprbTvWPNX9X30coYHGnL3ehh3-s0N4vdwi1k427V7JRiUPvRgs7j_E5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 15:46:29', '2016-03-18 15:46:29', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('37', '20160318155444000030', 'http://7xryxb.com2.z0.glb.qiniucdn.com/s_Js_TAY0VkgC-H_uyPcjvisvYDC2pSj2jInjjPn9nF-ZKp0io4l_4hSCkbjxSweE5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 15:54:44', '2016-03-18 15:54:44', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('38', '20160318155727000032', 'http://7xryxb.com2.z0.glb.qiniucdn.com/s_Js_TAY0VkgC-H_uyPcjvisvYDC2pSj2jInjjPn9nF-ZKp0io4l_4hSCkbjxSweE5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 15:57:27', '2016-03-18 15:57:27', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('39', '20160318155934000034', 'http://7xryxb.com2.z0.glb.qiniucdn.com/lI60Zr01wgrCAMl7SEdNjhI1vnLwbQeNV5p9h9jd1lu1HxH8OW85iFPae706-9vUE5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 15:59:34', '2016-03-18 15:59:34', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('40', '20160318160114000036', 'http://7xryxb.com2.z0.glb.qiniucdn.com/lI60Zr01wgrCAMl7SEdNjhI1vnLwbQeNV5p9h9jd1lu1HxH8OW85iFPae706-9vUE5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 16:01:14', '2016-03-18 16:01:14', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('41', '20160318160303000038', 'http://7xryxb.com2.z0.glb.qiniucdn.com/lI60Zr01wgrCAMl7SEdNjhI1vnLwbQeNV5p9h9jd1lu1HxH8OW85iFPae706-9vUE5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 16:03:03', '2016-03-18 16:03:03', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('42', '20160318160452000040', 'http://7xryxb.com2.z0.glb.qiniucdn.com/mfZnI7X9qhqY7ItZpd3hDODQ46Yg8jW2_VMYA4OtXv5DJdv7eAopGFsU2W_dSOj2E5YK5hWzfRAfFcOp2HVMLA.jpg', '2016-03-18 16:04:52', '2016-03-18 16:04:52', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('44', '20160318164450000012', 'http://7xryps.com2.z0.glb.qiniucdn.com/YawVzFtfeQAAYnfD01sxdAAA&bo=WAKOAQAAAAABBPY!&rf=viewer_4.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 16:44:50', '2016-03-18 16:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('46', '20160318164834000014', 'http://7xpwno.com2.z0.glb.qiniucdn.com/9_12_image.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 16:48:34', '2016-03-18 16:48:34', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('47', '20160318165001000017', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005355860.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 16:50:01', '2016-03-18 16:50:01', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('48', '20160318165001000018', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 16:50:01', '2016-03-18 16:50:01', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('51', '20160318165234000004', 'http://7xpwno.com2.z0.glb.qiniucdn.com/16_12_image.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 16:52:34', '2016-03-18 16:52:34', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('52', '20160318165307000007', 'http://7xryxb.com2.z0.glb.qiniucdn.com/17_12_32B61B2B-29DA-3091-B88A-5BB0A863AD35-airtake-original.jpg', '2016-03-18 16:53:07', '2016-03-18 16:53:07', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('54', '20160318165759000020', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 16:57:59', '2016-03-18 16:57:59', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('55', '20160318170221000022', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:02:21', '2016-03-18 17:02:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('56', '20160318170328000024', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:03:28', '2016-03-18 17:03:28', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('57', '20160318170442000026', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005365414.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:04:42', '2016-03-18 17:04:42', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('58', '20160318170551000028', 'http://7xryps.com2.z0.glb.qiniucdn.com/mmexport1458005371800.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:05:51', '2016-03-18 17:05:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('59', '20160318171114000002', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:11:14', '2016-03-18 17:11:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('60', '20160318171115000003', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班2.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:11:15', '2016-03-18 17:11:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('61', '20160318171115000004', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班3.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:11:15', '2016-03-18 17:11:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('62', '20160318171115000005', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班4.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:11:15', '2016-03-18 17:11:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('63', '20160318171532000008', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:15:32', '2016-03-18 17:15:32', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('64', '20160318171532000009', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班2.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:15:32', '2016-03-18 17:15:32', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('65', '20160318171532000010', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班3.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:15:32', '2016-03-18 17:15:32', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('66', '20160318171532000011', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班4.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:15:32', '2016-03-18 17:15:32', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('67', '20160318171623000013', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班 1 .jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:16:23', '2016-03-18 17:16:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('68', '20160318171623000014', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班2.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:16:23', '2016-03-18 17:16:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('69', '20160318171623000015', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班3.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:16:23', '2016-03-18 17:16:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('70', '20160318171623000016', 'http://7xryps.com2.z0.glb.qiniucdn.com/乒乓球成人儿童训练班4.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:16:23', '2016-03-18 17:16:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('71', '20160318171833000018', 'http://7xryps.com2.z0.glb.qiniucdn.com/27FB632984A858BB496F0B50451154B0.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:18:33', '2016-03-18 17:18:33', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('72', '20160318171833000019', 'http://7xryps.com2.z0.glb.qiniucdn.com/21084EAB369CE8A21484B4EAD7A99F53.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:18:33', '2016-03-18 17:18:33', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('73', '20160318171833000020', 'http://7xryps.com2.z0.glb.qiniucdn.com/C6B8B1874A500368A9B5DA73905E3478.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:18:33', '2016-03-18 17:18:33', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('74', '20160318171833000021', 'http://7xryps.com2.z0.glb.qiniucdn.com/CA118ED79BA3BC90B08EBEC0E64B362C.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:18:33', '2016-03-18 17:18:33', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('75', '20160318172927000024', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:29:27', '2016-03-18 17:29:27', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('78', '20160318172927000027', 'http://7xryps.com2.z0.glb.qiniucdn.com/EVIEV~L[1XZ$]W89ULO6~WA.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:29:27', '2016-03-18 17:29:27', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('79', '20160318172927000028', 'http://7xryps.com2.z0.glb.qiniucdn.com/MBWMN5NFF4ES3HXUEES2][5.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:29:27', '2016-03-18 17:29:27', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('80', '20160318173311000030', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:33:11', '2016-03-18 17:33:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('83', '20160318173311000033', 'http://7xryps.com2.z0.glb.qiniucdn.com/EVIEV~L[1XZ$]W89ULO6~WA.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:33:11', '2016-03-18 17:33:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('84', '20160318173311000034', 'http://7xryps.com2.z0.glb.qiniucdn.com/MBWMN5NFF4ES3HXUEES2][5.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:33:11', '2016-03-18 17:33:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('85', '20160318173829000036', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:38:29', '2016-03-18 17:38:29', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('88', '20160318173829000039', 'http://7xryps.com2.z0.glb.qiniucdn.com/EVIEV~L[1XZ$]W89ULO6~WA.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:38:29', '2016-03-18 17:38:29', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('89', '20160318173829000040', 'http://7xryps.com2.z0.glb.qiniucdn.com/MBWMN5NFF4ES3HXUEES2][5.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:38:29', '2016-03-18 17:38:29', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('90', '20160318174316000042', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:43:16', '2016-03-18 17:43:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('94', '20160318174316000046', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:43:16', '2016-03-18 17:43:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('95', '20160318174316000047', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:43:16', '2016-03-18 17:43:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('96', '20160318174316000048', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:43:16', '2016-03-18 17:43:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('97', '20160318174316000049', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:43:16', '2016-03-18 17:43:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('98', '20160318174316000050', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:43:16', '2016-03-18 17:43:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('99', '20160318174554000052', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('102', '20160318174554000055', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('103', '20160318174554000056', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('104', '20160318174554000057', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('105', '20160318174554000058', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('106', '20160318174554000059', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('107', '20160318174554000060', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:45:54', '2016-03-18 17:45:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('108', '20160318174751000062', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('111', '20160318174751000065', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('112', '20160318174751000066', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('113', '20160318174751000067', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('114', '20160318174751000068', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('115', '20160318174751000069', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('116', '20160318174751000070', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:47:51', '2016-03-18 17:47:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('117', '20160318174916000072', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('120', '20160318174916000075', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('121', '20160318174916000076', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('122', '20160318174916000077', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('123', '20160318174916000078', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('124', '20160318174916000079', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('125', '20160318174916000080', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:49:16', '2016-03-18 17:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('126', '20160318175034000082', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, '1');
INSERT INTO `t_img_info` VALUES ('129', '20160318175034000085', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, '');
INSERT INTO `t_img_info` VALUES ('130', '20160318175034000086', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, '3');
INSERT INTO `t_img_info` VALUES ('131', '20160318175034000087', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, '4');
INSERT INTO `t_img_info` VALUES ('132', '20160318175034000088', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('133', '20160318175034000089', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, '2');
INSERT INTO `t_img_info` VALUES ('134', '20160318175034000090', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:50:34', '2016-03-18 17:50:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('135', '20160318175208000092', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('138', '20160318175208000095', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('139', '20160318175208000096', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('140', '20160318175208000097', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('141', '20160318175208000098', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('142', '20160318175208000099', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('143', '20160318175208000100', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:52:08', '2016-03-18 17:52:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('144', '20160318175326000102', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('147', '20160318175326000105', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('148', '20160318175326000106', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('149', '20160318175326000107', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('150', '20160318175326000108', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('151', '20160318175326000109', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('152', '20160318175326000110', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:53:26', '2016-03-18 17:53:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('153', '20160318175514000112', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:55:14', '2016-03-18 17:55:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('154', '20160318175514000113', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:55:14', '2016-03-18 17:55:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('155', '20160318175514000114', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:55:14', '2016-03-18 17:55:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('156', '20160318175514000115', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:55:14', '2016-03-18 17:55:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('157', '20160318175514000116', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:55:14', '2016-03-18 17:55:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('158', '20160318175704000118', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('161', '20160318175704000121', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('162', '20160318175704000122', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('163', '20160318175704000123', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('164', '20160318175704000124', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('165', '20160318175704000125', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('166', '20160318175704000126', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:57:04', '2016-03-18 17:57:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('167', '20160318175831000128', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('168', '20160318175831000129', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('169', '20160318175831000130', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('170', '20160318175831000131', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('171', '20160318175831000132', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('172', '20160318175831000133', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('173', '20160318175831000134', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:58:31', '2016-03-18 17:58:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('174', '20160318175943000136', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('177', '20160318175943000139', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('178', '20160318175943000140', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('179', '20160318175943000141', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('180', '20160318175943000142', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('181', '20160318175943000143', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('182', '20160318175943000144', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 17:59:43', '2016-03-18 17:59:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('183', '20160318180114000146', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('186', '20160318180114000149', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('187', '20160318180114000150', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('188', '20160318180114000151', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('189', '20160318180114000152', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('190', '20160318180114000153', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('191', '20160318180114000154', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:01:14', '2016-03-18 18:01:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('192', '20160318180241000156', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:02:41', '2016-03-18 18:02:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('195', '20160318180241000159', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:02:41', '2016-03-18 18:02:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('196', '20160318180241000160', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:02:41', '2016-03-18 18:02:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('197', '20160318180241000161', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:02:41', '2016-03-18 18:02:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('198', '20160318180241000162', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:02:41', '2016-03-18 18:02:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('199', '20160318180241000163', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:02:41', '2016-03-18 18:02:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('200', '20160318180804000165', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('203', '20160318180804000168', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('204', '20160318180804000169', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('205', '20160318180804000170', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('206', '20160318180804000171', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('207', '20160318180804000172', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('208', '20160318180804000173', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:08:04', '2016-03-18 18:08:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('209', '20160318180938000175', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('210', '20160318180938000176', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('212', '20160318180938000178', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('213', '20160318180938000179', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('214', '20160318180938000180', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('215', '20160318180938000181', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('216', '20160318180938000182', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('217', '20160318180938000183', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 18:09:38', '2016-03-18 18:09:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('218', '20160318181808000185', 'http://7xryps.com2.z0.glb.qiniucdn.com/CE9083A8E077460C8A231146B793C063.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:18:08', '2016-03-18 18:18:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('221', '20160318185735000190', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:57:35', '2016-03-18 18:57:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('222', '20160318185735000191', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:57:35', '2016-03-18 18:57:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('223', '20160318185735000192', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:57:35', '2016-03-18 18:57:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('224', '20160318185844000194', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:58:44', '2016-03-18 18:58:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('225', '20160318185844000195', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 18:58:44', '2016-03-18 18:58:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('226', '20160318190034000197', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('227', '20160318190034000198', 'http://7xryps.com2.z0.glb.qiniucdn.com/322433680459016597.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('228', '20160318190034000199', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('229', '20160318190034000200', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('230', '20160318190034000201', 'http://7xryps.com2.z0.glb.qiniucdn.com/530978000254026836.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('231', '20160318190034000202', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('232', '20160318190034000203', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('233', '20160318190034000204', 'http://7xryps.com2.z0.glb.qiniucdn.com/915339293291038264.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:00:34', '2016-03-18 19:00:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('234', '20160318190200000206', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('235', '20160318190200000207', 'http://7xryps.com2.z0.glb.qiniucdn.com/322433680459016597.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('236', '20160318190200000208', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('237', '20160318190200000209', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('238', '20160318190200000210', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('239', '20160318190200000211', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('240', '20160318190200000212', 'http://7xryps.com2.z0.glb.qiniucdn.com/915339293291038264.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:00', '2016-03-18 19:02:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('241', '20160318190257000214', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('242', '20160318190257000215', 'http://7xryps.com2.z0.glb.qiniucdn.com/322433680459016597.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('243', '20160318190257000216', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('244', '20160318190257000217', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('245', '20160318190257000218', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('246', '20160318190257000219', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('247', '20160318190257000220', 'http://7xryps.com2.z0.glb.qiniucdn.com/915339293291038264.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:02:57', '2016-03-18 19:02:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('248', '20160318190352000222', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('249', '20160318190352000223', 'http://7xryps.com2.z0.glb.qiniucdn.com/322433680459016597.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('250', '20160318190352000224', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('251', '20160318190352000225', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('252', '20160318190352000226', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('253', '20160318190352000227', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('254', '20160318190352000228', 'http://7xryps.com2.z0.glb.qiniucdn.com/915339293291038264.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:03:52', '2016-03-18 19:03:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('255', '20160318190504000230', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('256', '20160318190504000231', 'http://7xryps.com2.z0.glb.qiniucdn.com/322433680459016597.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('257', '20160318190504000232', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('258', '20160318190504000233', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('259', '20160318190504000234', 'http://7xryps.com2.z0.glb.qiniucdn.com/530978000254026836.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('260', '20160318190504000235', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('261', '20160318190504000236', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('262', '20160318190504000237', 'http://7xryps.com2.z0.glb.qiniucdn.com/915339293291038264.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:04', '2016-03-18 19:05:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('263', '20160318190554000239', 'http://7xryps.com2.z0.glb.qiniucdn.com/319958519499062605.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('264', '20160318190554000240', 'http://7xryps.com2.z0.glb.qiniucdn.com/322433680459016597.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('265', '20160318190554000241', 'http://7xryps.com2.z0.glb.qiniucdn.com/399009456439236675.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('266', '20160318190554000242', 'http://7xryps.com2.z0.glb.qiniucdn.com/424544019311176568.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('267', '20160318190554000243', 'http://7xryps.com2.z0.glb.qiniucdn.com/672976086274071936.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('268', '20160318190554000244', 'http://7xryps.com2.z0.glb.qiniucdn.com/822120141204595870.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('269', '20160318190554000245', 'http://7xryps.com2.z0.glb.qiniucdn.com/915339293291038264.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:05:54', '2016-03-18 19:05:54', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('270', '20160318190751000247', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:07:51', '2016-03-18 19:07:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('272', '20160318190751000249', 'http://7xryps.com2.z0.glb.qiniucdn.com/6M@$2T`NUZHKVP%3XH}A7CB.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:07:51', '2016-03-18 19:07:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('273', '20160318190751000250', 'http://7xryps.com2.z0.glb.qiniucdn.com/EVIEV~L[1XZ$]W89ULO6~WA.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:07:51', '2016-03-18 19:07:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('274', '20160318190751000251', 'http://7xryps.com2.z0.glb.qiniucdn.com/MBWMN5NFF4ES3HXUEES2][5.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:07:51', '2016-03-18 19:07:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('275', '20160318190946000253', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:09:46', '2016-03-18 19:09:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('276', '20160318190946000254', 'http://7xryps.com2.z0.glb.qiniucdn.com/5P$ZIG[R[LY@IPCLY2WXI{8.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:09:46', '2016-03-18 19:09:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('277', '20160318190946000255', 'http://7xryps.com2.z0.glb.qiniucdn.com/6M@$2T`NUZHKVP%3XH}A7CB.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:09:46', '2016-03-18 19:09:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('278', '20160318190946000256', 'http://7xryps.com2.z0.glb.qiniucdn.com/EVIEV~L[1XZ$]W89ULO6~WA.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:09:46', '2016-03-18 19:09:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('279', '20160318190946000257', 'http://7xryps.com2.z0.glb.qiniucdn.com/MBWMN5NFF4ES3HXUEES2][5.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:09:46', '2016-03-18 19:09:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('280', '20160318191144000259', 'http://7xryps.com2.z0.glb.qiniucdn.com/(U9Z[NO@5KAXE{W6H2L$XMM.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:11:44', '2016-03-18 19:11:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('281', '20160318191144000260', 'http://7xryps.com2.z0.glb.qiniucdn.com/5P$ZIG[R[LY@IPCLY2WXI{8.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:11:44', '2016-03-18 19:11:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('282', '20160318191144000261', 'http://7xryps.com2.z0.glb.qiniucdn.com/EVIEV~L[1XZ$]W89ULO6~WA.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:11:44', '2016-03-18 19:11:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('283', '20160318191144000262', 'http://7xryps.com2.z0.glb.qiniucdn.com/MBWMN5NFF4ES3HXUEES2][5.png?imageView/1/w/200&_=e451a2', '2016-03-18 19:11:44', '2016-03-18 19:11:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('286', '20160318194018000003', 'http://source.yuedongke.com/debug_20160311171240000001&1458181282502', '2016-03-18 19:40:18', '2016-03-18 19:40:18', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('289', '20160318194718000010', 'http://7xryxb.com2.z0.glb.qiniucdn.com/585900868530265693.jpg', '2016-03-18 19:47:18', '2016-03-18 19:47:18', 'F', 'yuedongke-activity', null, null);
INSERT INTO `t_img_info` VALUES ('290', '20160318194902000006', 'http://source.yuedongke.com/debug_20160318194815000005&1458301732321', '2016-03-18 19:49:02', '2016-03-18 19:49:02', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('291', '20160318195559000013', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:55:59', '2016-03-18 19:55:59', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('292', '20160318195823000015', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 19:58:23', '2016-03-18 19:58:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('293', '20160318200157000017', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:01:57', '2016-03-18 20:01:57', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('294', '20160318200353000019', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:03:53', '2016-03-18 20:03:53', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('295', '20160318200552000021', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:05:52', '2016-03-18 20:05:52', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('296', '20160318201339000023', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:13:39', '2016-03-18 20:13:39', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('297', '20160318201713000025', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:17:13', '2016-03-18 20:17:13', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('298', '20160318201821000027', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134315.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:18:21', '2016-03-18 20:18:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('299', '20160318201846000029', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:18:46', '2016-03-18 20:18:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('300', '20160318202034000031', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:20:34', '2016-03-18 20:20:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('301', '20160318202210000033', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:22:10', '2016-03-18 20:22:10', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('302', '20160318202319000035', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:23:19', '2016-03-18 20:23:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('303', '20160318202418000037', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:24:18', '2016-03-18 20:24:18', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('304', '20160318202551000039', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:25:51', '2016-03-18 20:25:51', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('305', '20160318202631000041', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:26:31', '2016-03-18 20:26:31', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('306', '20160318202653000043', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:26:53', '2016-03-18 20:26:53', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('307', '20160318202753000045', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:27:53', '2016-03-18 20:27:53', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('308', '20160318202834000047', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:28:34', '2016-03-18 20:28:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('309', '20160318202903000049', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:29:03', '2016-03-18 20:29:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('310', '20160318203003000051', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:30:03', '2016-03-18 20:30:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('311', '20160318203013000053', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:30:13', '2016-03-18 20:30:13', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('312', '20160318203058000055', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:30:58', '2016-03-18 20:30:58', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('313', '20160318203212000057', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:32:12', '2016-03-18 20:32:12', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('314', '20160318203234000059', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:32:34', '2016-03-18 20:32:34', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('315', '20160318203309000061', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:33:09', '2016-03-18 20:33:09', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('316', '20160318203405000063', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:34:05', '2016-03-18 20:34:05', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('317', '20160318203426000065', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:34:26', '2016-03-18 20:34:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('318', '20160318203518000067', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:35:18', '2016-03-18 20:35:18', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('319', '20160318203614000069', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:36:14', '2016-03-18 20:36:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('320', '20160318203641000071', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:36:41', '2016-03-18 20:36:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('321', '20160318203711000073', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:37:11', '2016-03-18 20:37:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('322', '20160318203809000075', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:38:09', '2016-03-18 20:38:09', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('323', '20160318203848000077', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134318.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:38:48', '2016-03-18 20:38:48', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('324', '20160318203906000079', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:39:06', '2016-03-18 20:39:06', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('325', '20160318204000000081', 'http://7xryps.com2.z0.glb.qiniucdn.com/p1030370.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:40:00', '2016-03-18 20:40:00', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('326', '20160318204108000083', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134333.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:41:08', '2016-03-18 20:41:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('327', '20160318204219000085', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('328', '20160318204219000086', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('329', '20160318204219000087', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('330', '20160318204219000088', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('331', '20160318204219000089', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('332', '20160318204219000090', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('333', '20160318204219000091', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('334', '20160318204219000092', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('335', '20160318204219000093', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:42:19', '2016-03-18 20:42:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('336', '20160318204311000095', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134333.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:11', '2016-03-18 20:43:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('337', '20160318204338000097', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('338', '20160318204338000098', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('339', '20160318204338000099', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('340', '20160318204338000100', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('341', '20160318204338000101', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('342', '20160318204338000102', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('343', '20160318204338000103', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('344', '20160318204338000104', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('345', '20160318204338000105', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:43:38', '2016-03-18 20:43:38', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('346', '20160318204450000107', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('347', '20160318204450000108', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('348', '20160318204450000109', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('349', '20160318204450000110', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('350', '20160318204450000111', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('351', '20160318204450000112', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('352', '20160318204450000113', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('353', '20160318204450000114', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('354', '20160318204450000115', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:44:50', '2016-03-18 20:44:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('355', '20160318204503000117', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134333.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:45:03', '2016-03-18 20:45:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('356', '20160318204615000119', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('357', '20160318204615000120', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('358', '20160318204615000121', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('359', '20160318204615000122', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('360', '20160318204615000123', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('361', '20160318204615000124', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('362', '20160318204615000125', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('363', '20160318204615000126', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('364', '20160318204615000127', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:15', '2016-03-18 20:46:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('365', '20160318204644000129', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134329.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:46:44', '2016-03-18 20:46:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('366', '20160318204747000131', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('367', '20160318204747000132', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('368', '20160318204747000133', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('369', '20160318204747000134', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('370', '20160318204747000135', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('371', '20160318204747000136', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('372', '20160318204747000137', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('373', '20160318204747000138', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('374', '20160318204747000139', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:47', '2016-03-18 20:47:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('375', '20160318204750000141', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('376', '20160318204750000142', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('377', '20160318204750000143', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('378', '20160318204750000144', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('379', '20160318204750000145', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('380', '20160318204750000146', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('381', '20160318204750000147', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('382', '20160318204750000148', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('383', '20160318204750000149', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:47:50', '2016-03-18 20:47:50', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('384', '20160318204916000151', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('385', '20160318204916000152', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('386', '20160318204916000153', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('387', '20160318204916000154', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('388', '20160318204916000155', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('389', '20160318204916000156', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('390', '20160318204916000157', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('391', '20160318204916000158', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('392', '20160318204916000159', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:49:16', '2016-03-18 20:49:16', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('393', '20160318205043000161', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('394', '20160318205043000162', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('395', '20160318205043000163', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('396', '20160318205043000164', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('397', '20160318205043000165', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('398', '20160318205043000166', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('399', '20160318205043000167', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('400', '20160318205043000168', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('401', '20160318205043000169', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:50:43', '2016-03-18 20:50:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('402', '20160318205214000171', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('403', '20160318205214000172', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('404', '20160318205214000173', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('405', '20160318205214000174', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('406', '20160318205214000175', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('407', '20160318205214000176', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('408', '20160318205214000177', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('409', '20160318205214000178', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('410', '20160318205214000179', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:52:14', '2016-03-18 20:52:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('411', '20160318205325000181', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('412', '20160318205325000182', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('413', '20160318205325000183', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('414', '20160318205325000184', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('415', '20160318205325000185', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('416', '20160318205325000186', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('417', '20160318205325000187', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('418', '20160318205325000188', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('419', '20160318205325000189', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:25', '2016-03-18 20:53:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('420', '20160318205336000191', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134326.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:53:36', '2016-03-18 20:53:36', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('421', '20160318205437000193', 'http://7xryps.com2.z0.glb.qiniucdn.com/@`V{)78~0U~9(O6E8KRZIJW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('422', '20160318205437000194', 'http://7xryps.com2.z0.glb.qiniucdn.com/[XXP%5}(4T6H}KO2Q1Z_0Q3.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('423', '20160318205437000195', 'http://7xryps.com2.z0.glb.qiniucdn.com/}[2[[YP_%A})D)8{9CW9%J1.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('424', '20160318205437000196', 'http://7xryps.com2.z0.glb.qiniucdn.com/~0R3JR]6OHU{GXOS2]25FCP.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('425', '20160318205437000197', 'http://7xryps.com2.z0.glb.qiniucdn.com/7@S9J2V(5)JQYW}OR6_EH(B.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('426', '20160318205437000198', 'http://7xryps.com2.z0.glb.qiniucdn.com/311664299475455401.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('427', '20160318205437000199', 'http://7xryps.com2.z0.glb.qiniucdn.com/JY2BN2[(MRVXHMJ8EFM]DII.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('428', '20160318205437000200', 'http://7xryps.com2.z0.glb.qiniucdn.com/L0$7WW)SOZ7_YOZO@2KDMSW.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('429', '20160318205437000201', 'http://7xryps.com2.z0.glb.qiniucdn.com/Y)3_{)NEN7YREU`Y{9GEZYC.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:54:37', '2016-03-18 20:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('430', '20160318205743000203', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160311134326.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 20:57:43', '2016-03-18 20:57:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('431', '20160318205843000205', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 20:58:43', '2016-03-18 20:58:43', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('432', '20160318210206000207', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:06', '2016-03-18 21:02:06', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('433', '20160318210212000209', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:12', '2016-03-18 21:02:12', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('434', '20160318210215000211', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:15', '2016-03-18 21:02:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('435', '20160318210215000213', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:15', '2016-03-18 21:02:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('436', '20160318210215000215', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:15', '2016-03-18 21:02:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('437', '20160318210229000217', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:29', '2016-03-18 21:02:29', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('438', '20160318210230000219', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:30', '2016-03-18 21:02:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('439', '20160318210230000221', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:02:30', '2016-03-18 21:02:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('440', '20160318210404000223', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:04', '2016-03-18 21:04:04', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('441', '20160318210407000225', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:07', '2016-03-18 21:04:07', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('442', '20160318210407000227', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:07', '2016-03-18 21:04:07', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('443', '20160318210407000229', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:07', '2016-03-18 21:04:07', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('444', '20160318210407000231', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:07', '2016-03-18 21:04:07', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('445', '20160318210414000233', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:14', '2016-03-18 21:04:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('446', '20160318210414000235', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:14', '2016-03-18 21:04:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('447', '20160318210414000237', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:14', '2016-03-18 21:04:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('448', '20160318210414000239', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:14', '2016-03-18 21:04:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('449', '20160318210415000241', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:04:15', '2016-03-18 21:04:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('450', '20160318210602000243', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:02', '2016-03-18 21:06:02', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('451', '20160318210603000245', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:03', '2016-03-18 21:06:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('452', '20160318210603000247', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:03', '2016-03-18 21:06:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('453', '20160318210603000249', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:03', '2016-03-18 21:06:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('454', '20160318210603000251', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:03', '2016-03-18 21:06:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('455', '20160318210603000253', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:03', '2016-03-18 21:06:03', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('456', '20160318210608000255', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:08', '2016-03-18 21:06:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('457', '20160318210608000257', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:06:08', '2016-03-18 21:06:08', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('458', '20160318210710000259', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:10', '2016-03-18 21:07:10', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('459', '20160318210711000261', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:11', '2016-03-18 21:07:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('460', '20160318210711000263', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:11', '2016-03-18 21:07:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('461', '20160318210711000265', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:11', '2016-03-18 21:07:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('462', '20160318210711000267', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:11', '2016-03-18 21:07:11', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('463', '20160318210712000269', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:12', '2016-03-18 21:07:12', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('464', '20160318210713000271', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:13', '2016-03-18 21:07:13', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('465', '20160318210713000273', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:13', '2016-03-18 21:07:13', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('466', '20160318210713000275', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:13', '2016-03-18 21:07:13', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('467', '20160318210713000277', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:13', '2016-03-18 21:07:13', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('468', '20160318210714000279', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:14', '2016-03-18 21:07:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('469', '20160318210714000281', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:14', '2016-03-18 21:07:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('470', '20160318210714000283', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:14', '2016-03-18 21:07:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('471', '20160318210714000285', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:14', '2016-03-18 21:07:14', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('472', '20160318210715000287', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:15', '2016-03-18 21:07:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('473', '20160318210715000289', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:15', '2016-03-18 21:07:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('474', '20160318210715000291', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:15', '2016-03-18 21:07:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('475', '20160318210715000293', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:15', '2016-03-18 21:07:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('476', '20160318210721000295', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:21', '2016-03-18 21:07:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('477', '20160318210721000297', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:21', '2016-03-18 21:07:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('478', '20160318210721000299', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:21', '2016-03-18 21:07:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('479', '20160318210721000301', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:21', '2016-03-18 21:07:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('480', '20160318210721000303', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:21', '2016-03-18 21:07:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('481', '20160318210721000305', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:21', '2016-03-18 21:07:21', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('482', '20160318210722000307', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:22', '2016-03-18 21:07:22', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('483', '20160318210722000309', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:22', '2016-03-18 21:07:22', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('484', '20160318210739000311', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:39', '2016-03-18 21:07:39', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('485', '20160318210740000313', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:40', '2016-03-18 21:07:40', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('486', '20160318210740000315', 'http://7xryps.com2.z0.glb.qiniucdn.com/L04HWZLIAX]TFOR1$]3KHGB.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:07:40', '2016-03-18 21:07:40', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('488', '20160318211119000319', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('489', '20160318211119000320', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('490', '20160318211119000321', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('491', '20160318211119000322', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('492', '20160318211119000323', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('493', '20160318211119000324', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('494', '20160318211119000325', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('495', '20160318211119000326', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('496', '20160318211119000327', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('497', '20160318211119000328', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:19', '2016-03-18 21:11:19', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('498', '20160318211123000330', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('499', '20160318211123000331', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('500', '20160318211123000332', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('501', '20160318211123000333', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('502', '20160318211123000334', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('503', '20160318211123000335', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('504', '20160318211123000336', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('505', '20160318211123000337', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('506', '20160318211123000338', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('507', '20160318211123000339', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('508', '20160318211123000341', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('509', '20160318211123000342', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('510', '20160318211123000343', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('511', '20160318211123000344', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('512', '20160318211123000345', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('513', '20160318211123000346', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('514', '20160318211123000347', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('515', '20160318211123000348', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('516', '20160318211123000349', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('517', '20160318211123000350', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('518', '20160318211123000352', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('519', '20160318211123000353', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('520', '20160318211123000354', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('521', '20160318211123000355', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('522', '20160318211123000356', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('523', '20160318211123000357', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('524', '20160318211123000358', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('525', '20160318211123000359', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('526', '20160318211123000360', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('527', '20160318211123000361', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('528', '20160318211123000363', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('529', '20160318211123000364', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('530', '20160318211123000365', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('531', '20160318211123000366', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('532', '20160318211123000367', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('533', '20160318211123000368', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('534', '20160318211123000369', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('535', '20160318211123000370', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('536', '20160318211123000371', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('537', '20160318211123000372', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('538', '20160318211123000374', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('539', '20160318211123000375', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('540', '20160318211123000376', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('541', '20160318211123000377', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('542', '20160318211123000378', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('543', '20160318211123000379', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('544', '20160318211123000380', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('545', '20160318211123000381', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('546', '20160318211123000382', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('547', '20160318211123000383', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('548', '20160318211123000385', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('549', '20160318211123000386', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:23', '2016-03-18 21:11:23', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('550', '20160318211124000387', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('551', '20160318211124000388', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('552', '20160318211124000389', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('553', '20160318211124000390', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('554', '20160318211124000391', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('555', '20160318211124000392', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('556', '20160318211124000393', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('557', '20160318211124000394', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('558', '20160318211124000396', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('559', '20160318211124000397', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('560', '20160318211124000398', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('561', '20160318211124000399', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('562', '20160318211124000400', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('563', '20160318211124000401', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('564', '20160318211124000402', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('565', '20160318211124000403', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('566', '20160318211124000404', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('567', '20160318211124000405', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('568', '20160318211124000407', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('569', '20160318211124000408', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('570', '20160318211124000409', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('571', '20160318211124000410', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('572', '20160318211124000411', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('573', '20160318211124000412', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('574', '20160318211124000413', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('575', '20160318211124000414', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('576', '20160318211124000415', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('577', '20160318211124000416', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('578', '20160318211124000418', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('579', '20160318211124000419', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('580', '20160318211124000420', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('581', '20160318211124000421', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('582', '20160318211124000422', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('583', '20160318211124000423', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('584', '20160318211124000424', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('585', '20160318211124000425', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('586', '20160318211124000426', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('587', '20160318211124000427', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('588', '20160318211124000429', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('589', '20160318211124000430', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('590', '20160318211124000431', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('591', '20160318211124000432', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('592', '20160318211124000433', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('593', '20160318211124000434', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('594', '20160318211124000435', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('595', '20160318211124000436', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('596', '20160318211124000437', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('597', '20160318211124000438', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('598', '20160318211124000440', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('599', '20160318211124000441', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('600', '20160318211124000442', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('601', '20160318211124000443', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('602', '20160318211124000444', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('603', '20160318211124000445', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('604', '20160318211124000446', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('605', '20160318211124000447', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('606', '20160318211124000448', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('607', '20160318211124000449', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('608', '20160318211124000451', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('609', '20160318211124000452', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('610', '20160318211124000453', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('611', '20160318211124000454', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('612', '20160318211124000455', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('613', '20160318211124000456', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('614', '20160318211124000457', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('615', '20160318211124000458', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('616', '20160318211124000459', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('617', '20160318211124000460', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:24', '2016-03-18 21:11:24', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('618', '20160318211125000462', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('619', '20160318211125000463', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('620', '20160318211125000464', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('621', '20160318211125000465', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('622', '20160318211125000466', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('623', '20160318211125000467', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('624', '20160318211125000468', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('625', '20160318211125000469', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('626', '20160318211125000470', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('627', '20160318211125000471', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('628', '20160318211125000473', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('629', '20160318211125000474', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('630', '20160318211125000475', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('631', '20160318211125000476', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('632', '20160318211125000477', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('633', '20160318211125000478', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('634', '20160318211125000479', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('635', '20160318211125000480', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('636', '20160318211125000481', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('637', '20160318211125000482', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('638', '20160318211125000484', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('639', '20160318211125000485', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('640', '20160318211125000486', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('641', '20160318211125000487', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('642', '20160318211125000488', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('643', '20160318211125000489', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('644', '20160318211125000490', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('645', '20160318211125000491', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('646', '20160318211125000492', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('647', '20160318211125000493', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('648', '20160318211125000495', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('649', '20160318211125000496', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('650', '20160318211125000497', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('651', '20160318211125000498', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('652', '20160318211125000499', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('653', '20160318211125000500', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('654', '20160318211125000501', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('655', '20160318211125000502', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('656', '20160318211125000503', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('657', '20160318211125000504', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('658', '20160318211125000506', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('659', '20160318211125000507', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('660', '20160318211125000508', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('661', '20160318211125000509', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('662', '20160318211125000510', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('663', '20160318211125000511', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('664', '20160318211125000512', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('665', '20160318211125000513', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('666', '20160318211125000514', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('667', '20160318211125000515', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('668', '20160318211125000517', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('669', '20160318211125000518', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('670', '20160318211125000519', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('671', '20160318211125000520', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('672', '20160318211125000521', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('673', '20160318211125000522', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('674', '20160318211125000523', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('675', '20160318211125000524', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('676', '20160318211125000525', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('677', '20160318211125000526', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:25', '2016-03-18 21:11:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('678', '20160318211130000528', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('679', '20160318211130000529', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('680', '20160318211130000530', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('681', '20160318211130000531', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('682', '20160318211130000532', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('683', '20160318211130000533', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('684', '20160318211130000534', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('685', '20160318211130000535', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('686', '20160318211130000536', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('687', '20160318211130000537', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('688', '20160318211130000539', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('689', '20160318211130000540', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('690', '20160318211130000541', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('691', '20160318211130000542', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('692', '20160318211130000543', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('693', '20160318211130000544', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('694', '20160318211130000545', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('695', '20160318211130000546', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('696', '20160318211130000547', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('697', '20160318211130000548', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('698', '20160318211130000550', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('699', '20160318211130000551', 'http://7xryps.com2.z0.glb.qiniucdn.com/]8JO~GD}R]G}7$$QO`5ZFDX.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('700', '20160318211130000552', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('701', '20160318211130000553', 'http://7xryps.com2.z0.glb.qiniucdn.com/8GHL86BNI@MH2BTQ41VMR$2.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('702', '20160318211130000554', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('703', '20160318211130000555', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('704', '20160318211130000556', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('705', '20160318211130000557', 'http://7xryps.com2.z0.glb.qiniucdn.com/P%C}2N2H5EN25ZRAYNYE`{Q.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('706', '20160318211130000558', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('707', '20160318211130000559', 'http://7xryps.com2.z0.glb.qiniucdn.com/SNRV~WI7`RIE~`T0H%FEAI3.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:11:30', '2016-03-18 21:11:30', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('711', '20160318212756000567', 'http://7xryps.com2.z0.glb.qiniucdn.com/QQ图片20160317172007.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:27:56', '2016-03-18 21:27:56', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('712', '20160318213345000569', 'http://7xryps.com2.z0.glb.qiniucdn.com/37[4ZJU]F]B(IO6PZL8R$62.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:33:45', '2016-03-18 21:33:45', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('713', '20160318213558000571', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:35:58', '2016-03-18 21:35:58', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('714', '20160318213818000573', 'http://7xryps.com2.z0.glb.qiniucdn.com/L2B[Q9]SEGPDH(D@AG57EPF.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:38:18', '2016-03-18 21:38:18', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('715', '20160318214015000575', 'http://7xryps.com2.z0.glb.qiniucdn.com/5488792C3A954BA08FC29E15B6E41790.jpg?imageView/1/w/200&_=e451a2', '2016-03-18 21:40:15', '2016-03-18 21:40:15', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('716', '20160318214222000577', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:42:22', '2016-03-18 21:42:22', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('717', '20160318214435000579', 'http://7xryps.com2.z0.glb.qiniucdn.com/]HLX3[W1YD88RNVI15R([`M.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:44:35', '2016-03-18 21:44:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('718', '20160318214646000581', 'http://7xryps.com2.z0.glb.qiniucdn.com/(EWL6CH54XTO7P(V82~RU6W.png?imageView/1/w/200&_=e451a2', '2016-03-18 21:46:46', '2016-03-18 21:46:46', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('719', '20160318225109000011', 'http://source.yuedongke.com/yuedongke20160318225024000009', '2016-03-18 22:51:09', '2016-03-18 22:51:09', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('720', '20160319094429000583', 'http://7xo774.com2.z0.glb.qiniucdn.com/9_12_image.jpg?imageView/1/w/200&_=e451a2', '2016-03-19 09:44:29', '2016-03-19 09:45:25', 'F', null, null, null);
INSERT INTO `t_img_info` VALUES ('721', '20160319100735000017', 'http://source.yuedongke.com/yuedongke20160319100603000015', '2016-03-19 10:07:35', '2016-03-19 10:07:35', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('722', '20160319104228000003', 'http://7xryps.com2.z0.glb.qiniucdn.com/5P$ZIG[R[LY@IPCLY2WXI{8.png?imageView/1/w/200&_=e451a2', '2016-03-19 10:42:28', '2016-03-19 10:42:28', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('723', '20160319104228000004', 'http://7xryps.com2.z0.glb.qiniucdn.com/5P$ZIG[R[LY@IPCLY2WXI{8.png?imageView/1/w/200&_=e451a2', '2016-03-19 10:42:28', '2016-03-19 10:42:28', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('724', '20160319114120000006', 'http://7xryps.com2.z0.glb.qiniucdn.com/HVA66YY88K@MMD~%VPT8[RJ.png?imageView/1/w/200&_=e451a2', '2016-03-19 11:41:20', '2016-03-19 11:41:20', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('725', '20160319114120000007', 'http://7xryps.com2.z0.glb.qiniucdn.com/HVA66YY88K@MMD~%VPT8[RJ.png?imageView/1/w/200&_=e451a2', '2016-03-19 11:41:20', '2016-03-19 11:41:20', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('730', '20160319114635000013', 'http://7xryps.com2.z0.glb.qiniucdn.com/)8QWXX(T)WEAD`X[MVQAJOE.png?imageView/1/w/200&_=e451a2', '2016-03-19 11:46:35', '2016-03-19 11:46:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('731', '20160319114635000014', 'http://7xryps.com2.z0.glb.qiniucdn.com/WZ9GJ9JPY78G}{~(FDE[~IJ.png?imageView/1/w/200&_=e451a2', '2016-03-19 11:46:35', '2016-03-19 11:46:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('732', '20160319115039000016', 'http://7xryps.com2.z0.glb.qiniucdn.com/CE9083A8E077460C8A231146B793C063.jpg?imageView/1/w/200&_=e451a2', '2016-03-19 11:50:39', '2016-03-19 11:50:39', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('733', '20160319115644000018', 'http://7xryps.com2.z0.glb.qiniucdn.com/)8QWXX(T)WEAD`X[MVQAJOE.png?imageView/1/w/200&_=e451a2', '2016-03-19 11:56:44', '2016-03-19 11:56:44', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('734', '20160319131636000015', 'http://7xo774.com2.z0.glb.qiniucdn.com/o_1ae6koo2l1aoi1f8k1pd71khj1ic5l.png', '2016-03-19 13:16:36', '2016-03-22 11:01:05', 'F', null, null, null);
INSERT INTO `t_img_info` VALUES ('735', '20160319131835000030', 'http://7xo774.com2.z0.glb.qiniucdn.com/o_1ae6ksc0281pvc8aad1rsuutel.png', '2016-03-19 13:18:35', '2016-03-19 17:46:27', 'F', null, null, null);
INSERT INTO `t_img_info` VALUES ('736', '20160319131845000032', 'http://7xo774.com2.z0.glb.qiniucdn.com/o_1ae6kskahs97oa9a7dvkq13bel.png', '2016-03-19 13:18:45', '2016-03-21 11:57:23', 'F', null, null, null);
INSERT INTO `t_img_info` VALUES ('741', '20160319141241000008', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6ntgkvjoucv91ov4mq1hjj9.png', '2016-03-19 14:12:41', '2016-03-19 14:12:41', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('746', '20160319144725000024', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6psktl172cdn214qtgj5k0h9.jpg', '2016-03-19 14:47:25', '2016-03-19 14:47:25', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('747', '20160319144939000026', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6q1dga1c9bjmj37p19211v689.jpg', '2016-03-19 14:49:39', '2016-03-19 14:49:39', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('748', '20160319145247000028', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1ae6q6qovd35utjtgv6cf14949.jpg', '2016-03-19 14:52:47', '2016-03-19 14:52:47', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('750', '20160319170700000007', 'http://source.yuedongke.com/debug_20160319163617000002&1458378416442', '2016-03-19 17:07:00', '2016-03-19 17:07:00', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('751', '20160319173030000002', 'http://source.yuedongke.com/debug_20160319163617000002&1458378416442', '2016-03-19 17:30:30', '2016-03-19 17:30:30', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('755', '20160322095145000004', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee0adv3126ali6mtlgvg1qiq9.jpg', '2016-03-22 09:51:45', '2016-03-22 09:51:45', 'F', 'yuedongke-activity', 'o_1aee0adv3126ali6mtlgvg1qiq9.jpg', null);
INSERT INTO `t_img_info` VALUES ('764', '20160322101132000013', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1elj8k3ndpb134tq531blo9.jpg', '2016-03-22 10:11:32', '2016-03-22 10:11:32', 'F', 'yuedongke-activity', 'o_1aee1elj8k3ndpb134tq531blo9.jpg', null);
INSERT INTO `t_img_info` VALUES ('765', '20160322101455000014', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1krmu1p4obbo163khip4t9.jpg', '2016-03-22 10:14:55', '2016-03-22 10:14:55', 'F', 'yuedongke-activity', 'o_1aee1krmu1p4obbo163khip4t9.jpg', null);
INSERT INTO `t_img_info` VALUES ('766', '20160322101548000015', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1mhden48b7713lmq7sasa9.jpg', '2016-03-22 10:15:48', '2016-03-22 10:15:48', 'F', 'yuedongke-activity', 'o_1aee1mhden48b7713lmq7sasa9.jpg', null);
INSERT INTO `t_img_info` VALUES ('767', '20160322101619000016', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1ndri1qsi17ua9cr1dkf1n1n9.jpg', '2016-03-22 10:16:19', '2016-03-22 10:16:19', 'F', 'yuedongke-activity', 'o_1aee1ndri1qsi17ua9cr1dkf1n1n9.jpg', null);
INSERT INTO `t_img_info` VALUES ('768', '20160322101802000017', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1qi8ldqv1ojrgl1oak48o9.jpg', '2016-03-22 10:18:02', '2016-03-22 10:18:02', 'F', 'yuedongke-activity', 'o_1aee1qi8ldqv1ojrgl1oak48o9.jpg', null);
INSERT INTO `t_img_info` VALUES ('769', '20160322102001000018', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1t4fnt841dk6u1j1ih09v9.jpg', '2016-03-22 10:20:01', '2016-03-22 10:20:01', 'F', 'yuedongke-activity', 'o_1aee1t4fnt841dk6u1j1ih09v9.jpg', null);
INSERT INTO `t_img_info` VALUES ('770', '20160322102055000019', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1voev1lvr1gmn11ra7l163g9.jpg', '2016-03-22 10:20:55', '2016-03-22 10:20:55', 'F', 'yuedongke-activity', 'o_1aee1voev1lvr1gmn11ra7l163g9.jpg', null);
INSERT INTO `t_img_info` VALUES ('771', '20160322102119000020', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee20joi1m4r1pcr134v9bss359.jpg', '2016-03-22 10:21:19', '2016-03-22 10:21:19', 'F', 'yuedongke-activity', 'o_1aee20joi1m4r1pcr134v9bss359.jpg', null);
INSERT INTO `t_img_info` VALUES ('772', '20160322102147000021', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee21elv1vl81bno12ocvdp1gdu9.jpg', '2016-03-22 10:21:47', '2016-03-22 10:21:47', 'F', 'yuedongke-activity', 'o_1aee21elv1vl81bno12ocvdp1gdu9.jpg', null);
INSERT INTO `t_img_info` VALUES ('774', '20160322102253000023', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee23gvd1h6phqj13ehruq68u9.jpg', '2016-03-22 10:22:53', '2016-03-22 10:22:53', 'F', 'yuedongke-activity', 'o_1aee23gvd1h6phqj13ehruq68u9.jpg', null);
INSERT INTO `t_img_info` VALUES ('775', '20160322102414000024', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee25lp01lb811pru0f70k1acv9.jpg', '2016-03-22 10:24:14', '2016-03-22 10:24:14', 'F', 'yuedongke-activity', 'o_1aee25lp01lb811pru0f70k1acv9.jpg', null);
INSERT INTO `t_img_info` VALUES ('776', '20160322102522000025', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee27t0u1mt11nqm1ved17vk1voo9.jpg', '2016-03-22 10:25:22', '2016-03-22 10:25:22', 'F', 'yuedongke-activity', 'o_1aee27t0u1mt11nqm1ved17vk1voo9.jpg', null);
INSERT INTO `t_img_info` VALUES ('777', '20160322103534000026', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee29mcd1q9u19071qsq1itp19ls9.png', '2016-03-22 10:35:34', '2016-03-22 10:35:34', 'F', 'yuedongke-activity', 'o_1aee29mcd1q9u19071qsq1itp19ls9.png', null);
INSERT INTO `t_img_info` VALUES ('778', '20160322103730000027', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee2u8m986hsttshs1p0c1ao29.jpg', '2016-03-22 10:37:30', '2016-03-22 10:37:30', 'F', 'yuedongke-activity', 'o_1aee2u8m986hsttshs1p0c1ao29.jpg', null);
INSERT INTO `t_img_info` VALUES ('779', '20160322103816000028', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee2vmo31chr55m1mps1pv7kg09.jpg', '2016-03-22 10:38:16', '2016-03-22 10:38:16', 'F', 'yuedongke-activity', 'o_1aee2vmo31chr55m1mps1pv7kg09.jpg', null);
INSERT INTO `t_img_info` VALUES ('780', '20160322103920000029', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee31kk4lpes8r4sm13ci1hgu9.jpg', '2016-03-22 10:39:20', '2016-03-22 10:39:20', 'F', 'yuedongke-activity', 'o_1aee31kk4lpes8r4sm13ci1hgu9.jpg', null);
INSERT INTO `t_img_info` VALUES ('781', '20160322103954000030', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee32lov1mlt2806hd1lht2en9.jpg', '2016-03-22 10:39:54', '2016-03-22 10:39:54', 'F', 'yuedongke-activity', 'o_1aee32lov1mlt2806hd1lht2en9.jpg', null);
INSERT INTO `t_img_info` VALUES ('782', '20160322104124000031', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee34qk01m3019tj10mvovl5a79.jpg', '2016-03-22 10:41:24', '2016-03-22 10:41:24', 'F', 'yuedongke-activity', 'o_1aee34qk01m3019tj10mvovl5a79.jpg', null);
INSERT INTO `t_img_info` VALUES ('783', '20160322104320000032', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee38ujois11jpm1ofopvu19ts9.jpg', '2016-03-22 10:43:20', '2016-03-22 10:43:20', 'F', 'yuedongke-activity', 'o_1aee38ujois11jpm1ofopvu19ts9.jpg', null);
INSERT INTO `t_img_info` VALUES ('784', '20160322112844000033', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee5s2dd17p11qmb1lreb29voh9.jpg', '2016-03-22 11:28:44', '2016-03-22 11:28:44', 'F', 'yuedongke-activity', 'o_1aee5s2dd17p11qmb1lreb29voh9.jpg', null);
INSERT INTO `t_img_info` VALUES ('785', '20160322113429000034', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee66hba1evafi2fccjvpd9.jpg', '2016-03-22 11:34:29', '2016-03-22 11:34:29', 'F', 'yuedongke-activity', 'o_1aee66hba1evafi2fccjvpd9.jpg', null);
INSERT INTO `t_img_info` VALUES ('786', '20160322113538000035', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee68mr3veh15r653h1m1kqj49.png', '2016-03-22 11:35:38', '2016-03-22 11:35:38', 'F', 'yuedongke-activity', 'o_1aee68mr3veh15r653h1m1kqj49.png', null);
INSERT INTO `t_img_info` VALUES ('787', '20160322113803000036', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee6d46jkrteca13241r8cidu9.jpg', '2016-03-22 11:38:03', '2016-03-22 11:38:03', 'F', 'yuedongke-activity', 'o_1aee6d46jkrteca13241r8cidu9.jpg', null);
INSERT INTO `t_img_info` VALUES ('788', '20160322114118000037', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee6j2r1gik12m3ijn1bqfje9.jpg', '2016-03-22 11:41:18', '2016-03-22 11:41:18', 'F', 'yuedongke-activity', 'o_1aee6j2r1gik12m3ijn1bqfje9.jpg', null);
INSERT INTO `t_img_info` VALUES ('789', '20160322115437000038', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7bf12fr3o8e1nv16ef1rk99.jpg', '2016-03-22 11:54:37', '2016-03-22 11:54:37', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('790', '20160322120026000039', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7m45s17ur1nvl1atd15j0kn99.jpg', '2016-03-22 12:00:26', '2016-03-22 12:00:26', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('791', '20160322120112000040', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7nh2k1ar0qkuubo7n51eh9.jpg', '2016-03-22 12:01:12', '2016-03-22 12:01:12', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('792', '20160322120217000041', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aee7pgea1ntnnlvbcu1pvk1deh9.jpg', '2016-03-22 12:02:17', '2016-03-22 12:02:17', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('793', '20160322133642000042', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aeed67g21v1262o1ipd1q3lnkp9.png', '2016-03-22 13:36:42', '2016-03-22 13:36:42', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('794', '20160322133835000043', 'http://7xryps.com2.z0.glb.qiniucdn.com/o_1aeed90n01pg91cvt2jduiqtvn9.png', '2016-03-22 13:38:35', '2016-03-22 13:38:35', 'F', 'yuedongke-course', null, null);
INSERT INTO `t_img_info` VALUES ('796', '20160406161242000002', null, '2016-04-06 16:12:42', '2016-04-06 16:12:42', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('797', '20160408092832000004', null, '2016-04-08 09:28:32', '2016-04-08 09:28:32', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('799', '20160408120522000001', 'http://source.yuedongke.com/yuedongke20160407164939000001', '2016-04-08 12:05:22', '2016-04-08 12:05:22', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('800', '20160408165021000002', null, '2016-04-08 16:50:21', '2016-04-08 16:50:21', 'F', 'yuedongke', null, null);
INSERT INTO `t_img_info` VALUES ('804', '20160413094507000001', null, '2016-04-13 09:45:07', '2016-04-13 09:45:07', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('806', '20160413095246000001', 'http://user.yuedongke.com/yuedongke-user20160318225024000009', '2016-04-13 09:52:46', '2016-04-13 09:52:46', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('807', '20160413112446000001', 'http://user.yuedongke.com/yuedongke-user20160408102104000005', '2016-04-13 11:24:46', '2016-04-13 11:24:46', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('808', '20160413112629000002', 'http://user.yuedongke.com/yuedongke-user20160408102104000005', '2016-04-13 11:26:29', '2016-04-13 11:26:29', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('809', '20160414111514000001', 'http://user.yuedongke.com/yuedongke-user20160318225024000009', '2016-04-14 11:15:14', '2016-04-14 11:15:14', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('810', '20160414120134000001', 'http://user.yuedongke.com/yuedongke-user20160318225024000009', '2016-04-14 12:01:34', '2016-04-14 12:01:34', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('811', '20160414134612000001', 'http://user.yuedongke.com/yuedongke-user20160408102104000005', '2016-04-14 13:46:12', '2016-04-14 13:46:12', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('812', '20160414134627000002', 'http://user.yuedongke.com/yuedongke-user20160318225024000009', '2016-04-14 13:46:27', '2016-04-14 13:46:27', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('813', '20160414134659000003', 'http://user.yuedongke.com/yuedongke-user20160318225024000009', '2016-04-14 13:46:59', '2016-04-14 13:46:59', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('814', '20160414153424000004', 'http://user.yuedongke.com/yuedongke-user20160405181849000001', '2016-04-14 15:34:24', '2016-04-14 15:34:24', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('815', '20160414172800000001', 'http://user.yuedongke.com/yuedongke-user20160319100603000015', '2016-04-14 17:28:00', '2016-04-14 17:28:00', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('816', '20160415141526000001', 'http://user.yuedongke.com/yuedongke-user20160405181849000001', '2016-04-15 14:15:26', '2016-04-15 14:15:26', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('817', '20160415141742000001', 'http://user.yuedongke.com/yuedongke-user20160405181849000001', '2016-04-15 14:17:42', '2016-04-15 14:17:42', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('818', '20160415141742000002', 'http://7xsx7y.com2.z0.glb.qiniucdn.com/rollerSkating@3x.png', '2016-04-15 17:20:19', '2016-04-15 17:20:21', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('819', '20160415141742000003', 'http://user.yuedongke.com/ic_sports_basketball@3x.png', '2016-04-15 17:20:17', '2016-04-15 17:20:23', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('820', '20160415141742000004', 'http://user.yuedongke.com/ic_sports_football@3x.png', '2016-04-15 17:21:15', '2016-04-15 17:21:17', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('821', '20160415141742000005', 'http://user.yuedongke.com/ic_sports_other@3x.png', '2016-04-15 17:22:13', '2016-04-15 17:22:16', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('822', '20160415141742000006', 'http://user.yuedongke.com/ic_sports_pingpang@3x.png', '2016-04-15 17:23:18', '2016-04-15 17:23:21', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('823', '20160415141742000007', 'http://user.yuedongke.com/ic_sports_swim@3x.png', '2016-04-15 17:27:16', '2016-04-15 17:27:18', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('824', '20160415141742000008', 'http://user.yuedongke.com/ic_sports_taiquandao@3x.png', '2016-04-15 17:28:15', '2016-04-15 17:28:17', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('825', '20160415141742000009', 'http://user.yuedongke.com/ic_sports_xiaqi@3x.png', '2016-04-15 17:29:03', '2016-04-15 17:29:05', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('826', '20160415141742000010', 'http://user.yuedongke.com/ic_sports_yumao@3x.png', '2016-04-15 17:29:45', '2016-04-15 17:29:47', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('827', '20160415141742000011', 'http://user.yuedongke.com/ic_sports_all@3x.png', '2016-04-15 18:02:57', '2016-04-15 18:02:59', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('828', '20160415141742000012', 'http://user.yuedongke.com/ic_sports_hs@3x.png', '2016-04-15 18:03:32', '2016-04-15 18:03:34', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('829', '20160418092105000001', 'http://user.yuedongke.com/yuedongke-user20160407164939000001', '2016-04-18 09:21:05', '2016-04-18 09:21:05', 'F', 'yuedongke-user', null, null);
INSERT INTO `t_img_info` VALUES ('830', '20160418092105000002', 'http://user.yuedongke.com/yuedongke-user20160407164939000001', '2016-05-12 16:13:13', '2016-05-12 16:13:15', 'F', null, null, '');

-- ----------------------------
-- Table structure for t_institution_info
-- ----------------------------
DROP TABLE IF EXISTS `t_institution_info`;
CREATE TABLE `t_institution_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `telephone` varchar(11) DEFAULT NULL COMMENT '电话',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `create_time` date DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `service_areas_name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  `content` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_institution_info
-- ----------------------------
INSERT INTO `t_institution_info` VALUES ('1', '001', '杭州舒跑网络技术有限公司', '110', null, '杭州市优盘时代', '2016-05-09', '2016-05-09 15:29:58', 'F', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1elj8k3ndpb134tq531blo9.jpg', '120.1003593843', '30.3004979917', '西湖区', '杭州舒跑网络技术有限公司');
INSERT INTO `t_institution_info` VALUES ('2', '002', '舒跑技术部', '110', null, '杭州市优盘时代', '2016-05-11', '2016-05-11 18:46:38', 'F', 'http://7xryxb.com2.z0.glb.qiniucdn.com/o_1aee1elj8k3ndpb134tq531blo9.jpg', '120.1003693843', '30.3004979917', '西湖区', '舒跑技术部');

-- ----------------------------
-- Table structure for t_institution_type
-- ----------------------------
DROP TABLE IF EXISTS `t_institution_type`;
CREATE TABLE `t_institution_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution_code` varchar(20) DEFAULT NULL COMMENT '机构编码',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目类型编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_institution_type
-- ----------------------------
INSERT INTO `t_institution_type` VALUES ('1', '001', '1', '2016-05-09 15:32:09', '2016-05-09 15:32:13', 'F', '1');
INSERT INTO `t_institution_type` VALUES ('2', '002', '0', '2016-05-11 18:48:53', '2016-05-11 18:48:50', 'F', '2');

-- ----------------------------
-- Table structure for t_manager_info
-- ----------------------------
DROP TABLE IF EXISTS `t_manager_info`;
CREATE TABLE `t_manager_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_code` varchar(20) DEFAULT NULL COMMENT '后台管理员唯一编码',
  `manager_name` varchar(20) DEFAULT NULL COMMENT '管理员姓名',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注 ',
  `deleted` varchar(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_manager_info
-- ----------------------------
INSERT INTO `t_manager_info` VALUES ('1', '20160310155410000001', 'shupao', '', 'F', '2016-03-10 15:54:10', '2016-03-10 15:54:10', '14e1b600b1fd579f47433b88e8d85291', 'http://user.yuedongke.com/yuedongke-user20160407164939000001');
INSERT INTO `t_manager_info` VALUES ('2', '20160317164806000018', 'shupao2', '', 'F', '2016-03-17 16:48:06', '2016-03-17 16:48:06', '14e1b600b1fd579f47433b88e8d85291', 'http://user.yuedongke.com/yuedongke-user20160407164939000001');
INSERT INTO `t_manager_info` VALUES ('10', '20160318164242000001', 'lindj', null, 'F', '2016-03-18 16:42:42', '2016-03-18 16:42:42', '14e1b600b1fd579f47433b88e8d85291', 'http://user.yuedongke.com/yuedongke-user20160407164939000001');
INSERT INTO `t_manager_info` VALUES ('11', '20160318171353000006', 'zhangch', null, 'F', '2016-03-18 17:13:53', '2016-03-18 17:13:53', '14e1b600b1fd579f47433b88e8d85291', 'http://user.yuedongke.com/yuedongke-user20160407164939000001');

-- ----------------------------
-- Table structure for t_manager_role
-- ----------------------------
DROP TABLE IF EXISTS `t_manager_role`;
CREATE TABLE `t_manager_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `manager_code` varchar(20) DEFAULT NULL COMMENT '管理员编码',
  `role_code` varchar(20) DEFAULT NULL COMMENT '角色编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice_info
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_info`;
CREATE TABLE `t_notice_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` varchar(50) DEFAULT NULL COMMENT '内容',
  `img_code` varchar(20) DEFAULT NULL,
  `user_code` varchar(20) DEFAULT NULL COMMENT '用户唯一编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  `notice_type` varchar(20) DEFAULT NULL COMMENT '通知类型',
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice_info
-- ----------------------------
INSERT INTO `t_notice_info` VALUES ('1', '20160319144047000020', '跃动客', '跃动客宏优中考体育课程火热报名中，点击查看详情', null, '20160318194815000005', '2016-03-19 14:40:47', '2016-03-19 14:40:47', 'F', 'activity', null);
INSERT INTO `t_notice_info` VALUES ('3', '20160319144047000022', '跃动客', '跃动客宏优中考体育课程火热报名中，点击查看详情', null, '20160319100603000015', '2016-03-19 14:40:47', '2016-03-19 14:40:47', 'F', 'activity', null);

-- ----------------------------
-- Table structure for t_order_info
-- ----------------------------
DROP TABLE IF EXISTS `t_order_info`;
CREATE TABLE `t_order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_code` char(20) DEFAULT NULL COMMENT '买家编码',
  `goods_code` char(20) DEFAULT NULL COMMENT '活动或课程编码',
  `num` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` int(11) DEFAULT NULL COMMENT '单价',
  `amount` int(11) DEFAULT NULL COMMENT '总价',
  `status` char(2) DEFAULT NULL COMMENT '订单状态',
  `order_no` char(200) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted` char(1) DEFAULT NULL COMMENT '删除标识',
  `remarks` varchar(128) DEFAULT NULL COMMENT '说明',
  `charge_id` varchar(255) DEFAULT NULL COMMENT '付款凭证，退款时也根据此凭证',
  `order_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `student_code` varchar(20) DEFAULT NULL COMMENT '学员编码',
  `coupon_code` varchar(20) DEFAULT NULL,
  `is_free` varchar(20) DEFAULT NULL COMMENT '是否免费',
  `is_online` varchar(20) DEFAULT NULL COMMENT '是否线上付款 F否 T是',
  `book_time` varchar(50) DEFAULT NULL COMMENT '预约时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_order_info
-- ----------------------------
INSERT INTO `t_order_info` VALUES ('69', '20160325170507000008', '20160318164450000011', null, null, null, '03', '20160531153115000003', '2016-05-31 15:31:15', '2016-05-31 15:31:15', 'F', null, null, 'exp_course', '20160531152618000001', null, 'T', 'F', '6月3日\n周五\n16:00');
INSERT INTO `t_order_info` VALUES ('80', '20160319163617000002', '20160318144204000009', '1', '20000', '20000', '03', '20160602113706000054', '2016-06-02 11:37:06', '2016-06-02 11:37:06', 'F', null, null, 'activity', '20160601174406000049', null, 'F', 'F', '2016-06-02 11:37');
INSERT INTO `t_order_info` VALUES ('85', '20160325170507000008', '20160318165001000016', null, null, null, '03', '20160607211353000013', '2016-06-07 21:13:53', '2016-06-07 21:13:53', 'F', null, null, 'exp_course', '20160531152618000001', null, 'T', 'F', '6月12日\n周日\n21:00');
INSERT INTO `t_order_info` VALUES ('86', '20160325170507000008', '20160318150602000019', '1', '80000', '80000', '03', '20160607211503000014', '2016-06-07 21:15:03', '2016-06-07 21:15:03', 'F', null, null, 'activity', '20160531152618000001', null, 'F', 'F', '2016-06-07 09:15');
INSERT INTO `t_order_info` VALUES ('87', '20160325170507000008', '20160318171833000017', null, null, null, '03', '20160607211652000015', '2016-06-07 21:16:52', '2016-06-07 21:16:52', 'F', null, null, 'exp_course', '20160531152618000001', null, 'T', 'F', '6月7日\n周二\n8:00');
INSERT INTO `t_order_info` VALUES ('88', '20160319163617000002', '20160318171833000017', null, null, null, '03', '20160616110850000195', '2016-06-16 11:08:50', '2016-06-16 11:08:50', 'F', null, null, 'exp_course', '20160613161100000124', null, 'T', 'F', '6月19日\n周日\n20:00');

-- ----------------------------
-- Table structure for t_praise_info
-- ----------------------------
DROP TABLE IF EXISTS `t_praise_info`;
CREATE TABLE `t_praise_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `target_code` varchar(20) DEFAULT NULL,
  `user_code` varchar(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_praise_info
-- ----------------------------
INSERT INTO `t_praise_info` VALUES ('11', '20160530142541000001', '2', '20160318225024000009', 'dynamic', '2016-05-30 14:25:41', '2016-05-30 14:25:41', 'F');
INSERT INTO `t_praise_info` VALUES ('12', '20160602140710000056', '3', '20160318225024000009', 'dynamic', '2016-06-02 14:07:10', '2016-06-02 14:07:10', 'F');
INSERT INTO `t_praise_info` VALUES ('31', '20160606145022000105', '4', '20160319163617000002', 'dynamic', '2016-06-06 14:50:22', '2016-06-06 14:50:22', 'F');
INSERT INTO `t_praise_info` VALUES ('52', '20160613181241000164', '2', '20160319163617000002', 'dynamic', '2016-06-13 18:12:41', '2016-06-13 18:12:41', 'F');
INSERT INTO `t_praise_info` VALUES ('59', '20160615162227000192', '3', '20160319163617000002', 'dynamic', '2016-06-15 16:22:27', '2016-06-15 16:22:27', 'F');

-- ----------------------------
-- Table structure for t_preference_type
-- ----------------------------
DROP TABLE IF EXISTS `t_preference_type`;
CREATE TABLE `t_preference_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(20) DEFAULT NULL COMMENT '课程类型编码',
  `name` varchar(20) DEFAULT NULL COMMENT '课程类型名称',
  `deleted` varchar(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL COMMENT '课程类型标题',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片唯一编码',
  `rank` int(11) DEFAULT NULL COMMENT '等级从0开始依次递增',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_preference_type
-- ----------------------------
INSERT INTO `t_preference_type` VALUES ('1', '8', '全部', 'F', '2016-03-04 10:12:58', '2016-03-04 10:13:01', '生命在于运动', 'http://user.yuedongke.com/ic_sports_all@3x.png', '1000');
INSERT INTO `t_preference_type` VALUES ('2', '9', '中考培训', 'F', '2016-03-04 10:08:05', '2016-03-04 10:08:08', '少年强则国强', 'http://user.yuedongke.com/ic_sports_hs@3x.png', '999');
INSERT INTO `t_preference_type` VALUES ('3', '0', '篮球', 'F', '2016-02-27 10:19:21', '2016-03-05 10:27:54', '你就是下一个科比布莱恩特', 'http://user.yuedongke.com/ic_sports_basketball@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('4', '1', '足球', 'F', '2016-02-27 10:19:21', '2016-03-05 10:27:57', '像梅西一样带球舞蹈', 'http://user.yuedongke.com/ic_sports_football@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('5', '2', '游泳', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:00', '如鱼得水，其乐无穷', 'http://user.yuedongke.com/ic_sports_swim@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('6', '3', '跆拳道', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:02', '忍耐克己，百折不挠', 'http://user.yuedongke.com/ic_sports_taiquandao@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('7', '4', '棋类', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:05', '胜固欣然， 败亦可喜', 'http://user.yuedongke.com/ic_sports_xiaqi@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('8', '5', '轮滑', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:11', '生命不息 轮滑不止', 'http://7xsx7y.com2.z0.glb.qiniucdn.com/rollerSkating@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('9', '6', '羽毛球', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:07', '让我的扣杀来的更猛烈些吧', 'http://user.yuedongke.com/ic_sports_yumao@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('10', '7', '乒乓球', 'F', '2016-02-27 10:19:20', '2016-03-05 10:28:13', '感受国球的魅力', 'http://user.yuedongke.com/ic_sports_pingpang@3x.png', '1');
INSERT INTO `t_preference_type` VALUES ('100', '10', '其他', 'F', '2016-02-27 10:19:19', '2016-03-05 10:28:16', '', 'http://user.yuedongke.com/ic_sports_other@3x.png', '0');

-- ----------------------------
-- Table structure for t_project_info
-- ----------------------------
DROP TABLE IF EXISTS `t_project_info`;
CREATE TABLE `t_project_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `name` varchar(50) DEFAULT NULL COMMENT '项目类型名称',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_info
-- ----------------------------
INSERT INTO `t_project_info` VALUES ('1', '1', '跆拳道', '2016-05-09 15:31:47', '2016-05-09 15:31:50', 'F');
INSERT INTO `t_project_info` VALUES ('2', '0', '篮球', '2016-05-11 18:49:56', '2016-05-11 18:49:53', 'F');

-- ----------------------------
-- Table structure for t_resources_info
-- ----------------------------
DROP TABLE IF EXISTS `t_resources_info`;
CREATE TABLE `t_resources_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `url` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resources_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_role_info
-- ----------------------------
DROP TABLE IF EXISTS `t_role_info`;
CREATE TABLE `t_role_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_role_resource`;
CREATE TABLE `t_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `role_code` varchar(20) DEFAULT NULL COMMENT '角色编码',
  `resource_code` varchar(20) DEFAULT NULL COMMENT '资源编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for t_school_info
-- ----------------------------
DROP TABLE IF EXISTS `t_school_info`;
CREATE TABLE `t_school_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school_code` varchar(23) DEFAULT NULL,
  `school_name` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(2) DEFAULT NULL,
  `img_codes` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_school_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_student_info
-- ----------------------------
DROP TABLE IF EXISTS `t_student_info`;
CREATE TABLE `t_student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_code` varchar(20) DEFAULT NULL COMMENT '学员唯一编码',
  `student_name` varchar(20) DEFAULT NULL COMMENT '学员姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `user_code` varchar(20) DEFAULT NULL COMMENT '用户唯一编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_student_info
-- ----------------------------
INSERT INTO `t_student_info` VALUES ('9', '20160413171356000001', '李三', '23', '男', '20160318225024000009', '2016-04-13 17:13:56', '2016-04-13 17:13:56', 'T', '浙大', '193', '67', null);
INSERT INTO `t_student_info` VALUES ('10', '20160413180436000001', '杨容', '23', '女', '20160413134550000001', '2016-04-13 18:04:36', '2016-04-13 18:04:36', 'F', '浙大', '158', '45', null);
INSERT INTO `t_student_info` VALUES ('11', '20160413182136000002', '小明', '18', '男', '20160408102104000005', '2016-04-13 18:21:36', '2016-04-13 18:21:36', 'F', '浙大', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('12', '20160414092309000001', '长生', '15', '男', '20160408102104000005', '2016-04-14 09:23:09', '2016-04-14 09:23:09', 'F', '浙大', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('13', '20160414094555000001', '我', '14', '女', '20160318225024000009', '2016-04-14 09:45:55', '2016-04-14 09:45:55', 'T', '组织', '156', '23', null);
INSERT INTO `t_student_info` VALUES ('14', '20160414160811000001', '大容', '21', '女', '20160405181849000001', '2016-04-14 16:08:11', '2016-04-14 16:08:11', 'F', '浙大', '161', '46', null);
INSERT INTO `t_student_info` VALUES ('15', '20160414164648000002', '上官燕', '25', '男', '20160319100603000015', '2016-04-14 16:46:48', '2016-04-14 16:46:48', 'F', '浙大', '156', '46', null);
INSERT INTO `t_student_info` VALUES ('16', '20160414195932000008', '李四', '26', '男', '20160407164939000001', '2016-04-14 19:59:32', '2016-04-14 19:59:32', 'F', '浙大', '176', '65', null);
INSERT INTO `t_student_info` VALUES ('17', '20160415172214000011', '测试', '5', '男', '20160408102104000005', '2016-04-15 17:22:14', '2016-04-15 17:22:14', 'F', '浙大', '102', '29', null);
INSERT INTO `t_student_info` VALUES ('18', '20160415173802000002', '测试2', '6', '男', '20160408102104000005', '2016-04-15 17:38:02', '2016-04-15 17:38:02', 'F', '测试2', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('19', '20160517154254000001', '测试1', '15', '男', '20160319163617000002', '2016-05-17 15:42:54', '2016-05-17 15:42:54', 'T', '哈哈', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('20', '20160517173946000001', '测试', '15', '男', '20160319163617000002', '2016-05-17 17:39:46', '2016-05-17 17:39:46', 'T', '哈哈', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('21', '20160517174512000002', '测试', '44', '男', '20160319163617000002', '2016-05-17 17:45:12', '2016-05-17 17:45:12', 'T', '空间里', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('22', '20160517174558000003', '测试', '25', '男', '20160319163617000002', '2016-05-17 17:45:58', '2016-05-17 17:45:58', 'T', '哈哈', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('23', '20160520101757000001', '部门', '22', '男', '20160318225024000009', '2016-05-20 10:17:57', '2016-05-20 10:17:57', 'T', '在家', '65', '50', '15981839199');
INSERT INTO `t_student_info` VALUES ('24', '20160530160630000001', '李三', '23', '男', '20160318225024000009', '2016-05-30 16:06:30', '2016-05-30 16:06:30', 'T', '浙大', '61', '50', '15981839199');
INSERT INTO `t_student_info` VALUES ('25', '20160530162145000002', '我们', '26', '男', '20160318225024000009', '2016-05-30 16:21:45', '2016-05-30 16:21:45', 'T', '浙大', '58', '50', '15677883568');
INSERT INTO `t_student_info` VALUES ('26', '20160531152618000001', '晨晨', '11', '男', '20160325170507000008', '2016-05-31 15:26:18', '2016-05-31 15:26:18', 'F', '我', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('27', '20160531172803000002', '列三', '23', '男', '20160318225024000009', '2016-05-31 17:28:03', '2016-05-31 17:28:03', 'F', '浙大', '92', '50', '15981839199');
INSERT INTO `t_student_info` VALUES ('28', '20160601174406000049', '测试2', '15', '女', '20160319163617000002', '2016-06-01 17:44:06', '2016-06-01 17:44:06', 'F', '哈哈', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('29', '20160613161100000124', '小明', '15', '男', '20160319163617000002', '2016-06-13 16:11:00', '2016-06-13 16:11:00', 'F', '浙大', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('30', '20160613161126000125', '小红', '22', '女', '20160319163617000002', '2016-06-13 16:11:26', '2016-06-13 16:11:26', 'T', '浙大', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('31', '20160613161159000126', '小李', '223', '男', '20160319163617000002', '2016-06-13 16:11:59', '2016-06-13 16:11:59', 'T', '浙大', '100', '36', null);
INSERT INTO `t_student_info` VALUES ('32', '20160613161221000127', '小米', '14', '女', '20160319163617000002', '2016-06-13 16:12:21', '2016-06-13 16:12:21', 'T', '哈哈', '100', '30', null);
INSERT INTO `t_student_info` VALUES ('33', '20160613161241000128', 'GG', '22', '男', '20160319163617000002', '2016-06-13 16:12:41', '2016-06-13 16:12:41', 'T', '哈哈', '100', '30', null);

-- ----------------------------
-- Table structure for t_trainer_info
-- ----------------------------
DROP TABLE IF EXISTS `t_trainer_info`;
CREATE TABLE `t_trainer_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(20) DEFAULT NULL COMMENT '学校名称',
  `experience` int(11) DEFAULT NULL COMMENT '教龄',
  `honors` varchar(255) DEFAULT NULL COMMENT '个人荣誉',
  `trainer_code` char(20) DEFAULT NULL COMMENT '唯一编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL,
  `persion_sign` varchar(256) DEFAULT NULL COMMENT '个性签名',
  `trainer_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `img_url` varchar(255) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `teach_exps` varchar(255) DEFAULT NULL COMMENT '执教经历',
  `telephone` varchar(11) DEFAULT NULL,
  `institution_code` varchar(20) DEFAULT NULL COMMENT '机构编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_trainer_info
-- ----------------------------
INSERT INTO `t_trainer_info` VALUES ('1', '浙江大学', null, '奥运冠军', '1', '2016-05-12 16:08:46', '2016-05-12 16:08:48', 'F', null, '跃动客', 'http://user.yuedongke.com/yuedongke-user20160407164939000001', '男', null, '110', '001');
INSERT INTO `t_trainer_info` VALUES ('2', '杭州师范', null, '游泳达人', '2', '2016-05-27 10:57:52', '2016-05-27 10:57:55', 'F', null, '舒跑', 'http://user.yuedongke.com/yuedongke-user20160407164939000001', '男', null, '110', '001');

-- ----------------------------
-- Table structure for t_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_user_collection`;
CREATE TABLE `t_user_collection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `target_code` varchar(64) DEFAULT NULL COMMENT '收藏目标编码',
  `user_code` char(20) DEFAULT NULL COMMENT '用户编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL COMMENT '标题',
  `collect_code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `collect_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user_collection
-- ----------------------------
INSERT INTO `t_user_collection` VALUES ('5', '20160318174316000041', '20160317094550000023', '2016-03-19 12:51:19', '2016-03-19 12:51:19', 'F', null, '20160319125119000001', 'course');
INSERT INTO `t_user_collection` VALUES ('11', '20160318174316000041', '20160319144952000002', '2016-03-19 17:18:49', '2016-03-19 17:18:49', 'F', null, '20160319171849000001', 'course');
INSERT INTO `t_user_collection` VALUES ('17', '20160318152504000003', '20160318194815000005', '2016-03-25 15:09:41', '2016-03-25 15:09:41', 'F', null, '20160325150941000002', 'activity');
INSERT INTO `t_user_collection` VALUES ('18', '20160318154244000021', '20160325151450000003', '2016-03-25 15:16:15', '2016-03-25 15:16:15', 'F', null, '20160325151615000006', 'activity');
INSERT INTO `t_user_collection` VALUES ('19', '20160318154244000021', '20160319100603000015', '2016-03-26 10:02:31', '2016-03-26 10:02:31', 'F', null, '20160326100231000010', 'activity');
INSERT INTO `t_user_collection` VALUES ('27', '20160318150342000017', '20160408102104000005', '2016-04-13 17:01:26', '2016-04-13 17:01:26', 'F', null, '20160413170126000001', 'activity');
INSERT INTO `t_user_collection` VALUES ('28', '20160318164450000011', '20160408102104000005', '2016-04-13 17:02:00', '2016-04-13 17:02:00', 'F', null, '20160413170200000002', 'course');
INSERT INTO `t_user_collection` VALUES ('36', '20160318165001000016', '20160408102104000005', '2016-04-14 14:34:28', '2016-04-14 14:34:28', 'F', null, '20160414143428000002', 'course');
INSERT INTO `t_user_collection` VALUES ('45', '20160318170328000023', '20160413134550000001', '2016-04-14 15:03:34', '2016-04-14 15:03:34', 'F', null, '20160414150334000002', 'exp_course');
INSERT INTO `t_user_collection` VALUES ('47', '20160318173311000029', '20160319100603000015', '2016-04-14 16:48:26', '2016-04-14 16:48:26', 'F', null, '20160414164826000004', 'course');
INSERT INTO `t_user_collection` VALUES ('49', '20160318170221000021', '20160408102104000005', '2016-04-15 14:07:20', '2016-04-15 14:07:20', 'F', null, '20160415140720000001', 'exp_course');
INSERT INTO `t_user_collection` VALUES ('52', '20160318174316000041', '20160408102104000005', '2016-04-15 14:31:24', '2016-04-15 14:31:24', 'F', null, '20160415143124000004', 'course');
INSERT INTO `t_user_collection` VALUES ('53', '20160318174554000051', '20160408102104000005', '2016-04-15 14:31:27', '2016-04-15 14:31:27', 'F', null, '20160415143127000005', 'course');
INSERT INTO `t_user_collection` VALUES ('54', '20160318174916000071', '20160408102104000005', '2016-04-15 14:31:31', '2016-04-15 14:31:31', 'F', null, '20160415143131000006', 'course');
INSERT INTO `t_user_collection` VALUES ('55', '20160318175034000081', '20160408102104000005', '2016-04-15 14:31:40', '2016-04-15 14:31:40', 'F', null, '20160415143140000007', 'course');
INSERT INTO `t_user_collection` VALUES ('56', '20160318175208000091', '20160408102104000005', '2016-04-15 14:31:45', '2016-04-15 14:31:45', 'F', null, '20160415143145000008', 'course');
INSERT INTO `t_user_collection` VALUES ('57', '20160318175514000111', '20160408102104000005', '2016-04-15 14:31:50', '2016-04-15 14:31:50', 'F', null, '20160415143150000009', 'course');
INSERT INTO `t_user_collection` VALUES ('58', '20160318175704000117', '20160408102104000005', '2016-04-15 14:31:56', '2016-04-15 14:31:56', 'F', null, '20160415143156000010', 'course');
INSERT INTO `t_user_collection` VALUES ('63', '20160318170328000023', '20160407164939000001', '2016-04-15 15:59:16', '2016-04-15 15:59:16', 'F', null, '20160415155916000009', 'course');
INSERT INTO `t_user_collection` VALUES ('77', '20160318144204000009', '20160318225024000009', '2016-05-31 15:18:36', '2016-05-31 15:18:36', 'F', null, '20160531151836000001', 'activity');
INSERT INTO `t_user_collection` VALUES ('127', '20160318155444000029', '20160319100603000015', '2016-06-02 15:05:15', '2016-06-02 15:05:15', 'F', null, '20160602150515000003', 'activity');
INSERT INTO `t_user_collection` VALUES ('163', '20160318171623000012', '20160607141930000006', '2016-06-07 14:23:07', '2016-06-07 14:23:07', 'F', null, '20160607142307000011', 'course');
INSERT INTO `t_user_collection` VALUES ('219', '002', '20160319163617000002', '2016-06-16 11:08:04', '2016-06-16 11:08:04', 'F', null, '20160616110804000194', 'institution');
INSERT INTO `t_user_collection` VALUES ('220', '20160318171532000007', '20160618120728000024', '2016-06-18 12:09:25', '2016-06-18 12:09:25', 'F', null, '20160618120925000026', 'course');
INSERT INTO `t_user_collection` VALUES ('221', '20160318205843000204', '20160618195535000027', '2016-06-18 20:00:20', '2016-06-18 20:00:20', 'F', null, '20160618200020000029', 'course');

-- ----------------------------
-- Table structure for t_user_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_info`;
CREATE TABLE `t_user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `img_url` char(255) DEFAULT NULL COMMENT '用户头像唯一编码',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `user_code` char(20) NOT NULL COMMENT '用户唯一编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL,
  `telephone` char(11) DEFAULT NULL COMMENT '电话',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `location_city` varchar(20) DEFAULT NULL COMMENT '所在城市',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `user_type_code` varchar(20) DEFAULT NULL COMMENT '用户类型编码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`user_code`),
  KEY `telephone` (`telephone`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user_info
-- ----------------------------
INSERT INTO `t_user_info` VALUES ('1', '', '晨晨', '20160318194815000005', '2016-03-18 19:48:15', '2016-05-05 16:54:46', 'F', '15601664578', null, '男', null, null, '0001');
INSERT INTO `t_user_info` VALUES ('2', 'http://user.yuedongke.com/yuedongke-user20160318225024000009', '司先生', '20160318225024000009', '2016-03-18 22:50:24', '2016-05-23 18:19:34', 'F', '15981839199', '28', '男', '杭州市', '0f8fad117740dc78cb2e834068b94fab', '0001');
INSERT INTO `t_user_info` VALUES ('3', 'http://user.yuedongke.com/yuedongke-user20160319100603000015', '杨容', '20160319100603000015', '2016-03-19 10:06:03', '2016-06-01 13:30:13', 'F', '15336594020', '20', '女', '杭州市', '14e1b600b1fd579f47433b88e8d85291', '0001');
INSERT INTO `t_user_info` VALUES ('9', '', '啦啦', '20160319144952000002', '2016-03-19 14:49:52', '2016-03-19 14:49:52', 'F', '18510626142', '52', '女', null, null, '0001');
INSERT INTO `t_user_info` VALUES ('10', null, null, '20160319150712000003', '2016-03-19 15:07:12', '2016-03-19 15:07:12', 'F', '15088603399', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('11', null, null, '20160319162206000001', '2016-03-19 16:22:06', '2016-03-19 16:22:06', 'F', '15993638058', null, null, null, '14e1b600b1fd579f47433b88e8d85291', '0001');
INSERT INTO `t_user_info` VALUES ('12', '', 'SY Liang', '20160319163617000002', '2016-03-19 16:36:17', '2016-03-19 16:36:17', 'F', '18510626143', null, '男', null, '2c7a5a6bfa4b5baee3b981b7803c3747', '0001');
INSERT INTO `t_user_info` VALUES ('13', '', '能', '20160325151450000003', '2016-03-25 15:14:50', '2016-03-25 15:14:50', 'F', '18758237434', '12', '女', null, null, '0001');
INSERT INTO `t_user_info` VALUES ('14', 'http://user.yuedongke.com/yuedongke-user20160325170507000008', null, '20160325170507000008', '2016-03-25 17:05:07', '2016-05-11 15:38:17', 'F', '15237883962', null, '男', null, '3049a1f0f1c808cdaa4fbed0e01649b1', '0001');
INSERT INTO `t_user_info` VALUES ('15', null, null, '20160326135002000011', '2016-03-26 13:50:02', '2016-03-26 13:50:02', 'F', '15757120496', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('16', null, null, '20160326214337000014', '2016-03-26 21:43:37', '2016-03-26 21:43:37', 'F', '15364839838', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('17', null, null, '20160328103827000016', '2016-03-28 10:38:27', '2016-03-28 10:38:27', 'F', '15336247581', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('18', null, null, '20160328115503000017', '2016-03-28 11:55:03', '2016-03-28 11:55:03', 'F', '15369874154', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('19', null, null, '20160330103452000022', '2016-03-30 10:34:52', '2016-03-30 10:34:52', 'F', '18018786542', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('20', null, null, '20160330111658000027', '2016-03-30 11:16:58', '2016-03-30 11:16:58', 'F', '15281955367', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('21', null, null, '20160330182416000030', '2016-03-30 18:24:16', '2016-03-30 18:24:16', 'F', '15538910081', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('22', null, null, '20160331031631000035', '2016-03-31 03:16:31', '2016-03-31 03:16:31', 'F', '18686096487', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('23', null, null, '20160331094405000041', '2016-03-31 09:44:05', '2016-03-31 09:44:05', 'F', '13958090268', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('24', null, null, '20160331171852000054', '2016-03-31 17:18:52', '2016-03-31 17:18:52', 'F', '18758098053', null, null, null, '70873e8580c9900986939611618d7b1e', '0001');
INSERT INTO `t_user_info` VALUES ('25', null, null, '20160401142108000001', '2016-04-01 14:21:08', '2016-04-01 14:21:08', 'F', '18553688395', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('26', null, null, '20160401151713000002', '2016-04-01 15:17:13', '2016-04-01 15:17:13', 'F', '15231775306', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('27', null, null, '20160401203227000004', '2016-04-01 20:32:27', '2016-04-01 20:32:27', 'F', '15109163912', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('28', null, null, '20160401220941000006', '2016-04-01 22:09:41', '2016-04-01 22:09:41', 'F', '15991854631', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('29', null, null, '20160402135344000007', '2016-04-02 13:53:44', '2016-04-02 13:53:44', 'F', '18089162779', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('30', null, null, '20160402174714000009', '2016-04-02 17:47:14', '2016-04-02 17:47:14', 'F', '13271933069', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('31', null, null, '20160403221352000011', '2016-04-03 22:13:52', '2016-04-03 22:13:52', 'F', '13393680099', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('32', null, null, '20160405162922000012', '2016-04-05 16:29:22', '2016-04-05 16:29:22', 'F', '15706055722', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('33', null, null, '20160405170556000016', '2016-04-05 17:05:56', '2016-04-05 17:05:56', 'F', '15399450628', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('34', null, null, '20160405225527000018', '2016-04-05 22:55:27', '2016-04-05 22:55:27', 'F', '13521079978', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('35', null, null, '20160406185146000020', '2016-04-06 18:51:46', '2016-04-06 18:51:46', 'F', '13880904115', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('36', null, null, '20160406191840000022', '2016-04-06 19:18:40', '2016-04-06 19:18:40', 'F', '15297134936', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('37', null, null, '20160406231206000024', '2016-04-06 23:12:06', '2016-04-06 23:12:06', 'F', '13666931387', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('38', null, null, '20160407060417000026', '2016-04-07 06:04:17', '2016-04-07 06:04:17', 'F', '18642836547', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('39', null, null, '20160408055933000029', '2016-04-08 05:59:33', '2016-04-08 05:59:33', 'F', '18758919880', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('40', null, null, '20160410075251000032', '2016-04-10 07:52:51', '2016-04-10 07:52:51', 'F', '15618209810', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('41', null, null, '20160410235847000034', '2016-04-10 23:58:47', '2016-04-10 23:58:47', 'F', '13536960782', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('42', null, null, '20160411085352000036', '2016-04-11 08:53:52', '2016-04-11 08:53:52', 'F', '18609423213', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('43', null, null, '20160411103038000038', '2016-04-11 10:30:38', '2016-04-11 10:30:38', 'F', '13625810755', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('44', null, null, '20160411103559000040', '2016-04-11 10:35:59', '2016-04-11 10:35:59', 'F', '15868853171', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('45', null, null, '20160411114623000043', '2016-04-11 11:46:23', '2016-04-11 11:46:23', 'F', '13606621157', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('46', null, null, '20160411172229000045', '2016-04-11 17:22:29', '2016-04-11 17:22:29', 'F', '15757156796', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('47', null, null, '20160412110108000048', '2016-04-12 11:01:08', '2016-04-12 11:01:08', 'F', '18616276027', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('48', '', null, '20160412125049000050', '2016-04-12 12:50:49', '2016-04-12 12:50:49', 'F', '15871108489', null, '男', null, null, '0001');
INSERT INTO `t_user_info` VALUES ('49', null, null, '20160412223530000053', '2016-04-12 22:35:30', '2016-04-12 22:35:30', 'F', '18311376935', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('50', null, null, '20160413112729000055', '2016-04-13 11:27:29', '2016-04-13 11:27:29', 'F', '15990038130', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('51', null, null, '20160414093658000060', '2016-04-14 09:36:58', '2016-04-14 09:36:58', 'F', '18682093431', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('52', null, null, '20160414110526000063', '2016-04-14 11:05:26', '2016-04-14 11:05:26', 'F', '15226030379', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('53', null, null, '20160415154554000071', '2016-04-15 15:45:54', '2016-04-15 15:45:54', 'F', '18872194799', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('54', null, null, '20160415180159000072', '2016-04-15 18:01:59', '2016-04-15 18:01:59', 'F', '18295368889', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('55', null, null, '20160416120543000074', '2016-04-16 12:05:43', '2016-04-16 12:05:43', 'F', '13009616251', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('56', null, null, '20160416153815000076', '2016-04-16 15:38:15', '2016-04-16 15:38:15', 'F', '15961510191', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('57', null, null, '20160416180939000078', '2016-04-16 18:09:39', '2016-04-16 18:09:39', 'F', '15759575182', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('58', null, null, '20160416204806000080', '2016-04-16 20:48:06', '2016-04-16 20:48:06', 'F', '18233910252', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('59', null, null, '20160417075014000081', '2016-04-17 07:50:14', '2016-04-17 07:50:14', 'F', '13767448167', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('60', null, null, '20160417080158000083', '2016-04-17 08:01:58', '2016-04-17 08:01:58', 'F', '15132797695', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('61', null, null, '20160417122101000084', '2016-04-17 12:21:01', '2016-04-17 12:21:01', 'F', '13892599049', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('62', null, null, '20160421093510000001', '2016-04-21 09:35:10', '2016-04-21 09:35:10', 'F', '18677772551', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('63', null, null, '20160421140919000010', '2016-04-21 14:09:19', '2016-04-21 14:09:19', 'F', '18710222125', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('64', null, null, '20160421150445000012', '2016-04-21 15:04:45', '2016-04-21 15:04:45', 'F', '13648686302', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('65', null, null, '20160421171425000014', '2016-04-21 17:14:25', '2016-04-21 17:14:25', 'F', '13846073723', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('66', null, null, '20160421204823000016', '2016-04-21 20:48:23', '2016-04-21 20:48:23', 'F', '13917331768', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('67', null, null, '20160422070314000018', '2016-04-22 07:03:14', '2016-04-22 07:03:14', 'F', '15822157063', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('68', null, null, '20160422174054000001', '2016-04-22 17:40:54', '2016-04-22 17:40:54', 'F', '18346143181', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('69', null, null, '20160506225738000005', '2016-05-06 22:57:38', '2016-05-06 22:57:38', 'F', '13517983236', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('70', null, null, '20160507191731000012', '2016-05-07 19:17:31', '2016-05-07 19:17:31', 'F', '18485430429', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('71', null, null, '20160507224306000014', '2016-05-07 22:43:06', '2016-05-07 22:43:06', 'F', '13083981615', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('72', null, null, '20160510222833000003', '2016-05-10 22:28:33', '2016-05-10 22:28:33', 'F', '13051557897', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('73', null, null, '20160512170457000015', '2016-05-12 17:04:57', '2016-05-12 17:04:57', 'F', '18868119998', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('74', null, null, '20160603120249000004', '2016-06-03 12:02:49', '2016-06-03 12:02:49', 'F', '15711420219', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('75', null, null, '20160607141930000006', '2016-06-07 14:19:30', '2016-06-07 14:19:30', 'F', '15868189269', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('76', null, null, '20160608140802000016', '2016-06-08 14:08:02', '2016-06-08 14:08:02', 'F', '15868836344', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('77', null, null, '20160612103112000018', '2016-06-12 10:31:12', '2016-06-12 10:31:12', 'F', '13656699641', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('78', null, null, '20160614213506000020', '2016-06-14 21:35:06', '2016-06-14 21:35:06', 'F', '13957168758', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('79', null, null, '20160617175728000022', '2016-06-17 17:57:28', '2016-06-17 17:57:28', 'F', '15966162351', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('80', null, null, '20160618120728000024', '2016-06-18 12:07:28', '2016-06-18 12:07:28', 'F', '17717587680', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('81', null, null, '20160618195535000027', '2016-06-18 19:55:35', '2016-06-18 20:05:14', 'F', '13666636757', null, '男', '杭州市', null, '0001');
INSERT INTO `t_user_info` VALUES ('82', null, null, '20160619162350000001', '2016-06-19 16:23:50', '2016-06-19 16:23:50', 'F', '13616555790', null, null, null, null, '0001');
INSERT INTO `t_user_info` VALUES ('83', null, null, '20160620110529000001', '2016-06-20 11:05:29', '2016-06-20 11:05:29', 'F', '18510626143', null, null, null, null, '0001');

-- ----------------------------
-- Table structure for t_user_login_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_login_info`;
CREATE TABLE `t_user_login_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_type` varchar(2) DEFAULT NULL COMMENT '01手机登录、02微信、03微博、04支付宝、05淘宝、06豆瓣、07企鹅',
  `account_no` varchar(64) DEFAULT NULL,
  `token` varchar(128) DEFAULT NULL,
  `user_code` char(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_login_info
-- ----------------------------
INSERT INTO `t_user_login_info` VALUES ('49', '01', '15601664578', null, '20160318194815000005', null, '2016-03-18 19:48:15', 'F');
INSERT INTO `t_user_login_info` VALUES ('50', '01', '15981839199', '0f8fad117740dc78cb2e834068b94fab', '20160318225024000009', null, '2016-03-18 22:50:24', 'F');
INSERT INTO `t_user_login_info` VALUES ('51', '01', '15336594020', '14e1b600b1fd579f47433b88e8d85291', '20160319100603000015', null, '2016-03-19 10:06:03', 'F');
INSERT INTO `t_user_login_info` VALUES ('52', '01', '18510626142', null, '20160319144952000002', null, '2016-03-19 14:49:52', 'F');
INSERT INTO `t_user_login_info` VALUES ('53', '01', '15088603399', null, '20160319150712000003', null, '2016-03-19 15:07:12', 'F');
INSERT INTO `t_user_login_info` VALUES ('54', '01', '15993638058', '14e1b600b1fd579f47433b88e8d85291', '20160319162206000001', null, '2016-03-19 16:22:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('55', '01', '18510626143', '2c7a5a6bfa4b5baee3b981b7803c3747', '20160319163617000002', null, '2016-03-19 16:36:17', 'F');
INSERT INTO `t_user_login_info` VALUES ('56', '01', '18758237434', null, '20160325151450000003', null, '2016-03-25 15:14:50', 'F');
INSERT INTO `t_user_login_info` VALUES ('57', '01', '15237883962', 'd9b1d7db4cd6e70935368a1efb10e377', '20160325170507000008', null, '2016-03-25 17:05:07', 'F');
INSERT INTO `t_user_login_info` VALUES ('58', '01', '15757120496', null, '20160326135002000011', null, '2016-03-26 13:50:02', 'F');
INSERT INTO `t_user_login_info` VALUES ('59', '01', '15364839838', null, '20160326214337000014', null, '2016-03-26 21:43:37', 'F');
INSERT INTO `t_user_login_info` VALUES ('60', '01', '15336247581', null, '20160328103827000016', null, '2016-03-28 10:38:27', 'F');
INSERT INTO `t_user_login_info` VALUES ('61', '01', '15369874154', null, '20160328115503000017', null, '2016-03-28 11:55:03', 'F');
INSERT INTO `t_user_login_info` VALUES ('62', '01', '18018786542', null, '20160330103452000022', null, '2016-03-30 10:34:52', 'F');
INSERT INTO `t_user_login_info` VALUES ('63', '01', '15281955367', null, '20160330111658000027', null, '2016-03-30 11:16:58', 'F');
INSERT INTO `t_user_login_info` VALUES ('64', '01', '15538910081', null, '20160330182416000030', null, '2016-03-30 18:24:16', 'F');
INSERT INTO `t_user_login_info` VALUES ('65', '01', '18686096487', null, '20160331031631000035', null, '2016-03-31 03:16:31', 'F');
INSERT INTO `t_user_login_info` VALUES ('66', '01', '13958090268', null, '20160331094405000041', null, '2016-03-31 09:44:05', 'F');
INSERT INTO `t_user_login_info` VALUES ('67', '01', '18758098053', '70873e8580c9900986939611618d7b1e', '20160331171852000054', null, '2016-03-31 17:18:52', 'F');
INSERT INTO `t_user_login_info` VALUES ('68', '01', '18553688395', null, '20160401142108000001', null, '2016-04-01 14:21:08', 'F');
INSERT INTO `t_user_login_info` VALUES ('69', '01', '15231775306', null, '20160401151713000002', null, '2016-04-01 15:17:13', 'F');
INSERT INTO `t_user_login_info` VALUES ('70', '01', '15109163912', null, '20160401203227000004', null, '2016-04-01 20:32:27', 'F');
INSERT INTO `t_user_login_info` VALUES ('71', '01', '15991854631', null, '20160401220941000006', null, '2016-04-01 22:09:41', 'F');
INSERT INTO `t_user_login_info` VALUES ('72', '01', '18089162779', null, '20160402135344000007', null, '2016-04-02 13:53:44', 'F');
INSERT INTO `t_user_login_info` VALUES ('73', '01', '13271933069', null, '20160402174714000009', null, '2016-04-02 17:47:14', 'F');
INSERT INTO `t_user_login_info` VALUES ('74', '01', '13393680099', null, '20160403221352000011', null, '2016-04-03 22:13:52', 'F');
INSERT INTO `t_user_login_info` VALUES ('75', '01', '15706055722', null, '20160405162922000012', null, '2016-04-05 16:29:22', 'F');
INSERT INTO `t_user_login_info` VALUES ('76', '01', '15399450628', null, '20160405170556000016', null, '2016-04-05 17:05:56', 'F');
INSERT INTO `t_user_login_info` VALUES ('77', '01', '13521079978', null, '20160405225527000018', null, '2016-04-05 22:55:27', 'F');
INSERT INTO `t_user_login_info` VALUES ('78', '01', '13880904115', null, '20160406185146000020', null, '2016-04-06 18:51:46', 'F');
INSERT INTO `t_user_login_info` VALUES ('79', '01', '15297134936', null, '20160406191840000022', null, '2016-04-06 19:18:40', 'F');
INSERT INTO `t_user_login_info` VALUES ('80', '01', '13666931387', null, '20160406231206000024', null, '2016-04-06 23:12:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('81', '01', '18642836547', null, '20160407060417000026', null, '2016-04-07 06:04:17', 'F');
INSERT INTO `t_user_login_info` VALUES ('82', '01', '18758919880', null, '20160408055933000029', null, '2016-04-08 05:59:33', 'F');
INSERT INTO `t_user_login_info` VALUES ('83', '01', '15618209810', null, '20160410075251000032', null, '2016-04-10 07:52:51', 'F');
INSERT INTO `t_user_login_info` VALUES ('84', '01', '13536960782', null, '20160410235847000034', null, '2016-04-10 23:58:47', 'F');
INSERT INTO `t_user_login_info` VALUES ('85', '01', '18609423213', null, '20160411085352000036', null, '2016-04-11 08:53:52', 'F');
INSERT INTO `t_user_login_info` VALUES ('86', '01', '13625810755', null, '20160411103038000038', null, '2016-04-11 10:30:38', 'F');
INSERT INTO `t_user_login_info` VALUES ('87', '01', '15868853171', null, '20160411103559000040', null, '2016-04-11 10:35:59', 'F');
INSERT INTO `t_user_login_info` VALUES ('88', '01', '13606621157', null, '20160411114623000043', null, '2016-04-11 11:46:23', 'F');
INSERT INTO `t_user_login_info` VALUES ('89', '01', '15757156796', null, '20160411172229000045', null, '2016-04-11 17:22:29', 'F');
INSERT INTO `t_user_login_info` VALUES ('90', '01', '18616276027', null, '20160412110108000048', null, '2016-04-12 11:01:08', 'F');
INSERT INTO `t_user_login_info` VALUES ('91', '01', '15871108489', null, '20160412125049000050', null, '2016-04-12 12:50:49', 'F');
INSERT INTO `t_user_login_info` VALUES ('92', '01', '18311376935', null, '20160412223530000053', null, '2016-04-12 22:35:30', 'F');
INSERT INTO `t_user_login_info` VALUES ('93', '01', '15990038130', null, '20160413112729000055', null, '2016-04-13 11:27:29', 'F');
INSERT INTO `t_user_login_info` VALUES ('94', '01', '18682093431', null, '20160414093658000060', null, '2016-04-14 09:36:58', 'F');
INSERT INTO `t_user_login_info` VALUES ('95', '01', '15226030379', null, '20160414110526000063', null, '2016-04-14 11:05:26', 'F');
INSERT INTO `t_user_login_info` VALUES ('96', '01', '18872194799', null, '20160415154554000071', null, '2016-04-15 15:45:54', 'F');
INSERT INTO `t_user_login_info` VALUES ('97', '01', '18295368889', null, '20160415180159000072', null, '2016-04-15 18:01:59', 'F');
INSERT INTO `t_user_login_info` VALUES ('98', '01', '13009616251', null, '20160416120543000074', null, '2016-04-16 12:05:43', 'F');
INSERT INTO `t_user_login_info` VALUES ('99', '01', '15961510191', null, '20160416153815000076', null, '2016-04-16 15:38:15', 'F');
INSERT INTO `t_user_login_info` VALUES ('100', '01', '15759575182', null, '20160416180939000078', null, '2016-04-16 18:09:39', 'F');
INSERT INTO `t_user_login_info` VALUES ('101', '01', '18233910252', null, '20160416204806000080', null, '2016-04-16 20:48:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('102', '01', '13767448167', null, '20160417075014000081', null, '2016-04-17 07:50:14', 'F');
INSERT INTO `t_user_login_info` VALUES ('103', '01', '15132797695', null, '20160417080158000083', null, '2016-04-17 08:01:58', 'F');
INSERT INTO `t_user_login_info` VALUES ('104', '01', '13892599049', null, '20160417122101000084', null, '2016-04-17 12:21:01', 'F');
INSERT INTO `t_user_login_info` VALUES ('105', '01', '18677772551', null, '20160421093510000001', null, '2016-04-21 09:35:10', 'F');
INSERT INTO `t_user_login_info` VALUES ('106', '01', '18710222125', null, '20160421140919000010', null, '2016-04-21 14:09:19', 'F');
INSERT INTO `t_user_login_info` VALUES ('107', '01', '13648686302', null, '20160421150445000012', null, '2016-04-21 15:04:45', 'F');
INSERT INTO `t_user_login_info` VALUES ('108', '01', '13846073723', null, '20160421171425000014', null, '2016-04-21 17:14:25', 'F');
INSERT INTO `t_user_login_info` VALUES ('109', '01', '13917331768', null, '20160421204823000016', null, '2016-04-21 20:48:23', 'F');
INSERT INTO `t_user_login_info` VALUES ('110', '01', '15822157063', null, '20160422070314000018', null, '2016-04-22 07:03:14', 'F');
INSERT INTO `t_user_login_info` VALUES ('111', '01', '18346143181', null, '20160422174054000001', null, '2016-04-22 17:40:54', 'F');
INSERT INTO `t_user_login_info` VALUES ('112', '01', '13517983236', null, '20160506225738000005', '2016-05-06 22:57:38', '2016-05-06 22:57:38', 'F');
INSERT INTO `t_user_login_info` VALUES ('113', '07', '3CC9C8EBC32846D412EBC539835827D4', null, '20160506225738000005', '2016-05-06 22:57:38', '2016-05-06 22:57:38', 'F');
INSERT INTO `t_user_login_info` VALUES ('114', '01', '18485430429', null, '20160507191731000012', '2016-05-07 19:17:31', '2016-05-07 19:17:31', 'F');
INSERT INTO `t_user_login_info` VALUES ('115', '07', '467999840BAF0BA79CE144C429336C2F', null, '20160507191731000012', '2016-05-07 19:17:31', '2016-05-07 19:17:31', 'F');
INSERT INTO `t_user_login_info` VALUES ('116', '01', '13083981615', null, '20160507224306000014', '2016-05-07 22:43:06', '2016-05-07 22:43:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('117', '02', 'o5W17wYGYoc5leQv2IosmqcyQzW8', null, '20160507224306000014', '2016-05-07 22:43:06', '2016-05-07 22:43:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('118', '01', '13051557897', null, '20160510222833000003', '2016-05-10 22:28:33', '2016-05-10 22:28:33', 'F');
INSERT INTO `t_user_login_info` VALUES ('119', '01', '18868119998', null, '20160512170457000015', '2016-05-12 17:04:57', '2016-05-12 17:04:57', 'F');
INSERT INTO `t_user_login_info` VALUES ('120', '01', '15711420219', null, '20160603120249000004', '2016-06-03 12:02:49', '2016-06-03 12:02:49', 'F');
INSERT INTO `t_user_login_info` VALUES ('121', '01', '15868189269', null, '20160607141930000006', '2016-06-07 14:19:30', '2016-06-07 14:19:30', 'F');
INSERT INTO `t_user_login_info` VALUES ('122', '02', 'o5W17wXydxfF9_FJvTajgy_wU8r0', null, '20160607141930000006', '2016-06-07 14:19:30', '2016-06-07 14:19:30', 'F');
INSERT INTO `t_user_login_info` VALUES ('123', '01', '15868836344', null, '20160608140802000016', '2016-06-08 14:08:02', '2016-06-08 14:08:02', 'F');
INSERT INTO `t_user_login_info` VALUES ('124', '07', '57D32F9AA1A34E82730584EE315400FB', null, '20160608140802000016', '2016-06-08 14:08:02', '2016-06-08 14:08:02', 'F');
INSERT INTO `t_user_login_info` VALUES ('125', '01', '13656699641', null, '20160612103112000018', '2016-06-12 10:31:12', '2016-06-12 10:31:12', 'F');
INSERT INTO `t_user_login_info` VALUES ('126', '01', '13957168758', null, '20160614213506000020', '2016-06-14 21:35:06', '2016-06-14 21:35:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('127', '02', 'o5W17wVUyPyLSo9_LyHnI0yNDu4I', null, '20160614213506000020', '2016-06-14 21:35:06', '2016-06-14 21:35:06', 'F');
INSERT INTO `t_user_login_info` VALUES ('128', '01', '15966162351', null, '20160617175728000022', '2016-06-17 17:57:28', '2016-06-17 17:57:28', 'F');
INSERT INTO `t_user_login_info` VALUES ('129', '02', 'o5W17wevmseJVGnHG8yucNbmpgSQ', null, '20160617175728000022', '2016-06-17 17:57:28', '2016-06-17 17:57:28', 'F');
INSERT INTO `t_user_login_info` VALUES ('130', '01', '17717587680', null, '20160618120728000024', '2016-06-18 12:07:28', '2016-06-18 12:07:28', 'F');
INSERT INTO `t_user_login_info` VALUES ('131', '02', 'o5W17wfxKL7LrTe0rbWnLlgdnep0', null, '20160618120728000024', '2016-06-18 12:07:28', '2016-06-18 12:07:28', 'F');
INSERT INTO `t_user_login_info` VALUES ('132', '01', '13666636757', null, '20160618195535000027', '2016-06-18 19:55:35', '2016-06-18 19:55:35', 'F');
INSERT INTO `t_user_login_info` VALUES ('133', '02', 'o5W17wQHPpq-iPRB-mp9EeCfAjBo', null, '20160618195535000027', '2016-06-18 19:55:35', '2016-06-18 19:55:35', 'F');
INSERT INTO `t_user_login_info` VALUES ('134', '01', '13616555790', null, '20160619162350000001', '2016-06-19 16:23:50', '2016-06-19 16:23:50', 'F');
INSERT INTO `t_user_login_info` VALUES ('135', '01', '18510626143', null, '20160620110529000001', '2016-06-20 11:05:29', '2016-06-20 11:05:29', 'F');

-- ----------------------------
-- Table structure for t_user_preference
-- ----------------------------
DROP TABLE IF EXISTS `t_user_preference`;
CREATE TABLE `t_user_preference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preference_code` varchar(20) DEFAULT NULL COMMENT '偏好唯一编码',
  `user_code` varchar(20) DEFAULT NULL COMMENT '用户编码',
  `prefernece_type_code` varchar(20) DEFAULT NULL COMMENT '偏好类型编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user_preference
-- ----------------------------
INSERT INTO `t_user_preference` VALUES ('1', '20160318193811000002', '20160311171240000001', '5;6', '2016-03-18 19:38:11', '2016-03-18 19:38:11', 'F');
INSERT INTO `t_user_preference` VALUES ('2', '20160318194923000007', '20160318194815000005', '6;7;5', '2016-03-18 19:49:23', '2016-03-18 19:49:23', 'F');
INSERT INTO `t_user_preference` VALUES ('3', '20160318225031000010', '20160318225024000009', '0;1;2', '2016-03-18 22:50:31', '2016-03-18 22:50:31', 'F');
INSERT INTO `t_user_preference` VALUES ('4', '20160319100609000016', '20160319100603000015', '4;5;8', '2016-03-19 10:06:09', '2016-03-19 10:06:09', 'F');
INSERT INTO `t_user_preference` VALUES ('5', '20160319105155000025', '20160319105141000024', '1;2;4', '2016-03-19 10:51:55', '2016-03-19 10:51:55', 'F');
INSERT INTO `t_user_preference` VALUES ('6', '20160319150716000004', '20160319150712000003', '1;0;2', '2016-03-19 15:07:16', '2016-03-19 15:07:16', 'F');
INSERT INTO `t_user_preference` VALUES ('7', '20160319165855000004', '20160319163617000002', '5;6;7', '2016-03-19 16:58:55', '2016-03-19 16:58:55', 'F');
INSERT INTO `t_user_preference` VALUES ('8', '20160325151744000007', '20160325151450000003', '4;5', '2016-03-25 15:17:44', '2016-03-25 15:17:44', 'F');
INSERT INTO `t_user_preference` VALUES ('9', '20160326135013000012', '20160326135002000011', '0;2;1', '2016-03-26 13:50:13', '2016-03-26 13:50:13', 'F');
INSERT INTO `t_user_preference` VALUES ('10', '20160406161125000001', '20160405181849000001', '10;7;3', '2016-04-06 16:11:25', '2016-04-06 16:11:25', 'F');
INSERT INTO `t_user_preference` VALUES ('11', '20160407164948000002', '20160407164939000001', '9;0', '2016-04-07 16:49:48', '2016-04-07 16:49:48', 'F');
INSERT INTO `t_user_preference` VALUES ('12', '20160408102107000006', '20160408102104000005', '6', '2016-04-08 10:21:07', '2016-04-08 10:21:07', 'F');
INSERT INTO `t_user_preference` VALUES ('13', '20160413135151000002', '20160413134550000001', '7;3;2', '2016-04-13 13:51:51', '2016-04-13 13:51:51', 'F');
INSERT INTO `t_user_preference` VALUES ('14', '20160419101500000002', '20160419101453000001', '9;0;5', '2016-04-19 10:15:00', '2016-04-19 10:15:00', 'F');
INSERT INTO `t_user_preference` VALUES ('15', '20160603120259000005', '20160603120249000004', '0;9', '2016-06-03 12:02:59', '2016-06-03 12:02:59', 'F');
INSERT INTO `t_user_preference` VALUES ('16', '20160607141938000007', '20160607141930000006', '2;6;5', '2016-06-07 14:19:38', '2016-06-07 14:19:38', 'F');
INSERT INTO `t_user_preference` VALUES ('17', '20160612103130000019', '20160612103112000018', '5;2', '2016-06-12 10:31:30', '2016-06-12 10:31:30', 'F');
INSERT INTO `t_user_preference` VALUES ('18', '20160614213532000021', '20160614213506000020', '2;1;10', '2016-06-14 21:35:32', '2016-06-14 21:35:32', 'F');
INSERT INTO `t_user_preference` VALUES ('19', '20160617175732000023', '20160617175728000022', '8', '2016-06-17 17:57:32', '2016-06-17 17:57:32', 'F');
INSERT INTO `t_user_preference` VALUES ('20', '20160618120747000025', '20160618120728000024', '8;3;2', '2016-06-18 12:07:47', '2016-06-18 12:07:47', 'F');
INSERT INTO `t_user_preference` VALUES ('21', '20160618195609000028', '20160618195535000027', '2;3;6', '2016-06-18 19:56:09', '2016-06-18 19:56:09', 'F');
INSERT INTO `t_user_preference` VALUES ('22', '20160619162406000002', '20160619162350000001', '5;2;3', '2016-06-19 16:24:06', '2016-06-19 16:24:06', 'F');

-- ----------------------------
-- Table structure for t_user_right
-- ----------------------------
DROP TABLE IF EXISTS `t_user_right`;
CREATE TABLE `t_user_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `right_url` varchar(255) DEFAULT NULL COMMENT '资源地址',
  `right_name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `remarks` varchar(255) DEFAULT NULL,
  `is_public` int(11) DEFAULT NULL COMMENT '是否公有资源',
  `right_code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` varchar(2) DEFAULT NULL COMMENT '资源状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_right
-- ----------------------------
INSERT INTO `t_user_right` VALUES ('83', '/student/client/1/deleteStudent', '删除学员', null, '1', '20160321173911000027', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('84', '/user/client/1/update', '修改用户信息', null, '1', '20160321173911000038', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('85', '/order/client/1/delete', '删除未付款订单', null, '1', '20160321173911000023', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('86', '/courseSearch/client/1/keys', '获取课程搜索关键词', null, '0', '20160321173911000011', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('87', '/order/client/1/remove', '移除完成订单', null, '1', '20160321173911000024', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('88', '/user/client/1/loginByPassword', '通过密码登录', null, '0', '20160321173911000042', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('89', '/userPreference/client/1/all', '查询所有偏好', null, '1', '20160321173911000043', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('90', '/user/client/1/centerIndex', '用户个人中心首页', null, '1', '20160321173911000040', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('91', '/collect/client/1/cancel', '取消收藏', null, '1', '20160321173911000034', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('92', '/trainer/client/1/trainerDeatils', '获取教练详情', null, '1', '20160321173911000030', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('93', '/course/client/1/courseList', '课程列表', null, '0', '20160321173911000006', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('94', '/user/client/1/resetPassword', '修改密码', null, '1', '20160321173911000036', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('95', '/notice/client/1/delete', '删除通知', null, '1', '20160321173911000012', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('96', '/suggestion/client/1/add', '用户反馈', null, '1', '20160321173911000046', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('97', '/activity/client/1/detail', '活动详情', null, '0', '20160321173911000002', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('98', '/user/client/1/loginByCode', '通过验证码登录', null, '0', '20160321173911000041', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('99', '/notice/client/1/list', '通知列表', null, '1', '20160321173911000013', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('100', '/course/client/1/courseSearch', '课程搜索', null, '0', '20160321173911000010', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('101', '/order/client/1/submitActivityOrder', '提交活动订单', null, '1', '20160321173911000021', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('102', '/order/client/1/appoint', '产品预约', null, '1', '20160321173911000015', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('103', '/coupon/client/1/specialList', '我的某一活动或课程的优惠券列表', null, '1', '20160321173911000004', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('104', '/order/client/1/createActivityOrder', '活动立即报名', null, '1', '20160321173911000020', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('105', '/course/client/1/courseDetails', '课程详细信息', null, '0', '20160321173911000009', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('106', '/coupon/client/1/unusedNum', '获取可用优惠券个数', null, '1', '20160321173911000005', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('107', '/order/client/1/createCourseOrder', '立即报名', null, '1', '20160321173911000016', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('108', '/collect/client/1/list', '用户收藏列表', null, '1', '20160321173911000033', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('109', '/collect/client/1/collectList', '用户收藏列表', null, '1', '20160321173911000032', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('110', '/student/client/1/update', '修改学员信息', null, '1', '20160321173911000029', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('111', '/user/client/1/getVerifyCode', '获取验证码', null, '0', '20160321173911000037', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('112', '/user/client/1/detail', '获取用户信息', null, '1', '20160321173911000035', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('113', '/order/client/1/list', '订单列表', null, '1', '20160321173911000022', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('114', '/student/client/1/addNewStudent', '添加新学员', null, '1', '20160321173911000026', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('115', '/student/client/1/stuList', '学员列表', null, '1', '20160321173911000025', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('116', '/collect/client/1/collect', '用户收藏', null, '1', '20160321173911000031', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('117', '/course/client/1/courseIndex', '课程首页', null, '0', '20160321173911000007', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('118', '/activity/client/1/indexPage', '活动首页', null, '0', '20160321173911000001', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('119', '/coupon/client/1/list', '我的优惠券列表', null, '1', '20160321173911000003', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('120', '/order/client/1/getCharge', '发起支付，获取凭证', null, '1', '20160321173911000014', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('121', '/user/client/1/img/token', '获取图片上传token', null, '1', '20160321173911000039', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('122', '/course/client/1/courseFilter', '课程筛选', null, '0', '20160321173911000008', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('123', '/order/client/1/detail', '订单详情', null, '1', '20160321173911000018', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('124', '/order/client/1/courseOrderDetails', '课程订单详情', null, '1', '20160321173911000017', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('125', '/student/client/1/detail', '获取学员信息', null, '1', '20160321173911000028', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('126', '/userPreference/client/1/selected', '查询用户偏好', null, '1', '20160321173911000045', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('127', '/userPreference/client/1/add', '用户设置偏好', null, '1', '20160321173911000044', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');
INSERT INTO `t_user_right` VALUES ('128', '/order/client/1/submitCourseOrder', '提交课程订单', null, '1', '20160321173911000019', '2016-03-21 17:39:11', '2016-03-21 17:39:11', 'F');

-- ----------------------------
-- Table structure for t_user_suggestion
-- ----------------------------
DROP TABLE IF EXISTS `t_user_suggestion`;
CREATE TABLE `t_user_suggestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(512) DEFAULT NULL COMMENT '反馈内容',
  `user_code` char(20) DEFAULT NULL COMMENT '用户唯一编码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(1) DEFAULT NULL COMMENT '信息状态',
  `suggestion_code` varchar(20) DEFAULT NULL COMMENT '唯一编码',
  `telephone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user_suggestion
-- ----------------------------
INSERT INTO `t_user_suggestion` VALUES ('1', '啦啦啦啦啦', '20160408102104000005', '2016-04-18 16:58:31', '2016-04-18 16:58:31', 'F', '20160418165831000001', '18510626143');
INSERT INTO `t_user_suggestion` VALUES ('2', '啦啦啦啦啦啦啦', '20160408102104000005', '2016-04-18 16:59:50', '2016-04-18 16:59:50', 'F', '20160418165950000002', '18510626143');
INSERT INTO `t_user_suggestion` VALUES ('3', '啦啦啦', '20160408102104000005', '2016-04-19 13:43:02', '2016-04-19 13:43:02', 'F', '20160419134302000001', '188');
INSERT INTO `t_user_suggestion` VALUES ('4', '我的最', '20160318225024000009', '2016-05-24 19:42:54', '2016-05-24 19:42:54', 'F', '20160524194254000001', '12345678901');
INSERT INTO `t_user_suggestion` VALUES ('5', '?????', '20160607141930000006', '2016-06-07 14:21:15', '2016-06-07 14:21:15', 'F', '20160607142115000008', '15855896859');

-- ----------------------------
-- Table structure for t_user_type
-- ----------------------------
DROP TABLE IF EXISTS `t_user_type`;
CREATE TABLE `t_user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_code` varchar(20) DEFAULT NULL,
  `user_type_name` varchar(20) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `deleted` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_type
-- ----------------------------
INSERT INTO `t_user_type` VALUES ('1', '0001', '普通用户', null, 'F', '2016-02-23 17:55:11', '2016-02-23 17:55:13');

-- ----------------------------
-- Table structure for t_venue_info
-- ----------------------------
DROP TABLE IF EXISTS `t_venue_info`;
CREATE TABLE `t_venue_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT ' 名称',
  `code` varchar(20) DEFAULT NULL COMMENT '编码',
  `address` varchar(40) DEFAULT NULL COMMENT '地址',
  `telephone` varchar(15) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `deleted` char(2) DEFAULT NULL,
  `projects` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_venue_info
-- ----------------------------
