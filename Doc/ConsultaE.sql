SELECT s.last_name, s.first_name, sum(oi.list_price) as Monto
FROM staffs s
JOIN orders o ON s.staff_id = o.staff_id
JOIN order_items oi on o.order_id = oi.order_id
where s.staff_id between 1 and 3
GROUP BY s.last_name, s.first_name;