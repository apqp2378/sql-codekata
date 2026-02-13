-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 최상원
-- 작성일: 2026. 02. 13. 09:26:23

-- 코드를 입력하세요
SELECT
AI.NAME,
AI.DATETIME
from ANIMAL_INS AI
WHERE NOT EXISTS(
SELECT 1
FROM ANIMAL_OUTS AO
WHERE AI.ANIMAL_ID = AO.ANIMAL_ID
)
ORDER BY AI.DATETIME 
LIMIT 3