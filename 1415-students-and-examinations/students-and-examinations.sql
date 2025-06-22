# Write your MySQL query statement below
SELECT stu.student_id , stu.student_name , sub.subject_name , COUNT(Exam.Student_id) AS attended_exams
FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations Exam
ON stu.student_id = Exam.student_id
AND sub.subject_name = Exam.subject_name
GROUP BY stu.student_id ,stu.student_name,sub.subject_name, Exam.subject_name
ORDER BY stu.student_id;
