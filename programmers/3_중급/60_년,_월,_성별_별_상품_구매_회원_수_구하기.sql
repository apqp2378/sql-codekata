-- 년, 월, 성별 별 상품 구매 회원 수 구하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- 작성자: 최상원
-- 작성일: 2026. 03. 18. 09:29:16

-- 코드를 입력하세요
SELECT
year(o.SALES_DATE) as YEAR,
month(o.SALES_DATE) as MONTH,
u.GENDER,
count(distinct u.USER_ID) as USERS
from USER_INFO u
join ONLINE_SALE o
on u.USER_ID = o.USER_ID
where u.GENDER is not null
group by 1,2,3
order by 1,2,3
