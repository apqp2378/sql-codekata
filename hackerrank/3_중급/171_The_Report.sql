-- The Report
-- HackerRank 중급 (⭐⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/the-report/problem
-- 작성자: 최상원
-- 작성일: 2026. 09. 11. 17:31:18

SELECT CASE WHEN g.grade >= 8 THEN s.name END AS name,
        g.grade,
        s.marks
FROM students AS s
    join grades as g on s.marks BETWEEN g.min_mark and g.max_mark
ORDER BY g.grade DESC, s.name, s.marks