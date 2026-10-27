create table estados (
    estado_id int primary key,
    nombre varchar(50) not null
);

insert into estados (estado_id, nombre) values
(1, 'Jalisco'), (2, 'Baja California'), (3, 'Chihuahua'), (4, 'Michoacán'),
(5, 'Guerrero'), (6, 'Coahuila'), (7, 'Querétaro'), (8, 'Veracruz'),
(9, 'CDMX'), (10, 'Sinaloa'), (11, 'Yucatán'), (12, 'Nuevo León'),
(13, 'Sonora'), (14, 'Puebla'), (15, 'Guanajuato'), (16, 'Aguascalientes'),
(17, 'San Luis Potosí');

alter table clientes add column estado_id int;

update clientes set estado_id = 1 where estado = 'Jalisco';
update clientes set estado_id = 2 where estado = 'Baja California';
update clientes set estado_id = 3 where estado = 'Chihuahua';
update clientes set estado_id = 4 where estado = 'Michoacán';
update clientes set estado_id = 5 where estado = 'Guerrero';
update clientes set estado_id = 6 where estado = 'Coahuila';
update clientes set estado_id = 7 where estado = 'Querétaro';
update clientes set estado_id = 8 where estado = 'Veracruz';
update clientes set estado_id = 9 where estado = 'CDMX';
update clientes set estado_id = 10 where estado = 'Sinaloa';
update clientes set estado_id = 11 where estado = 'Yucatán';
update clientes set estado_id = 12 where estado = 'Nuevo León';
update clientes set estado_id = 13 where estado = 'Sonora';
update clientes set estado_id = 14 where estado = 'Puebla';
update clientes set estado_id = 15 where estado = 'Guanajuato';
update clientes set estado_id = 16 where estado = 'Aguascalientes';
update clientes set estado_id = 17 where estado = 'San Luis Potosí';

alter table clientes add constraint fk_clientes_estados foreign key (estado_id) references estados(estado_id);
alter table clientes drop column estado;

create table ciudades (
    ciudad_id int primary key,
    nombre varchar(50) not null,
    estado_id int references estados(estado_id)
);

insert into ciudades (ciudad_id, nombre, estado_id) values
(1, 'Guadalajara', 1), (2, 'Zapopan', 1), (3, 'Mexicali', 2),
(4, 'Tijuana', 2), (5, 'Chihuahua', 3), (6, 'Juárez', 3),
(7, 'Morelia', 4), (8, 'Acapulco', 5), (9, 'Saltillo', 6),
(10, 'Querétaro', 7), (11, 'Veracruz', 8), (12, 'Ciudad de México', 9),
(13, 'Culiacán', 10), (14, 'Mérida', 11), (15, 'Monterrey', 12),
(16, 'Hermosillo', 13), (17, 'Puebla', 14), (18, 'León', 15),
(19, 'Aguascalientes', 16), (20, 'San Luis Potosí', 17);

alter table clientes add column ciudad_id int;

update clientes set ciudad_id = 1 where ciudad = 'Guadalajara';
update clientes set ciudad_id = 2 where ciudad = 'Zapopan';
update clientes set ciudad_id = 3 where ciudad = 'Mexicali';
update clientes set ciudad_id = 4 where ciudad = 'Tijuana';
update clientes set ciudad_id = 5 where ciudad = 'Chihuahua';
update clientes set ciudad_id = 6 where ciudad = 'Juárez';
update clientes set ciudad_id = 7 where ciudad = 'Morelia';
update clientes set ciudad_id = 8 where ciudad = 'Acapulco';
update clientes set ciudad_id = 9 where ciudad = 'Saltillo';
update clientes set ciudad_id = 10 where ciudad = 'Querétaro';
update clientes set ciudad_id = 11 where ciudad = 'Veracruz';
update clientes set ciudad_id = 12 where ciudad = 'Ciudad de México';
update clientes set ciudad_id = 13 where ciudad = 'Culiacán';
update clientes set ciudad_id = 14 where ciudad = 'Mérida';
update clientes set ciudad_id = 15 where ciudad = 'Monterrey';
update clientes set ciudad_id = 16 where ciudad = 'Hermosillo';
update clientes set ciudad_id = 17 where ciudad = 'Puebla';
update clientes set ciudad_id = 18 where ciudad = 'León';
update clientes set ciudad_id = 19 where ciudad = 'Aguascalientes';
update clientes set ciudad_id = 20 where ciudad = 'San Luis Potosí';

alter table clientes drop constraint fk_clientes_estados;
alter table clientes add constraint fk_clientes_ciudades foreign key (ciudad_id) references ciudades(ciudad_id);

alter table clientes drop column estado_id;
alter table clientes drop column ciudad;