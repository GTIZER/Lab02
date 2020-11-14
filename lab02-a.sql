DROP TABLE IF EXISTS soft, installs, pcs, rooms, employees; 
CREATE TABLE soft (id integer, sname varchar(50), ver varchar(100), quant integer);
CREATE TABLE installs (pc_id integer, soft_id integer);
CREATE TABLE pcs (id integer, room_id integer, note varchar(200), ip_addr varchar, mac_addr varchar);
CREATE TABLE rooms (id integer, num integer, emp_id integer);
CREATE TABLE employees (id integer, lname varchar(50), fname varchar(50), mname varchar(50));
