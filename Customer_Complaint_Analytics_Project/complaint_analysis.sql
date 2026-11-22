-- Financial Services Customer Complaint Analysis
-- SQL dialect: SQLite (can be adapted to other SQL engines)
-- Load cleaned_complaints.csv into a table named complaints before running.
-- Important: resolved-response metrics exclude Open complaints.

-- Q1. Total complaints and status breakdown
SELECT COUNT(*) AS total_complaints,
       SUM(CASE WHEN response_status = 'Open' THEN 1 ELSE 0 END) AS open_complaints,
       SUM(CASE WHEN response_status = 'Closed' THEN 1 ELSE 0 END) AS closed_complaints
FROM complaints;

-- Q2. Monthly complaint trend
SELECT strftime('%Y-%m', date_received) AS complaint_month,
       COUNT(*) AS total_complaints
FROM complaints
GROUP BY strftime('%Y-%m', date_received)
ORDER BY complaint_month;

-- Q3. Complaints by financial product
SELECT financial_product, COUNT(*) AS complaint_count
FROM complaints
GROUP BY financial_product
ORDER BY complaint_count DESC;

-- Q4. Most frequently reported issue categories
SELECT issue_category, COUNT(*) AS complaint_count
FROM complaints
GROUP BY issue_category
ORDER BY complaint_count DESC
LIMIT 10;

-- Q5. Complaints by company (volume only; do not interpret as performance rate)
SELECT company_name, COUNT(*) AS complaint_count
FROM complaints
GROUP BY company_name
ORDER BY complaint_count DESC;

-- Q6. Complaints by customer state (Unknown represents missing state)
SELECT state, COUNT(*) AS complaint_count
FROM complaints
GROUP BY state
ORDER BY complaint_count DESC;

-- Q7. Timely-response percentage by company (closed complaints only)
SELECT company_name,
       COUNT(*) AS closed_complaints,
       SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_responses,
       ROUND(100.0 * SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END)
             / NULLIF(COUNT(*), 0), 2) AS timely_response_pct
FROM complaints
WHERE response_status = 'Closed'
GROUP BY company_name
ORDER BY timely_response_pct DESC;

-- Q8. Average response time in calendar days (closed complaints only)
SELECT ROUND(AVG(julianday(date_company_responded) - julianday(date_received)), 2)
       AS average_response_days
FROM complaints
WHERE response_status = 'Closed'
  AND date_company_responded IS NOT NULL;

-- Q9. Average response time by financial product (closed complaints only)
SELECT financial_product,
       COUNT(*) AS closed_complaints,
       ROUND(AVG(julianday(date_company_responded) - julianday(date_received)), 2)
         AS average_response_days
FROM complaints
WHERE response_status = 'Closed'
  AND date_company_responded IS NOT NULL
GROUP BY financial_product
ORDER BY average_response_days DESC;

-- Q10. Missing customer location records for data-quality follow-up
SELECT complaint_id, company_name, state
FROM complaints
WHERE state = 'Unknown'
ORDER BY complaint_id;
