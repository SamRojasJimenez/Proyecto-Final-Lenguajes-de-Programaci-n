SET NAMES utf8mb4;

-- Tabla para el control de las donaciones
CREATE TABLE IF NOT EXISTS donaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    donante VARCHAR(100) NOT NULL,
    titulo_libro VARCHAR(255) NOT NULL,
    fecha_donacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    procesado_inventario BOOLEAN DEFAULT FALSE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de prueba para las donaciones
INSERT INTO donaciones (donante, titulo_libro, procesado_inventario) 
VALUES ('Juan Perez', 'Cien años de soledad', FALSE),
       ('Maria Lopez', 'El Quijote', TRUE),
       ('Carlos Ruiz', 'Cronica de una muerte anunciada', FALSE);


CREATE TABLE IF NOT EXISTS alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    foto VARCHAR(255) DEFAULT '',
    habilidades TEXT,
    biografia TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO alumnos (nombre, foto, habilidades, biografia) 
VALUES 
    ('Hola soy Samuel Rojas', 'fotos/samuel.jpg.jpeg', 'Soy un programador junior y editor de video senior', 'Soy proactivo, responsable y bueno aprendiendo sobre la marcha cuando es necesario'),
    ('Hola soy Jhonnimer Maita', 'fotos/jhonnmer.jpeg', 'Programador Junior con mejor desarrollo en resumir código y debuggear este mismo', 'Soy una persona con interés continuo con deseos de siempre aprender más manteniendo un entorno didáctico');
