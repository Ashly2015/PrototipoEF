CREATE database EF;
use EF;


create table usuario( -- login de usuario
	id_usuario varchar(10) primary key,
    password_usuario varchar(35) not null,
    nombre_usuario varchar (20) not null
)engine = InnoDB default charset=latin1;

create table tipo_cliente(
id_tipo_cliente int primary key auto_increment,
nombre varchar(80) not null,
estatus varchar(1) not null
)engine=Innodb default charset=latin1;

create table bitacora(
id_bitacora int primary key auto_increment,
id_usuario varchar(10) not null,
descripcion varchar(200),
fecha date not null,
hora time not null,
foreign key (id_usuario) references
usuario(id_usuario)
)engine=InnoDB  default charset=latin1;

#inserts tipo_cliente
insert into tipo_cliente values (0, "Frecuente", "A");
insert into tipo_cliente values (0, "Normal", "A");
insert into tipo_cliente values (0, "Premium", "A");

#inserts iusuario
insert into usuario values ("admin", "1234", "Ashly Barrios");
insert into usuario values ("prof", "1111", "Juan Perezs");

CALL `ef`.`buscar_usuario`("admin");




