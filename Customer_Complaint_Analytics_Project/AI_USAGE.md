# AI Usage and Verification

## AI assistance used
AI assistance was used to help:
- Inspect the supplied fictional complaint CSV and summarize its schema.
- Draft a reproducible data-cleaning workflow and cleaning-log descriptions.
- Generate explanatory SQL query examples for complaint volume, product/issue mix, monthly trends, response timeliness, and response duration.
- Draft the README, KPI definitions, findings, and recommendations.
- Create a static dashboard layout preview and report formatting.

## Human verification required
Before publishing or submitting:
1. Open the Excel workbook and inspect the `Cleaned_Data`, `Cleaning_Log`, and `Data_Dictionary` sheets.
2. Load `cleaned_complaints.csv` into a SQL database and execute each query in `complaint_analysis.sql`; compare returned values with the PDF.
3. Import the cleaned CSV into Power BI Desktop, create the required visuals and slicers, test slicer interactions, and save the `.pbix`.
4. Capture genuine screenshots of the SQL editor and Power BI report.
5. Review all interpretations and recommendations for accuracy.

## Important boundaries
- No real financial customer information is included; the source states records are fictional.
- The AI did not create or execute a native Power BI `.pbix` file.
- `dashboard_preview.png` is a static mock-up and must not be represented as an interactive Power BI dashboard.
- The SQL file is SQLite-oriented; adapt date functions if using another SQL engine.
- Final ownership and verification of the project remain with the student.
