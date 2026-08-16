-- EJERCICIO 1

-- Crear una tabla
CREATE TABLE usuarios (
    id NUMBER PRIMARY KEY,
    user_id number NOT NULL,
    seniority VARCHAR2(50) NOT NULL
);

-- Insertar un registros
INSERT INTO "DEIMOS"."USUARIOS" (ID, USER_ID, SENIORITY) VALUES ('5', '15243', 'senior');

-- Confirmar los cambios
COMMIT;

/* 
Selecciona los user id 
*/
-- SOLUCION
SELECT id FROM usuarios;


-- EJERCICIO 2

-- Crear una tabla
CREATE TABLE workes (
    id NUMBER PRIMARY KEY,
    firstname varchar2(50) NOT NULL,
    lastname VARCHAR2(50) NOT NULL,
    age number not null,
    exp_years FLOAT not null,
    gender varchar2(50) not null
);

-- Insertar un registros
INSERT INTO "DEIMOS"."WORKES" (id, firstname, lastname, age, exp_years, gender) VALUES (1, 'Ghully', 'Thuas', 29, 2.3, 'Female');
INSERT INTO "DEIMOS"."WORKES" (id, firstname, lastname, age, exp_years, gender) VALUES (2, 'Bostal', 'Shkolky', 32, 0.2, 'Male');
INSERT INTO "DEIMOS"."WORKES" (id, firstname, lastname, age, exp_years, gender) VALUES (3, 'Qaostu', 'Malop', 21, 4.0, 'Female');

-- Confirmar los cambios
COMMIT;

/* 
Escribe una consulta para extraer toda la tabla (todas las columnas) de la base de datos. 
Usa SELECT * o lista todas las columnas explícitamente para recuperar cada columna de la tabla workers. 
*/
-- SOLUCION
SELECT * FROM WORKES;


-- EJERCICIO 3

-- Crear una tabla
CREATE TABLE objects (
    id NUMBER PRIMARY KEY,
    pieces number NOT NULL,
    shape VARCHAR2(50) NOT NULL
);

-- Insertar un registros
INSERT INTO "DEIMOS"."OBJECTS" (id, pieces, shape) VALUES (251, 3, 'rectangle');
INSERT INTO "DEIMOS"."OBJECTS" (id, pieces, shape) VALUES (35, 1, 'circle');
INSERT INTO "DEIMOS"."OBJECTS" (id, pieces, shape) VALUES (39, 23, 'octagon');
INSERT INTO "DEIMOS"."OBJECTS" (id, pieces, shape) VALUES (21, 5, 'line');
INSERT INTO "DEIMOS"."OBJECTS" (id, pieces, shape) VALUES (13, 5, 'line');

-- Confirmar los cambios
COMMIT;

/* 
Escribe una consulta SQL para recuperar todos las piezas de la tabla objects. 
*/
-- SOLUCION
SELECT pieces FROM objects;


-- EJERCICIO 4

-- Crear una tabla
CREATE TABLE SALES (
    id NUMBER PRIMARY KEY,
    coin varchar NOT NULL,
    amount float NOT NULL
);

-- Insertar un registros
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (1, 'AGK', 1.6);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (2, 'GBL', 7.2);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (3, 'KLQ', 3.3);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (4, 'AGK', 1.9);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (5, 'BPO', 6.3);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (6, 'THL', 7.9);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (7, 'BPO', 4.3);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (8, 'AGK', 3.8);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (9, 'QRW', 6.9);
INSERT INTO "DEIMOS"."SALES" (id, coin, amount) VALUES (10, 'QRW', 3.1);

-- Confirmar los cambios
COMMIT;

/* 
Obtén todas las monedas únicas que se usaron en la tabla sales 
*/
-- SOLUCION
SELECT coin FROM SALES;


-- EJERCICIO 5

-- Crear una tabla
CREATE TABLE EVENTOS (
    id NUMBER PRIMARY KEY,
    people varchar(30) NOT NULL
);

-- Insertar un registros
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (1, 9);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (6, 23);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (9, 5);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (13, 7);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (2, 28);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (4, 11);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (99, 22);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (83, 7);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (462, 13);
INSERT INTO "DEIMOS"."EVENTOS" (id, people) VALUES (130, 2);

-- Confirmar los cambios
COMMIT;

/* 
Obtén todos los event_ids donde people sea menor que 14 personas 
*/
-- SOLUCION
SELECT * FROM EVENTOS where people < 14;


-- EJERCICIO 6

-- Crear una tabla
create table people(
    id number primary key,
    name varchar(50) not null,
    age int not null,
    status varchar(50) not null
);

-- Insertar un registros
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (1, 'Charles', 28, 'employed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (2, 'Fatima', 38, 'unemployed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (3, 'Eric', 11, 'unemployed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (4, 'Diya', 44, 'employed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (5, 'Hanna', 22, 'employed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (6, 'Ali', 20, 'unemployed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (7, 'Gabriel', 37, 'employed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (8, 'Beatriz', 17, 'employed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (9, 'Troy', 29, 'unemployed');
insert into "DEIMOS"."PEOPLE" (id, name, age, status) values (10, 'Angelica', 32, 'employed');

-- Confirmar los cambios
commit;

/* 
Obtén a todas las personas de la tabla people que tengan entre 20 y 28 años (incluyendo 20 y 28) y cuyo estado sea igual a employed. 
*/
-- SOLUCION 1
select * from people where age BETWEEN 20 and 28 order by age;

/* 
Obtén todas las personas que tengan una edad menor a 19 o mayor a 31 (sin incluir 19 y sin incluir 31) o cuyo status sea employed. 
*/
-- SOLUCION 2
select * from people where age < 19 or age  > 31 or status = 'employed' order by age;

/* 
Obtén todas las personas que no están employed y que no tienen menos de 25 años. 
*/
select * from people where status != 'employed' and age > 25 order by age;


-- EJERCICIO 7

-- Crear una tabla
create table candies(
    id int primary key,
    name varchar(20) not null,
    price int not null,
    color varchar(30) not null,
    weight int not null
);

-- Insertar un registros
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (1, 'Twix', 2, 'brown', 50);
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (2, 'Snickers', 3, 'brown', 48);
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (3, 'Skittles', 4, 'red', 45);
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (4, 'M&Ms', 3, 'mixed', 40);
insert into "DEIMOS"."CANDIES" (id, name, price ,color, weight) values (5, 'Starburst', 2, 'pink', 45);
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (6, 'Mikly Way', 2, 'brown', 52);
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (7, 'KitKat', 3, 'brown', 45);
insert into "DEIMOS"."CANDIES" (id, name, price, color, weight) values (8, 'Smarties', 4, 'mixed', 38);

-- Confirmar los cambios
commit;

/* 
Escribe una consulta para encontrar todos los caramelos que sean:
`brown` y cuesten 2 
`mixed` y pesen menos de 40
La consulta debe devolver únicamente el `name` y `color` de estos caramelos.
*/
select name, color from candies
where (color = 'brown' and price = 2) or (color = 'mixed' and weight = 40);




































