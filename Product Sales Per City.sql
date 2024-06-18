SELECT c.city_name, pro.product_name, ROUND(SUM(ii.line_total_price), 2) AS total
FROM city c, customer cu, invoice i, invoice_item ii, product pro 
WHERE c.id = cu.city_id AND cu.id = i.customer_id AND i.id = ii.invoice_id AND ii.product_id = pro.id 
GROUP BY c.city_name, pro.product_name  ORDER BY total DESC, c.city_name, pro.product_name 
