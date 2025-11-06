CREATE TABLE barberia(
    codigo_barberia INT PRIMARY KEY,
    calle VARCHAR(30),
    nro INT,
    dpto INT,
    hora_apertura TIME,
    hora_cierre TIME
);
CREATE TABLE barbero(
    nro_legajo INT PRIMARY KEY,
    ci CHAR(8) NOT NULL,
    primer_nombre VARCHAR(30),
    segundo_nombre VARCHAR(30),
    primer_apellido VARCHAR(30),
    segundo_apellido VARCHAR(30),
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
        FOREIGN KEY (codigo_barberia) 
        REFERENCES barberia(codigo_barberia),
    CONSTRAINT fk_nro_legajo
        FOREIGN KEY (nro_legajo) 
        REFERENCES barbero(nro_legajo)
);
CREATE TABLE senior(
    nro_legajo INT PRIMARY KEY,
    anios_experiencia INT,
    tiene_certificado BOOLEAN DEFAULT FALSE,
    CONSTRAINT fk_senior_nro_legajo
        FOREIGN KEY (nro_legajo)
        REFERENCES barbero(nro_legajo)
);
CREATE TABLE junior(
    nro_legajo INT PRIMARY KEY,
    nombre_academia VARCHAR(30),
    CONSTRAINT fk_junior_nro_legajo
        FOREIGN KEY (nro_legajo)
        REFERENCES barbero(nro_legajo)
);
CREATE TABLE servicio(
    codigo_servicio INT PRIMARY KEY,
    nombre_servicio VARCHAR(40),
    duracion INT,
    precio_servicio INT
);
CREATE TABLE brinda_servicio(
    nro_legajo INT,
    codigo_servicio INT,
    PRIMARY KEY(nro_legajo, codigo_servicio),
    CONSTRAINT fk_servicio_nro_legajo
        FOREIGN KEY (nro_legajo)
        REFERENCES barbero(nro_legajo),
    CONSTRAINT fk_codigo_servicio
        FOREIGN KEY (codigo_servicio)
        REFERENCES servicio(codigo_servicio)
);
CREATE TABLE clientes(
    num_cliente INT PRIMARY KEY,
    primer_nombre VARCHAR(30),
    segundo_nombre VARCHAR(30),
    primer_apellido VARCHAR(30),
    segundo_apellido VARCHAR(30),
    correo VARCHAR(30),
    id_membresia INT
);
CREATE TABLE telefono_cliente(
    num_cliente INT,
    telefono_cliente varchar(10),
    PRIMARY KEY (num_cliente, telefono_cliente),
    CONSTRAINT fk_telefono_cliente
        FOREIGN KEY (num_cliente)
        REFERENCES clientes(num_cliente)
);
CREATE TABLE turno(
    id_turno INT PRIMARY KEY, 
    num_cliente INT,
    fecha_turno DATE, 
    hora_turno TIME, 
    codigo_barberia INT, 
    nro_legajo INT,
    CONSTRAINT fk_turno_barberia
        FOREIGN KEY (codigo_barberia)
        REFERENCES barberia(codigo_barberia),
    CONSTRAINT fk_turno_cliente
        FOREIGN KEY (num_cliente)
        REFERENCES clientes(num_cliente),
    CONSTRAINT fk_turno_barbero
        FOREIGN KEY (nro_legajo)
        REFERENCES barbero(nro_legajo)

);
CREATE TABLE se_realiza(
    id_turno INT,
    nro_legajo INT, 
    codigo_servicio INT, 
    precio_final INT,
	PRIMARY KEY(id_turno, nro_legajo, codigo_servicio),
    CONSTRAINT fk_turno_realiza
        FOREIGN KEY (id_turno)
        REFERENCES turno(id_turno),
    CONSTRAINT fk_realiza_barberia
        FOREIGN KEY (codigo_servicio)
        REFERENCES servicio(codigo_servicio),
    CONSTRAINT fk_realiza_barbero
        FOREIGN KEY (nro_legajo)
        REFERENCES barbero(nro_legajo)
);
CREATE TABLE medio_pago(
    id_medio_pago INT PRIMARY KEY, 
    nombre_medio_pago VARCHAR(50)
);
CREATE TABLE pago(
    id_pago INT PRIMARY KEY, 
    monto_total INT, 
    fecha_pago DATE, 
    id_turno INT, 
    id_medio_pago INT,
    CONSTRAINT fk_pago_turno
        FOREIGN KEY (id_turno)
        REFERENCES turno(id_turno),
    CONSTRAINT fk_pago_medio
        FOREIGN KEY (id_medio_pago)
        REFERENCES medio_pago(id_medio_pago)
);
CREATE TABLE membresia(
    id_membresia INT PRIMARY KEY,
    nombre_membresia VARCHAR(30), 
    beneficios INT, 
    costo_mensual INT, 
    codigo_servicio INT,
    CONSTRAINT fk_membresia_servicio
        FOREIGN KEY (codigo_servicio)
        REFERENCES servicio(codigo_servicio)
);
CREATE TABLE encuesta(
    id_encuesta INT PRIMARY KEY, 
    fecha_encuesta DATE, 
    comentario VARCHAR(100), 
    puntuacion INT, 
    id_turno INT
    CONSTRAINT fk_membresia_servicio
        FOREIGN KEY (id_turno)
        REFERENCES turno(id_turno)

);

CREATE TABLE telefono_barberia(
    odigo_barberia INT PRIMARY KEY, 
    telefono_barberia VARCHAR(20)
);


