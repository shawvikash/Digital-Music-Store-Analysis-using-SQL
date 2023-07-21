--Who is the besst customer? The customer who has spent the most money will be declared the best customer. Write a query 
--that returns the person who has spent the most money.
Select customer.customer_id, customer.first_name, customer.last_name,
Sum(invoice.total) as total
From customer
Join invoice On customer.customer_id = invoice.customer_id
Group by customer.customer_id
Order by total Desc
Limit 1