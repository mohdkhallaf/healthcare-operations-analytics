# Healthcare Operations & Clinical Performance Analytics

[![Power BI](https://img.shields.io/badge/Power_BI-PL--300_Aligned-F2C811?style=flat&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![SQL](https://img.shields.io/badge/SQL-PostgreSQL-336791?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An end-to-end business intelligence and data analytics project analyzing patient wait times, hospital department capacity, and clinical throughput to optimize operational workflows.

---

## 📌 Project Overview
Hospitals frequently face patient bottlenecks, unpredictable wait times, and unbalanced resource allocation. This project designs a robust reporting system that enables healthcare leadership to:
- Monitor daily and monthly patient flow trends.
- Track department-level SLA breaches (wait times exceeding 30 minutes).
- Identify peak arrival hours to optimize staffing rosters.

---

## 🏗️ Architecture & Data Modeling
The data pipeline is modeled using a clean **Star Schema** to ensure fast aggregation and reporting performance in Power BI:

- **Fact_Encounters:** Contains core transactional records (wait times, duration, discharge status).
- **Dim_Date:** Comprehensive calendar table supporting dynamic time intelligence.
- **Dim_Department:** Department taxonomy, operational capacities, and supervisor mapping.
- **Dim_Patient:** Anonymized patient demographics.

---

## 📊 Key Insights & Deliverables
1. **Capacity Bottlenecks:** Emergency and General Medicine departments accounted for 62% of all 30+ minute SLA breaches.
2. **Staffing Realignment:** Peak arrival volumes consistently occur between 10:00 AM – 1:00 PM and 6:00 PM – 8:00 PM.
3. **Interactive Reporting:** Implemented dynamic DAX measures for Month-over-Month growth, dynamic filtering, and executive KPI summary cards.

---

## 🛠️ Tech Stack & Skills
- **Data Modeling:** Star Schema, Power BI, DAX, Power Query (M)
- **Database & Querying:** SQL (CTEs, Window Functions, Aggregations)
- **Source Code Management:** Git, GitHub

---

## 👤 Author
**Mohamed M. Khallaf**  
- [LinkedIn Profile](https://www.linkedin.com/in/meedakh)
- [Upwork Freelancer Profile](https://www.upwork.com/freelancers/~014b76f212ed42a70b?mp_source=share)
- **Email:** mohdkhallaf1986@gmail.com
