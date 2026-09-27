-- 1. Average wait time and treatment duration by department
SELECT 
    department_name,
    COUNT(encounter_id) AS total_encounters,
    ROUND(AVG(wait_time_minutes), 1) AS avg_wait_time_min,
    ROUND(AVG(treatment_duration_minutes), 1) AS avg_treatment_min
FROM encounters
GROUP BY department_name
ORDER BY avg_wait_time_min DESC;

-- 2. Peak arrival hours using Window Functions
WITH HourlyEncounters AS (
    SELECT 
        EXTRACT(HOUR FROM arrival_time) AS arrival_hour,
        COUNT(encounter_id) AS encounter_count
    FROM encounters
    GROUP BY EXTRACT(HOUR FROM arrival_time)
)
SELECT 
    arrival_hour,
    encounter_count,
    DENSE_RANK() OVER (ORDER BY encounter_count DESC) AS peak_rank
FROM HourlyEncounters;

-- 3. Monthly patient volume trend and Month-over-Month growth
WITH MonthlyStats AS (
    SELECT 
        DATE_TRUNC('month', encounter_date) AS encounter_month,
        COUNT(encounter_id) AS total_patients
    FROM encounters
    GROUP BY DATE_TRUNC('month', encounter_date)
)
SELECT 
    encounter_month,
    total_patients,
    LAG(total_patients, 1) OVER (ORDER BY encounter_month) AS prev_month_patients,
    ROUND(
        ((total_patients - LAG(total_patients, 1) OVER (ORDER BY encounter_month))::numeric / 
        LAG(total_patients, 1) OVER (ORDER BY encounter_month)) * 100, 2
    ) AS mom_growth_pct
FROM MonthlyStats;
