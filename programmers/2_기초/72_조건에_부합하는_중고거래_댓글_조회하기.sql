-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 최상원
-- 작성일: 2026. 02. 11. 09:43:55

-- 코드를 입력하세요
SELECT
ub.TITLE,
ub.BOARD_ID,
ur.REPLY_ID,
ur.WRITER_ID,
ur.CONTENTS,
DATE_FORMAT(ur.CREATED_DATE,'%Y-%m-%d') as CREATED_DATE
from USED_GOODS_BOARD ub
join USED_GOODS_REPLY ur
on ub.BOARD_ID = ur.BOARD_ID
where ub.CREATED_DATE like '2022-10%'
order by ur.CREATED_DATE asc, ub.TITLE asc
