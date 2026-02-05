-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성자: 최상원
-- 작성일: 2026. 02. 05. 09:23:18

-- 코드를 입력하세요
SELECT
distinct(cc.CAR_ID) as CAR_ID
from CAR_RENTAL_COMPANY_CAR as cc
join CAR_RENTAL_COMPANY_RENTAL_HISTORY as ch
on cc.CAR_ID = ch.CAR_ID
where cc.CAR_TYPE = '세단'
and date_format(START_DATE,'%m') = 10
order by 1 desc