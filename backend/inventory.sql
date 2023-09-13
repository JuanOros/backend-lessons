DROP DATABASE IF EXISTS InventoryInc;

CREATE DATABASE InventoryInc;

CREATE TABLE InventoryInc.suppliers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(40),
    phone VARCHAR(40),
    fax VARCHAR(40),
    email VARCHAR(40),
    otherDetails VARCHAR(40)
);

CREATE TABLE InventoryInc.role (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    description VARCHAR(200)
);

CREATE TABLE InventoryInc.categorys (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    description VARCHAR(40)
);

CREATE TABLE InventoryInc.payment (
	billNumber INT(10) PRIMARY KEY,
    paymentType VARCHAR(40),
    otherDetails VARCHAR(40)
);

CREATE TABLE InventoryInc.products (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(40),
    `description` VARCHAR(40),
    unit VARCHAR(40),
    price FLOAT(8, 1),
    quantity INT(10),
    `status` VARCHAR(40),
    otherDetails VARCHAR(40),
    supplierId INT,
    categoryId INT,
    FOREIGN KEY (categoryId) REFERENCES categorys(id),
    FOREIGN KEY (supplierId) REFERENCES suppliers(id)
);

CREATE TABLE InventoryInc.staff (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(40),
    lastName VARCHAR(40),
    address VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(40),
    user_name VARCHAR(40),
    password VARCHAR(4),
    roleId INT,
    FOREIGN KEY (roleId) REFERENCES role(id)
);

CREATE TABLE InventoryInc.customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(40),
    address VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(40),
    staffId INT,
    FOREIGN KEY (staffId) REFERENCES staff(id)
);

CREATE TABLE InventoryInc.order_details (
	id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT(10),
    discount INT(10),
    orderDate DATE,
    productId INT,
    billNumber INT,
    customerId INT,
    FOREIGN KEY (productId) REFERENCES products(id),
    FOREIGN KEY (billNumber) REFERENCES payment(billNumber),
    FOREIGN KEY (customerId) REFERENCES customer(id)
);

-- -------------- VALUE INSERTION ----------------------

INSERT INTO InventoryInc.suppliers (address, phone, fax, email, otherDetails)
VALUES
    ('123 Main St', '(11) 5555-1234', '(11) 5555-4321', 'company1@gmail.com', 'Supplier 1 Details'),
    ('456 Elm St', '(21) 5555-2345', '(21) 5555-5432', 'company2@hotmail.com', 'Supplier 2 Details'),
    ('789 Oak St', '(31) 5555-3456', '(31) 5555-6543', 'company3@gmail.com', 'Supplier 3 Details'),
    ('321 Pine St', '(41) 5555-4567', '(41) 5555-7654', 'company4@hotmail.com', 'Supplier 4 Details'),
    ('654 Birch St', '(51) 5555-5678', '(51) 5555-8765', 'company5@gmail.com', 'Supplier 5 Details'),
    ('987 Cedar St', '(61) 5555-6789', '(61) 5555-9876', 'company6@hotmail.com', 'Supplier 6 Details'),
    ('111 Oak St', '(71) 5555-7890', '(71) 5555-0987', 'company7@gmail.com', 'Supplier 7 Details'),
    ('222 Pine St', '(81) 5555-8901', '(81) 5555-1098', 'company8@hotmail.com', 'Supplier 8 Details'),
    ('333 Elm St', '(91) 5555-9012', '(91) 5555-2109', 'company9@gmail.com', 'Supplier 9 Details'),
    ('444 Oak St', '(12) 5555-3456', '(12) 5555-6543', 'company10@hotmail.com', 'Supplier 10 Details'),
    ('555 Main St', '(22) 5555-4567', '(22) 5555-7654', 'company11@gmail.com', 'Supplier 11 Details'),
    ('666 Cedar St', '(32) 5555-5678', '(32) 5555-8765', 'company12@hotmail.com', 'Supplier 12 Details'),
    ('777 Elm St', '(42) 5555-6789', '(42) 5555-9876', 'company13@gmail.com', 'Supplier 13 Details'),
    ('888 Oak St', '(52) 5555-7890', '(52) 5555-0987', 'company14@hotmail.com', 'Supplier 14 Details'),
    ('999 Main St', '(62) 5555-8901', '(62) 5555-1098', 'company15@gmail.com', 'Supplier 15 Details'),
    ('101 Cedar St', '(72) 5555-9012', '(72) 5555-2109', 'company16@hotmail.com', 'Supplier 16 Details'),
    ('202 Elm St', '(82) 5555-3456', '(82) 5555-6543', 'company17@gmail.com', 'Supplier 17 Details'),
    ('303 Pine St', '(92) 5555-4567', '(92) 5555-7654', 'company18@hotmail.com', 'Supplier 18 Details'),
    ('404 Oak St', '(13) 5555-5678', '(13) 5555-8765', 'company19@gmail.com', 'Supplier 19 Details'),
    ('505 Main St', '(23) 5555-6789', '(23) 5555-9876', 'company20@hotmail.com', 'Supplier 20 Details'),
    ('606 Cedar St', '(33) 5555-7890', '(33) 5555-0987', 'company21@gmail.com', 'Supplier 21 Details'),
    ('707 Elm St', '(43) 5555-8901', '(43) 5555-1098', 'company22@hotmail.com', 'Supplier 22 Details'),
    ('808 Oak St', '(53) 5555-9012', '(53) 5555-2109', 'company23@gmail.com', 'Supplier 23 Details'),
    ('909 Pine St', '(63) 5555-3456', '(63) 5555-6543', 'company24@hotmail.com', 'Supplier 24 Details'),
    ('121 Main St', '(73) 5555-4567', '(73) 5555-7654', 'company25@gmail.com', 'Supplier 25 Details'),
    ('232 Cedar St', '(83) 5555-5678', '(83) 5555-8765', 'company26@hotmail.com', 'Supplier 26 Details'),
    ('343 Elm St', '(93) 5555-6789', '(93) 5555-9876', 'company27@gmail.com', 'Supplier 27 Details'),
    ('454 Oak St', '(14) 5555-7890', '(14) 5555-0987', 'company28@hotmail.com', 'Supplier 28 Details'),
    ('565 Main St', '(24) 5555-8901', '(24) 5555-1098', 'company29@gmail.com', 'Supplier 29 Details'),
    ('676 Pine St', '(34) 5555-9012', '(34) 5555-2109', 'company30@hotmail.com', 'Supplier 30 Details');
    
