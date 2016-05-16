drop DATABASE nutrition_project;
CREATE DATABASE nutrition_project;
use nutrition_project;

CREATE TABLE BMI(
id_BMI int(10),
BMI varchar(50),
description varchar(50),
primary key (id_BMI));

CREATE TABLE exercise (
id_exercise int(10),
name varchar (50),
description varchar(50),
primary key(id_exercise));

CREATE TABLE routine (
id_routine int(10),
day varchar (50),
primary key(id_routine));

CREATE TABLE exercises_routine (
id_routine int(10),
id_exercise int(10),
primary key(id_routine,id_exercise));

CREATE TABLE plan_routines_BMI (
id_plan_routines int(10),
id_BMI int(10),
primary key(id_plan_routines));

CREATE TABLE plan_routines(
id_plan_routines int(10),
id_routine int(10),
primary key(id_plan_routines, id_routine));

CREATE TABLE feeding(
id_feeding int(10),
description varchar(50),
day varchar(10),
schedule varchar(20),
primary key (id_feeding));

CREATE TABLE feeding_plan_BMI (
id_feeding_plan int(10),
id_BMI int(10),
primary key (id_feeding_plan));

CREATE TABLE feeding_plan (
id_feeding_plan int(10),
id_feeding int(10),   
primary key (id_feeding_plan, id_feeding));

alter table exercises_routine
add foreign key (id_routine)
references routine (id_routine);

alter table exercises_routine
add foreign key (id_exercise)
references exercise (id_exercise); 
 
alter table plan_routines_BMI
add foreign key (id_BMI)
references BMI (id_BMI); 

alter table plan_routines
add foreign key (id_plan_routines)
references plan_routines_BMI (id_plan_routines); 

alter table plan_routines
add foreign key (id_routine)
references routine (id_routine); 


alter table feeding_plan_BMI
add foreign key (id_BMI)
references BMI(id_BMI); 

alter table feeding_plan
add foreign key (id_feeding_plan)
references feeding_plan_BMI(id_feeding_plan); 

alter table feeding_plan
add foreign key (id_feeding)
references feeding(id_feeding);

