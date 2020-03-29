create database shopping;

use shopping;

create table users (
 users_id bigint auto_increment primary key comment '用户编号',
 users_name varchar(100) not null comment '用户名称',
 users_password varchar(256) not null comment '用户密码',
 gmt_create bigint comment '注册时间',
 gmt_modified bigint comment '修改时间',
 bio varchar(300) comment '个性签名'
);

create table users_avatar (
	avatar_id bigint auto_increment primary key comment '头像编号',
	avatar varchar(460) not null comment '用户头像',
	users_id bigint not null,
	foreign key (users_id) references users (users_id)
);

create table goods_type (
	type_id bigint auto_increment primary key comment '类型编号',
	type varchar(100) not null comment '商品类型'
);

create table goods (
	goods_id bigint auto_increment primary key comment '商品编号',
	goods_name varchar(100) not null comment '商品名称',
	type_id bigint not null comment '类型编号',
	price decimal(7,2) not null default '0' comment '商品价格',
	gmt_create bigint comment '添加时间',
	gmt_modified bigint comment '修改时间',
	foreign key (type_id) references goods_type (type_id)
);

create table goods_images (
	images_id bigint auto_increment primary key comment '图片编号',
	images varchar(460) not null comment '图片路径',
	goods_id bigint not null comment '商品编号',
	foreign key (goods_id) references goods (goods_id)
);

create table order_form (
	order_id bigint auto_increment primary key comment '订单编号',
	goods_id bigint not null,
	users_id bigint not null,
	foreign key (goods_id) references goods (goods_id),
	foreign key (users_id) references users (users_id)
);