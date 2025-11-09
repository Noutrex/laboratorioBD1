--3)-a
--Creacion de registros en las tablas
INSERT INTO barberia (codigo_barberia, calle, nro, dpto, hora_apertura, hora_cierre) VALUES
(1, '18 de Julio', 1234, 101, '09:00', '18:00'),
(2, 'Rivera', 567, 202, '10:00', '19:00'),
(3, 'Artigas', 890, 303, '08:30', '17:30'),
(4, 'Millán', 321, 404, '09:30', '18:30'),
(5, 'Garibaldi', 654, 505, '10:00', '20:00');

INSERT INTO barbero (nro_legajo, ci, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_ingreso) VALUES
(1, '11231414', 'Alberto', 'Angel', 'Fernandez', 'Sanchez', '2022-05-01'),
(2, '12123512', 'Nestor', 'Pedro', 'Quirno', 'Garcia', '2023-03-08'),
(3, '73736346', 'Mateo', 'Felipe', 'Robaina', 'Martin', '2020-01-01'),
(4, '35262625', 'Marcelo', 'Mauro', 'Perez', 'Garcia', '2018-06-29'),
(5, '62622254', 'Antonio', 'Ignacio', 'Madera', 'Verde', '2022-05-31'),
(6, '44556677', 'Lucía', 'Mariana', 'Alvarez', 'Pereira', '2021-09-14'),
(7, '77889900', 'Gabriel', 'Tomás', 'Suárez', 'Ramos', '2019-04-27');

INSERT INTO trabajan (codigo_barberia, nro_legajo, dia, hora_inicio, hora_fin) VALUES
(1, 1, '2025-11-10', '09:00', '13:00'),
(1, 1, '2025-11-10', '15:00', '19:00'),
(2, 2, '2025-11-10', '10:00', '14:00'),
(3, 3, '2025-11-11', '08:30', '12:30'),
(4, 4, '2025-11-12', '09:30', '13:30'),
(2, 4, '2025-11-12', '15:30', '18:30'),
(5, 5, '2025-11-13', '10:00', '14:00');

INSERT INTO senior (nro_legajo, anios_experiencia, tiene_certificado) VALUES
(1, 12, TRUE),
(2, 8, TRUE),
(3, 10, TRUE),
(4, 6, FALSE);

INSERT INTO junior (nro_legajo, nombre_academia) VALUES
(5, 'Academia BarberPro'),
(6, 'Estilo Urbano'),
(7, 'Corte y Estilo');

INSERT INTO servicio (codigo_servicio, nombre_servicio, duracion, precio_servicio) VALUES
(1, 'Corte clásico', 30, 500),
(2, 'Afeitado completo', 20, 400),
(3, 'Diseño de barba', 25, 450),
(4, 'Coloración', 45, 800),
(5, 'Tratamiento capilar', 40, 700);

INSERT INTO brinda_servicio (nro_legajo, codigo_servicio) VALUES
(1, 2),
(2, 1),
(3, 5),
(4, 4),
(5, 5);

INSERT INTO clientes (num_cliente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, id_membresia) VALUES
(1, 'Carlos', 'Eduardo', 'Fernández', 'Pérez', 'carlos@mail.com', 1),
(2, 'José', 'María', 'Gómez', 'Rodríguez', 'maria@mail.com', 2),
(3, 'Pedro', 'Luis', 'Martínez', 'Silva', 'pedro@mail.com', 3),
(4, 'Lucio', 'Pedro', 'López', 'González', 'lucia@mail.com', 4),
(5, 'Jorge', 'Andrés', 'Ramírez', 'Torres', 'jorge@mail.com', 5);

INSERT INTO telefono_cliente (num_cliente, telefono_cliente) VALUES
(1, '099123456'),
(2, '098765432'),
(3, '091112233'),
(4, '092223344'),
(5, '093334455');

INSERT INTO turno (id_turno, num_cliente, fecha_turno, hora_turno, codigo_barberia, nro_legajo) VALUES
(1, 1, '2025-11-14', '09:00', 1, 1),
(2, 2, '2025-11-14', '10:00', 2, 2),
(3, 3, '2025-11-15', '11:00', 3, 3),
(4, 4, '2025-11-15', '12:00', 4, 4),
(5, 5, '2025-11-16', '13:00', 5, 5);

INSERT INTO se_realiza (id_turno, nro_legajo, codigo_servicio, precio_final) VALUES
(1, 1, 1, 500),
(2, 2, 2, 400),
(3, 3, 3, 450),
(4, 4, 4, 800),
(5, 5, 5, 700);

