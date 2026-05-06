  -- 상품별 총 매출 및 주문수
  SELECT product, SUM(amount) AS total_amount, COUNT(product) AS order_count
  FROM orders
  GROUP BY product
  ORDER BY total_amount DESC;

  -- 채널별 평균 주문금액
  SELECT channel, ROUND(AVG(amount), 0) AS avg_amount
  FROM orders
  GROUP BY channel
  ORDER BY avg_amount DESC;

  -- 주문수 3건 이상 상품만
  SELECT product, COUNT(product) AS order_count, SUM(amount) AS total_amount
  FROM orders
  GROUP BY product
  HAVING order_count >= 3
  ORDER BY total_amount DESC;
