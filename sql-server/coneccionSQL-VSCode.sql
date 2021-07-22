
select IdUsuario,
     r.Nombre,
     u.Nombre, 
     Correo, 
     Telefono1,
    p.ISO
from usuarios as u 
inner join roles as r on u.IdRol = r.IdRol
left join paises as p on u.IdNacionalidad = p.IdPais
select * from roles;
select * from paises;

select
    FORMAT(CAST(Telefono1 as numeric),'###-###-####') AS TELEFONO, 
    QUOTENAME(UPPER(Nombre)) AS NOMBRE,
    datename(year, FechaRegistro) as AÑO
from usuarios;

-- INSERT INTO usuarios(
--     IdRol,
--     Nombre,
--     Correo,
--     Telefono1,
--     Telefono2,
--     IdNacionalidad,
--     FechaRegistro,
--     IdActualizadoPorUsuario
-- ) VALUES(
--     4,
--     'Felipe Feria',
--     'felferia@mail.com',
--     '3004567890',
--     '9001234567',
--     13,
--     CURRENT_TIMESTAMP,
--     2
-- );
-- select SCOPE_IDENTITY();
-- select IdUsuario, IdRol from usuarios;
-- select Nombre, Correo from usuarios;
-- select Telefono1, Telefono2 from usuarios;
-- select IdNacionalidad, FechaRegistro from usuarios;

SELECT
  *
FROM
  INFORMATION_SCHEMA.TABLES;
GO

-- productos
-- roles
-- categorias
-- paises
-- usuarios
