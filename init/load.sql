
CREATE TABLE IF NOT EXISTS "public"."brands" ("id" integer, "brand" varchar);

\set file_path :current_dir'/brands-d3ec3f06c18ec81d3fc557d4261562a117080256d06289912b666076cb3a0033.csv'

TRUNCATE TABLE "public"."brands" CASCADE;

COPY "public"."brands"("id","brand")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."cart" ("id" integer, "user_id" integer, "created_at" TIMESTAMP);

\set file_path :current_dir'/cart-3fe14c2d0bb1a286dbbae2bec817c8388b79105263030e103a5ec1ff51ee6045.csv'

TRUNCATE TABLE "public"."cart" CASCADE;

COPY "public"."cart"("id","user_id","created_at")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."cart_items" ("id" integer, "cart_id" integer, "product_id" integer);

\set file_path :current_dir'/cart_items-ebb8c8f0c5703e8b8d6ded335e92597c287d0bbeabbce3ca2f6e3c8018163245.csv'

TRUNCATE TABLE "public"."cart_items" CASCADE;

COPY "public"."cart_items"("id","cart_id","product_id")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."categories" ("id" integer, "name" text, "description" text, "createdAt" timestamp, "updatedAt" timestamp);

\set file_path :current_dir'/categories-a80804a01cb5de5b9c140914b9c8c048b86b4f354997bb09903bdc13b5b5f52d.csv'

TRUNCATE TABLE "public"."categories" CASCADE;

COPY "public"."categories"("id","name","description","createdAt","updatedAt")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."order_items" ("id" integer, "order_id" TEXT, "user_id" integer, "product_id" integer, "quantity" integer, "discount" decimal);

\set file_path :current_dir'/order_items-f399daf1616abbb6782849d571abba53d46dd882e1c68bc23df9358630e75075.csv'

TRUNCATE TABLE "public"."order_items" CASCADE;

COPY "public"."order_items"("id","order_id","user_id","product_id","quantity","discount")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."orders" ("id" integer, "user_id" integer);

\set file_path :current_dir'/orders-1d4a84d213f08f2e9952fe8fef8eaf78dc2b7732f832b6466d566fe6c1e11641.csv'

TRUNCATE TABLE "public"."orders" CASCADE;

COPY "public"."orders"("id","user_id")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."paiements" ("id" integer, "user_id" integer, "orders" integer, "paiement_status" boolean);

\set file_path :current_dir'/paiements-efef6be2b2cf7416304a02bbab79e29a5d1c4d8c801a0631673a5059d232b148.csv'

TRUNCATE TABLE "public"."paiements" CASCADE;

COPY "public"."paiements"("id","user_id","orders","paiement_status")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."products" ("id" integer, "name" text, "description" text, "purchase_price" numeric, "purchase_sell" numeric, "tax" integer, "category_id" "", "brand_id" TEXT);

\set file_path :current_dir'/products-04a3cb57b2017fc68c882f8a0eefb81990ab96333d97bd3fdcc6594cfa6fc9be.csv'

TRUNCATE TABLE "public"."products" CASCADE;

COPY "public"."products"("id","name","description","purchase_price","purchase_sell","tax","category_id","brand_id")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."reviews" ("id" integer, "user_id" integer, "review" text, "rating" integer, "createdAt" timestamp, "status" boolean);

\set file_path :current_dir'/reviews-e8ef27cdcbdc3b8724fbb66ce8c8995ad4b637f4d45a7dac981d51db3e874dd2.csv'

TRUNCATE TABLE "public"."reviews" CASCADE;

COPY "public"."reviews"("id","user_id","review","rating","createdAt","status")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."shipping" ("id" integer, "order_id" integer, "ship_status" boolean, "shippingAt" timestamp without time zone);

\set file_path :current_dir'/shipping-9943939ce07be1dea46253cc1f390b45852f1008b5c245bbff5e9f8e8c8b0a67.csv'

TRUNCATE TABLE "public"."shipping" CASCADE;

COPY "public"."shipping"("id","order_id","ship_status","shippingAt")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."stocks" ("id" integer, "product_id" integer, "quantity" integer);

\set file_path :current_dir'/stocks-1858a068e672686c67ebe34aa757c3484103f097fdadffbe7c19d98d5b36ed99.csv'

TRUNCATE TABLE "public"."stocks" CASCADE;

COPY "public"."stocks"("id","product_id","quantity")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."tickets" ("id" integer, "user_id" UUID, "product_id" UUID, "ticket_status" VARCHAR, "ticket_type" VARCHAR);

\set file_path :current_dir'/tickets-876a8ee0895764c469164025eaf42168e7ae8cc92bca74f2ed1d0571bcd00798.csv'

TRUNCATE TABLE "public"."tickets" CASCADE;

COPY "public"."tickets"("id","user_id","product_id","ticket_status","ticket_type")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."users" ("id" integer, "name" VARCHAR, "adress" VARCHAR, "phone" VARCHAR, "password" VARCHAR, "createdAt" TIMESTAMP, "updatedAt" TIMESTAMP, "status" VARCHAR);

\set file_path :current_dir'/users-4b5f19126d0e4e447e223c0b8523ec4d7b0db72306168499b9dbc9aa2184a41a.csv'

TRUNCATE TABLE "public"."users" CASCADE;

COPY "public"."users"("id","name","adress","phone","password","createdAt","updatedAt","status")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."wishlist_items" ("id" integer, "wishlist_id" integer, "product_id" integer);

\set file_path :current_dir'/wishlist_items-72aed6dd980763bcc54929f69463c8a4ddcc86bb30104b4260cc7076c31aa402.csv'

TRUNCATE TABLE "public"."wishlist_items" CASCADE;

COPY "public"."wishlist_items"("id","wishlist_id","product_id")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');
CREATE TABLE IF NOT EXISTS "public"."wishlists" ("id" integer, "user_id" integer, "created_at" TIMESTAMP);

\set file_path :current_dir'/wishlists-5bfcc2d7e3d0d7544e884fb33b5d666aa56458dbc638e5837384396d58635b5d.csv'

TRUNCATE TABLE "public"."wishlists" CASCADE;

COPY "public"."wishlists"("id","user_id","created_at")
FROM :'file_path'
WITH (FORMAT csv, DELIMITER ',', NULL 'NULL', QUOTE '"');