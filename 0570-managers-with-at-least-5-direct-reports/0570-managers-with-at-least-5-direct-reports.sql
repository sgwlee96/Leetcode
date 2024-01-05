# Write your MySQL query statement below

# SELECT t1.name
#     FROM Employee t1
#     WHERE ( SELECT COUNT(t2.managerID) as cnt FROM Employee t2 WHERE t1.id = t2.managerID) >= 5;

SELECT t1.name
FROM Employee t1
JOIN (
    SELECT managerID, COUNT(managerID) AS cnt
    FROM Employee
    GROUP BY managerID
    HAVING COUNT(managerID) >= 5
) t2 ON t1.id = t2.managerID;