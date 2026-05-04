 -- 상품별 총매출
  SELECT
    product_name,
    SUM(quantity * price) AS total_revenue
  FROM orders
  GROUP BY product_name
  ORDER BY total_revenue DESC;

  -- 채널별 총매출
  SELECT
    channel,
    SUM(quantity * price) AS total_revenue
  FROM orders
  GROUP BY channel
  ORDER BY total_revenue DESC;
