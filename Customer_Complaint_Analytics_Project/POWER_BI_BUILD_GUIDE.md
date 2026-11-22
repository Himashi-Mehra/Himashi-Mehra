# Power BI completion checklist

1. Open Power BI Desktop and select Get Data > Text/CSV.
2. Import `cleaned_complaints.csv`.
3. In Power Query, confirm date types for `date_received`, `response_due_date`, and `date_company_responded`; set `response_days` to Whole Number.
4. Create the DAX measures in `PowerBI_DAX_Measures.txt`.
5. Add five Card visuals: Total Complaints, Open Complaints, Closed Complaints, Timely Response Rate, Average Response Time (Days).
6. Add a Line chart: `date_received` (Month) on X-axis, Total Complaints on Y-axis.
7. Add a bar chart: `financial_product` and Total Complaints.
8. Add a bar chart: `issue_category` and Total Complaints.
9. Add a column/bar chart: `company_name` and Timely Response Rate.
10. Add slicers for `date_received`, `company_name`, and `financial_product`.
11. Test each slicer and confirm all visuals respond.
12. Save as `Complaint_Experience_Report.pbix` and capture a screenshot of the complete report.

The supplied `dashboard_preview.png` is a static visual guide, not a Power BI report file. The `.pbix` must be created and saved in Power BI Desktop.
