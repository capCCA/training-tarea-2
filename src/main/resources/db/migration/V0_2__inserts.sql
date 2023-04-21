INSERT INTO customer("customer_id", "document_type", "document_number", "name", "surname", "country", "telephone") VALUES
    (0, 'passport', 'J12393496', 'Tony', 'Stark', 'US', '600000001'),
    (1, 'passport', 'ABA9875413', 'Peter', 'Parker', 'US', '600000002'),
    (2, 'passport', 'KF0192332C', 'Brian Jeremy', 'Braddock', 'UK', '600000003'),
    (3, 'dni', '12345678A', 'Paquito', 'Chocolatero', 'ES', '600000004'),
    (4, 'passport', 'RU146757245', 'Natalia Alianovna', 'Romanova', 'RU', '600000005');

INSERT INTO payment("payment_type", "amount", "customer_id") VALUES
    ('', 1000, 0),
    ('', 4069400, 0),
    ('', 9999000, 0),
    ('', 599, 2),
    ('', 60000, 4),
    ('', 703000000, 0),
    ('', 300000, 0),
    ('', 0.99, 3),
    ('', 351, 4);