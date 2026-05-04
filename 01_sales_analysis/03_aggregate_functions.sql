 -- COUNT: 채널별 주문 건수
  SELECT
    channel,
    COUNT(*) AS order_count
  FROM orders
  GROUP BY channel
  ORDER BY order_count DESC;

  -- AVG: 채널별 평균 매출
  SELECT
    channel,
    COUNT(*) AS order_count,
    AVG(quantity * price) AS avg_revenue
  FROM orders
  GROUP BY channel
  ORDER BY avg_revenue DESC;

  -- MAX/MIN: 상품별 최고/최저 가격
  SELECT
    product_name,
    MAX(price) AS max_price,
    MIN(price) AS min_price
  FROM orders
  GROUP BY product_name;
