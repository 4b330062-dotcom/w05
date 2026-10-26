SELECT 
    s.std_name AS 學生姓名,
    d.dept_name AS 系所名稱,
    c.crs_name AS 課程名稱,
    r.score AS 成績
FROM w05_註冊 r
INNER JOIN w05_學生 s ON r.std_id = s.std_id
INNER JOIN w05_部門 d ON s.dept_id = d.dept_id
INNER JOIN w05_課程 c ON r.crs_id = c.crs_id;
