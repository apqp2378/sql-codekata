-- 5월 식품들의 총매출 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131117
-- 작성자: 최상원
-- 작성일: 2026. 02. 26. 09:27:33

-- 코드를 입력하세요
SELECT 
fr.PRODUCT_ID,
fr.PRODUCT_NAME,
sum(fr.PRICE * fo.AMOUNT) as TOTAL_SALES
from FOOD_PRODUCT as fr
join FOOD_ORDER as fo
on fr.PRODUCT_ID = fo.PRODUCT_ID
where year(PRODUCE_DATE) = 2022 and month(PRODUCE_DATE) = 5
group by 1
order by 3 desc, 1 asc