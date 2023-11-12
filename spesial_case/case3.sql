SELECT
    pc.id AS category_id,
    pc.category_name,
    pi.qty_in_stock AS total_barang
FROM
    retail_online.product_category pc
JOIN
    retail_online.product p ON pc.id = p.category_id
JOIN
    retail_online.product_item pi ON p.product_id = pi.product_id
GROUP BY
    pc.id, pc.category_name,pi.qty_in_stock
ORDER BY
    pi.qty_in_stock DESC
LIMIT 1;

select  * from retail_online.product_item