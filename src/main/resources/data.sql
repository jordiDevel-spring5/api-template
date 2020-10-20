DROP TABLE IF EXISTS indicadores_catalogo;
DROP TABLE IF EXISTS indicadores_categoria;
DROP TABLE IF EXISTS indicadores_valores;
 
CREATE TABLE indicadores_categoria (
  id INT PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL
);
 
INSERT INTO indicadores_categoria (id, name, description) VALUES
  (1, 'DEMOGRAFICOS', 'Indicadores de tipo demográficos'),
  (2, 'ECONOMICOS', 'Indicadores de tipo económicos'),
  (3, 'CONSUMO', 'Indicadores relacionados con los hábitos de consumo');
  
CREATE TABLE indicadores_catalogo (
  id INT PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL,
  category INT
);

INSERT INTO indicadores_catalogo (id, name, description, category) VALUES
  (1, 'ID_V', 'Indicador V', 1),
  (2, 'ID_S', 'Indicador S', 1),
  (3, 'ID_H', 'Indicador H', 1),
  (4, 'ID_L', 'Indicador L', 2),
  (5, 'ID_I', 'Indicador I', 2),
  (6, 'ID_E', 'Indicador E', 2),
  (7, 'ID_G', 'Indicador G', 3),
  (8, 'ID_M', 'Indicador M', 3),
  (9, 'ID_K', 'Indicador K', 3);
  
CREATE TABLE indicadores_valores (
  id INT PRIMARY KEY,
  indicator INT NOT NULL,
  value VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL
);

INSERT INTO indicadores_valores (id, indicator, value, description) VALUES
  (1, 1, 'V1', 'Value V1'),
  (2, 1, 'V2', 'Value V2'),
  (3, 1, 'V3', 'Value V3'),
  (4, 1, 'V4', 'Value V4'),
  (5, 1, 'V5', 'Value V5');
