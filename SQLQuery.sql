CREATE DATABASE BDD

use[BDD]
create table ma_table_1 (nom varchar(200))

sp_rename ma_table_1, ma_table

sp_rename ma_table, ma_table_1

drop table ma_table_1

create database Debutant

alter database Debutant modify name = DebutantModifie
