use ecommercedb;

-- List all products sorted by price descending.
select * from product order by price desc;
-- Show the top 3 most expensive products.
select * from product order by price desc limit 3;
-- Find the total sales, – Average Price, Count & Max/Min amount across all sales
select 
sum(sale_amount),
avg(sale_amount), 
count(sale_id), 
Max(sale_amount),
Min(sale_amount)
Total_sales from sales;

-- Find total sales amount per product.
select p.Product_id, p.product_name, sum(s.sale_amount) Total_sales  from sales s
join Product p on p.product_id = s.product_id
group by p.Product_id, p.product_name;

-- List products whose total sales exceed ₹50,000.

select p.Product_id, p.product_name, sum(s.sale_amount) Total_sales  from sales s
join Product p on p.product_id = s.product_id
group by p.Product_id, p.product_name
having Total_sales>50000;

-- Show total sales per product, sorted descending by total sales.

select  product_id, sum(sale_amount) Total_sales from sales group by product_id order by Total_sales desc;

-- Find the top 3 products by total sales amount.
select p.Product_id, p.product_name, sum(s.sale_amount) Total_sales  from sales s
join Product p on p.product_id = s.product_id
group by p.Product_id, p.product_name order by total_sales desc limit 3;

-- Show products with total sales > ₹30,000 AND average sale amount > ₹10,000.
select p.Product_id, p.product_name, sum(s.sale_amount) Total_sales,  avg(s.sale_amount) Avg_sales from sales s
join Product p on p.product_id = s.product_id
group by p.Product_id, p.product_name
having Total_sales>30000 and 
Avg_sales > 10000;