INSERT INTO medio_pago (id_medio_pago, nombre_medio_pago) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de crédito'),
(3, 'Tarjeta de débito'),
(4, 'Transferencia bancaria'),
(5, 'MercadoPago');

INSERT INTO pago (id_pago, monto_total, fecha_pago, id_turno, id_medio_pago) VALUES
(1, 500, '2025-11-14', 1, 1),
(2, 400, '2025-11-14', 2, 2),
(3, 450, '2025-11-15', 3, 3),
(4, 800, '2025-11-15', 4, 4),
(5, 700, '2025-11-16', 5, 5);

INSERT INTO membresia (id_membresia, nombre_membresia, beneficios, costo_mensual, codigo_servicio) VALUES
(1, 'Bronce', 1, 300, 1),
(2, 'Plata', 2, 500, 2),
(3, 'Oro', 3, 700, 3),
(4, 'Platino', 4, 900, 4),
(5, 'Diamante', 5, 1100, 5);

INSERT INTO encuesta (id_encuesta, fecha_encuesta, comentario, puntuacion, id_turno) VALUES
(1, '2025-11-14', 'Excelente atención', 5, 1),
(2, '2025-11-14', 'Muy buen servicio', 4, 2),
(3, '2025-11-15', 'Todo correcto', 4, 3),
(4, '2025-11-15', 'Muy profesional', 5, 4),
(5, '2025-11-16', 'Repetiría sin dudas', 5, 5);

INSERT INTO telefono_barberia (odigo_barberia, telefono_barberia) VALUES
(1, '24001234'),
(2, '24005678'),
(3, '24007890'),
(4, '24003210'),
(5, '24006543');

--Selects
--b)
SELECT	t.fecha_turno AS fecha_finalizacion, 
	    b.codigo_barberia AS barberia, 
	    ba.primer_apellido AS barbero, 
	    c.primer_apellido AS cliente, 
	    sr.precio_final AS total 
FROM turno t 
JOIN barberia b ON b.codigo_barberia=t.codigo_barberia
JOIN barbero ba ON ba.nro_legajo=t.nro_legajo
JOIN clientes c ON c.num_cliente=t.num_cliente
JOIN se_realiza sr ON sr.id_turno=t.id_turno
WHERE t.fecha_turno BETWEEN '2025-01-01' AND '2025-06-30'
ORDER BY c.primer_apellido, t.fecha_turno DESC;

--c)
SELECT	c.primer_apellido AS cliente, 
	    COUNT(t.id_turno) AS total
FROM clientes c NATURAL JOIN turno t
WHERE t.fecha_turno BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY c.num_cliente
ORDER BY total DESC
LIMIT 10;

--d)
SELECT COALESCE(SUM(sr.precio_final) * 0.05, 0) AS comision_total
FROM SE_REALIZA sr
JOIN TURNO t ON sr.id_turno = t.id_turno
WHERE t.nro_legajo = 1
AND t.fecha_turno BETWEEN DATE '2025-11-01' AND DATE '2025-11-30'
AND (SELECT SUM(sr2.precio_final)
    FROM SE_REALIZA sr2
    JOIN TURNO t2 ON sr2.id_turno = t2.id_turno
    WHERE t2.nro_legajo = t.nro_legajo
    AND t2.fecha_turno BETWEEN DATE '2025-11-01' AND DATE '2025-11-30'
    ) > 10000;

--e)
SELECT s.nombre_servicio, SUM(sr.precio_final) AS total_vendido
FROM servicio s 
NATURAL JOIN se_realiza sr
NATURAL JOIN turno t
WHERE t.fecha_turno BETWEEN '2025-1-1' AND '2025-12-31'
GROUP BY nombre_servicio;

--f) 
SELECT b.codigo_barberia
FROM barberia b
WHERE b.codigo_barberia = 5
AND TIME '15:00:00' BETWEEN b.hora_apertura AND b.hora_cierre
AND TIME '15:00:00' NOT IN (
SELECT t.hora_turno + (SUM(s.duracion) + 15) * INTERVAL '1 minute'
FROM turno t
NATURAL JOIN se_realiza
NATURAL JOIN servicio s
WHERE t.codigo_barberia = b.codigo_barberia
AND t.nro_legajo = 1
AND t.fecha_turno = DATE '2025-11-22'
GROUP BY t.id_turno, t.hora_turno
);

--g)
CREATE VIEW KPI_ATP AS
SELECT SUM(p.monto_total) / COUNT(DISTINCT p.id_turno) AS ticket_promedio
FROM PAGO p
JOIN TURNO t ON p.id_turno = t.id_turno;