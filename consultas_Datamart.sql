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
