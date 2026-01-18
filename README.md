# 📊 HR Employee Attrition Analytics (End-to-End Project)

## 🚀 Project Overview
This project analyzes employee attrition trends to identify high-risk job roles and provide actionable recommendations for HR retention strategies.
The pipeline involves **ETL** extraction, **Data Warehousing** with Star Schema, and an interactive **Dashboard**.

## 🛠️ Tech Stack
* **ETL Tool:** Pentaho Data Integration (PDI) - *For data cleaning & currency conversion (USD to IDR).*
* **Database:** MySQL - *Data Warehousing (Star Schema).*
* **Visualization:** Looker Studio - *Interactive Dashboard creation.*
* **Language:** SQL - *Data modeling & validation.*

## 📂 Project Structure
* `etl_pentaho/`: `.ktr` transformation files.
* `sql_scripts/`: SQL DDL for Fact & Dimension tables.
* `dashboard_assets/`: Screenshots and PDF export of the final dashboard.

## 💡 Key Insights
1.  **High Risk Roles:** Sales Representatives & Lab Technicians show the highest attrition rates (>30%).
2.  **Income Correlation:** Strong negative correlation found between Monthly Income and Attrition Risk.
3.  **Actionable Plan:** Recommended targeted compensation reviews for employees in the "Red Zone" (Low Income, High Attrition).

## 📸 Dashboard Preview
![Dashboard Screenshot](dashboard_assets/HR_ANALYTICS_DASHBOARD.png) **

---
*Created by Athiyah Naurah Syifa | [LinkedIn Profile Link]*