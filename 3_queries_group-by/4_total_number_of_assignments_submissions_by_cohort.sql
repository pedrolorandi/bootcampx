SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC; 