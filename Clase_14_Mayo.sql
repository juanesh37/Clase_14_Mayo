CREATE TABLE CATEGORIES (
  id int NOT NULL PRIMARY KEY,
  name varchar(255) not null,
  season varchar(255) not null,
  constraint CK_SEASON_VALUES check 
  (season in ('winter', 'summer', 'spring', 'autumn'))
);

CREATE TABLE PRODUCTS(
  id int NOT NULL PRIMARY KEY,
  name varchar(255) not null,
  price decimal(10,3) not null,
  category_id int NOT NULL,
  constraint CK_PRICE CHECK (price > 0),
  constraint FK_CATEGORIES foreign key (category_id) references categories(id)
);


CREATE SEQUENCE category_sequence 
  START WITH 1
  INCREMENT BY 1;
  
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'shoes', 'winter');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'shoes', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'swim wear', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'tennis', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'ski', 'winter');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'snowboard', 'winter');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'golf', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'diving equipment', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'running wear', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'fitness gear', 'summer');
INSERT INTO CATEGORIES VALUES (category_sequence.nextval,'fitness gear', 'winter');

insert into PRODUCTS (id, name, price, category_id) values (1, 'Pastry - Lemon Danish - Mini', 65.57, 10);
insert into PRODUCTS (id, name, price, category_id) values (2, 'Sambuca - Ramazzotti', 85.12, 6);
insert into PRODUCTS (id, name, price, category_id) values (3, 'Coffee Guatemala Dark', 22.35, 10);
insert into PRODUCTS (id, name, price, category_id) values (4, 'Pork - Smoked Kassler', 80.68, 9);
insert into PRODUCTS (id, name, price, category_id) values (5, 'Salmon Steak - Cohoe 6 Oz', 47.95, 6);
insert into PRODUCTS (id, name, price, category_id) values (6, 'Cheese Cloth No 60', 80.95, 7);
insert into PRODUCTS (id, name, price, category_id) values (7, 'Pork - Kidney', 47.9, 5);
insert into PRODUCTS (id, name, price, category_id) values (8, 'Muffin Mix - Chocolate Chip', 96.13, 2);
insert into PRODUCTS (id, name, price, category_id) values (9, 'Sherry - Dry', 57.77, 3);
insert into PRODUCTS (id, name, price, category_id) values (10, 'Bread - Dark Rye', 48.47, 7);
insert into PRODUCTS (id, name, price, category_id) values (11, 'Yams', 68.83, 8);
insert into PRODUCTS (id, name, price, category_id) values (12, 'Wine - Bourgogne 2002, La', 3.78, 11);
insert into PRODUCTS (id, name, price, category_id) values (13, 'Rum - Coconut, Malibu', 39.62, 1);
insert into PRODUCTS (id, name, price, category_id) values (14, 'Muffin - Banana Nut Individual', 90.97, 4);
insert into PRODUCTS (id, name, price, category_id) values (15, 'Juice - Ocean Spray Cranberry', 1.51, 9);
insert into PRODUCTS (id, name, price, category_id) values (16, 'Brandy Cherry - Mcguinness', 9.0, 6);
insert into PRODUCTS (id, name, price, category_id) values (17, 'Venison - Liver', 67.89, 3);
insert into PRODUCTS (id, name, price, category_id) values (18, 'Plastic Wrap', 30.77, 6);
insert into PRODUCTS (id, name, price, category_id) values (19, 'Kumquat', 65.55, 8);
insert into PRODUCTS (id, name, price, category_id) values (20, 'Lighter - Bbq', 29.25, 3);
insert into PRODUCTS (id, name, price, category_id) values (21, 'Soap - Mr.clean Floor Soap', 92.51, 9);
insert into PRODUCTS (id, name, price, category_id) values (22, 'Worcestershire Sauce', 41.82, 8);
insert into PRODUCTS (id, name, price, category_id) values (23, 'Beer - True North Lager', 80.38, 5);
insert into PRODUCTS (id, name, price, category_id) values (24, 'Toothpick Frilled', 33.75, 2);
insert into PRODUCTS (id, name, price, category_id) values (25, 'Pork - Ground', 17.78, 11);
insert into PRODUCTS (id, name, price, category_id) values (26, 'Jack Daniels', 75.17, 7);
insert into PRODUCTS (id, name, price, category_id) values (27, 'Otomegusa Dashi Konbu', 85.5, 6);
insert into PRODUCTS (id, name, price, category_id) values (28, 'Juice - Tomato, 48 Oz', 91.96, 3);
insert into PRODUCTS (id, name, price, category_id) values (29, 'Wine - Red, Antinori Santa', 54.53, 3);
insert into PRODUCTS (id, name, price, category_id) values (30, 'Sterno - Chafing Dish Fuel', 59.82, 9);
insert into PRODUCTS (id, name, price, category_id) values (31, 'Shrimp - 150 - 250', 49.67, 1);
insert into PRODUCTS (id, name, price, category_id) values (32, 'Bread - Focaccia Quarter', 68.05, 11);
insert into PRODUCTS (id, name, price, category_id) values (33, 'Chevril', 32.94, 1);
insert into PRODUCTS (id, name, price, category_id) values (34, 'Bread - Pain Au Liat X12', 1.51, 7);
insert into PRODUCTS (id, name, price, category_id) values (35, 'Potatoes - Mini White 3 Oz', 80.04, 7);
insert into PRODUCTS (id, name, price, category_id) values (36, 'Pork - Loin, Center Cut', 90.79, 2);
insert into PRODUCTS (id, name, price, category_id) values (37, 'Snapple Raspberry Tea', 69.64, 10);
insert into PRODUCTS (id, name, price, category_id) values (38, 'Cucumber - Pickling Ontario', 30.34, 4);
insert into PRODUCTS (id, name, price, category_id) values (39, 'Table Cloth 90x90 Colour', 24.84, 1);
insert into PRODUCTS (id, name, price, category_id) values (40, 'Pur Value', 89.33, 5);
insert into PRODUCTS (id, name, price, category_id) values (41, 'Wine - Ruffino Chianti Classico', 90.51, 7);
insert into PRODUCTS (id, name, price, category_id) values (42, 'Foie Gras', 7.62, 7);
insert into PRODUCTS (id, name, price, category_id) values (43, 'Chicken - Livers', 34.6, 9);
insert into PRODUCTS (id, name, price, category_id) values (44, 'Bar Mix - Lemon', 91.71, 9);
insert into PRODUCTS (id, name, price, category_id) values (45, 'Pastry - Chocolate Marble Tea', 44.54, 7);
insert into PRODUCTS (id, name, price, category_id) values (46, 'Seaweed Green Sheets', 76.77, 10);
insert into PRODUCTS (id, name, price, category_id) values (47, 'Soup - Cream Of Potato / Leek', 12.92, 4);
insert into PRODUCTS (id, name, price, category_id) values (48, 'Sprouts - Alfalfa', 80.09, 2);
insert into PRODUCTS (id, name, price, category_id) values (49, 'Bread - Wheat Baguette', 17.36, 9);
insert into PRODUCTS (id, name, price, category_id) values (50, 'Shichimi Togarashi Peppeers', 13.27, 3);
insert into PRODUCTS (id, name, price, category_id) values (51, 'Cornstarch', 31.23, 5);
insert into PRODUCTS (id, name, price, category_id) values (52, 'Bread - Pita, Mini', 59.6, 2);
insert into PRODUCTS (id, name, price, category_id) values (53, 'Gatorade - Cool Blue Raspberry', 62.15, 5);
insert into PRODUCTS (id, name, price, category_id) values (54, 'Mustard - Dijon', 17.49, 4);
insert into PRODUCTS (id, name, price, category_id) values (55, 'Apple - Delicious, Golden', 54.6, 7);
insert into PRODUCTS (id, name, price, category_id) values (56, 'Container Clear 8 Oz', 63.25, 8);
insert into PRODUCTS (id, name, price, category_id) values (57, 'Honey - Comb', 98.42, 5);
insert into PRODUCTS (id, name, price, category_id) values (58, 'Rambutan', 78.41, 7);
insert into PRODUCTS (id, name, price, category_id) values (59, 'Tea - Jasmin Green', 87.67, 4);
insert into PRODUCTS (id, name, price, category_id) values (60, 'Doilies - 8, Paper', 25.83, 9);
insert into PRODUCTS (id, name, price, category_id) values (61, 'Juice - Propel Sport', 58.52, 3);
insert into PRODUCTS (id, name, price, category_id) values (62, 'Fish - Bones', 62.41, 8);
insert into PRODUCTS (id, name, price, category_id) values (63, 'Chestnuts - Whole,canned', 52.55, 4);
insert into PRODUCTS (id, name, price, category_id) values (64, 'Wasabi Paste', 27.16, 8);
insert into PRODUCTS (id, name, price, category_id) values (65, 'Bread - Roll, Canadian Dinner', 38.35, 7);
insert into PRODUCTS (id, name, price, category_id) values (66, 'Tuna - Loin', 76.37, 2);
insert into PRODUCTS (id, name, price, category_id) values (67, 'Ham - Black Forest', 19.16, 11);
insert into PRODUCTS (id, name, price, category_id) values (68, 'Bread Bowl Plain', 55.1, 8);
insert into PRODUCTS (id, name, price, category_id) values (69, 'Pie Shell - 9', 43.45, 8);
insert into PRODUCTS (id, name, price, category_id) values (70, 'Yogurt - Strawberry, 175 Gr', 59.94, 1);
insert into PRODUCTS (id, name, price, category_id) values (71, 'Nantucket Pine Orangebanana', 28.8, 2);
insert into PRODUCTS (id, name, price, category_id) values (72, 'Wanton Wrap', 65.7, 9);
insert into PRODUCTS (id, name, price, category_id) values (73, 'Flounder - Fresh', 23.27, 7);
insert into PRODUCTS (id, name, price, category_id) values (74, 'Turkey - Ground. Lean', 77.11, 6);
insert into PRODUCTS (id, name, price, category_id) values (75, 'Muffin - Blueberry Individual', 95.55, 1);
insert into PRODUCTS (id, name, price, category_id) values (76, 'Pastry - Lemon Danish - Mini', 13.14, 11);
insert into PRODUCTS (id, name, price, category_id) values (77, 'Wine - Kwv Chenin Blanc South', 76.06, 1);
insert into PRODUCTS (id, name, price, category_id) values (78, 'Appetizer - Smoked Salmon / Dill', 32.74, 1);
insert into PRODUCTS (id, name, price, category_id) values (79, 'Bread - Flat Bread', 61.4, 8);
insert into PRODUCTS (id, name, price, category_id) values (80, 'Wine - Merlot Vina Carmen', 32.39, 6);
insert into PRODUCTS (id, name, price, category_id) values (81, 'Calypso - Strawberry Lemonade', 61.48, 5);
insert into PRODUCTS (id, name, price, category_id) values (82, 'Coffee - Beans, Whole', 62.78, 1);
insert into PRODUCTS (id, name, price, category_id) values (83, 'Napkin - Cocktail,beige 2 - Ply', 81.22, 9);
insert into PRODUCTS (id, name, price, category_id) values (84, 'Sea Bass - Whole', 75.93, 7);
insert into PRODUCTS (id, name, price, category_id) values (85, 'Shark - Loin', 16.36, 10);
insert into PRODUCTS (id, name, price, category_id) values (86, 'Coffee - Espresso', 1.37, 7);
insert into PRODUCTS (id, name, price, category_id) values (87, 'Sugar Thermometer', 78.0, 5);
insert into PRODUCTS (id, name, price, category_id) values (88, 'Soup - Campbells, Chix Gumbo', 30.61, 3);
insert into PRODUCTS (id, name, price, category_id) values (89, 'Avocado', 13.76, 7);
insert into PRODUCTS (id, name, price, category_id) values (90, 'Wine - Jackson Triggs Okonagan', 61.24, 7);
insert into PRODUCTS (id, name, price, category_id) values (91, 'Soup - Knorr, Veg / Beef', 85.8, 2);
insert into PRODUCTS (id, name, price, category_id) values (92, 'Maintenance Removal Charge', 26.98, 3);
insert into PRODUCTS (id, name, price, category_id) values (93, 'Salt - Kosher', 61.63, 10);
insert into PRODUCTS (id, name, price, category_id) values (94, 'Soup V8 Roasted Red Pepper', 14.07, 8);
insert into PRODUCTS (id, name, price, category_id) values (95, 'Goat - Leg', 78.45, 7);
insert into PRODUCTS (id, name, price, category_id) values (96, 'Veal - Provimi Inside', 19.28, 7);
insert into PRODUCTS (id, name, price, category_id) values (97, 'Beer - Moosehead', 98.84, 10);
insert into PRODUCTS (id, name, price, category_id) values (98, 'Bouq All Italian - Primerba', 80.27, 1);
insert into PRODUCTS (id, name, price, category_id) values (99, 'Pork - Loin, Center Cut', 10.27, 7);
insert into PRODUCTS (id, name, price, category_id) values (100, 'Seaweed Green Sheets', 66.98, 3);

