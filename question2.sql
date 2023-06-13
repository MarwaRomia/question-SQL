CREATE DATABASE school;
CREATE DATABASE IF NOT EXISTS school;
use school

CREATE TABLE `school`.`students` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `studentname` VARCHAR(255) NOT NULL,
  `Age` INT NOT NULL,
  `City` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`studentID`));
  CREATE TABLE `school`.`teachers` (
  `teacherID` int(11) NOT NULL AUTO_INCREMENT,
  `teachername` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`teacherID`));

  CREATE TABLE `school`.`class` (
  `classID` int(11) NOT NULL AUTO_INCREMENT,
  `teacherID` int ,
  `course_name`  VARCHAR(255) NOT NULL,
  `is_optional` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`classID`),
  FOREIGN KEY (`teacherID`) references `teachers`(teacherID));
  
 CREATE TABLE `school`.`grades` (
  `studentID` int not null,
  `classID` int not null,
  `grade`  int not null,
  foreign key (`studentID`) references `students`(`studentID`),
  foreign key (`classID`) references `class`(`classID`));
  
 INSERT INTO `students` 
                (`studentID`, `studentname`, `Age`, `City`) VALUES
                (1, 'Maria Anders', 11, 'UK'),
                (2, 'Thomas Hardy', 12, 'USA'),
                (3, 'Hanna Moos', 12, 'Germany'),
                (4, 'Martín Sommer', 14, 'UK'),
                (5, 'Francisco Chang', 11, 'Germany'),
                (6, 'Yang Wang', 11, 'UK'),
                (7, 'Pedro Afonso', 11, 'UK'),
                (8, 'Janine Labrune', 15, 'Germany'),
                (9, 'Ann Devon', 22, 'USA'),
                (10, 'Aria Cruz', 17, 'Germany')
       select * from students         
       
       INSERT INTO `teachers` 
       (`teacherID`, `teachername`) VALUES
                (1, 'Maria Anders'),
                (2, 'Thomas Hardy'),
                (3, 'Hanna Moos'),
                (4, 'Martín Sommer'),
                (5, 'Francisco Chang'),
                (6, 'Yang Wang'),
                (7, 'Pedro Afonso'),
                (8, 'Janine Labrune'),
                (9, 'Ann Devon'),
                (10, 'Aria Cruz');
                select * from teachers
	INSERT INTO `class`
    (`classID`, `teacherID`, `course_name`, `is_optional`) VALUES
            (1, 5 , 'Math', 'No'),
            (2, 1,  'Geography' , 'No'),
            (3,  6,'English', 'Yes'),
            (4,  7,'Pythonr', 'No'),
            (5,  4, 'Data structures','Yes');
            select * from class
INSERT INTO `grades` 
(`studentID`, `classID`, `grade`) VALUES
                (1, 3, 11),
                (2, 4, 12),
                (3, 4, 12),
                (4, 1, 14),
                (5, 5, 16),
                (6, 2, 14),
                (7, 1, 14),
                (8, 5, 15),
                (9, 3, 22),
                (10, 3, 17);
select * from grades