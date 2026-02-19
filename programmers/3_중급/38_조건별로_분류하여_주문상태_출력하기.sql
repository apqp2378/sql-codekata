-- 조건별로 분류하여 주문상태 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131113
-- 작성자: 최상원
-- 작성일: 2026. 02. 19. 09:49:57

-- 코드를 입력하세요
SELECT
ORDER_ID,
PRODUCT_ID,
DATE_FORMAT(OUT_DATE,'%Y-%m-%d') AS OUT_DATE,
case 
when OUT_DATE > '2022-05-01' then '출고대기'
when OUT_DATE <= '2022-05-01' then '출고완료'
else '출고미정'
end as 출고여부
from FOOD_ORDER
order by ORDER_ID