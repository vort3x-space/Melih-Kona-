SELECT
    students.student_id,
    students.student_name,
    students.student_surname,
    teachers.teacher_name,
    students.student_lesson_code,
   
FROM
    students
RIGHT JOIN teachers 
ON students.student_surname = teachers.teacher_name;