select orders.ShipVia,count(orders.OrderID) as total_orders,
round(avg(datediff(orders.ShippedDate,orders.Orderdate)),1) as avg_day_to_ship,
count(case when orders.ShippedDate>orders.RequiredDate then 1 end) as late_orders from orders
where orders.ShippedDate is not null
group by orders.ShipVia;