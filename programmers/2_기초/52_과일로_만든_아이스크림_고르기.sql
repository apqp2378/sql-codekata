-- 과일로 만든 아이스크림 고르기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성자: 최상원
-- 작성일: 2026. 02. 06. 09:14:26

-- 코드를 입력하세요
SELECT
f.FLAVOR
from FIRST_HALF f
join ICECREAM_INFO ii
on f.FLAVOR = ii.FLAVOR
where f.TOTAL_ORDER > 3000
and ii.INGREDIENT_TYPE like '%fruit%'