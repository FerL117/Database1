CREATE DATABASE EmpresaPlotter;
USE EmpresaPlotter;

CREATE TABLE Inventario (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    descripcion TEXT,
    cantidad_disponible INT,
    precio_unitario DECIMAL(10, 2)
);

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    correo VARCHAR(100),
    direccion TEXT
);

CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(50),
    telefono VARCHAR(15),
    correo VARCHAR(100)
);

CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    id_cliente INT,
    id_empleado INT,
    id_producto INT,
    cantidad_vendida INT,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_producto) REFERENCES Inventario(id_producto)
);

CREATE TABLE Finanzas (
    id_transaccion INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    tipo ENUM('Ingreso', 'Egreso'),
    monto DECIMAL(10, 2),
    descripcion TEXT
);
