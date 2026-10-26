CREATE TABLE w05_部門 (
    dept_id VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE w05_學生 (
    std_id INT PRIMARY KEY,
    std_name VARCHAR(50) NOT NULL,
    dept_id VARCHAR(10),
    FOREIGN KEY (dept_id) REFERENCES w05_部門(dept_id)
);

CREATE TABLE w05_課程 (
    crs_id INT PRIMARY KEY,
    crs_name VARCHAR(100) NOT NULL
);

CREATE TABLE w05_註冊 (
    std_id INT,
    crs_id INT,
    score INT,
    PRIMARY KEY (std_id, crs_id),
    FOREIGN KEY (std_id) REFERENCES w05_學生(std_id),
    FOREIGN KEY (crs_id) REFERENCES w05_課程(crs_id)
);

INSERT INTO w05_部門 (dept_id, dept_name) VALUES ('EE', '電子工程系');

INSERT INTO w05_學生 (std_id, std_name, dept_id) VALUES 
(1, '王小明', 'EE'),
(2, '李小華', 'EE'),
(3, '陳小安', 'EE');

INSERT INTO w05_課程 (crs_id, crs_name) VALUES 
(1, '雲端資料庫實務'),
(2, '物聯網系統設計');

INSERT INTO w05_註冊 (std_id, crs_id, score) VALUES 
(1, 1, 92),
(1, 2, 88),
(2, 1, 85);
