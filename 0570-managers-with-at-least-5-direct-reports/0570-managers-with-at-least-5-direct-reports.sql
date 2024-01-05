# Write your MySQL query statement below

SELECT t1.name
    FROM Employee t1
    WHERE ( SELECT COUNT(t2.managerID) as cnt FROM Employee t2 WHERE t1.id = t2.managerID) >= 5;