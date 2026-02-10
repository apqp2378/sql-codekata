-- 조건에 부합하는 중고거래 상태 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 작성자: 최상원
-- 작성일: 2026. 02. 10. 09:26:39

-- 코드를 입력하세요
SELECT
BOARD_ID,
WRITER_ID,
TITLE,
PRICE,
CASE STATUS WHEN 'SALE' THEN '판매중'
WHEN 'RESERVED' THEN '예약중'
WHEN 'DONE' THEN '거래완료'
end as STATUS
from USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC