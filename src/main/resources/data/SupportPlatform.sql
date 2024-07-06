drop database support_platform if exists;
create database support_platform;
use support_platform;

-- 表前缀
-- system：系统
-- merchant：商户
-- user：用户
-- group：群组

-- system_config 系统配置信息表（预留）
-- system_account 系统账号表
-- system_permission 系统权限表（预留）
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

-- system_config 系统配置信息表（预留）
# CREATE TABLE system_config (
#     id INT PRIMARY KEY AUTO_INCREMENT,
#     name VARCHAR(255) NOT NULL,
#     value TEXT
# );
-- system_account 系统账号表
-- role_id 角色ID 1：admin 2：merchant 3：user
CREATE TABLE system_account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL
);
-- system_permission 系统权限表（预留）
# CREATE TABLE system_permission (
#     permission_id INT PRIMARY KEY AUTO_INCREMENT,
#     permission_name VARCHAR(255) NOT NULL
# );
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
-- system_article_category 系统文章类别表（预留）
CREATE TABLE system_article_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);

-- merchant_info 商户信息表
CREATE TABLE merchant_info (
    merchant_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT NOT NULL,
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
-- merchant_category 商户类别表（预留）
CREATE TABLE merchant_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
-- merchant_product_category 产品类别表（预留）
CREATE TABLE merchant_product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
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
-- user_info 用户信息表
CREATE TABLE user_info (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES system_account(account_id) ON DELETE CASCADE
);
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
-- user_friend_category 用户好友类别表
CREATE TABLE user_friend_category (
    user_id INT,
    category_id INT AUTO_INCREMENT,
    category_name VARCHAR(255),
    PRIMARY KEY (category_id),
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE
);
-- user_friend_application 用户好友申请表
CREATE TABLE user_friend_application (
    user_id INT,
    friend_id INT,
    category_id INT,
    PRIMARY KEY (user_id, friend_id),
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (friend_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES user_friend_category(category_id)
);
-- user_favorite_merchant 用户商户收藏表
CREATE TABLE user_favorite_merchant (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    merchant_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (merchant_id) REFERENCES merchant_info(merchant_id) ON DELETE CASCADE
);
-- user_favorite_product 用户产品收藏表
CREATE TABLE user_favorite_product (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES merchant_product(product_id) ON DELETE CASCADE
);

-- group_info 群组信息表
CREATE TABLE group_info (
    group_id INT PRIMARY KEY AUTO_INCREMENT,
    group_name VARCHAR(255),
    description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- group_member 群组成员表
CREATE TABLE group_member (
    group_id INT,
    user_id INT,
    role VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (group_id, user_id),
    FOREIGN KEY (group_id) REFERENCES group_info(group_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES user_info(user_id) ON DELETE CASCADE
);
-- group_history 群组信息历史表
CREATE TABLE group_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    group_id INT,
    action VARCHAR(255),
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (group_id) REFERENCES group_info(group_id) ON DELETE CASCADE
);

SET FOREIGN_KEY_CHECKS = 1;