-- 가격대 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 작성자: 최상원
-- 작성일: 2026. 02. 04. 09:30:59

-- 코드를 입력하세요
SELECT
    FLOOR(price / 10000) * 10000 AS PRICE_GROUP,
    COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY FLOOR(price / 10000) * 10000
ORDER BY PRICE_GROUP;


