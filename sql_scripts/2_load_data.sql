/*
    CATATAN PROSES ETL:
    
    Data pada project ini TIDAK di-insert menggunakan query SQL manual (INSERT INTO...),
    melainkan menggunakan ETL Tool: Pentaho Data Integration (PDI).
    
    Alur Proses:
    1. Extract: Membaca file raw 'WA_Fn-UseC_-HR-Employee-Attrition.csv'.
    2. Transform: 
       - Membersihkan data NULL.
       - Mengkonversi kolom 'MonthlyIncome' (USD) ke 'MonthlyIncome_IDR' (IDR) dengan kurs 15.000.
       - Mapping dimensi dan fakta.
    3. Load: Menggunakan step 'Table Output' di Pentaho untuk memasukkan data ke tabel MySQL:
       - dim_employee
       - dim_job
       - fact_hr_analytics
       
    Silakan cek folder 'etl_pentaho' untuk melihat file transformasi (.ktr).
*/