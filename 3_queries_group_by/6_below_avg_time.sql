SELECT students.name AS student,
  AVG(assignments.duration) AS average_estimated_duration,
  AVG(assignment_submissions.duration) AS average_assignment_duration
  

FROM assignments 
JOIN assignment_submissions
  ON assignment_id = assignments.id
JOIN students 
  ON student_id = students.id

WHERE end_date IS NULL

GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;

