-- 조건에 맞는 사용자와 총 거래금액 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164668
-- 작성자: 최상원
-- 작성일: 2026. 02. 20. 09:26:53

-- 코드를 입력하세요
SELECT
uu.USER_ID,
uu.NICKNAME,
sum(ub.price) as TOTAL_SALES
from USED_GOODS_BOARD ub
join USED_GOODS_USER uu
on ub.WRITER_ID = uu.USER_ID
where ub.STATUS = 'DONE'
group by 1
having sum(ub.price) >= 700000
order by TOTAL_SALES asc
