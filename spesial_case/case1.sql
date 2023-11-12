SELECT c.customer_id, c.email_address, COUNT(DISTINCT ol.product_item_id) as total_barang_dibeli
FROM retail_online.customer c
JOIN retail_online.shop_order so ON c.customer_id = so.customer_id
JOIN retail_online.order_line ol ON so.shop_order_id = ol.shop_order_id
GROUP BY c.customer_id, c.email_address
HAVING total_barang_dibeli = 3;


