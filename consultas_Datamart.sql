/*---------Consultas individuales datamart---------------*/
/*Extraccion de datos de tabla marca_vehicular y vehiculo*/
SELECT veh.CodiVehic, veh.tipoVehiculo, marc.nombreMarca 
FROM vehiculo AS veh
INNER JOIN marcavehicular AS marc
ON veh.IDMarcapk = marc.IDMarca;

/*Extraccion de datos de tabla lugar*/
select * from LUGAR;

/*Extraccion de datos de tabla periodo_reserva*/
select * from PERIODORESERVA;

/*Extraccion de datos de tabla calificacion_reserva*/
SELECT*FROM CALIFICACION;

/*Extraccion de datos de tabla valorizacion_cliente*/
SELECT CodRevs, valorizacionAlCliente
FROM registrorevision;

/*---------Consultas hecho datamart---------------*/
/*Extraccion de datos de las tablas dimensiones para la tabla hecho*/
select
lu.Ciudad, cal.Categoria, veh.tipoVehiculo
FROM RESERVA AS res
join CALIFICACION AS cal ON (res.IDcalificacionpk=cal.IDcalificacion)
join LUGAR AS lu ON (res.IDsitiopk=lu.IDsitio) join VEHICULO as veh on (res.CodiVehicpk=veh.CodiVehic)
