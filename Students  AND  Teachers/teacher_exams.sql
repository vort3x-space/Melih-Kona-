SELECT 
teacher.course_code,
exams.exam_name,
teacher.teacher_name,
teachs.teacher_student_count
FROM teacher
INNER JOIN exams
ON exams.course_id = teacher.course_code ;