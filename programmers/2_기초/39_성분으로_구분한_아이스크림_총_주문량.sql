-- 성분으로 구분한 아이스크림 총 주문량
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026
-- 작성자: 최상원
-- 작성일: 2026. 01. 27. 09:08:12

-- 코드를 입력하세요
SELECT
II.INGREDIENT_TYPE,
SUM(FH.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF AS FH
JOIN ICECREAM_INFO AS II
ON FH.FLAVOR = II.FLAVOR
GROUP BY 1
ORDER BY TOTAL_ORDER ASC
