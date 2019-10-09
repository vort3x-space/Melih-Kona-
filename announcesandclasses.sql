SELECT
announces.announces_id,
announces.announces_topic,
announces.announces_day,
announces.announces_advertisement,
announces.announces_hours,
announces.announces_place,
classes.class,
classes.class_student_count
FROM announces
INNER JOIN classes
ON announces.announces_class = classes.class