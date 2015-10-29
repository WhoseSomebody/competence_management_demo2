 CREATE TABLE profession_names (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(45) NOT NULL
  );

CREATE TABLE qualific_names (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(45) NOT NULL
);

CREATE TABLE competency_names (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(45) NOT NULL,
  function VARCHAR(400) NOT NULL
  );

create table test_names(
 id integer primary key AUTOINCREMENT,
 name varchar(100) NOT NULL,
 description varchar(300),
 competency_name_id integer
 );

CREATE TABLE professions (
  id integer primary key AUTOINCREMENT,
  profession_name_id integer NOT NULL,
  qualific_name_id integer NOT NULL,
  competency_name_id integer NOT NULL,
  min_level_of_compet_test integer NOT NULL,
  FOREIGN KEY(profession_name_id) REFERENCES profession_names(id),
  FOREIGN KEY(qualific_name_id) REFERENCES qualific_names(id),
  FOREIGN KEY(competency_name_id) REFERENCES competency_names(id)
  );

CREATE TABLE users (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(50) NOT NULL,
  login VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  profession_id integer,
  rating integer,
  is_group integer NOT NULL DEFAULT 0,--------------------------------------------------------------------------
  FOREIGN KEY(profession_id) REFERENCES professions(id)
  );

CREATE TABLE questions (
  id integer primary key AUTOINCREMENT,
  question_text VARCHAR(150),
  question_pic bytea,
  difficlty integer NOT NULL,
  answ1_text VARCHAR(100),
  answ2_text VARCHAR(100),
  answ3_text VARCHAR(100),
  answ4_text VARCHAR(100),
  answ5_text VARCHAR(100),
  answ6_text VARCHAR(100),
  answ1_pic bytea,------------------------------------------------------------------------------------
  answ2_pic bytea,
  answ3_pic bytea,
  answ4_pic bytea,
  answ5_pic bytea,
  answ6_pic bytea,
  answ_correct integer NOT NULL,
  test_name_id integer NOT NULL,
  FOREIGN KEY(test_name_id) REFERENCES test_names(id)
  );

CREATE TABLE results (
  id integer primary key AUTOINCREMENT,
  user_id integer NOT NULL,
  test_name_id integer NOT NULL,
  result integer,
  date_quiz DATE, -----!!!----------------------------------------------------
  FOREIGN KEY(test_name_id) REFERENCES test_names(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
  );

CREATE TABLE disciplines (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(200)
  );

CREATE TABLE knowl_descriptions (
  id integer primary key AUTOINCREMENT,
  description VARCHAR(200) NOT NULL,
  discipline_id integer NOT NULL,
  FOREIGN KEY(discipline_id) REFERENCES disciplines(id)
  );

CREATE TABLE attainm_descriptions (
  id integer primary key AUTOINCREMENT,
  description VARCHAR(200) NOT NULL
  );

CREATE TABLE skill_descriptions (
  id integer primary key AUTOINCREMENT,
  description VARCHAR(200) NOT NULL
  );

CREATE TABLE compet_knowledges (
  id integer primary key AUTOINCREMENT,
  competency_name_id integer NOT NULL,
  knowl_description_id integer NOT NULL,
  FOREIGN KEY(competency_name_id) REFERENCES competency_names(id),
  FOREIGN KEY(knowl_description_id) REFERENCES knowl_descriptions(id)
  );

CREATE TABLE compet_skills (
  id integer primary key AUTOINCREMENT,
  competency_name_id integer NOT NULL,
  skill_description_id integer NOT NULL,
  FOREIGN KEY(competency_name_id) REFERENCES competency_names(id),
  FOREIGN KEY(skill_description_id) REFERENCES skill_descriptions(id)
  );

CREATE TABLE compet_attainment (
  id integer primary key AUTOINCREMENT,
  competency_name_id integer NOT NULL,
  attainm_description_id integer NOT NULL,
  FOREIGN KEY(competency_name_id) REFERENCES competency_names(id),
  FOREIGN KEY(attainm_description_id) REFERENCES attainm_descriptions(id)
  );

CREATE TABLE responsibilities (
  id integer primary key AUTOINCREMENT,
  description VARCHAR(45) NOT NULL,
  profession_name_id integer NOT NULL,
  FOREIGN KEY(profession_name_id) REFERENCES profession_names(id)
  );

CREATE TABLE accountabilities (
  id integer primary key AUTOINCREMENT,
  description VARCHAR(45) NOT NULL,
  profession_name_id integer NOT NULL,
  FOREIGN KEY(profession_name_id) REFERENCES profession_names(id)
  );

CREATE TABLE feedbacks (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  content VARCHAR(500) NOT NULL,
  created_at DATE NOT NULL,
  ip VARCHAR(45) NOT NULL
  );

CREATE TABLE partners (
  id integer primary key AUTOINCREMENT,
  name VARCHAR(45) NOT NULL
  );