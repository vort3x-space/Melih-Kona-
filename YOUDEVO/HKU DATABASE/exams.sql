CREATE TABLE exams(
    course_id TEXT,
    exam_name TEXT,
    course_teacher TEXT,
    exam_class INT,
    exam_student_count INT,
    exam_midterm TEXT,
    exam_final TEXT
);
INSERT INTO exams(
    course_id,
    exam_name,
    course_teacher,
    exam_class,
    exam_student_count,
    exam_midterm,
    exam_final 
)
VALUES(
    'CENG345',
    'Computer Programming',
    'Fatih Hasoglu',
    4,
    5,
    '09/10/2019',
    '10/02/2020'
  
);
INSERT INTO exams(
    course_id,
    exam_name,
    course_teacher,
    exam_class,
    exam_student_count,
    exam_midterm,
    exam_final,
   
)
VALUES(
    'COME543',
    'Artifical Intelligence',
    'Nihat Yilmaz Simsek',
    5,
    5,
    '20/10/2019',
    '17/02/2020'
    
);
INSERT INTO exams(
    course_id,
    exam_name,
    course_teacher,
    exam_class,
    exam_student_count,
    exam_midterm,
    exam_final
    
)
VALUES(
    'COME321',
    'Python Programming',
    'Melih Yayla',
    3,
    5,
    '30/12/2019',
    '02/02/2020'
   
);