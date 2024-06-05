CREATE TABLE IF NOT EXISTS properties (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image BLOB,
    price DECIMAL(10, 2),
    description TEXT,
    for_sale BOOLEAN DEFAULT FALSE,
    for_rent BOOLEAN DEFAULT FALSE,
    location VARCHAR(255),
    agent_id INT,
    FOREIGN KEY (agent_id) REFERENCES agents(id)
);



INSERT INTO properties (image, price, description, for_sale, for_rent, location, agent_id)
VALUES
    ('https://tinyurl.com/yc2mvrpe', 100000.00, 'A beautiful single-family home with a large backyard.', TRUE, FALSE, '123 Main St, Springfield', 1),
    ('https://tinyurl.com/mr27t2u7', 1500.00, 'A cozy apartment in the city center.', FALSE, TRUE, '456 Elm St, Metropolis', 2),
    ('https://via.placeholder.com/150', 200000.00, 'A modern townhouse with all the amenities.', TRUE, FALSE, '789 Oak St, Smallville', 3),
    ('https://via.placeholder.com/150', 1200.00, 'A spacious loft with a great view.', FALSE, TRUE, '101 Pine St, Gotham', 4),
    ('https://via.placeholder.com/150', 300000.00, 'A luxurious villa with a pool.', TRUE, FALSE, '202 Birch St, Star City', 5),
    ('https://via.placeholder.com/150', 2000.00, 'A charming cottage by the lake.', FALSE, TRUE, '303 Cedar St, Central City', 6),
    ('https://via.placeholder.com/150', 175000.00, 'A stylish condo in a gated community.', TRUE, FALSE, '404 Maple St, Coast City', 7),
    ('https://via.placeholder.com/150', 1800.00, 'A furnished studio apartment.', FALSE, TRUE, '505 Willow St, Keystone City', 8),
    ('https://via.placeholder.com/150', 250000.00, 'A historic home with modern updates.', TRUE, FALSE, '606 Aspen St, Fawcett City', 9),
    ('https://via.placeholder.com/150', 2200.00, 'A downtown loft with a rooftop terrace.', FALSE, TRUE, '707 Poplar St, Opal City', 10),
    -- Add 40 more sample entries
    ('https://via.placeholder.com/150', 270000.00, 'A rustic farmhouse with plenty of land.', TRUE, FALSE, '808 Chestnut St, Hub City', 11),
    ('https://via.placeholder.com/150', 1900.00, 'A newly renovated apartment.', FALSE, TRUE, '909 Spruce St, Ivy Town', 12),
    ('https://via.placeholder.com/150', 320000.00, 'A spacious duplex with a private garden.', TRUE, FALSE, '1010 Fir St, Happy Harbor', 13),
    ('https://via.placeholder.com/150', 2100.00, 'A modern flat in the business district.', FALSE, TRUE, '1111 Cypress St, Bludhaven', 14),
    ('https://via.placeholder.com/150', 350000.00, 'A beachfront property with stunning views.', TRUE, FALSE, '1212 Redwood St, Gateway City', 15),
    ('https://via.placeholder.com/150', 2300.00, 'A comfortable bungalow near the park.', FALSE, TRUE, '1313 Sequoia St, Midway City', 16),
    ('https://via.placeholder.com/150', 400000.00, 'A grand estate with extensive grounds.', TRUE, FALSE, '1414 Palm St, New Carthage', 17),
    ('https://via.placeholder.com/150', 2500.00, 'A penthouse suite with luxurious finishes.', FALSE, TRUE, '1515 Dogwood St, Opal City', 18),
    ('https://via.placeholder.com/150', 450000.00, 'A contemporary home with state-of-the-art features.', TRUE, FALSE, '1616 Juniper St, Blue Valley', 19),
    ('https://via.placeholder.com/150', 2600.00, 'A unique loft in an old factory.', FALSE, TRUE, '1717 Holly St, Steel City', 20),
    ('https://via.placeholder.com/150', 300000.00, 'A charming home with a wrap-around porch.', TRUE, FALSE, '1818 Mahogany St, Ivy Town', 21),
    ('https://via.placeholder.com/150', 2700.00, 'A spacious townhouse in a quiet neighborhood.', FALSE, TRUE, '1919 Pine St, Happy Harbor', 22),
    ('https://via.placeholder.com/150', 350000.00, 'A large family home with a finished basement.', TRUE, FALSE, '2020 Birch St, Fawcett City', 23),
    ('https://via.placeholder.com/150', 2800.00, 'A modern apartment with an open floor plan.', FALSE, TRUE, '2121 Cedar St, Coast City', 24),
    ('https://via.placeholder.com/150', 360000.00, 'A luxurious penthouse with panoramic views.', TRUE, FALSE, '2222 Oak St, Star City', 25),
    ('https://via.placeholder.com/150', 2900.00, 'A charming duplex with hardwood floors.', FALSE, TRUE, '2323 Elm St, Metropolis', 26),
    ('https://via.placeholder.com/150', 380000.00, 'A modern home with eco-friendly features.', TRUE, FALSE, '2424 Maple St, Smallville', 27),
    ('https://via.placeholder.com/150', 3000.00, 'A spacious loft in the heart of downtown.', FALSE, TRUE, '2525 Spruce St, Gotham', 28),
    ('https://via.placeholder.com/150', 400000.00, 'A beautiful home with a large backyard.', TRUE, FALSE, '2626 Pine St, Central City', 29),
    ('https://via.placeholder.com/150', 3100.00, 'A modern apartment in a high-rise building.', FALSE, TRUE, '2727 Chestnut St, Hub City', 30),
    ('https://via.placeholder.com/150', 420000.00, 'A charming cottage with a cozy interior.', TRUE, FALSE, '2828 Fir St, Bludhaven', 31),
    ('https://via.placeholder.com/150', 3200.00, 'A spacious apartment with modern amenities.', FALSE, TRUE, '2929 Cypress St, Gateway City', 32),
    ('https://via.placeholder.com/150', 440000.00, 'A luxury home with a private pool.', TRUE, FALSE, '3030 Redwood St, Midway City', 33),
    ('https://via.placeholder.com/150', 3300.00, 'A unique loft with exposed brick walls.', FALSE, TRUE, '3131 Sequoia St, New Carthage', 34),
    ('https://via.placeholder.com/150', 460000.00, 'A contemporary townhouse with a rooftop deck.', TRUE, FALSE, '3232 Palm St, Opal City', 35),
    ('https://via.placeholder.com/150', 3400.00, 'A modern flat with floor-to-ceiling windows.', FALSE, TRUE, '3333 Dogwood St, Blue Valley', 36),
    ('https://via.placeholder.com/150', 480000.00, 'A spacious home with a large garage.', TRUE, FALSE, '3434 Juniper St, Steel City', 37),
    ('https://via.placeholder.com/150', 3500.00, 'A stylish apartment in a new development.', FALSE, TRUE, '3535 Holly St, Ivy Town', 38),
    ('https://via.placeholder.com/150', 500000.00, 'A charming villa with a beautiful garden.', TRUE, FALSE, '3636 Mahogany St, Happy Harbor', 39),
    ('https://via.placeholder.com/150', 3600.00, 'A luxurious penthouse with a private elevator.', FALSE, TRUE, '3737 Pine St, Fawcett City', 40),
    ('https://via.placeholder.com/150', 520000.00, 'A grand estate with a stunning interior.', TRUE, FALSE, '3838 Birch St, Coast City', 41),
    ('https://via.placeholder.com/150', 3700.00, 'A modern apartment with high-end finishes.', FALSE, TRUE, '3939 Cedar St, Star City', 42),
    ('https://via.placeholder.com/150', 540000.00, 'A beautiful home with a wrap-around deck.', TRUE, FALSE, '4040 Oak St, Metropolis', 43),
    ('https://via.placeholder.com/150', 3800.00, 'A spacious townhouse in a historic district.', FALSE, TRUE, '4141 Elm St, Smallville', 44),
    ('https://via.placeholder.com/150', 560000.00, 'A contemporary home with a sleek design.', TRUE, FALSE, '4242 Maple St, Gotham', 45),
    ('https://via.placeholder.com/150', 3900.00, 'A charming apartment in a quiet area.', FALSE, TRUE, '4343 Spruce St, Central City', 46),
    ('https://via.placeholder.com/150', 580000.00, 'A luxurious home with an open floor plan.', TRUE, FALSE, '4444 Pine St, Hub City', 47),
    ('https://via.placeholder.com/150', 4000.00, 'A modern apartment with stunning city views.', FALSE, TRUE, '4545 Chestnut St, Bludhaven', 48),
    ('https://via.placeholder.com/150', 600000.00, 'A spacious home with top-of-the-line finishes.', TRUE, FALSE, '4646 Fir St, Gateway City', 49),
    ('https://via.placeholder.com/150', 4100.00, 'A contemporary apartment in a vibrant neighborhood.', FALSE, TRUE, '4747 Cypress St, Midway City', 50);
