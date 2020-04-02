create database shopping;

use shopping;

drop table if exists shopping_users;
create table shopping_users (
 users_id bigint auto_increment primary key comment '用户编号',
 users_name varchar(100) not null comment '用户名称',
 users_password varchar(256) not null comment '用户密码',
 gmt_create bigint comment '注册时间',
 gmt_modified bigint comment '修改时间',
 bio varchar(300) comment '个性签名'
);

drop table if exists users_avatar;
create table users_avatar (
	avatar_id bigint auto_increment primary key comment '头像编号',
	avatar varchar(460) not null comment '用户头像',
	users_id bigint not null
);

drop table if exists goods_type;
create table goods_type (
	type_id bigint auto_increment primary key comment '类型编号',
	type varchar(100) not null comment '商品类型'
);

drop table if exists goods;
create table goods (
	goods_id bigint auto_increment primary key comment '商品编号',
	goods_name varchar(100) not null comment '商品名称',
	type_id bigint not null comment '类型编号',
	price decimal(7,2) not null default '0' comment '商品价格',
	goods_describe  varchar(160) not null comment '商品描述',
	gmt_create bigint comment '添加时间',
	gmt_modified bigint comment '修改时间'
);

drop table if exists goods_images;
create table goods_images (
	images_id bigint auto_increment primary key comment '图片编号',
	images varchar(460) not null comment '图片路径',
	goods_id bigint not null comment '商品编号'
);

drop table if exists order_form;
create table order_form (
	order_id bigint auto_increment primary key comment '订单编号',
	goods_id bigint not null,
	users_id bigint not null
);

insert into shopping_users (users_name, users_password, bio) values ('users1', 'users1', '用户3号');
insert into shopping_users (users_name, users_password, bio) values ('users2', 'users2', '用户3号');

insert into users_avatar (avatar, users_id) values ('images/users-avatar/20190826144852.jpg', 1);
insert into users_avatar (avatar, users_id) values ('images/users-avatar/20190826144820.jpg', 2);

insert into goods_type (type) values('食品');
insert into goods_type (type) values('日用');
insert into goods_type (type) values('耳机');
insert into goods_type (type) values('服饰');

insert into goods (goods_name, type_id, price, goods_describe) values ('三只松鼠约辣辣条', 1, 10.90, '三只松鼠休闲零食儿童大辣片刀肉零食特产面素食小吃约辣辣条200g/盒');
insert into goods_images (images, goods_id) values('images/goods-images/027fc286c002decd.jpg', 1);

insert into goods (goods_name, type_id, price, goods_describe) values ('金字金华火腿片', 1, 72.00, '金字 金华火腿切片年货 无骨火腿片煲汤炒菜 熟食 400g/袋 ');
insert into goods_images (images, goods_id) values('images/goods-images/597aa738N37a3ec25.jpg', 2);

insert into goods (goods_name, type_id, price, goods_describe) values ('螺满地螺蛳粉', 1, 39.90, '螺满地螺蛳粉300g*5包装 广西柳州特产螺狮粉煮食类米粉方便面水煮型螺丝粉速食酸辣粉过桥米线');
insert into goods_images (images, goods_id) values('images/goods-images/5abb5175Nb9c4a9f3.jpg', 3);

insert into goods (goods_name, type_id, price, goods_describe) values (' 北极绒 热水袋', 2, 109.00, '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 智能充电防爆 电暖贴身保暖水电分离双色仿兔毛绒款');
insert into goods_images (images, goods_id) values('images/goods-images/82c86a750edef951.jpg', 4);

insert into goods (goods_name, type_id, price, goods_describe) values ('神奇牙刷', 2,  49.00, '超柔螺旋软毛牙刷6支装');
insert into goods_images (images, goods_id) values('images/goods-images/c8f531c46cba706c.jpg', 5);

insert into goods (goods_name, type_id, price, goods_describe) values ('索尼EX55AP', 3, 179.00, '重低音立体声耳机MDR-XB55AP 黑色 ');
insert into goods_images (images, goods_id) values('images/goods-images/5b0d0921N6b250e99.jpg', 6);

insert into goods (goods_name, type_id, price, goods_describe) values ('铁三角ATH-CK350iS', 3, 179.00, '立体声运动入耳式耳机 游戏耳麦 手机通话 黑色 ');
insert into goods_images (images, goods_id) values('images/goods-images/5b597aadNaaba2461.jpg', 7);

insert into goods (goods_name, type_id, price, goods_describe) values ('A21T恤', 4, 79.00, '以纯线上品牌A21春夏季2020男装 百搭白色上衣男宽松圆领短袖衣服男士T恤 R402131279 特白');
insert into goods_images (images, goods_id) values('images/goods-images/15f6327a6b5f1e53.jpg', 8);

insert into goods (goods_name, type_id, price, goods_describe) values ('高帮帆布鞋 166734C', 4, 49.00, 'Chuck Taylor All Star 高帮帆布鞋 166734C 黑色');
insert into goods_images (images, goods_id) values('images/goods-images/c4a85d8502a854ea.jpg', 9);



