--which city has the best customers?write a query that returns one city that has the highest number of invoice
--totals.return both the city & sum of all invoice totals
 select sum(total) as invoice_total, billing_city from invoice
 group by billing_city
order by invoice_total desc
