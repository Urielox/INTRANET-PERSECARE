DROP DATABASE IF EXISTS reportes;
CREATE DATABASE IF NOT EXISTS reportes;
USE reportes;
CREATE TABLE productos(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	codigo VARCHAR(255) NOT NULL,
	descripcion VARCHAR(255) NOT NULL,
	precioVenta VARCHAR(255) NOT NULL,
	precioCompra VARCHAR(255) NOT NULL,
	existencia VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE TABLE ventas(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	fecha DATETIME NOT NULL,
	total DECIMAL(7,2),
	PRIMARY KEY(id)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE TABLE productos_vendidos(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_producto BIGINT UNSIGNED NOT NULL,
	cantidad BIGINT UNSIGNED NOT NULL,
	id_venta BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_producto) REFERENCES productos(id) ON DELETE CASCADE,
	FOREIGN KEY(id_venta) REFERENCES ventas(id) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

INSERT INTO productos(id, codigo, descripcion, precioVenta, precioCompra, existencia) 
VALUES
(1, '1', 'XD', 'XD', 'XD', 1);
INSERT INTO FAQ.productos (id, codigo, descripcion, precioVenta, precioCompra, existencia)
values
(3, '1', 'XD', 'XD', 'XD', 1);
# Correcto
