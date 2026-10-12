drop database if exists exam1;
drop user if exists 'examuser'@'localhost';

create database exam1;
use exam1;
create user 'examuser'@'localhost' identified by 'exampass';
grant all privileges on exam1.* to 'examuser'@'localhost';

CREATE TABLE IF NOT EXISTS courses (
    courseID INT AUTO_INCREMENT PRIMARY KEY,
    courseNo VARCHAR(20) NOT NULL,
    courseDesc TEXT NOT NULL,
    lastSemTaught VARCHAR(20) NOT NULL,
    maxStudents INT NOT NULL
);

INSERT INTO courses (courseNo, courseDesc, lastSemTaught, maxStudents) VALUES
('CS101', 'Introduction to Computer Science', 'Fall 2025', 120),
('CS102', 'Data Structures and Algorithms', 'Spring 2026', 90),
('CS201', 'Object-Oriented Programming in Java', 'Fall 2025', 80),
('CS202', 'Computer Organization and Architecture', 'Spring 2025', 60),
('CS301', 'Database Management Systems', 'Spring 2026', 75),
('CS302', 'Operating Systems Design', 'Fall 2025', 65),
('CS401', 'Software Engineering Principles', 'Spring 2026', 50),
('CS402', 'Artificial Intelligence Concepts', 'Fall 2025', 45),
('CS403', 'Machine Learning Fundamentals', 'Spring 2026', 40),
('CS404', 'Web Development and Applications', 'Fall 2025', 70),
('MATH101', 'Calculus I', 'Fall 2025', 150),
('MATH102', 'Calculus II', 'Spring 2026', 120),
('MATH201', 'Linear Algebra', 'Spring 2026', 85),
('MATH202', 'Discrete Mathematics', 'Fall 2025', 90),
('MATH301', 'Differential Equations', 'Fall 2025', 60),
('ENG101', 'College Composition and Rhetoric', 'Spring 2026', 30),
('ENG102', 'Literature and Critical Thinking', 'Fall 2025', 30),
('ENG201', 'Technical and Professional Writing', 'Spring 2026', 35),
('PHYS101', 'General Physics I (Mechanics)', 'Fall 2025', 100),
('PHYS102', 'General Physics II (Electricity & Magnetism)', 'Spring 2026', 90),
('CHEM101', 'General Chemistry I', 'Fall 2025', 110),
('CHEM102', 'General Chemistry II', 'Spring 2026', 95),
('CHEM201', 'Organic Chemistry I', 'Fall 2025', 50),
('BIO101', 'Principles of Biology', 'Spring 2026', 130),
('BIO102', 'General Zoology', 'Fall 2025', 70),
('HIST101', 'World History to 1500', 'Fall 2025', 100),
('HIST102', 'World History Since 1500', 'Spring 2026', 100),
('HIST201', 'United States History I', 'Fall 2025', 80),
('HIST202', 'United States History II', 'Spring 2026', 80),
('PSYC101', 'Introduction to Psychology', 'Spring 2026', 200),
('PSYC201', 'Developmental Psychology', 'Fall 2025', 75),
('PSYC301', 'Cognitive Psychology', 'Spring 2026', 50),
('SOC101', 'Introduction to Sociology', 'Fall 2025', 150),
('ECON101', 'Principles of Microeconomics', 'Spring 2026', 120),
('ECON102', 'Principles of Macroeconomics', 'Fall 2025', 110),
('BUS101', 'Introduction to Business', 'Spring 2026', 100),
('BUS201', 'Principles of Marketing', 'Fall 2025', 85),
('BUS301', 'Corporate Finance', 'Spring 2026', 60),
('ART101', 'Art History: Prehistoric to Gothic', 'Fall 2025', 65),
('ART102', 'Art History: Renaissance to Modern', 'Spring 2026', 65),
('ART201', 'Fundamentals of Studio Drawing', 'Fall 2025', 25),
('MUS101', 'Music Appreciation', 'Spring 2026', 150),
('PHIL101', 'Introduction to Philosophy', 'Fall 2025', 90),
('PHIL201', 'Ethics and Moral Philosophy', 'Spring 2026', 70),
('COMM101', 'Public Speaking and Fundamentals', 'Spring 2026', 25),
('COMM201', 'Intercultural Communication', 'Fall 2025', 40),
('STAT201', 'Introductory Statistics', 'Spring 2026', 110),
('POLS101', 'American Government and Politics', 'Fall 2025', 130),
('POLS201', 'International Relations', 'Spring 2026', 60),
('ENGR101', 'Introduction to Engineering Concepts', 'Fall 2025', 90);