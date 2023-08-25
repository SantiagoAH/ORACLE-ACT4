-- Tabla "Revision"
CREATE TABLE Revision (
    id VARCHAR(50) PRIMARY KEY,
    actualizado_en TIMESTAMP,
    creado_en TIMESTAMP,
    usuario_id VARCHAR2(50),
    lugar_id VARCHAR2(50),
    texto VARCHAR2(200)
);

-- Tabla "Usuario"
CREATE TABLE Usuario (
    id VARCHAR2(50) PRIMARY KEY,
    actualizado_en TIMESTAMP,
    creado_en TIMESTAMP,
    email VARCHAR2 (100),
    contraseña VARCHAR2(50),
    primer_nombre VARCHAR2(50),
    apellido VARCHAR2(50)
);

-- Tabla "Estado"
CREATE TABLE Estado (
    id VARCHAR2(50) PRIMARY KEY,
    actualizado_en TIMESTAMP,
    creado_en TIMESTAMP,
    nombre VARCHAR2(50)
);

-- Tabla "Ciudad"
CREATE TABLE Ciudad (
    id VARCHAR2(50) PRIMARY KEY,
    actualizado_en TIMESTAMP,
    creado_en TIMESTAMP,
    estado_id VARCHAR2(50),
    nombre VARCHAR2(50)
);

-- Tabla "Amenidad"
CREATE TABLE Amenidad (
    id VARCHAR2(50) PRIMARY KEY,
    actualizado_en TIMESTAMP,
    creado_en TIMESTAMP,
    nombre VARCHAR2(50)
);

-- Tabla "Lugar"
CREATE TABLE Lugar (
    id VARCHAR2(50) PRIMARY KEY,
    actualizado_en TIMESTAMP,
    creado_en TIMESTAMP,
    usuario_id VARCHAR2(50),
    nombre VARCHAR2(100),
    ciudad_id VARCHAR2(50),
    descripcion VARCHAR2(200),
    numero_habitaciones NUMBER DEFAULT 0,
    numero_baños NUMBER DEFAULT 0,
    max_huespedes NUMBER DEFAULT 0,
    precio_por_noche NUMBER DEFAULT 0,
    latitud NUMBER,
    longitud NUMBER
);

-- Tabla "AmenidadDeLugar"
CREATE TABLE AmenidadDeLugar (
    amenidad_id VARCHAR2(50),
    lugar_id VARCHAR2(50),
    PRIMARY KEY (amenidad_id, lugar_id)
);




















