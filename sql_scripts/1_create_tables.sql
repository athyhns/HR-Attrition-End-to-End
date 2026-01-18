-- 1. Create Database
CREATE DATABASE IF NOT EXISTS hr_analytics_db;
USE hr_analytics_db;

-- 2. Create Dimension Tables (Data Deskriptif)

-- Dimensi Karyawan (Info demografis)
CREATE TABLE dim_employee (
    employee_id INT PRIMARY KEY, -- Biasanya EmployeeNumber
    gender VARCHAR(10),
    age INT,
    marital_status VARCHAR(20),
    education_field VARCHAR(50),
    education_level INT,
    distance_from_home INT
);

-- Dimensi Pekerjaan (Info jabatan & departemen)
CREATE TABLE dim_job (
    job_id VARCHAR(50) PRIMARY KEY, -- Bisa kombinasi Role & Dept
    department VARCHAR(50),
    job_role VARCHAR(50),
    job_level INT,
    business_travel VARCHAR(50)
);

-- 3. Create Fact Table (Data Transaksi/Angka)
-- Ini tabel pusat yang menampung metric
CREATE TABLE fact_hr_analytics (
    fact_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    job_id VARCHAR(50),
    attrition VARCHAR(5), -- Yes/No
    monthly_income_idr DECIMAL(15, 2), -- Hasil konversi kurs
    job_satisfaction INT,
    environment_satisfaction INT,
    performance_rating INT,
    years_at_company INT,
    years_since_last_promotion INT,
    
    -- Foreign Keys (Menghubungkan ke tabel Dimensi)
    FOREIGN KEY (employee_id) REFERENCES dim_employee(employee_id),
    FOREIGN KEY (job_id) REFERENCES dim_job(job_id)
);