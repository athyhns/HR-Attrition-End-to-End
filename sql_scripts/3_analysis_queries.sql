-- QUERY ANALISIS HR ANALYTICS

-- 1. Cek Total Karyawan & Jumlah Resign (Attrition Count)
SELECT 
    COUNT(employee_id) AS Total_Employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(employee_id) * 100, 
        2
    ) AS Attrition_Rate_Percent
FROM fact_hr_analytics;


-- 2. Analisis Attrition Berdasarkan Departemen
SELECT 
    j.department,
    COUNT(f.employee_id) AS Total_Staff,
    SUM(CASE WHEN f.attrition = 'Yes' THEN 1 ELSE 0 END) AS Resigned_Count,
    ROUND(AVG(CASE WHEN f.attrition = 'Yes' THEN 100 ELSE 0 END), 2) AS Attrition_Rate
FROM fact_hr_analytics f
JOIN dim_job j ON f.job_id = j.job_id
GROUP BY j.department
ORDER BY Attrition_Rate DESC;


-- 3. Analisis "High Risk" Roles (Gaji vs Resign)
-- Query ini membuktikan temuan bahwa Sales Rep bergaji rendah punya rate resign tinggi.
SELECT 
    j.job_role,
    ROUND(AVG(f.monthly_income_idr), 0) AS Avg_Income_IDR,
    ROUND(AVG(CASE WHEN f.attrition = 'Yes' THEN 100 ELSE 0 END), 2) AS Attrition_Rate
FROM fact_hr_analytics f
JOIN dim_job j ON f.job_id = j.job_id
GROUP BY j.job_role
HAVING Attrition_Rate > 16 -- Di atas rata-rata perusahaan
ORDER BY Attrition_Rate DESC;