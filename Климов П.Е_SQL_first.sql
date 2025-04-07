SELECT 
    projects.project_name AS project_name,
    titles.title_name AS title_name,
    AVG(positions.salary) AS salary_avg,
    MAX(positions.salary) AS salary_max,
    MIN(positions.salary) AS salary_min
FROM 
    positions
JOIN 
    projects ON positions.project_id = projects.project_id
JOIN 
    titles ON positions.title_id = titles.title_id
WHERE 
    titles.title_name = 'backend developer'
    AND projects.project_name IN ('ГИС КАП', 'Цифровой акциз')
GROUP BY 
    projects.project_name, titles.title_name;