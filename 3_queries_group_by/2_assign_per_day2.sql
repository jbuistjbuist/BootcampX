SELECT day, COUNT(*) 
FROM assignments 
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;