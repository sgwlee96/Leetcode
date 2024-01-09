# Write your MySQL query statement below

SELECT S.user_id, ROUND(AVG(If(C.action = 'confirmed', 1, 0)),2) as confirmation_rate
    FROM Signups S
    LEFT JOIN Confirmations C
    ON S.user_id = C.user_id
    GROUP BY S.user_id