CREATE TABLE studets(
    student_id INT,
    student_name TEXT,
    student_surname TEXT,
    student_lesson_code TEXT,
    student_age INT,
    student_phone_number TEXT,
    student_mail TEXT,
    student_class INT,
    student_gender TEXT,
    student_city TEXT,
    PRIMARY KEY(student_id)
); 
INSERT INTO studets(
    student_id,
    student_name,
    student_surname,
    student_lesson_code,
    student_age,
    student_phone_number,
    student_mail,
    student_class,
    student_gender,
    student_city
)
VALUES(
    181501023,
    'Melih',
    'Konas',
    'CENG101',
    19,
    '05537499022',
    'm.melih.konas@std.hku.edu.tr',
    1,
    'Male',
    'Gaziantep'
);
INSERT INTO students(
    student_id,
    student_name,
    student_surname,
    student_lesson_code,
    student_age,
    student_phone_number,
    student_mail,
    student_class,
    student_gender,
    student_city
)
VALUES(
    181602013,
    'Ahmet Unal',
    'Eren',
    'CENG102',
    20,
    '05358545427',
    'k.ahmet.eren@std.hku.edu.tr',
    3,
    'Male',
    'Gaziantep'
);
INSERT INTO studets(
    student_id,
    student_name,
    student_surname,
    student_lesson_code,
    student_age,
    student_phone_number,
    student_mail,
    student_class,
    student_gender,
    student_city
)
VALUES(
    181512357,
    'Merve Buse',
    'Cakar',
    'PHYS101',
    20,
    '05468098991',
    'merve.buse@std.hku.edu.tr',
    2,
    'Female',
    'Malatya'
);
INSERT INTO studets(
    student_id,
    student_name,
    student_surname,
    student_lesson_code,
    student_age,
    student_phone_number,
    student_mail,
    student_class,
    student_gender,
    student_city
)
VALUES(
    181636698,
    'Busra',
    'Ileri',
    'COME101',
    21,
    '05051067322',
    'busra.ileri@std.hku.edu.tr',
    4,
    'Female',
    'Kahramanmaras'
);