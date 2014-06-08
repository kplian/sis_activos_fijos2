/***********************************I-SCP-RCM-AF2-0-08/06/2014****************************************/
CREATE TABLE af2.tclasificacion (
  id_clasificacion SERIAL, 
  id_clasificacion_fk INTEGER, 
  codigo VARCHAR(20), 
  nombre VARCHAR(200), 
  descripcion VARCHAR(1000), 
  codigo_largo VARCHAR(20), 
  estado VARCHAR(20), 
  marca VARCHAR(20), 
  CONSTRAINT pk_tclasificacion__id_clasificacion PRIMARY KEY(id_clasificacion) 
) INHERITS (pxp.tbase)
WITHOUT OIDS;
/***********************************F-SCP-RCM-AF2-0-08/06/2014****************************************/

/***********************************I-SCP-RCM-AF2-0-08/06/2014****************************************/
create table af2.tcaracteristica (
  id_caracteristica serial not null,
  id_clasificacion integer not null,
  nombre varchar(100) not null,
  descripcion varchar(400),
  tipo_dato varchar(30),
  obligatorio varchar(2)
) inherits (pxp.tbase)
without oids;
/***********************************F-SCP-RCM-AF2-1-08/06/2014****************************************/