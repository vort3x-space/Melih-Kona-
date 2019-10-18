CREATE TABLE announces(
    announces_id INT,
    announces_topic TEXT,
    announces_day TEXT,
    announces_advertisement TEXT,
    announces_hours TEXT,
    announces_place TEXT,
    announces_class INT,
    PRIMARY KEY(announces_id)
);
INSERT INTO announces(
    announces_id,
    announces_topic,
    announces_day,
    announces_advertisement,
    announces_hours,
    announces_place,
    announces_class 
)
VALUES(
    104,
    'Lesson',
    'Monday',
    'Dont forget to bring calculators.',
    '16:00',
    'Faculty of Engineering',
    2
);
INSERT INTO announces(
    announces_id,
    announces_topic,
    announces_day,
    announces_advertisement,
    announces_hours,
    announces_place,
    announces_class 
)
VALUES(
    101,
    'Lesson Pyhsýc',
    'Friday',
    'There will be Pyhsýc Lab.',
    '08:45',
    'Faculty of Engineering',
    3
);
INSERT INTO announces(
    announces_id,
    announces_topic,
    announces_day,
    announces_advertisement,
    announces_hours,
    announces_places,
    announces_class 
)
VALUES(
    103,
    'New Frýend',
    'Saturday',
    'There will be dating party.',
    '09:00',
    'Faculty of Engineering',
    4
);