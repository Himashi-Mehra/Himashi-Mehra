# Financial Services Customer Complaint Analytics

This project analyzes a fictional 5,000-row financial-services complaints dataset.

## Files in this GitHub folder
- `complaint_analysis.sql` — 10 explained SQLite queries.
- `PowerBI_DAX_Measures.txt` — KPI measures for Power BI.
- `POWER_BI_BUILD_GUIDE.md` — steps to build the interactive report.
- `AI_USAGE.md` — AI assistance and verification disclosure.

## Complete project bundle
The accompanying project ZIP contains the source CSV, cleaned CSV, cleaned Excel workbook with cleaning log and data dictionary, SQL execution-results workbook, charts, dashboard preview, analysis PDF, and all supporting documentation.

## Key results
- 5,000 source rows; 25 duplicate complaint IDs removed; 4,975 unique complaints remain.
- 310 open and 4,665 closed complaints.
- Timely response rate: 90.08% of closed complaints.
- Average response time: 8.76 calendar days for closed complaints only.
- Most frequent product: Credit Card (1,191 complaints).
- Most frequent issue: Unexpected fees (545 complaints).

## Power BI status
The dashboard preview is a static image, not a native Power BI report. The interactive `.pbix` file has not yet been created. It must be built in Power BI Desktop using the cleaned CSV and the supplied DAX measures/build guide.

## Limitations
Company complaint volumes are not normalized by customer base or company size. Timely responses are not the same as customer satisfaction. October 2026 data is partial through 15 October. The SQL file uses SQLite date functions; adapt them for another SQL engine.
