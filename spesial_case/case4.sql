SELECT
    c.customer_id,
    c.email_address,
    AVG(ol.price * ol.quantity) AS rata_rata_transaksi
FROM
    retail_online.customer c
JOIN
    retail_online.shop_order so ON c.customer_id = so.customer_id
JOIN
    retail_online.order_line ol ON so.shop_order_id = ol.shop_order_id
WHERE
    so.order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY
    c.customer_id, c.email_address;


