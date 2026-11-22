# Financial Services Customer Complaint Analytics

This project analyzes a fictional 5,000-row financial-services complaints dataset.

## Contents
- `original_complaints.csv` — source data.
- `cleaned_complaints.csv` — deduplicated and standardized data.
- `Customer_Complaints_Cleaned.xlsx` — cleaned data, cleaning log, and data dictionary.
- `complaint_analysis.sql` — 10 explained SQLite queries.
- `SQL_Query_Execution_Results.xlsx` — outputs from executing the SQL queries against the cleaned dataset in SQLite.
- `Complaint_Analysis_Findings_and_Recommendations.pdf` — findings and recommendations.
- `dashboard_preview.png` — static dashboard mock-up, not a native Power BI report.
- `PowerBI_DAX_Measures.txt` and `POWER_BI_BUILD_GUIDE.md` — measures and build instructions.
- `AI_USAGE.md` — AI assistance disclosure.

## Key results
- 5,000 source rows; 25 duplicate complaint IDs removed; 4,975 unique complaints remain.
- 310 open and 4,665 closed complaints.
- Timely response rate: 90.08% of closed complaints.
- Average response time: 8.76 calendar days for closed complaints only.
- Most frequent product: Credit Card (1,191 complaints).
- Most frequent issue: Unexpected fees (545 complaints).

## Important status note
The dashboard PNG is a static preview. The actual interactive Power BI `.pbix` file has not yet been created and must be built in Power BI Desktop. The supplied SQL uses SQLite syntax. Open complaints are excluded from average response-time and timely-response calculations.

## Limitations
Company complaint volumes are not normalized by customer base or company size. Timely responses are not the same as customer satisfaction. October 2026 data is partial through 15 October.

