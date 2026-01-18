
# 👥 HR Employee Attrition Analysis (End-to-End)

![Pentaho](https://img.shields.io/badge/ETL-Pentaho-005D8C?logo=pentaho&logoColor=white)
![SQL](https://img.shields.io/badge/Database-SQL-4479A1?logo=mysql&logoColor=white)
![Data](https://img.shields.io/badge/Dataset-IBM_HR-FFCA28?logo=kaggle&logoColor=black)
![Dashboard](https://img.shields.io/badge/Visualization-Dashboard-E65100?logo=google-analytics&logoColor=white)

**Project:** End-to-End Data Analysis
**Analyst:** Athiyah Naurah Syifa

---

## 📖 Deskripsi Proyek

Proyek ini adalah analisis data *end-to-end* yang bertujuan untuk mengidentifikasi faktor-faktor utama penyebab **Employee Attrition** (tingkat keluarnya karyawan) di sebuah perusahaan.

Proses analisis mencakup seluruh siklus pengolahan data:
1.  **ETL (Extract, Transform, Load):** Membersihkan dan memindahkan data mentah (CSV) menggunakan **Pentaho**.
2.  **Data Warehousing:** Menyimpan data yang sudah bersih ke dalam Database menggunakan **SQL**.
3.  **Data Analysis:** Menjalankan *query* SQL kompleks untuk menemukan pola *attrition*.
4.  **Visualization:** Menyajikan hasil analisis dalam bentuk **HR Analytics Dashboard**.

---

## 🛠️ Tech Stack & Tools

* **ETL Tool:** Pentaho Data Integration (Kettle/Spoon) - File `.ktr`.
* **Database:** SQL (Structured Query Language).
* **Dataset:** IBM HR Analytics Employee Attrition (`.csv`).
* **Visualisasi:** Dashboard Report (PDF Export).

---

## 📂 Struktur Direktori

Berikut adalah struktur folder dalam repositori ini:

```bash
/hr-attrition-end-to-end
├── /dataset
│   └── /raw
│       └── WA_Fn-UseC_-HR-Employee-Attrition.csv  # Dataset Mentah
├── /etl_pentaho
│   └── Transformation.ktr                         # File Transformasi Pentaho
├── /sql_scripts
│   ├── 1_create_tables.sql                        # Script Membuat Tabel
│   ├── 2_load_data.sql                            # Script Load Data
│   └── 3_analysis_queries.sql                     # Script Analisis Data
├── /dashboard_assets
│   └── HR_ANALYTICS_DASHBOARD.pdf                 # Hasil Visualisasi Dashboard
└── README.md
```

---

## 🔍 Alur Kerja (Pipeline)

1. **Data Ingestion:**
Mengambil data mentah dari folder `dataset/raw`.
2. **ETL Process (Pentaho):**
File `Transformation.ktr` memproses data, menangani *null values*, dan mengubah tipe data agar sesuai dengan skema database.
3. **Database Storage:**
Data yang bersih dimuat ke tabel SQL menggunakan skema yang didefinisikan di `1_create_tables.sql`.
4. **Analysis & Insights:**
Menggunakan `3_analysis_queries.sql` untuk menjawab pertanyaan bisnis seperti:
* Departemen mana yang memiliki tingkat *attrition* tertinggi?
* Apakah lama bekerja (*YearsAtCompany*) mempengaruhi keputusan keluar?
* Hubungan antara gaji (*MonthlyIncome*) dan *attrition*.



---

## 🚀 Cara Menjalankan

### 1. Persiapan Database

Jalankan script SQL berikut di database manager (MySQL/PostgreSQL/dll):

```sql
-- Jalankan file: sql_scripts/1_create_tables.sql

```

### 2. Jalankan ETL

* Buka **Pentaho Data Integration (Spoon)**.
* Buka file `etl_pentaho/Transformation.ktr`.
* Konfigurasi koneksi database sesuai *local environment* kamu.
* Jalankan transformasi (Run).

*(Alternatif: Jika tidak menggunakan Pentaho, kamu bisa load data manual menggunakan `2_load_data.sql`)*

### 3. Analisis Data

Jalankan script analisis untuk mendapatkan *insight*:

```sql
-- Jalankan file: sql_scripts/3_analysis_queries.sql

```

### 4. Lihat Dashboard

Buka file PDF di folder `dashboard_assets/HR_ANALYTICS_DASHBOARD.pdf` untuk melihat ringkasan visual hasil analisis.

---

Built with ❤️ by **Athiyah Naurah Syifa**
