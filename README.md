# Sales & Profitability Analytics Dashboard



## Executive Summary

An end-to-end sales analytics solution designed to help management understand revenue, profitability, discounting behaviour and regional performance.

The project analyses more than 51,000 historical sales records and transforms transactional data into management-level insights.

# The central business question is:

Where is the business generating revenue, where is margin being lost, and what actions could improve profitability?

---

# Dashboard Preview


## 🗂️ Interactive Enterprise Dashboard


<img width="931" height="576" alt="dashboard preview" src="https://github.com/user-attachments/assets/561a32fe-804d-4726-acc8-e25daa4be3fa" />

<img width="928" height="541" alt="over time profits " src="https://github.com/user-attachments/assets/b64c2bae-526b-4ad4-af6e-2375a689d622" />

---

Business Problem

Revenue growth does not automatically mean profitable growth.

Sales teams may increase revenue through aggressive discounting while simultaneously reducing margins.

This analysis investigates:

Which products generate the strongest margins?
How does discounting affect profitability?
Which regions perform well?
Which product categories create margin pressure?
Where should management focus corrective action?
Dataset

# The dataset contains more than 51,000 historical sales records covering:

Sales transactions
Product categories
Regions
Revenue
Costs
Profit
Discounts
Customer and order information
Analytical Workflow
Raw Sales Data
      ↓
Data Cleaning
      ↓
Python Transformation
      ↓
PostgreSQL Analytics
      ↓
Profitability Analysis
      ↓
Power BI Dashboard
      ↓
Management Recommendations
Key Findings
Discount & Margin Relationship

The analysis identifies a strong relationship between higher discount levels and declining profitability.

At higher discount levels, revenue may continue to increase while profit margins deteriorate.

Profitability Concentration

Profitability varies significantly across product categories and regions.

This indicates that sales performance should be evaluated using both revenue and margin metrics.

Regional Performance

The regional analysis identifies areas where product mix and distribution economics create different profitability outcomes.

Business Recommendations
Monitor discount levels alongside revenue rather than evaluating sales performance using revenue alone.
Establish discount thresholds for products or customer segments where margins become unacceptable.
Evaluate regional performance using both revenue and profitability.
Prioritise high-margin products in sales and promotional strategies.
Create management alerts for significant margin deterioration.
Management KPIs

# The dashboard supports monitoring of:

Total Sales
Total Profit
Profit Margin
Discount %
Orders
Average Order Value
Sales by Region
Profit by Product Category
Sales Growth
Profit Trend
Business Value

# This type of sales analytics solution can help management:

Identify margin leakage
Understand discount impact
Compare regional profitability
Identify high-performing products
Improve sales decision-making
Establish profitability monitoring
Technology

SQL: PostgreSQL


Python: Pandas, NumPy, Matplotlib


BI: Power BI


Analytics: Sales Analysis, Profitability Analysis, Margin Analysis, Regional Analysis


Repository Structure

Sales_Profitability_Analytics/
│
├── README.md
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   └── sales_analysis.sql
│
├── notebooks/
│   └── sales_analysis.ipynb
│
├── dashboard/
│   └── README.md
│
├── screenshots/
│   ├── dashboard_preview.png
│   └── profit_over_time.png
│
└── documentation/
    └── project_report.pdf


GitHub Code
SQL Analysis
Python Analysis
Disclaimer

This is a portfolio analytics project using historical dataset information. The recommendations demonstrate how sales and profitability analytics can support business decisions and do not represent measured results from a real client engagement.

Author

Asim Chakraborty

Data Analyst | SQL | Power BI | Excel | Python





