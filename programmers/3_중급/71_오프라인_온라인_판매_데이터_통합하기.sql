-- 오프라인/온라인 판매 데이터 통합하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131537
-- 작성자: 최상원
-- 작성일: 2026. 08. 11. 10:30:24

-- 코드를 입력하세요
SELECT SALES_DATE,PRODUCT_ID,USER_ID,SALES_AMOUNT
from ONLINE_SALE 
where YEAR(SALES_DATE) = 2022 and MONTH(SALES_DATE) = 3
UNION ALL
SELECT SALES_DATE,PRODUCT_ID,NULL AS USER_ID,SALES_AMOUNT
from OFFLINE_SALE 
where YEAR(SALES_DATE) = 2022 and MONTH(SALES_DATE) = 3
ORDER BY SALES_DATE,PRODUCT_ID,USER_ID