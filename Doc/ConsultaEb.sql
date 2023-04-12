SELECT so.store_name, s.last_name, s.first_name, sum(oi.list_price) as Monto
FROM staffs s
JOIN stores so ON s.store_id = so.store_id
JOIN orders o ON s.staff_id = o.staff_id
JOIN order_items oi on o.order_id = oi.order_id

GROUP BY so.store_name, s.last_name, s.first_name
ORDER BY monto desc