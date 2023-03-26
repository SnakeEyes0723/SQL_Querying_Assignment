SELECT first_name, last_name
FROM student;

SELECT instructor_id
FROM instructor
WHERE tenured = 1;

SELECT s.first_name, s.last_name, i.first_name, i.last_name
FROM student s
INNER JOIN instructor i ON s.advisor_id = i.instructor_id;

SELECT i.instructor_id, i.first_name, i.last_name
FROM instructor i
LEFT JOIN student s ON i.instructor_id = s.advisor_id
WHERE s.advisor_id IS NULL;

SELECT i.first_name, i.last_name, c.num_credits
FROM instructor i
INNER JOIN course c ON i.instructor_id = c.instructor_id;

SELECT course_code, course_name
FROM course
WHERE course_code LIKE '%3___%';

SELECT c.course_code, t.first_name, t.last_name, c.num_credits
FROM student_schedule s
INNER JOIN student t ON s.student_id = t.student_id
INNER JOIN course c ON s.course_id = c.course_id
WHERE s.student_id = 1