INSERT INTO InventoryInc.role (name, description)
VALUES
    ('Founder', 'The Founder is responsible for conceiving and launching the startup.'),
    ('CEO', 'The Chief Executive Officer is in charge of the overall leadership and strategic direction of the startup.'),
    ('CTO', 'The Chief Technology Officer leads the development of the startup\'s technology and product.'),
    ('CMO', 'The Chief Marketing Officer oversees marketing and customer acquisition strategies.'),
    ('COO', 'The Chief Operating Officer manages day-to-day operations and ensures efficiency.'),
    ('CFO', 'The Chief Financial Officer handles financial planning, budgeting, and fundraising for the startup.'),
    ('VP of Sales', 'The VP of Sales leads the sales team and revenue generation efforts.'),
    ('Product Manager', 'The Product Manager defines and manages the startup\'s product roadmap and development.'),
    ('UX/UI Designer', 'The UX/UI Designer creates user-friendly interfaces and experiences for the startup\'s product.'),
    ('Data Scientist', 'The Data Scientist analyzes data to make data-driven decisions and improve the startup\'s offerings.'),
    ('Software Engineer', 'Software Engineers develop and maintain the startup\'s software and applications.'),
    ('Customer Support Specialist', 'Customer Support Specialists provide assistance and support to users.'),
    ('Business Development Manager', 'Business Development Managers identify and pursue growth opportunities for the startup.'),
    ('Content Writer', 'Content Writers create engaging content for marketing and communication.'),
    ('HR Manager', 'The HR Manager oversees human resources functions, including hiring and employee relations.'),
    ('Finance Analyst', 'Finance Analysts provide financial analysis and reporting for the startup.'),
    ('Legal Counsel', 'Legal Counsel handles legal matters and ensures compliance with regulations.'),
    ('PR Specialist', 'PR Specialists manage public relations and media outreach for the startup.'),
    ('Social Media Manager', 'The Social Media Manager handles the startup\'s social media presence and engagement.');

INSERT INTO InventoryInc.categorys (name, description)
VALUES
    ('Electronics', 'Electronics Category'),
    ('Clothing', 'Clothing Category'),
    ('Books', 'Books Category'),
    ('Home & Kitchen', 'Home & Kitchen Category'),
    ('Toys & Games', 'Toys & Games Category'),
    ('Beauty & Personal Care', 'Beauty & Personal Care Category'),
    ('Sports & Outdoors', 'Sports & Outdoors Category'),
    ('Health & Household', 'Health & Household Category'),
    ('Automotive', 'Automotive Category'),
    ('Tools & Home Improvement', 'Tools & Home Improvement Category'),
    ('Grocery', 'Grocery Category'),
    ('Pet Supplies', 'Pet Supplies Category');

