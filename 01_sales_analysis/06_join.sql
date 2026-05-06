  -- 주문 내역에 고객 이름 연결
  SELECT o.order_id, c.name, o.channel, o.amount
  FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id;

  -- 고객별 총 구매금액 (내림차순)
  SELECT c.name, SUM(o.amount) AS total_amount
  FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  GROUP BY c.name
  ORDER BY total_amount DESC;

  -- 서울 고객 주문 내역
  SELECT c.name, c.region, o.channel, o.amount
  FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  WHERE c.region = '서울';

  -- 2회 이상 주문한 고객
  SELECT c.name, COUNT(o.order_id) AS order_count
  FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  GROUP BY c.name
  HAVING order_count >= 2
  ORDER BY order_count DESC;
