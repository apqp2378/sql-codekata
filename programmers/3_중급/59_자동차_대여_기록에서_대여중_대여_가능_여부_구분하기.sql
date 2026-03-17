-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 작성자: 최상원
-- 작성일: 2026. 03. 17. 10:36:13

-- 코드를 입력하세요
SELECT
CAR_ID,
case when CAR_ID in (
select CAR_ID
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where START_DATE <= '2022-10-16' and END_DATE  >= '2022-10-16' 
)      
    then '대여중'
    else '대여 가능'
end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by 1
order by 1 desc

