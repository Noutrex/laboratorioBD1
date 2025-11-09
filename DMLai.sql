INSERT INTO barbero (nro_legajo, ci, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_ingreso, especialidad)
VALUES 
    (1, 11231414, 'Alberto', 'Angel', 'Fernandez','Sanchez', '2022-05-01', 'Corte clásico'),
    (2, 12123512, 'Nestor', 'Pedro', 'Quirno', 'Garcia', '2023-03-08', 'Afeitado'),
    (3, 73736346, 'Mateo', 'Felipe', 'Robaina', 'Martin', '2020-01-01', 'Corte moderno'),
    (4, 35262625, 'Marcelo', 'Mauro','Perez','Garcia', '2018-06-29', 'Perfilado de barba'),
    (5, 62622254, 'Antonio', 'Ignacio', 'Madera', 'Verde', '2022-05-31', 'Coloración');

INSERT INTO clientes (num_cliente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, id_membresia)
VALUES 
    (1, 'Carlos', 'Andrés', 'Pérez', 'Gómez', 'carlos.perez@example.com', 1),
    (2, 'María', 'José', 'Rodríguez', 'López', 'maria.rodriguez@example.com', 2),
    (3, 'Juan', 'Sebastián', 'Martínez', 'Ruiz', 'juan.martinez@example.com', 3),
    (4, 'Lucía', 'Fernanda', 'García', 'Torres', 'lucia.garcia@example.com', 4),
    (5, 'Pedro', 'Luis', 'Ramírez', 'Castro', 'pedro.ramirez@example.com', 5);
INSERT INTO membresia (id_membresia, nombre_membresia, beneficios, costo_mensual, codigo_servicio)
VALUES 
    (1, 'Premium', 5, 1500, 1),
    (2, 'Gold', 4, 1200, 2),
    (3, 'Silver', 3, 900, 3),
    (4, 'Bronce', 2, 600, 4),
    (5, 'Básica', 1, 300, 5);
INSERT INTO pago (id_pago, monto_total, fecha_pago, id_turno, id_medio_pago)
VALUES 
    (401, 500, '2025-11-06', 301, 1),
    (402, 300, '2025-11-06', 302, 2),
    (403, 700, '2025-11-06', 303, 3),
    (404, 400, '2025-11-06', 304, 4),
    (405, 1000, '2025-11-06', 305, 5);
INSERT INTO servicio (codigo_servicio, nombre_servicio, duracion, precio_servicio)
VALUES 
    (1, 'Corte clásico', 30, 500),
    (2, 'Afeitado', 20, 300),
    (3, 'Corte moderno', 45, 700),
    (4, 'Perfilado de barba', 25, 400),
    (5, 'Coloración', 60, 1000);
INSERT INTO barberia (codigo_barberia, calle, nro, dpto, hora_apertura, hora_cierre) 
VALUES
    (1, '18 de Julio', 1234, 101, '09:00', '18:00'),
    (2, 'Rivera', 567, 202, '10:00', '19:00'),
    (3, 'Artigas', 890, 303, '08:30', '17:30'),
    (4, 'Millán', 321, 404, '09:30', '18:30'),
    (5, 'Garibaldi', 654, 505, '10:00', '20:00');
INSERT INTO senior (nro_legajo, anios_experiencia, tiene_certificado) 
VALUES
    (101, 10, TRUE),
    (102, 6, TRUE),
    (103, 8, TRUE),
    (104, 4, FALSE),
    (105, 5, FALSE);
INSERT INTO junior (nro_legajo, nombre_academia) 
VALUES
    (101, 'Elite Barber School'),
    (102, 'Corte y Estilo'),
    (103, 'Barbería Moderna'),
    (104, 'Estilo Urbano'),
    (105, 'Academia BarberPro');
INSERT INTO brinda_servicio (nro_legajo, codigo_servicio) 
VALUES
    (101, 201),
    (102, 202),
    (103, 203),
    (104, 204),
    (105, 205);
INSERT INTO telefono_cliente (num_cliente, telefono_cliente) 
VALUES
    (301, '099123456'),
    (302, '098765432'),
    (303, '091112233'),
    (304, '092223344'),
    (305, '093334455');
INSERT INTO turno (id_turno, num_cliente, fecha_turno, hora_turno, codigo_barberia, nro_legajo)
VALUES
    (501, 301, '2025-11-06', '09:00', 1, 101),
    (502, 302, '2025-11-06', '10:00', 2, 102),
    (503, 303, '2025-11-07', '11:00', 3, 103),
    (504, 304, '2025-11-07', '12:00', 4, 104),
    (505, 305, '2025-11-08', '13:00', 5, 105);
INSERT INTO se_realiza (id_turno, nro_legajo, codigo_servicio, precio_final) 
VALUES
    (501, 101, 201, 500),
    (502, 102, 202, 400),
    (503, 103, 203, 450),
    (504, 104, 204, 800),
    (505, 105, 205, 700);
INSERT INTO medio_pago (id_medio_pago, nombre_medio_pago) 
VALUES
    (601, 'Efectivo'),
    (602, 'Tarjeta de crédito'),
    (603, 'Tarjeta de débito'),
    (604, 'Transferencia bancaria'),
    (605, 'MercadoPago');
INSERT INTO encuesta (id_encuesta, fecha_encuesta, comentario, puntuacion, id_turno) 
VALUES
    (801, '2025-11-06', 'Excelente atención', 5, 501),
    (802, '2025-11-06', 'Muy buen servicio', 4, 502),
    (803, '2025-11-07', 'Todo correcto', 4, 503),
    (804, '2025-11-07', 'Muy profesional', 5, 504),
    (805, '2025-11-08', 'Repetiría sin dudas', 5, 505);
INSERT INTO telefono_barberia (odigo_barberia, telefono_barberia) 
VALUES
    (1, '24001234'),
    (2, '24005678'),
    (3, '24007890'),
    (4, '24003210'),
    (5, '24006543');
INSERT INTO se_realiza (id_turno, nro_legajo, codigo_servicio, precio_final) 
VALUES
    (501, 101, 201, 500),
    (502, 102, 202, 400),
    (503, 103, 203, 450),
    (504, 104, 204, 800),
    (505, 105, 205, 700);



