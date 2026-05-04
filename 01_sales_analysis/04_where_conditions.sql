 -- AND: 전자기기이면서 쿠팡
  SELECT * FROM orders
  WHERE category = '전자기기'
  AND channel = '쿠팡';

  -- OR: 쿠팡이거나 자사몰
  SELECT * FROM orders
  WHERE channel = '쿠팡'
  OR channel = '자사몰';

  -- BETWEEN: 가격 범위
  SELECT * FROM orders
  WHERE price BETWEEN 30000 AND 90000;

  -- IN: 목록 조건 (OR 대체)
  SELECT * FROM orders
  WHERE channel IN ('쿠팡', '자사몰');
