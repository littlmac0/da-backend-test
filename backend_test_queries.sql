/* Write a SQL query that shows the total number of students enrolled in the ‘Physics’ class */
SELECT COUNT(sc.id) as 'student_total'
FROM student_classes sc
LEFT JOIN classes c on c.id = sc.class
WHERE c.class_name = 'Physics';

/* Write a SQL query that shows the first name and last name of students enrolled in ‘Intro to Computer Science’ */
SELECT s.first_name, s.last_name
FROM students s
LEFT JOIN student_classes sc on s.id = sc.student
LEFT JOIN classes c on c.id = sc.class
WHERE c.class_name = 'Intro to Computer Science';

/* Write a SQL query to display a list of Class Names and Class IDs that the student ‘Kyle Randall’ is enrolled in. */
SELECT c.class_name, c.id
FROM student_classes sc
LEFT JOIN classes c on c.id = sc.class
LEFT JOIN students s on s.id = sc.student
WHERE s.first_name = 'Kyle' AND s.last_name = 'Randall';