create database datamart1rc;
/*==============================================================*/
/* Table: DIM_LUGAR                                    */
/*==============================================================*/
create table DIM_LUGAR(
IDsitio integer primary key not null,
ciudad varchar (40) Not null,
provincia varchar(40) Not null
);

/*==============================================================*/
/* Table: DIM_TIEMPO                                     */
/*==============================================================*/
create table DIM_TIEMPO(
IDperiodo integer primary key not null,
periodoTiempo varchar (20) Not null
);

/*==============================================================*/
/* Table: DIM_CALIFICACION_RESERVA                                     */
/*==============================================================*/
create table DIM_CALIFICACION_RESERVA(
IDcalificacion integer primary key not null,
categoria varchar (40) Not null
);

/*==============================================================*/
/* Table: DIM_VALORIZACION_CLIENTE                                     */
/*==============================================================*/
create table DIM_VALORIZACION_CLIENTE(
CodRevs integer primary key not null,
valorizacionAlCliente smallint Not null
);

/*==============================================================*/
/* Table: DIM_CARACTERISTICA_VEHICULO                                     */
/*==============================================================*/
create table DIM_CARACTERISTICA_VEHICULO(
CodiVehic integer primary key not null,
nombreMarca varchar(40) Not null,
tipoVehiculo varchar (15) Not null
);

/*==============================================================*/
/* Table: HEC_SATISFACCION                                      */
/*==============================================================*/
create table HEC_SATISFACCION(
IDsitio integer not null,
IDperiodo integer not null,
IDcalificacion integer not null,
CodRevs integer not null,
CodiVehic integer not null,
primary key (IDsitio, IDperiodo, IDcalificacion, CodRevs, CodiVehic)
);
