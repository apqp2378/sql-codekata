-- 취소되지 않은 진료 예약 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132204
-- 작성자: 최상원
-- 작성일: 2026. 03. 16. 09:25:44

-- 코드를 입력하세요
SELECT
a.APNT_NO,
p.PT_NAME,
p.PT_NO,
a.MCDP_CD,
d.DR_NAME,
a.APNT_YMD
from APPOINTMENT a
join PATIENT p
on a.PT_NO = p.PT_NO
join DOCTOR d
on a.MDDR_ID = d.DR_ID
where date_format(APNT_YMD,'%Y-%m-%d') = '2022-04-13'
and a.APNT_CNCL_YN = 'N'
and a.MCDP_CD = 'CS'
order by a.APNT_YMD