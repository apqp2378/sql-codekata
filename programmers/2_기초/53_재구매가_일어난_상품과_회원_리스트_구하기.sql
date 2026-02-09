-- 재구매가 일어난 상품과 회원 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131536
-- 작성자: 최상원
-- 작성일: 2026. 02. 09. 09:12:14

-- 코드를 입력하세요
SELECT
USER_ID,
PRODUCT_ID
from ONLINE_SALE
group by 1,2
having count(*) >= 2
order by USER_ID,PRODUCT_ID desc