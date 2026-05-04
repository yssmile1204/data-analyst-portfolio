 -- 1주차 실습: SELECT, WHERE, ORDER BY
  -- 데이터: 가상 커머스 주문 데이터 (orders 테이블)

  -- 전체 조회
  SELECT * FROM orders;

  -- 조건 필터: 전자기기만
  SELECT * FROM orders
  WHERE category = '전자기기';

  -- 조건 필터: 쿠팡 채널만
  SELECT * FROM orders
  WHERE channel = '쿠팡';

  -- 정렬: 가격 높은 순
  SELECT * FROM orders
  ORDER BY price DESC;

  -- 조합: 전자기기 중 가격 높은 순
  SELECT * FROM orders
  WHERE category = '전자기기'
  ORDER BY price DESC;
