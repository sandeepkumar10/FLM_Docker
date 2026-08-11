DROP TABLE IF EXISTS indian_batters;

CREATE TABLE indian_batters (
    player_id INT PRIMARY KEY AUTO_INCREMENT,
    player_name VARCHAR(100) NOT NULL,
    odi_runs INT,
    test_runs INT,
    t20i_runs INT
);

INSERT INTO indian_batters
    (player_name, odi_runs, test_runs, t20i_runs)
VALUES
    ('Sachin Tendulkar', 18426, 15921, 10),
    ('Virat Kohli', 14797, 9230, 4188),
    ('Rohit Sharma', 11577, 4301, 4231),
    ('Sourav Ganguly', 11221, 7212, 0),
    ('Rahul Dravid', 10889, 13288, 31),
    ('MS Dhoni', 10773, 4876, 1617),
    ('Yuvraj Singh', 8701, 1900, 1177),
    ('Virender Sehwag', 8273, 8586, 394),
    ('Shikhar Dhawan', 6793, 2315, 167),
    ('Mohammad Azharuddin', 9378, 6215, 0),
    ('Sunil Gavaskar', 3092, 10122, 0),
    ('Gautam Gambhir', 5238, 4154, 932),
    ('Ajinkya Rahane', 2962, 5077, 375),
    ('VVS Laxman', 2338, 8781, 0),
    ('Cheteshwar Pujara', 176, 7195, 0),
    ('Suresh Raina', 5615, 768, 1605),
    ('KL Rahul', 2851, 3179, 2265),
    ('Shreyas Iyer', 3108, 2025, 1100),
    ('Rishabh Pant', 865, 2949, 1205),
    ('Shubman Gill', 3000, 5000, 1500);