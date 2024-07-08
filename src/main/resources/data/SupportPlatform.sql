drop database if exists support_platform;
create database support_platform;
use support_platform;

-- 表前缀
-- system：系统
-- merchant：商户
-- user：用户
-- group：群组

-- system_account 系统账号表
-- system_article 系统文章表
-- system_article_category 系统文章类别表

-- merchant_info 商户信息表
-- merchant_product 商户产品表
-- merchant_category 商户类别表（预留）
-- merchant_product_category 产品类别表（预留）
-- merchant_comment 商户评论表
-- merchant_product_comment 产品评论表
-- merchant_promotion 商户促销表

-- user_info 用户信息表
-- user_friend 用户好友表
-- user_friend_category 用户好友类别表
-- user_friend_application 用户好友申请表
-- user_favorite_merchant 用户商户收藏表
-- user_favorite_product 用户产品收藏表

-- group_info 群组信息表
-- group_member 群组成员表
-- group_history 群组信息历史表

SET FOREIGN_KEY_CHECKS = 0;

-- system_account 系统账号表
-- role_id 角色ID 1：admin 2：merchant 3：user
CREATE TABLE system_account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL
);
-- 插入system_account
INSERT INTO system_account (account_id, username, password, role_id) VALUES
(1, 'admin', 'admin', 1),
(2, 'merchant1', '1234', 2),
(3, 'merchant2', 'merchantpass2', 2),
(4, 'test', '1234', 3),
(5, 'user2', 'userpass2', 3),
(6, 'user3', 'userpass2', 3),
(7, 'user4', 'userpass2', 3);

-- system_article 系统文章表
CREATE TABLE system_article (
    article_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    category_id INT,
    author_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES system_article_category(category_id),
    FOREIGN KEY (author_id) REFERENCES system_account(account_id) ON DELETE CASCADE
);
-- 插入system_article
INSERT INTO system_article (title, content, category_id, author_id) VALUES
('2024年技术趋势', '关于2024年技术趋势的内容', 1, 1),
('瑜伽的健康益处', '关于瑜伽的内容', 2, 1),
('投资理财技巧', '关于投资理财的内容', 3, 1),
('在线教育的未来', '关于在线教育的内容', 4, 1);

-- system_article_category 系统文章类别表（预留）
CREATE TABLE system_article_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
-- 插入system_article_category
INSERT INTO system_article_category (category_name) VALUES
('技术'),
('健康'),
('金融'),
('教育');

-- merchant_info 商户信息表
CREATE TABLE merchant_info (
    merchant_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT NOT NULL,
    category_id INT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(255),
    business_type VARCHAR(255),
    business_environment VARCHAR(255),
    business_location VARCHAR(255),
    product_category VARCHAR(255),
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES system_account(account_id) ON DELETE CASCADE
);
-- 插入merchant_info
INSERT INTO merchant_info (merchant_id, owner_id, name, address, phone, email, category_id, business_type, business_environment, business_location, product_category, image_url) VALUES
(1, 2, '商户一', '北京市朝阳区', '1234567890', 'merchant1@example.com', 1, '零售', '线上', '中国', '电子产品', 'image1.jpg'),
(2, 3, '商户二', '上海市浦东新区', '0987654321', 'merchant2@example.com', 2, '餐饮', '线下', '中国', '食品', 'image2.jpg'),
(3, 2, '商户三', '深圳市南山区', '1122334455', 'merchant3@example.com', 3, '服装', '线上线下', '中国', '服务', 'image3.jpg'),
(4, 3, '商户四', '广州市天河区', '6677889900', 'merchant4@example.com', 3, '服装', '线上', '中国', '服装', 'image4.jpg'),
(5, 3, '面馆', '成都市郫都区', '6677889900', 'merchant4@example.com', 2, '餐饮', '线上', '中国', '食品', 'image4.jpg');

-- merchant_product 商户产品表
CREATE TABLE merchant_product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    merchant_id INT,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2),
    description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (merchant_id) REFERENCES merchant_info(merchant_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES merchant_product_category(category_id)
);
-- 插入merchant_product
INSERT INTO merchant_product (merchant_id, product_name, category_id, price, description, image_url) VALUES
(1, '笔记本电脑', 1, 5000.00, '高性能笔记本电脑', 'laptop.jpg'),
(1, '智能手机', 1, 3000.00, '最新智能手机', 'smartphone.jpg'),
(2, '牛仔裤', 2, 200.00, '舒适牛仔裤', 'jeans.jpg'),
(2, 'T恤', 2, 100.00, '纯棉T恤', 'tshirt.jpg');

-- merchant_category 商户类别表（预留）
CREATE TABLE merchant_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
-- 插入merchant_category
INSERT INTO merchant_category (category_id, category_name) VALUES
(1, '零售'),
(2, '餐饮'),
(3, '服装');

-- merchant_product_category 产品类别表（预留）
CREATE TABLE merchant_product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
-- 插入merchant_product_category
INSERT INTO merchant_product_category (category_id, category_name) VALUES
(1, '电子产品'),
(2, '服装'),
(3, '食品'),
(4, '家具');

