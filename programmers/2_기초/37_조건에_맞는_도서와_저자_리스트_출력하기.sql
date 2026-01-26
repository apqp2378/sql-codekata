-- 조건에 맞는 도서와 저자 리스트 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 작성자: 최상원
-- 작성일: 2026. 01. 26. 09:17:38

-- 코드를 입력하세요
SELECT
BOOK_ID,
AUTHOR_NAME,
DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d') AS PUBLISHED_DATE
from BOOK as B
join AUTHOR as A
ON B.AUTHOR_ID = A.AUTHOR_ID
WHERE B.CATEGORY IN('경제')
ORDER BY PUBLISHED_DATE