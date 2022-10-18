SELECT teachers.name, COUNT(assistance_requests.*) as total_assistances
FROM teachers JOIN assistance_requests
  ON teachers.id = assistance_requests.teacher_id
  GROUP BY teachers.name
  HAVING teachers.name = 'Waylon Boehm'

-- SELECT count(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name; --compass answer