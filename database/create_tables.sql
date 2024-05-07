-- Creation of table
CREATE TABLE IF NOT EXISTS students (
  matr_nr INT NOT NULL,
  student_course_id INT,
  module_course_id INT,
  name varchar(250) NOT NULL,
  first_name varchar(250) NOT NULL,
  dob DATE,
  active_modules INTEGER ARRAY,
  passed_modules INTEGER ARRAY,
  failed_modules INTEGER ARRAY,
  PRIMARY KEY (matr_nr)
);

CREATE TABLE IF NOT EXISTS modules (
  module_id INT NOT NULL,
  description varchar(250) NOT NULL,
  c_p INT NOT NULL,
  PRIMARY KEY (module_id)
);

CREATE TABLE if NOT EXISTS courses (
    course_id INT NOT NUll,
    description VARCHAR(250) NOT NULL,
    degree VARCHAR(250) NOT NULL,
    module_list INTEGER ARRAY,
    PRIMARY KEY (course_id)
);

CREATE TABLE if NOT EXISTS signUp (
  student_matr_nr INT NOT NULL,
  module_id INT NOT NULL,
  grade DOUBLE PRECISION,
  passed BOOLEAN,
  attempt INT NOT NULL,
  PRIMARY KEY (student_matr_nr, module_id),
  FOREIGN KEY (student_matr_nr) REFERENCES students(matr_nr),
  FOREIGN KEY (module_id) REFERENCES modules(module_id)
);