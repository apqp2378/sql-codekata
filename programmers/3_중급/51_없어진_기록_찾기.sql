-- 없어진 기록 찾기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성자: 최상원
-- 작성일: 2026. 02. 27. 09:32:46

-- 코드를 입력하세요
SELECT
ao.ANIMAL_ID,
ao.NAME
from ANIMAL_OUTS ao
left join ANIMAL_INS ai
on ao.ANIMAL_ID = ai.ANIMAL_ID
WHERE ai.datetime is null
ORDER BY 1
