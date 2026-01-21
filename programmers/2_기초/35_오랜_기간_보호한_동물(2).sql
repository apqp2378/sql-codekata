-- 오랜 기간 보호한 동물(2)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성자: 최상원
-- 작성일: 2026. 01. 21. 14:50:12

-- 코드를 입력하세요
SELECT
ao.ANIMAL_ID,
ao.NAME
from ANIMAL_INS as ai
join ANIMAL_OUTS as ao
on ai.ANIMAL_ID = ao.ANIMAL_ID
order by ao.DATETIME - ai.DATETIME desc
limit 2