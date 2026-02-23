-- 즐겨찾기가 가장 많은 식당 정보 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123
-- 작성자: 최상원
-- 작성일: 2026. 02. 23. 09:26:10

-- 코드를 입력하세요
SELECT
FOOD_TYPE,
REST_ID,
REST_NAME,
FAVORITES
from REST_INFO
where (FOOD_TYPE,FAVORITES) IN(
SELECT FOOD_TYPE, MAX(FAVORITES)
FROM REST_INFO
GROUP BY FOOD_TYPE
)
order by 1 desc
