SELECT
    CASE
        WHEN s.id % 2 = 1 AND s2.id IS NOT NULL THEN s.id + 1
        WHEN s.id % 2 = 0 THEN s.id - 1
        ELSE s.id
    END AS id,
    s.student
FROM Seat s
LEFT JOIN Seat s2 ON s.id % 2 = 1 AND s.id + 1 = s2.id
ORDER BY id;
