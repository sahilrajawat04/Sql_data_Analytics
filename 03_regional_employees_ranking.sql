select employees.FullName,employees.Region,round(sum(orders.Total_Amount),2)as total_revenue,
DENSE_RANK() OVER (PARTITION BY employees.Region ORDER BY SUM(orders.Total_Amount) DESC) AS Regional_Rank
from orders
join employees on orders.EmployeeID= employees.EmployeeID
WHERE employees.Region IS NOT NULL AND employees.Region
GROUP BY employees.FullName, employees.Region;