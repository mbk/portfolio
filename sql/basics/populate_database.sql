CREATE TABLE make (
	make_id INT(10),
	make_name VARCHAR(50),
	country VARCHAR(50)
);

CREATE TABLE model (
	model_id INT(10),
	make_id INT(10),
	model_name VARCHAR(50),
	model_year INT(4)
);

CREATE TABLE sale (
	sale_id INT(10),
	model_id INT(10),
    customer_id INT(10),
	sale_date DATE,
	price NUMERIC(10,2)
);

CREATE TABLE customer (
	customer_id INT(10),
	customer_name VARCHAR(200)
);

INSERT INTO make (make_id, make_name, country) VALUES (1, 'Honda', 'Japan');
INSERT INTO make (make_id, make_name, country) VALUES (2, 'Ford', 'US');
INSERT INTO make (make_id, make_name, country) VALUES (3, 'GM', 'US');
INSERT INTO make (make_id, make_name, country) VALUES (4, 'Toyota', 'Japan');
INSERT INTO make (make_id, make_name, country) VALUES (5, 'Ferrari', 'Italy');
INSERT INTO make (make_id, make_name, country) VALUES (6, 'Citroen', 'France');
INSERT INTO make (make_id, make_name, country) VALUES (7, 'Lamborghini', 'Italy');
INSERT INTO make (make_id, make_name, country) VALUES (8, 'Hyundai', 'South Korea');
INSERT INTO make (make_id, make_name, country) VALUES (9, 'Mitsubishi', 'Japan');
INSERT INTO make (make_id, make_name, country) VALUES (10, 'Aston Martin', 'England');
INSERT INTO make (make_id, make_name, country) VALUES (11, 'Kia', 'South Korea');

INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (1, 1, 'Civic', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (2, 1, 'Accord', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (3, 1, 'Civic', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (4, 2, 'Focus', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (5, 2, 'Ranger', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (6, 2, 'F50', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (7, 3, 'Monaro', 2012);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (8, 4, 'Camry', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (9, 4, 'Landcruiser', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (10, 4, 'Landcruiser', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (11, 4, 'FJ Cruiser', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (12, 5, 'F450', 2014);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (13, 6, 'C20', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (14, 6, 'C30', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (15, 7, 'Gallardo', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (16, 8, 'i20', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (17, 9, 'Lancer', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (18, 9, 'Mirage', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (19, 10, 'DB9', 2016);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (20, NULL, 'C30', 2015);
INSERT INTO model (model_id, make_id, model_name, model_year) VALUES (21, NULL, 'Spider', 2014);


INSERT INTO customer (customer_id, customer_name) VALUES (1, 'Kathyrn Conn');
INSERT INTO customer (customer_id, customer_name) VALUES (2, 'Cleo Bloxham');
INSERT INTO customer (customer_id, customer_name) VALUES (3, 'Janyce Sarno');
INSERT INTO customer (customer_id, customer_name) VALUES (4, 'Noah Mcfaddin');
INSERT INTO customer (customer_id, customer_name) VALUES (5, 'Remona Capello');
INSERT INTO customer (customer_id, customer_name) VALUES (6, 'Shonna Gall');
INSERT INTO customer (customer_id, customer_name) VALUES (7, 'Gabriel Suttles');
INSERT INTO customer (customer_id, customer_name) VALUES (8, 'Melaine Pittenger');
INSERT INTO customer (customer_id, customer_name) VALUES (9, 'Debby Novack');
INSERT INTO customer (customer_id, customer_name) VALUES (10, 'Kasandra Griffey');
INSERT INTO customer (customer_id, customer_name) VALUES (11, 'Eloy Condello');
INSERT INTO customer (customer_id, customer_name) VALUES (12, 'Letty Hudman');
INSERT INTO customer (customer_id, customer_name) VALUES (13, 'Eve Piccirillo');
INSERT INTO customer (customer_id, customer_name) VALUES (14, 'Sherilyn Wadman');
INSERT INTO customer (customer_id, customer_name) VALUES (15, 'Voncile Jeffrey');
INSERT INTO customer (customer_id, customer_name) VALUES (16, 'Keely Levert');
INSERT INTO customer (customer_id, customer_name) VALUES (17, 'Cecila Welles');
INSERT INTO customer (customer_id, customer_name) VALUES (18, 'Elnora Mitzel');
INSERT INTO customer (customer_id, customer_name) VALUES (19, 'Shanita Leinen');
INSERT INTO customer (customer_id, customer_name) VALUES (20, 'Humberto Gillock');
INSERT INTO customer (customer_id, customer_name) VALUES (21, 'Vikki Meraz');
INSERT INTO customer (customer_id, customer_name) VALUES (22, 'Reid Thieme');
INSERT INTO customer (customer_id, customer_name) VALUES (23, 'Tequila Neer');
INSERT INTO customer (customer_id, customer_name) VALUES (24, 'Britany Bulman');
INSERT INTO customer (customer_id, customer_name) VALUES (25, 'Hilaria Stinchcomb');
INSERT INTO customer (customer_id, customer_name) VALUES (26, 'Larraine Mcpartland');
INSERT INTO customer (customer_id, customer_name) VALUES (27, 'Mohamed Manske');
INSERT INTO customer (customer_id, customer_name) VALUES (28, 'Delmer Cronk');
INSERT INTO customer (customer_id, customer_name) VALUES (29, 'Elenora Dundas');
INSERT INTO customer (customer_id, customer_name) VALUES (30, 'Dominga Cornett');

INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (1, 1, 12, STR_TO_DATE('9-4-2016', '%d-%m-%Y'), 22874.15);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (2, 9, 14, STR_TO_DATE('7-4-2016', '%d-%m-%Y'), 26591.62);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (3, 16, 19, STR_TO_DATE('13-1-2016', '%d-%m-%Y'), 86168.95);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (4, 1, 16, STR_TO_DATE('26-2-2016', '%d-%m-%Y'), 39659);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (5, 3, 22, STR_TO_DATE('17-1-2016', '%d-%m-%Y'), 86239);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (6, 4, 2, STR_TO_DATE('8-6-2016', '%d-%m-%Y'), 59167);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (7, 5, 11, STR_TO_DATE('8-1-2016', '%d-%m-%Y'), 36836);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (8, 6, 26, STR_TO_DATE('24-1-2016', '%d-%m-%Y'), 14270);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (9, 7, 22, STR_TO_DATE('16-2-2016', '%d-%m-%Y'), 16094);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (10, 8, 6, STR_TO_DATE('9-6-2016', '%d-%m-%Y'), 82747);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (11, 9, 26, STR_TO_DATE('19-3-2016', '%d-%m-%Y'), 61281);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (12, 10, 5, STR_TO_DATE('9-5-2016', '%d-%m-%Y'), 47156);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (13, 11, 4, STR_TO_DATE('7-6-2016', '%d-%m-%Y'), 40136);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (14, 12, 20, STR_TO_DATE('9-3-2016', '%d-%m-%Y'), 11149);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (15, 13, 2, STR_TO_DATE('27-3-2016', '%d-%m-%Y'), 36756);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (16, 14, 11, STR_TO_DATE('6-6-2016', '%d-%m-%Y'), 73748);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (17, 15, 8, STR_TO_DATE('11-5-2016', '%d-%m-%Y'), 46024);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (18, 16, 17, STR_TO_DATE('20-3-2016', '%d-%m-%Y'), 63089);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (19, 17, 17, STR_TO_DATE('26-1-2016', '%d-%m-%Y'), 18300);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (20, 18, 7, STR_TO_DATE('9-5-2016', '%d-%m-%Y'), 65943);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (21, 19, 21, STR_TO_DATE('4-4-2016', '%d-%m-%Y'), 71034);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (22, 14, 6, STR_TO_DATE('7-1-2016', '%d-%m-%Y'), 15051);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (23, 15, 11, STR_TO_DATE('10-6-2016', '%d-%m-%Y'), 77695);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (24, 12, 24, STR_TO_DATE('25-6-2016', '%d-%m-%Y'), 31570);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (25, 18, 21, STR_TO_DATE('11-3-2016', '%d-%m-%Y'), 15794);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (26, 12, 18, STR_TO_DATE('21-3-2016', '%d-%m-%Y'), 49842);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (27, 14, 5, STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 24703);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (28, 17, 16, STR_TO_DATE('27-5-2016', '%d-%m-%Y'), 91314);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (29, 12, 27, STR_TO_DATE('25-1-2016', '%d-%m-%Y'), 79044);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (30, 3, 27, STR_TO_DATE('26-6-2016', '%d-%m-%Y'), 42535);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (31, 6, 2, STR_TO_DATE('30-1-2016', '%d-%m-%Y'), 83669);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (32, 7, 9, STR_TO_DATE('4-2-2016', '%d-%m-%Y'), 97897);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (33, 8, 23, STR_TO_DATE('11-3-2016', '%d-%m-%Y'), 77569);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (34, 2, 2, STR_TO_DATE('5-2-2016', '%d-%m-%Y'), 28514);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (35, 1, 11, STR_TO_DATE('11-6-2016', '%d-%m-%Y'), 39542);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (36, 5, 21, STR_TO_DATE('13-5-2016', '%d-%m-%Y'), 43223);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (37, 7, 27, STR_TO_DATE('22-1-2016', '%d-%m-%Y'), 46169);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (38, 9, 19, STR_TO_DATE('19-1-2016', '%d-%m-%Y'), 21370);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (39, 9, 26, STR_TO_DATE('4-3-2016', '%d-%m-%Y'), 74808);
INSERT INTO sale (sale_id, model_id, customer_id, sale_date, price) VALUES (40, 10, 25, STR_TO_DATE('14-3-2016', '%d-%m-%Y'), 31223);



