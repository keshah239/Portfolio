SELECT 
    projects.project_name AS project_name,
    COUNT(DISTINCT positions.employee_id) AS employees_count
FROM 
    projects
LEFT JOIN 
    positions ON projects.project_id = positions.project_id
GROUP BY 
    projects.project_name;