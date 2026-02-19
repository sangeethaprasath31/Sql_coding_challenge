USE ECommerceDB;

-- Management wants to see the top 3 highest-priced products in the e-commerce system.
select * from product order by price desc limit 3;

select 
	count(sale_id) Total_Sale, 
	sum(sale_amount) Total_Sale_Amt, 
	round(avg(sale_amount),2) Avg_Sale_Amt, 
	Max(sale_amount) Max_Sale_Amt, 
	Min(sale_amount) Min_Sale_Amt 
from sales;

-- Management wants to know which products have total sales amount greater than ₹100.

select p.Product_id, p.product_name, sum(s.sale_amount) Total_sales  from sales s
join Product p on p.product_id = s.product_id
group by p.Product_id, p.product_name
having Total_sales>100;

INSERT INTO Product (product_id, product_name, price) VALUES
(8, 'Laptop', 70000.00);
INSERT INTO Product (product_id, product_name, price) VALUES
(9, 'Laptop', 70000.00);

-- Management wants a ranking of products based on their prices.
select product_id, product_name, price,
rank() over( partition by product_name order by price) rank_product_Price,
dense_rank() over( partition by product_name order by price) Denserank_product_Price 
from product;





