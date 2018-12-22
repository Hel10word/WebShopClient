--创建数据库 
create Database ZhangBFWebShop_JSP

--使用数据库
use ZhangBFWebShop_JSP

--======================================================================================================
--创建商品类型  good_type (商品类型表) (类型编号,类型名称)
--======================================================================================================
CREATE TABLE good_type (
  ID int identity(1,1)  PRIMARY KEY,
  TYPENAME varchar(50),
)

--给商品类型表添加数据 
INSERT INTO good_type VALUES ('手机');
INSERT INTO good_type VALUES ('电脑');
INSERT INTO good_type VALUES ('数码');
INSERT INTO good_type VALUES ('美食');
INSERT INTO good_type VALUES ('书籍');

--更新商品类型表的数据
update good_type set TYPENAME = '娱乐' where ID = 1;

delete good_type



--======================================================================================================
--创建good( 商品表)(商品编号,商品名称,商品类型编号,商品图片路径,商品价格,商品描述,商品上架时间)
--======================================================================================================
CREATE TABLE good (
  ID int PRIMARY KEY,
  name varchar(50),
  typeid int,
  imgpath varchar(50),
  price float,
  describe text,
  createTime datetime  
)

--给商品表添加数据
INSERT INTO good VALUES ('1', 'Apple iPhone 8 ', '1', 'images/59b848cdN41d277a2.jpg', '5888', 'Apple iPhone 8 (A1863) 64GB 金色 移动联通电信4G手机', '2017-10-14 09:17:50');
INSERT INTO good VALUES ('2', '三星 Galaxy S8', '1', 'images/59ccd187N8510453f.jpg', '5988', '三星 Galaxy S8（SM-G9500）4GB+64GB 谜夜黑（加勒比海盗定制版）移动联通电信4G手机 双卡双待', '2017-10-14 09:20:21');
INSERT INTO good VALUES ('3', '联想（ThinkPad）', '2', 'images/584b56beN56eea1f6.jpg', '5299', '联想（ThinkPad） E470c（20H3A001CD）14英寸笔记本电脑（i5-6200U 8G 256G SSD 2G独显 Win10）黑色', '2017-10-14 09:22:04');
INSERT INTO good VALUES ('4', 'Apple MacBook Pro', '2', 'images/5631d2b6N8fa76f15.jpg', '13388', '15.4英寸笔记本电脑 银色(Core i7 处理器/16GB内存/256GB SSD闪存/Retina屏 MJLQ2CH/A)', '2017-10-14 09:26:08');
INSERT INTO good VALUES ('5', 'Beats X 蓝牙无线', '3', 'images/58981d4aNffe39bcc.jpg', '1188', 'Beats X 蓝牙无线 入耳式耳机 运动耳机 手机耳机 游戏耳机 带麦可通话 黑色', '2017-10-14 09:28:55');
INSERT INTO good VALUES ('6', '佳能（Canon）', '3', 'images/58d49036N367570f7.jpg', '5499', '佳能（Canon）EOS 800D 单反套机 （EF-S 18-55mm f/4-5.6 IS STM 镜头）', '2017-10-14 09:30:59');
INSERT INTO good VALUES ('7', '森海塞尔（Sennheiser）', '3', 'images/595c5e84N0ad2bd74.jpg', '1499', '森海塞尔（Sennheiser）MOMENTUM In-Ear Wireless 馒头蓝牙入耳式耳机 黑色', '2017-10-14 09:36:46');
INSERT INTO good VALUES ('8', '闪迪（SanDisk）', '3', 'images/58f47d97Nfa8606cf.jpg', '169', '闪迪（SanDisk）USB-C至尊超极速SD UHS-II读卡器', '2017-10-14 09:39:18');
INSERT INTO good VALUES ('9', '360安全路由P2', '3', 'images/58ef1174Nf512c52f.jpg', '139', '360安全路由P2 1200M千兆5G双频四天线智能无线路由器 wifi信号放大 光纤宽带大户型穿墙路由', '2017-10-14 09:41:42');
INSERT INTO good VALUES ('10', '360 智能摄像机', '3', 'images/571f36f6N1f0791f5.jpg', '249', '360 智能摄像机 小水滴1080P版 网络wifi家用监控高清摄像头 高清夜视 双向通话 远程监控 哑白', '2017-10-14 09:43:33');
INSERT INTO good VALUES ('12', '尼康（Nikon）J5 微单相机', '3', 'images/5b14ae24N680a312e.jpg', '1499', '尼康（Nikon）J5 微单相机 尼克尔 VR防抖 J5+1 10-30mm f/3.5-5.6 PD镜头 白色（可更换镜头 4K视频录制）', '2018-06-08 15:16:49');

--查询语句  
select id,name,typeid,imgpath,price,describe from good order by createTime desc

select id,name,typeid,imgpath,price,describe from good where typeid=1 order by createTime desc


--======================================================================================================
--创建 Carousel( 轮播表)(编号,商品轮播标题,轮播图片路径,用户创建时间)
--======================================================================================================
CREATE TABLE Carousel (
  ID int PRIMARY KEY,
  title varchar(50),
  imgpath varchar(50),
  createTime varchar(50)  
)

--添加数据
INSERT INTO Carousel VALUES ('1', '时尚生活温心鲜果', 'images/1.jpg', '2018-06-02 10:06:30');
INSERT INTO Carousel VALUES ('2', '高端家电品质享受', 'images/2.jpg', '2018-06-02 10:07:01');
INSERT INTO Carousel VALUES ('3', '时尚生活温心鲜果', 'images/3.jpg', '2018-06-02 10:07:33');








--======================================================================================================
--创建 good_comment( 商品评论表)(商品编号,评论对应的商品,评论内容,评论人,评论时间)
--======================================================================================================

CREATE TABLE good_comment (
  ID int PRIMARY KEY  NOT NULL REFERENCES good(id) on update cascade on delete cascade,
  Good_id varchar(50),
  content text,
  ip varchar(50),
  createtime datetime
)







--======================================================================================================
--创建 userinfo( 管理员用户表)(编号,用户名,用户密码,用户创建时间)
--======================================================================================================

CREATE TABLE userinfo (
  ID int PRIMARY KEY ,
  username varchar(50),
  password varchar(50),
  createtime datetime
)

--添加管理员信息
INSERT INTO userinfo VALUES ('1', 'root', 'root123', '2018-06-02 10:06:30');
INSERT INTO userinfo VALUES ('2', 'admin', 'admin', '2018-06-02 10:07:01');