-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 작성자: 최상원
-- 작성일: 2026. 08. 11. 14:15:32

-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) AS FILE_PATH
FROM USED_GOODS_FILE 
WHERE BOARD_ID =(
SELECT BOARD_ID
FROM USED_GOODS_BOARD 
ORDER BY VIEWS DESC
LIMIT 1
)
ORDER BY FILE_ID DESC