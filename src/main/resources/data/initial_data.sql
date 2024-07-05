
-- 插入初始数据
-- 插入系统账号数据
INSERT INTO system_account (username, password, role_id) VALUES
('admin', 'adminpassword', 1),
('merchant1', 'merchantpassword', 2),
('user1', 'userpassword', 3);

-- 插入系统文章类别数据
INSERT INTO system_article_category (category_name) VALUES
('News'),
('Blog');

-- 插入商户信息数据
INSERT INTO merchant_info (owner_id, name, address, phone, email, business_type, business_environment, business_location, product_category, image_url) VALUES
(2, 'Merchant One', '123 Market St', '123-456-7890', 'merchant1@example.com', 'Retail', 'Indoor', 'City Center', 'Electronics', 'http://example.com/merchant1.jpg');

-- 插入商户产品类别数据
INSERT INTO merchant_product_category (category_name) VALUES
('Electronics'),
('Clothing');

-- 插入商户产品数据
INSERT INTO merchant_product (merchant_id, product_name, category_id, price, description, image_url) VALUES
(1, 'Smartphone', 1, 599.99, 'Latest model smartphone with all features', 'http://example.com/smartphone.jpg');

-- 插入用户信息数据
INSERT INTO user_info (account_id, name, email, phone) VALUES
(3, 'User One', 'user1@example.com', '098-765-4321');

-- 插入群组信息数据
INSERT INTO group_info (group_name, description, image_url) VALUES
('Tech Enthusiasts', 'A group for tech lovers', 'http://example.com/tech_group.jpg');

-- 插入群组成员数据
INSERT INTO group_member (group_id, user_id, role) VALUES
(1, 1, 'admin');

-- 插入群组信息历史数据
INSERT INTO group_history (group_id, action, details) VALUES
(1, 'Created', 'Group created by admin');

-- 插入商户评论数据
INSERT INTO merchant_comment (merchant_id, user_id, content, rating) VALUES
(1, 1, 'Great service!', 5);

-- 插入产品评论数据
INSERT INTO merchant_product_comment (product_id, user_id, content, rating) VALUES
(1, 1, 'Excellent product!', 5);

-- 插入商户促销数据
INSERT INTO merchant_promotion (merchant_id, start_date, end_date, details) VALUES
(1, '2024-07-01', '2024-07-31', 'Summer sale 20% off');

-- 插入用户好友数据
INSERT INTO user_friend (user_id, friend_id, category_id) VALUES
(1, 1, 1);

-- 插入用户好友类别表数据
INSERT INTO user_friend_category (user_id, category_id, category_name) VALUES
(1, 1, 'Mate');

-- 插入用户商户收藏数据
INSERT INTO user_favorite_merchant (user_id, merchant_id) VALUES
(1, 1);

-- 插入用户产品收藏数据
INSERT INTO user_favorite_product (user_id, product_id) VALUES
(1, 1);