INSERT INTO InventoryInc.payment (billNumber, paymentType, otherDetails)
VALUES
    (1001, 'Credit Card', 'Visa'),
    (1002, 'Credit Card', 'MasterCard'),
    (1003, 'Debit Card', 'Visa Debit'),
    (1004, 'PayPal', 'PayPal account'),
    (1005, 'Cash', 'Cash payment'),
    (1006, 'Check', 'Check payment'),
    (1007, 'Bank Transfer', 'Bank transfer from ABC Bank'),
    (1008, 'Cryptocurrency', 'Bitcoin payment'),
    (1009, 'E-Wallet', 'Apple Pay'),
    (1010, 'E-Wallet', 'Google Pay');

INSERT INTO InventoryInc.staff (firstName, lastName, address, phone, email, user_name, password, roleId)
VALUES
    ('Ana', 'Silva', '123 Rua das Flores, São Paulo, SP', 11987654321, 'ana.silva@gmail.com', 'ana.silva', 'AbCd', 1),
    ('João', 'Santos', '456 Avenida Brasil, Rio de Janeiro, RJ', 21976543210, 'joao.santos@hotmail.com', 'joao.santos', 'EfGh', 2),
    ('Mariana', 'Oliveira', '789 Rua da Praia, Salvador, BA', 71865432109, 'mariana.oliveira@gmail.com', 'mariana.oliveira', 'IjKl', 3),
    ('Pedro', 'Souza', '1010 Avenida Paulista, São Paulo, SP', 11987654321, 'pedro.souza@hotmail.com', 'pedro.souza', 'MnOp', 4),
    ('Isabella', 'Fernandes', '2020 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'isabella.fernandes@gmail.com', 'isabella.fernandes', 'QrSt', 5),
    ('Lucas', 'Martins', '3030 Rua da Lapa, Salvador, BA', 71865432109, 'lucas.martins@hotmail.com', 'lucas.martins', 'UvWx', 6),
    ('Julia', 'Pereira', '4040 Avenida Amazonas, Belo Horizonte, MG', 31987654321, 'julia.pereira@gmail.com', 'julia.pereira', 'YzAb', 7),
    ('Matheus', 'Rodrigues', '5050 Rua das Palmeiras, Brasília, DF', 61976543210, 'matheus.rodrigues@hotmail.com', 'matheus.rodrigues', 'CdEf', 8),
    ('Sophia', 'Gonçalves', '6060 Avenida Paulista, São Paulo, SP', 11987654321, 'sophia.goncalves@gmail.com', 'sophia.goncalves', 'GhIj', 9),
    ('Enzo', 'Lima', '7070 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'enzo.lima@hotmail.com', 'enzo.lima', 'KlMn', 10),
    ('Laura', 'Almeida', '8080 Rua da Praia, Salvador, BA', 71865432109, 'laura.almeida@gmail.com', 'laura.almeida', 'OpQr', 11),
    ('Gustavo', 'Mendes', '9090 Avenida Brasil, Rio de Janeiro, RJ', 21976543210, 'gustavo.mendes@hotmail.com', 'gustavo.mendes', 'StUv', 12),
    ('Manuela', 'Rocha', '10101 Rua das Flores, São Paulo, SP', 11987654321, 'manuela.rocha@gmail.com', 'manuela.rocha', 'WxYz', 1),
    ('Daniel', 'Cavalcanti', '11111 Avenida Amazonas, Belo Horizonte, MG', 31987654321, 'daniel.cavalcanti@hotmail.com', 'daniel.cavalcanti', 'AaBb', 2),
    ('Camila', 'Ferreira', '12121 Rua da Lapa, Salvador, BA', 71865432109, 'camila.ferreira@gmail.com', 'camila.ferreira', 'CcDd', 3),
    ('Arthur', 'Pires', '13131 Avenida Paulista, São Paulo, SP', 11987654321, 'arthur.pires@hotmail.com', 'arthur.pires', 'EeFf', 4),
    ('Lara', 'Gomes', '14141 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'lara.gomes@gmail.com', 'lara.gomes', 'GgHh', 5),
    ('Lucas', 'Costa', '15151 Rua das Palmeiras, Brasília, DF', 61976543210, 'lucas.costa@hotmail.com', 'lucas.costa', 'IiJj', 6),
    ('Valentina', 'Campos', '16161 Avenida Paulista, São Paulo, SP', 11987654321, 'valentina.campos@gmail.com', 'valentina.campos', 'KkLl', 7),
    ('Pedro', 'Melo', '17171 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'pedro.melo@hotmail.com', 'pedro.melo', 'MmNn', 8),
    ('Sophie', 'Dias', '18181 Rua da Praia, Salvador, BA', 71865432109, 'sophie.dias@gmail.com', 'sophie.dias', 'OoPp', 9),
    ('Henrique', 'Ferreira', '19191 Avenida Brasil, Rio de Janeiro, RJ', 21976543210, 'henrique.ferreira@hotmail.com', 'henrique.ferreira', 'QqRr', 10),
    ('Maria', 'Santos', '20202 Rua das Flores, São Paulo, SP', 11987654321, 'maria.santos@gmail.com', 'maria.santos', 'SsTt', 11),
    ('Lucas', 'Rocha', '21212 Avenida Amazonas, Belo Horizonte, MG', 31987654321, 'lucas.rocha@hotmail.com', 'lucas.rocha', 'UuVv', 12),
    ('Laura', 'Mendes', '22222 Rua da Lapa, Salvador, BA', 71865432109, 'laura.mendes@gmail.com', 'laura.mendes', 'WwXx', 1),
    ('Arthur', 'Lima', '23232 Avenida Paulista, São Paulo, SP', 11987654321, 'arthur.lima@hotmail.com', 'arthur.lima', 'YyZz', 2),
    ('Valentina', 'Almeida', '24242 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'valentina.almeida@gmail.com', 'valentina.almeida', 'A1B2', 3),
    ('Enzo', 'Rodrigues', '25252 Rua das Palmeiras, Brasília, DF', 61976543210, 'enzo.rodrigues@hotmail.com', 'enzo.rodrigues', 'C3D4', 4),
    ('Sophia', 'Campos', '26262 Avenida Paulista, São Paulo, SP', 11987654321, 'sophia.campos@gmail.com', 'sophia.campos', 'E5F6', 5),
    ('Daniel', 'Pires', '27272 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'daniel.pires@hotmail.com', 'daniel.pires', 'G7H8', 6),
    ('Camila', 'Gomes', '28282 Rua da Praia, Salvador, BA', 71865432109, 'camila.gomes@gmail.com', 'camila.gomes', 'I9J0', 7),
    ('Arthur', 'Costa', '29292 Avenida Amazonas, Belo Horizonte, MG', 31987654321, 'arthur.costa@hotmail.com', 'arthur.costa', 'K1L2', 8),
    ('Lara', 'Campos', '30303 Rua das Flores, São Paulo, SP', 11987654321, 'lara.campos@gmail.com', 'lara.campos', 'M3N4', 9),
    ('Lucas', 'Lima', '31313 Avenida Paulista, São Paulo, SP', 11987654321, 'lucas.lima@hotmail.com', 'lucas.lima', 'O5P6', 10),
    ('Valentina', 'Santos', '32323 Rua Copacabana, Rio de Janeiro, RJ', 21976543210, 'valentina.santos@gmail.com', 'valentina.santos', 'Q7R8', 11),
    ('Pedro', 'Ferreira', '33333 Rua da Praia, Salvador, BA', 71865432109, 'pedro.ferreira@hotmail.com', 'pedro.ferreira', 'S9T0', 12),
    ('Sophie', 'Dias', '34343 Rua da Praia, Salvador, BA', 71865432109, 'sophie.dias@hotmail.com', 'sophie.dias', 'U1V2', 1),
    ('Henrique', 'Ferreira', '35353 Rua da Praia, Salvador, BA', 71865432109, 'henrique.ferreira@gmail.com', 'henrique.ferreira', 'W3X4', 2),
    ('Maria', 'Santos', '36363 Rua da Praia, Salvador, BA', 71865432109, 'maria.santos@hotmail.com', 'maria.santos', 'Y5Z6', 3),
    ('Lucas', 'Rocha', '37373 Rua da Praia, Salvador, BA', 71865432109, 'lucas.rocha@gmail.com', 'lucas.rocha', 'A1B2', 4),
    ('Laura', 'Mendes', '38383 Rua da Praia, Salvador, BA', 71865432109, 'laura.mendes@hotmail.com', 'laura.mendes', 'C3D4', 5),
    ('Arthur', 'Lima', '39393 Rua da Praia, Salvador, BA', 71865432109, 'arthur.lima@gmail.com', 'arthur.lima', 'E5F6', 6),
    ('Valentina', 'Almeida', '40404 Rua da Praia, Salvador, BA', 71865432109, 'valentina.almeida@hotmail.com', 'valentina.almeida', 'G7H8', 7),
    ('Enzo', 'Rodrigues', '41414 Rua da Praia, Salvador, BA', 71865432109, 'enzo.rodrigues@gmail.com', 'enzo.rodrigues', 'I9J0', 8);
    
INSERT INTO InventoryInc.customer (firstName, address, phone, email, staffId)
SELECT
    CONCAT('First Name', number + 1),
    CONCAT('Address', number + 1),
    FLOOR(RAND() * 1000000000) + 1000000000, -- Generate random Brazilian phone numbers
    CONCAT('email', number + 1, '@', IF(number % 2 = 0, 'gmail.com', 'hotmail.com')),
    FLOOR(RAND() * 38) + 1  -- Generates a staffId between 1 and 38
FROM (
    SELECT 
        (a.N + b.N * 10 + c.N * 100 + d.N * 1000) AS number
    FROM 
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS a,
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS b,
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS c,
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS d
) AS numbers
LIMIT 530;

INSERT INTO InventoryInc.products (`name`, `description`, unit, price, quantity, `status`, otherDetails, supplierId, categoryId)
SELECT
    CASE
        WHEN id = 1 THEN CONCAT('Electronics Product ', FLOOR(RAND() * 100))
        WHEN id = 2 THEN CONCAT('Clothing Product ', FLOOR(RAND() * 100))
        WHEN id = 3 THEN CONCAT('Book ', FLOOR(RAND() * 100))
        WHEN id = 4 THEN CONCAT('Kitchen Appliance ', FLOOR(RAND() * 100))
        WHEN id = 5 THEN CONCAT('Toy ', FLOOR(RAND() * 100))
        WHEN id = 6 THEN CONCAT('Beauty Product ', FLOOR(RAND() * 100))
        WHEN id = 7 THEN CONCAT('Sports Equipment ', FLOOR(RAND() * 100))
        WHEN id = 8 THEN CONCAT('Health Product ', FLOOR(RAND() * 100))
        WHEN id = 9 THEN CONCAT('Automotive Part ', FLOOR(RAND() * 100))
        WHEN id = 10 THEN CONCAT('Home Improvement Item ', FLOOR(RAND() * 100))
        WHEN id = 11 THEN CONCAT('Grocery Item ', FLOOR(RAND() * 100))
        WHEN id = 12 THEN CONCAT('Pet Supply ', FLOOR(RAND() * 100))
    END AS `name`,
    CONCAT('Description for Product ', FLOOR(RAND() * 100)) AS description,
    CONCAT('Unit', FLOOR(RAND() * 10)) AS unit,
    ROUND(RAND() * 1000, 2) AS price,
    FLOOR(RAND() * 100) AS quantity,
    FLOOR(RAND() * 5) AS status,
    CASE
        WHEN RAND() < 0.5 THEN NULL
        ELSE CONCAT('Random Details ', FLOOR(RAND() * 100))
    END AS otherDetails,
    FLOOR(1 + RAND() * 30) AS supplierId,
    id
FROM
    (
        SELECT
            id
        FROM
            InventoryInc.categorys
    ) AS categories
CROSS JOIN
    (
        SELECT
            number
        FROM
            (
                SELECT
                    0 AS number
                UNION ALL SELECT
                    1 UNION ALL SELECT
                    2 UNION ALL SELECT
                    3 UNION ALL SELECT
                    4 UNION ALL SELECT
                    5 UNION ALL SELECT
                    6 UNION ALL SELECT
                    7 UNION ALL SELECT
                    8 UNION ALL SELECT
                    9
            ) AS numbers
    ) AS quantity_numbers
LIMIT 130;

SET @billNumbers = '1001,1002,1003,1004,1005,1006,1007,1008,1009,1010';
-- Insert 1478 rows of random sample data into the order_details table
INSERT INTO InventoryInc.order_details (quantity, discount, orderDate, productId, billNumber, customerId)
SELECT
    CASE WHEN RAND() < 0.9 THEN 1 ELSE FLOOR(RAND() * 10) END, -- 90% of quantity values are 1
    CASE WHEN RAND() < 0.9 THEN 0 ELSE FLOOR(RAND() * 100) END, -- 90% of discount values are 0
    DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND() * 1095) DAY), -- Generates random dates between 2021 and today (3 years)
    FLOOR(RAND() * 120) + 1, -- Generates a random productId between 1 and 120
    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(@billNumbers, ',', FLOOR(RAND() * 10) + 1), ',', -1) AS UNSIGNED), -- Random billNumber from the array
    FLOOR(RAND() * 530) + 1 -- Generates a random customerId between 1 and 530
FROM (
    SELECT 
        (a.N + b.N * 10 + c.N * 100 + d.N * 1000) AS number
    FROM 
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS a,
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS b,
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS c,
        (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS d
) AS numbers
LIMIT 1478;