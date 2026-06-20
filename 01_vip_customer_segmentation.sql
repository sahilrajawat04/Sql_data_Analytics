select customers.CustomerID,customers.CompanyName,customers.Country, count(distinct orders.OrderID) as total_order_placed,
round(avg(orders.Total_Amount),2) as avg_order_value,round(avg(orders.Total_Amount),2) as total_lifetime_value
from customers
join orders on customers.CustomerID=orders.CustomerID
group by customers.CustomerID,customers.CompanyName,customers.Country having total_order_placed>10 and avg_order_value>1000
order by total_lifetime_value desc;