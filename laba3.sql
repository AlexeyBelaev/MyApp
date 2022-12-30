CREATE TABLE faculty(id SERIAL PRIMARY KEY,name varchar NOT NULL UNIQUE,dekanat varchar NOT NULL);

CREATE TABLE student_group(id SERIAL PRIMARY KEY, group_name varchar NOT NULL UNIQUE, faculty varchar REFERENCES faculty(name));

CREATE TABLE student (id SERIAL PRIMARY KEY,full_name varchar NOT NULL, passport varchar, groupe varchar NOT NULL REFERENCES student_group(group_name));

INSERT INTO faculty (name,dekanat) VALUES ('СиСС','Миронов');
INSERT INTO faculty (name,dekanat) VALUES ('ВиС','Кановалов');

INSERT INTO student_group (group_name,faculty) VALUES ('БИН2202','СиСС');
INSERT INTO student_group (group_name,faculty) VALUES ('БИН2203','СиСС');
INSERT INTO student_group (group_name,faculty) VALUES ('БРТ2201','ВиС');
INSERT INTO student_group (group_name,faculty) VALUES ('БРТ2202','ВиС');

INSERT INTO student(full_name,passport,groupe) VALUES ('Александр','10000','БИН2202');
INSERT INTO student(full_name,passport,groupe) VALUES ('Григорий','10001','БИН2202');
INSERT INTO student(full_name,passport,groupe) VALUES ('Никита','10002','БИН2202');
INSERT INTO student(full_name,passport,groupe) VALUES ('Павел','10003','БИН2202');
INSERT INTO student(full_name,passport,groupe) VALUES ('Яков','10004','БИН2202');

INSERT INTO student(full_name,passport,groupe) VALUES ('Алтынай','10010','БИН2203');
INSERT INTO student(full_name,passport,groupe) VALUES ('Александр','10011','БИН2203');
INSERT INTO student(full_name,passport,groupe) VALUES ('Алексей','10012','БИН2203');
INSERT INTO student(full_name,passport,groupe) VALUES ('Алексей','10013','БИН2203');
INSERT INTO student(full_name,passport,groupe) VALUES ('Данил','10014','БИН2203');

INSERT INTO student(full_name,passport,groupe) VALUES ('Александр','10100','БРТ2201');
INSERT INTO student(full_name,passport,groupe) VALUES ('Аркадий','10101','БРТ2201');
INSERT INTO student(full_name,passport,groupe) VALUES ('Борис','10102','БРТ2201');
INSERT INTO student(full_name,passport,groupe) VALUES ('Валерия','10103','БРТ2201');
INSERT INTO student(full_name,passport,groupe) VALUES ('Глеб','10104','БРТ2201');
