# Write your MySQL query statement below

SELECT S.student_id, S.student_name, J.subject_name, COUNT(E.subject_name) as attended_exams
FROM Students S
CROSS JOIN Subjects J
LEFT JOIN Examinations E ON S.student_id = E.student_id AND J.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, J.subject_name
ORDER BY S.student_id, J.subject_name;
