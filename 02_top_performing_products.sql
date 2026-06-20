SELECT products.ProductName,sum(orders.Quantity) as total_unit_sold ,round(sum(orders.total_Amount),2) as total_revenue
from orders 
join products on orders.ProductID=products.ProductID group by products.ProductName
order by total_revenue desc limit 6;