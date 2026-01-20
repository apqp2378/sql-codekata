-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 최상원
-- 작성일: 2026. 01. 20. 15:51:10

-- 코드를 입력하세요
SELECT
AI.ANIMAL_ID,
AI.NAME
from ANIMAL_INS AS AI
join ANIMAL_OUTS AS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.DATETIME > AO.DATETIME
ORDER BY AI.DATETIME