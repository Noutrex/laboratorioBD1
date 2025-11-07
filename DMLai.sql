-- =========================
-- TABLA: barberia
-- =========================
INSERT INTO barberia (codigo_barberia, calle, nro, dpto, hora_apertura, hora_cierre) VALUES
(1, '18 de Julio', 1234, 101, '09:00', '18:00'),
(2, 'Rivera', 567, 202, '10:00', '19:00'),
(3, 'Artigas', 890, 303, '08:30', '17:30'),
(4, 'Millán', 321, 404, '09:30', '18:30'),
(5, 'Garibaldi', 654, 505, '10:00', '20:00');

-- =========================
-- TABLA: barbero
-- =========================
INSERT INTO barbero (nro_legajo, ci, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_ingreso) VALUES
(1, '11231414', 'Alberto', 'Angel', 'Fernandez', 'Sanchez', '2022-05-01'),
(2, '12123512', 'Nestor', 'Pedro', 'Quirno', 'Garcia', '2023-03-08'),
(3, '73736346', 'Mateo', 'Felipe', 'Robaina', 'Martin', '2020-01-01'),
(4, '35262625', 'Marcelo', 'Mauro', 'Perez', 'Garcia', '2018-06-29'),
(5, '62622254', 'Antonio', 'Ignacio', 'Madera', 'Verde', '2022-05-31'),
(6, '44556677', 'Lucía', 'Mariana', 'Alvarez', 'Pereira', '2021-09-14'),
(7, '77889900', 'Gabriel', 'Tomás', 'Suárez', 'Ramos', '2019-04-27');

-- =========================
-- TABLA: trabajan
-- =========================
INSERT INTO trabajan (codigo_barberia, nro_legajo, dia, hora_inicio, hora_fin) VALUES
(1, 1, '2025-11-10', '09:00', '13:00'),
(1, 1, '2025-11-10', '15:00', '19:00'),
(2, 2, '2025-11-10', '10:00', '14:00'),
(3, 3, '2025-11-11', '08:30', '12:30'),
(4, 4, '2025-11-12', '09:30', '13:30'),
(2, 4, '2025-11-12', '15:30', '18:30'),
(5, 5, '2025-11-13', '10:00', '14:00');

-- =========================
-- TABLA: senior
-- =========================
INSERT INTO senior (nro_legajo, anios_experiencia, tiene_certificado) VALUES
(1, 12, TRUE),
(2, 8, TRUE),
(3, 10, TRUE),
(4, 6, FALSE);


-- =========================
-- TABLA: junior
-- =========================
INSERT INTO junior (nro_legajo, nombre_academia) VALUES
(5, 'Academia BarberPro'),
(6, 'Estilo Urbano'),
(7, 'Corte y Estilo');


-- =========================
-- TABLA: servicio
-- =========================
INSERT INTO servicio (codigo_servicio, nombre_servicio, duracion, precio_servicio) VALUES
(1, 'Corte clásico', 30, 500),
(2, 'Afeitado completo', 20, 400),
(3, 'Diseño de barba', 25, 450),
(4, 'Coloración', 45, 800),
(5, 'Tratamiento capilar', 40, 700);

-- =========================
-- TABLA: brinda_servicio
-- =========================
INSERT INTO brinda_servicio (nro_legajo, codigo_servicio) VALUES
(1, 2),
(2, 1),
(3, 5),
(4, 4),
(5, 5);

-- =========================
-- TABLA: clientes
-- =========================
INSERT INTO clientes (num_cliente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, id_membresia) VALUES
(1, 'Carlos', 'Eduardo', 'Fernández', 'Pérez', 'carlos@mail.com', 1),
(2, 'José', 'María', 'Gómez', 'Rodríguez', 'maria@mail.com', 2),
(3, 'Pedro', 'Luis', 'Martínez', 'Silva', 'pedro@mail.com', 3),
(4, 'Lucio', 'Pedro', 'López', 'González', 'lucia@mail.com', 4),
(5, 'Jorge', 'Andrés', 'Ramírez', 'Torres', 'jorge@mail.com', 5);

-- =========================
-- TABLA: telefono_cliente
-- =========================
INSERT INTO telefono_cliente (num_cliente, telefono_cliente) VALUES
(1, '099123456'),
(2, '098765432'),
(3, '091112233'),
(4, '092223344'),
(5, '093334455');

-- =========================
-- TABLA: turno
-- =========================
INSERT INTO turno (id_turno, num_cliente, fecha_turno, hora_turno, codigo_barberia, nro_legajo) VALUES
(1, 1, '2025-11-14', '09:00', 1, 1),
(2, 2, '2025-11-14', '10:00', 2, 2),
(3, 3, '2025-11-15', '11:00', 3, 3),
(4, 4, '2025-11-15', '12:00', 4, 4),
(5, 5, '2025-11-16', '13:00', 5, 5);

-- =========================
-- TABLA: se_realiza
-- =========================
INSERT INTO se_realiza (id_turno, nro_legajo, codigo_servicio, precio_final) VALUES
(1, 1, 1, 500),
(2, 2, 2, 400),
(3, 3, 3, 450),
(4, 4, 4, 800),
(5, 5, 5, 700);

-- =========================
-- TABLA: medio_pago
-- =========================
INSERT INTO medio_pago (id_medio_pago, nombre_medio_pago) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de crédito'),
(3, 'Tarjeta de débito'),
(4, 'Transferencia bancaria'),
(5, 'MercadoPago');

-- =========================
-- TABLA: pago
-- =========================
INSERT INTO pago (id_pago, monto_total, fecha_pago, id_turno, id_medio_pago) VALUES
(1, 500, '2025-11-14', 1, 1),
(2, 400, '2025-11-14', 2, 2),
(3, 450, '2025-11-15', 3, 3),
(4, 800, '2025-11-15', 4, 4),
(5, 700, '2025-11-16', 5, 5);

-- =========================
-- TABLA: membresia
-- =========================
INSERT INTO membresia (id_membresia, nombre_membresia, beneficios, costo_mensual, codigo_servicio) VALUES
(1, 'Bronce', 1, 300, 1),
(2, 'Plata', 2, 500, 2),
(3, 'Oro', 3, 700, 3),
(4, 'Platino', 4, 900, 4),
(5, 'Diamante', 5, 1100, 5);

-- =========================
-- TABLA: encuesta
-- =========================
INSERT INTO encuesta (id_encuesta, fecha_encuesta, comentario, puntuacion, id_turno) VALUES
(1, '2025-11-14', 'Excelente atención', 5, 1),
(2, '2025-11-14', 'Muy buen servicio', 4, 2),
(3, '2025-11-15', 'Todo correcto', 4, 3),
(4, '2025-11-15', 'Muy profesional', 5, 4),
(5, '2025-11-16', 'Repetiría sin dudas', 5, 5);

-- =========================
-- TABLA: telefono_barberia
-- =========================
INSERT INTO telefono_barberia (odigo_barberia, telefono_barberia) VALUES
(1, '24001234'),
(2, '24005678'),
(3, '24007890'),
(4, '24003210'),
(5, '24006543');
