-- 자동차 평균 대여 기간 구하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157342
-- 작성자: 최상원
-- 작성일: 2026. 04. 07. 09:54:49

-- 코드를 입력하세요
SELECT
CAR_ID,
round(AVG(DATEDIFF(END_DATE,START_DATE)+1),1) as AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by 1
having AVG(DATEDIFF(END_DATE,START_DATE)+1) >= 7
order by 2 desc, 1 desc