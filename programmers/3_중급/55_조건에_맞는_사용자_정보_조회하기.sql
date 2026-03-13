-- 조건에 맞는 사용자 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 작성자: 최상원
-- 작성일: 2026. 03. 13. 09:31:29

-- 코드를 입력하세요
SELECT
USER_ID,
NICKNAME,
concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as 전체주소,
concat(substr(TLNO,1,3),('-'),substr(TLNO,4,4),('-'),substr(TLNO,8,4),('')) as 전화번호
from USED_GOODS_BOARD ub
join USED_GOODS_USER  uu
on ub.WRITER_ID = uu.USER_ID
group by 1
having count(USER_ID) >=3
order by 1 desc
