SELECT
    p.product_id,
    p.name AS product_name,
    COUNT(ol.product_item_id) AS total_pembelian
FROM
    retail_online.product p
JOIN
    retail_online.product_item pi ON p.product_id = pi.product_id
JOIN
    retail_online.order_line ol ON pi.product_item_id = ol.product_item_id
GROUP BY
    p.product_id, p.name
ORDER BY
    total_pembelian DESC
LIMIT 3;
