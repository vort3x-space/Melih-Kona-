CREATE TABLE teacher(
    teacher_id INT,
    teacher_name TEXT,
    teacher_surname TEXT,
    teacher_course TEXT,
    course_code TEXT,
    teacher_student_count INT
); 
INSERT INTO teacher(
    teacher_id,
    teacher_name,
    teacher_surname,
    teacher_course,
    course_code,
    teacher_student_count
)
VALUES(
    1,
    'Nihat Yilmaz',
    'Simsek',
    'Artifical Intelligence',
    'COME543',
    3
);
INSERT INTO teacher(
    teacher_id,
    teacher_name,
    teacher_surname,
    teacher_course,
    course_code,
    teacher_student_count
)
VALUES(
    2,
    'Fatih',
    'Hasoglu',
    'Computer Programming',
    'CENG345',
    5
);
INSERT INTO teacher(
    teacher_id,
    teacher_name,
    teacher_surname,
    teacher_course,
    course_code,
    teacher_student_count
)
VALUES(
    3,
    'Melih'
    'Yayla'
    'Python Programming',
    'COME321',
    1
);