-- 서울에 위치한 식당 목록 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131118
-- 작성자: 최상원
-- 작성일: 2026. 03. 19. 09:24:21

-- 코드를 입력하세요
SELECT
ri.REST_ID,
ri.REST_NAME,
ri.FOOD_TYPE,
ri.FAVORITES,
ri.ADDRESS,
round(avg(rr.REVIEW_SCORE),2) as SCORE
from REST_INFO ri
join REST_REVIEW rr
on ri.REST_ID = rr.REST_ID
where ri.ADDRESS like '서울%'
group by 1
order by 6 desc, 4 desc