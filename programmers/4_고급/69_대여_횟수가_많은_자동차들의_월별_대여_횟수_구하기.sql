-- 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151139
-- 작성자: 최상원
-- 작성일: 2026. 08. 31. 11:00:41

-- 코드를 입력하세요
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, count(HISTORY_ID) AS RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where START_DATE between '2022-08-01' and '2022-10-31'
and CAR_ID in(
select CAR_ID
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where START_DATE between '2022-08-01' and '2022-10-31'
    group by CAR_ID
    having count(HISTORY_ID) >= 5
)
group by MONTH,CAR_ID
order by MONTH ASC, CAR_ID DESC
