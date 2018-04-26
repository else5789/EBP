drop database IF EXISTS Vpi;
create database Vpi;
use Vpi;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) PRIMARY KEY auto_increment,
  `username` varchar(20) NOT NULL,	-- 登录名
  `password` varchar(20) NOT NULL,-- 密码
  `name` varchar(255) NOT NULL,		-- 真实姓名
  `gender` int NOT NULL,		-- 0为女,1为男
  `age` int NOT NULL,-- 年龄
  `idCard` varchar(18) NOT NULL,-- 身份证
  `address` varchar(255) NOT NULL,-- 地址
  `telno` varchar(15) NOT NULL,-- 电话
-- `regTime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `regTime` timestamp NOT NULL default CURRENT_TIMESTAMP,-- 注册时间
  `balance` double(10,2) default 0.00,	-- 账户余额
  `status` int(11) default 1		-- 0为禁用状态,1为激活状态
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Table structure for table `orders`
--
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) PRIMARY KEY auto_increment,
  `commitTime` timestamp NOT NULL default CURRENT_TIMESTAMP,-- 订单提交时间
  `amount` double(10,2) NOT NULL ,-- 订单数量
  `address` varchar(40) not null,-- 收获地址
  `phone` varchar(15) not null,-- 收获电话
  `recvname` varchar(20) not null,-- 收获人
  `uid` int(11) NOT NULL,-- 下订单者
  FOREIGN KEY(uid) REFERENCES user(uid)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Table structure for table `orderList`
--
-- 
DROP TABLE IF EXISTS `orderList`;
CREATE TABLE `orderList` (
  `lid` int(11) PRIMARY KEY auto_increment,
  `descs` varchar(255) NOT NULL, -- 一次性描述，可以直接用外键关联下面商品表的 tid
  `price` double(10,2) NOT NULL,-- 单价
  `quantity` int(11) NOT NULL,		-- 数量
  `amount` double(10,2) NOT NULL, -- 总额
  `oid` int(11) NOT NULL,
  `status` int default 1 not null,-- 订单状态:1-待处理 2-已发货 3-运输中 4-已收货
   FOREIGN KEY(oid) REFERENCES orders(oid)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Table structure for table `adminUser`
--

DROP TABLE IF EXISTS `adminUser`;
CREATE TABLE `adminUser` (
  `aid` int(11) PRIMARY KEY auto_increment,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Table structure for table `ticket`
--
-- 只卖一类商品
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) PRIMARY KEY auto_increment,
  `descs` varchar(255) NOT NULL,
 -- `startTime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `amount` int(11) NOT NULL,		-- 商品总数
  `balance` int(11) NOT NULL,		-- 剩余数量
  `price` double(10,2) NOT NULL,	-- 单价
  `status` int default 1				-- 0为下架状态,1为上架状态
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `productdetail`;
CREATE TABLE `productdetail` (
    `pdid` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `pId` INT(11) NOT NULL,
    `descs` VARCHAR(255) NOT NULL,
    `images` VARCHAR(255) NOT NULL,
    `sequence` VARCHAR(255) NOT NULL,
    FOREIGN KEY (pId)
        REFERENCES product (pid)
)  DEFAULT CHARSET=UTF8 AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `scid` int(11) PRIMARY KEY auto_increment,			 -- 购物车id
  `addTime` timestamp NOT NULL default CURRENT_TIMESTAMP,-- 购物车产生时间
  `userId` int(11) NOT NULL,
  FOREIGN KEY(userId) REFERENCES user(uid)
)DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `shoppingcartdetail`;
CREATE TABLE `shoppingcartdetail` (
  `scdid` int(11) PRIMARY KEY auto_increment,			-- 购物车细节id
  `scid` int(11) NOT NULL,								-- 对应购物车id
  `pId` int(11) NOT NULL,								-- 对应商品的id
  `quantity` int(11) NOT NULL,							-- 购物数量
  FOREIGN KEY(scid) REFERENCES shoppingcart(scid),
  FOREIGN KEY(pId) REFERENCES product(pid)
)DEFAULT CHARSET=utf8;


