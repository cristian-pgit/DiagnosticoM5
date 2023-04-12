select customer_id, last_name, first_name, phone, email, street, city, state, zip_code from customers 
WHERE email like '%%yahoo%%' and phone is null