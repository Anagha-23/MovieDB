create database movie_022;
use movie_022;
create table actor(aid int,
    -> aname varchar(30),
    -> agender varchar(1),
    -> primary key(aid));
create table director(did int,
    -> dname varchar(30),
    -> dphone bigint,
    -> primary key(did));
create table movie(mid int,
    -> mtitle varchar(30),
    -> myear int, 
    -> mlang varchar(30),
    -> did int,
    -> primary key(mid),
    -> foreign key (did) References director(did) on delete set NULL);
create table movie_cast(aid int, 
    -> mid int,  
    -> role varchar(30), 
    -> primary key(aid, mid), 
    -> foreign key (aid) References actor(aid) , 
    -> foreign key(mid) references movie(mid));
create table rating(mid int,
    -> star int,
    -> primary key(mid, star),
    -> foreign key(mid) references movie(mid));
Insert into actor values(1, "Jennifer Lawrence", "F");
Insert into actor values(2, "Chris Evans", "M");
Insert into actor values(3, "Ryan Gosling", "M");
Insert into actor values(4, "Margot Robbie", "F");

Insert into director values(101, "Hitchcock", 9876789234);
Insert into director values(102, "Steven", 9076589284);
Insert into director values(103, "Gerwig", 9071583284);

Insert into movie values(201, "Passengers", 2014, "English", 101);
Insert into movie values(202, "Death note", 1990, "English", 101);
Insert into movie values(203, "Fallen", 2002, "English", 102);
Insert into movie values(204, "Jurassic Park", 2022, "English", 102);
Insert into movie values(205, "Ocean", 1999, "English", 103);
Insert into movie values(206, "Captain America", 2002, "English", 103);

Insert into movie_cast values(1, 201, "Female Lead");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(2, 201, "Male Lead");
Query OK, 1 row affected (0.00 sec)

mysql> Insert into movie_cast values(3, 201, "Supporting Role");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(4, 202, "Female Lead");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(1, 202, "Supporting Role");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(2, 202, "Male Lead");
Query OK, 1 row affected (0.02 sec)

mysql> Insert into movie_cast values(3, 203, "Male Lead");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(4, 203, "Female Lead");
Query OK, 1 row affected (0.00 sec)

mysql> Insert into movie_cast values(1, 203, "Supporting Role");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(2, 203, "Male Lead");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(3, 204, "Male Lead");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(4, 204, "Female Lead");
Query OK, 1 row affected (0.02 sec)

mysql> Insert into movie_cast values(1, 204, "Supporting Role");
Query OK, 1 row affected (0.02 sec)

mysql> Insert into movie_cast values(2, 205, "Supporting Role");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(3, 205, "Male Lead");
Query OK, 1 row affected (0.01 sec)

mysql> Insert into movie_cast values(4, 205, "Female Lead");
Query OK, 1 row affected (0.01 sec)

    
