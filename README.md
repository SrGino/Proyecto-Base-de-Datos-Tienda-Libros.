### **Proyecto: Base de Datos para una Tienda de Libros**

Este proyecto contiene los scripts SQL y el modelo de base de datos para una aplicación de gestión de una tienda de libros. La base de datos permite registrar libros, clientes, pedidos y los detalles de cada venta.

---

### **Estructura de los Archivos**

A continuación se describe el propósito de cada archivo incluido en este proyecto:

* **`01-ddl-creacion-tablas.sql`**: Contiene las sentencias **DDL (Data Definition Language)** para crear la estructura de la base de datos. Define las tablas `Libros`, `Clientes`, `Pedidos` y `Detalle_Pedido`, estableciendo las relaciones entre ellas.
* **`02-dml-insercion-datos.sql`**: Contiene las sentencias **DML (Data Manipulation Language)** para poblar las tablas con datos de ejemplo. Incluye instrucciones `INSERT` para libros y clientes, así como sentencias `UPDATE` y `DELETE` para demostrar la manipulación de datos.
* **`03-consultas-sql.sql`**: Incluye una variedad de consultas SQL que demuestran cómo obtener información de la base de datos. Las consultas permiten, por ejemplo, obtener pedidos por cliente, calcular totales de ventas y listar libros por precio.
* **`modeloER.mwb`**: Es el archivo de modelo de **MySQL Workbench**. Contiene el **Diagrama Entidad-Relación (ER)** de la base de datos, que ofrece una representación visual de la estructura de las tablas y sus relaciones.

---

### **Cómo Usar**

Para utilizar esta base de datos, sigue los siguientes pasos:

1.  Abre una interfaz de gestión de bases de datos como **MySQL Workbench** o la línea de comandos.
2.  Ejecuta el archivo **`01-ddl-creacion-tablas.sql`** para crear la estructura de las tablas.
3.  Ejecuta el archivo **`02-dml-insercion-datos.sql`** para insertar los datos de ejemplo.
4.  Ejecuta las consultas del archivo **`03-consultas-sql.sql`** para explorar los datos y ver la funcionalidad de las consultas.
