SELECT
    courses.course_id,
    exams.exam_name,
    courses.course_teacher,
    exams.exam_class,
    courses.course_student_count,
    courses.course_credit,
    exams.exam_midterm,
    exams.exam_final,
   
FROM
    exams
RIGHT JOIN courses
ON courses.course_id = exams.course_id ;