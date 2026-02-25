-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116
-- 작성자: 최상원
-- 작성일: 2026. 02. 25. 09:18:37

-- 코드를 입력하세요
SELECT
CATEGORY,
PRICE AS MAX_PRICE,
PRODUCT_NAME
from
(SELECT
 CATEGORY,
 PRICE,
 PRODUCT_NAME,
 RANK()OVER (PARTITION BY CATEGORY ORDER BY PRICE DESC) RN
 FROM FOOD_PRODUCT 
 where CATEGORY in( '과자', '국', '김치', '식용유')
) t
where rn = 1
order by price desc