---------------------------------------------------------------------------------------------------------------------------------------
declare
total_registros INTEGER;
abierto BOOLEAN;
encontrado BOOLEAN;
estacion varchar2(255);
begin

SELECT season into estacion from CATEGORIES;
Update CATEGORIES set season = 'verano' where season = 'summer'
  total_registros:= sql%ROWCOUNT;
  dbms_output.put_line('El numero de registros actualizados es: ' || total_registros);
  
  IF sql%ISOPEN THEN
   dbms_output.put_line('Está abierto');
  ELSE
  dbms_output.put_line('NO Está abierto');
 END IF;
 
 IF sql%ISOPEN THEN
   dbms_output.put_line('FOUND ES VERDADERO');
  ELSE
  dbms_output.put_line('FOUND ES FALSO');
 END IF;
end;
-------------------------------------------------------------------------------------------------------------------------------------------



1. Crear una vista que traiga todos los productos de invierno.
2. Crear un procedimiento que invocando la vista anterior, actualice todos los registros y los cambie de temporada.
4. Crear una funcion que:
  - Si el valor del producto es mayor a 50 USD, invocar la función y sumar el IVA al valor del producto. Retornar el precio e imprimir por consola.
  - Si el valor del producto es menor a 50 USD, retornar el precio. Imprimir que está exento de IVA.
5. Crear un procedimiento que:
  - Traiga todos los productos que sean menores a 100 USD. Imprimir por pantalla el valor, el nombre, la categorìa y la temporada.
  - Si la temporada es invierno, actualizar el precio del producto y descontar el 20%.
  - Si la temporada es verano, incrementar el precio del producto en un 5% y actualizarlo en la base datos.
  

