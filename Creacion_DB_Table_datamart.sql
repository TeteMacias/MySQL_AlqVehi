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
CodiVehic integer not null,
foreign key (IDsitio) references DIM_LUGAR (IDsitio),
foreign key (IDperiodo) references DIM_TIEMPO (IDperiodo),
foreign key (IDcalificacion) references DIM_CALIFICACION_RESERVA  (IDcalificacion),
foreign key (CodiVehic) references DIM_CARACTERISTICA_VEHICULO (CodiVehic)
);
