-- 주문량이 많은 아이스크림들 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133027
-- 작성자: 최상원
-- 작성일: 2026. 08. 10. 11:13:23

-- 코드를 입력하세요
SELECT FLAVOR
FROM(
    SELECT FLAVOR, TOTAL_ORDER 
    FROM FIRST_HALF
    UNION ALL
    SELECT FLAVOR, TOTAL_ORDER 
    FROM JULY
    )AS TOTAL_DATA
GROUP BY FLAVOR
ORDER BY SUM(TOTAL_ORDER) DESC
LIMIT 3