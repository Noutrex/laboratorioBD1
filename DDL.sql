CREATE TABLE barberia(
    codigo_barberia INT PRIMARY KEY,
    calle VARCHAR(30),
    nro INT,
    dpto INT,
    hora_apertura TIME,
    hora_apertura TIME,
);
CREATE TABLE barbero(
    nro_legajo INT PRIMARY KEY,
    ci CHAR(8) NOT NULL,
    primer_nombre VARCHAR(20),
    segundo_nombre VARCHAR(20),
    primer_apellido VARCHAR(20),
    segundo_apellido VARCHAR(20),
    fecha_ingreso DATE
);

CREATE TABLE trabajan(
    codigo_barberia INT,
    nro_legajo INT,
    dia DATE,
    hora_inicio TIME,
    hora_fin TIME,
    PRIMARY KEY (codigo_barberia, nro_legajo, dia, hora_inicio),
    CONSTRAINT fk_codigo_barberia
        FOREIGN KEY codigo_barberia 
        REFERENCES barberia(codigo_barberia),
    CONSTRAINT fk_nro_legajo
        FOREIGN KEY nro_legajo 
        REFERENCES barbero(nro_legajo),
);
CREATE TABLE senior(
    nro_legajo INT PRIMARY KEY,
    anios_experiencia INT,
    tiene_certificado BOOLEAN DEFAULT FALSE;
    CONSTRAINT fk_senior_nro_legajo
        FOREIGN KEY nro_legajo
        REFERENCES barbero(nro_legajo),
);
CREATE TABLE junior(
    nro_legajo INT PRIMARY KEY,
    nombre_academia VARCHAR(30),
    CONSTRAINT fk_junior_nro_legajo
        FOREIGN KEY nro_legajo
        REFERENCES barbero(nro_legajo),
);
CREATE TABLE servicio(
    codigo_servicio INT PRIMARY KEY,
    nombre_servicio VARCHAR(40),
    duracion INT,
    precio_servicio INT,
);
CREATE TABLE brinda_servicio(
    
);
CREATE TABLE clientes();
CREATE TABLE telefono_cliente();
CREATE TABLE turno();
CREATE TABLE se_realiza();
CREATE TABLE pago();
CREATE TABLE membresia();
CREATE TABLE encuesta();
CREATE TABLE medio_pago();
CREATE TABLE telefono_barberia();