-- merchant_comment 商户评论表
CREATE TABLE merchant_comment (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    merchant_id INT,
    user_id INT,
    content TEXT,
    rating INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (merchant_id) REFERENCES merchant_info(merchant_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE
);
-- 插入merchant_comment
INSERT INTO merchant_comment (merchant_id, user_id, content, rating) VALUES
(1, 1, '非常好的商户！', 5),
(1, 2, '服务态度很好', 4),
(2, 1, '食物非常美味', 5),
(2, 2, '环境不错', 4);

-- merchant_item_comment 产品评论表
CREATE TABLE merchant_product_comment (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    user_id INT,
    content TEXT,
    rating INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES merchant_product(product_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE
);
-- 插入merchant_product_comment
INSERT INTO merchant_product_comment (product_id, user_id, content, rating) VALUES
(1, 1, '这台笔记本电脑非常好用！', 5),
(1, 2, '智能手机功能很强大', 4),
(2, 1, '牛仔裤穿着很舒服', 5),
(2, 2, 'T恤质量不错', 4);

-- merchant_promotion 商户促销表
CREATE TABLE merchant_promotion (
    promotion_id INT PRIMARY KEY AUTO_INCREMENT,
    merchant_id INT,
    start_date DATE,
    end_date DATE,
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (merchant_id) REFERENCES merchant_info(merchant_id) ON DELETE CASCADE
);
-- 插入merchant_promotion
INSERT INTO merchant_promotion (merchant_id, start_date, end_date, details) VALUES
(1, '2024-01-01', '2024-01-31', '新年促销活动'),
(2, '2024-02-01', '2024-02-28', '春节特惠'),
(3, '2024-03-01', '2024-03-31', '春季折扣'),
(4, '2024-04-01', '2024-04-30', '清明节促销');

-- user_info 用户信息表
CREATE TABLE user_info (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES system_account(account_id) ON DELETE CASCADE
);
-- 插入user_info
INSERT INTO user_info (account_id, name, email, phone, image_url) VALUES
(3, '用户一', 'user1@example.com', '0987654321', 'example.jpg'),
(4, '用户二', 'user2@example.com', '1234567890', 'example.jpg'),
(5, '用户三', 'user3@example.com', '1122334455', 'example.jpg'),
(6, '用户四', 'user4@example.com', '6677889900', 'example.jpg');

-- user_friend 用户好友表
CREATE TABLE user_friend (
    user_id INT,
    friend_id INT,
    category_id INT,
    PRIMARY KEY (user_id, friend_id),
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (friend_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES user_friend_category(category_id)
);
-- 插入user_friend
INSERT INTO user_friend (user_id, friend_id, category_id) VALUES
(1, 2, 1),
(2, 1 ,1),
(1, 3, 2),
(3, 1, 2),
(4, 2, 4),
(2, 4, 4);

-- user_friend_category 用户好友类别表
-- 每个用户默认有个'好友'类别
CREATE TABLE user_friend_category (
    category_id INT AUTO_INCREMENT primary key,
    user_id INT,
    category_name VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE
);
-- 插入user_friend_category
INSERT INTO user_friend_category (category_id, user_id, category_name) VALUES
(1, 1, '好友'),
(2, 1, '饭友'),
(3, 2, '好友'),
(4, 2, '同事'),
(5, 3, '饭友'),
(6, 4, '同事'),
(7, 3, '好友'),
(8, 4, '好友');

-- user_friend_application 用户好友申请表
-- 申请好友前的确保对应的分类创建了
CREATE TABLE user_friend_application (
    application_id INT primary key AUTO_INCREMENT,
    user_id INT,
    friend_id INT,
    category_id INT,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (friend_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES user_friend_category(category_id)
);
-- 插入user_friend_application
INSERT INTO user_friend_application (user_id, friend_id, category_id) VALUES
(1, 2, 1),
(1, 3, 2),
(2, 4, 4),
(1, 4, 1);

-- user_favorite_merchant 用户商户收藏表
CREATE TABLE user_favorite_merchant (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    merchant_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (merchant_id) REFERENCES merchant_info(merchant_id) ON DELETE CASCADE
);
-- 插入user_favorite_merchant
INSERT INTO user_favorite_merchant (user_id, merchant_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2);

-- user_favorite_product 用户产品收藏表
CREATE TABLE user_favorite_product (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES merchant_product(product_id) ON DELETE CASCADE
);
-- 插入user_favorite_product
INSERT INTO user_favorite_product (user_id, product_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);

-- group_info 群组信息表
CREATE TABLE group_info (
    group_id INT PRIMARY KEY AUTO_INCREMENT,
    group_name VARCHAR(255),
    description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 插入group_info
INSERT INTO group_info (group_id, group_name, description, image_url) VALUES
(1, '饭友群', '饭友交流讨论群', 'eat_group.jpg'),
(2, '零售折扣群', '通知零售店打折信息', 'group.jpg');

-- group_member 群组成员表
CREATE TABLE group_member (
    group_id INT,
    account_id INT,
    role VARCHAR(50),
    -- '管理员' '成员'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (group_id, account_id),
    FOREIGN KEY (group_id) REFERENCES group_info(group_id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES system_account(account_id)  ON DELETE CASCADE
);
-- 插入group_member
INSERT INTO group_member (group_id, account_id, role) VALUES
(1, 2, '管理员'),
(1, 4, '成员'),
(2, 3, '管理员'),
(2, 5, '成员');

-- group_history 群组信息历史表
CREATE TABLE group_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    group_id INT,
    action VARCHAR(255),
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (group_id) REFERENCES group_info(group_id) ON DELETE CASCADE
);
-- 插入group_history
INSERT INTO group_history (group_id, action, details) VALUES
(1, '创建群组', '群组创建'),
(1, '添加成员', '添加了用户'),
(2, '创建群组', '群组创建'),
(2, '添加成员', '添加了用户');

SET FOREIGN_KEY_CHECKS = 1;