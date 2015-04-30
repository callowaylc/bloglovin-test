# description: lets write some sql

# describe the following entities as er diagram

users:
  - id

products:
  - id 

orders:
  - timestamp
  - user_id
  - product_id

# query all users and assocated orders and products ( I dont care about duplication )

SELECT u.*
FROM   users u 

INNER JOIN
  orders o 
    ON o.user_id = u.id
    
INNER JOIN
  products p
    ON p.id = o.product_id

# query all products, orders for users who have gmail accounts

# query all users and assocaited products, orders, regardless of whether
# a user has actually made any orders

