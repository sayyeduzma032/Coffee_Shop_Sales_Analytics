☕ Coffee Shop Sales Analytics

📌 Project Overview

This project presents an end-to-end retail sales analytics solution for a coffee shop chain using Excel, MySQL, and Power BI. The objective is to transform raw transactional data into meaningful business insights that help stakeholders understand sales performance, customer purchasing trends, product performance, and store operations.

The project demonstrates the complete analytics workflow, from data cleaning and SQL-based business analysis to designing an interactive Power BI dashboard for data-driven decision-making.

📂 Dataset

The dataset contains over 149,000 coffee shop transactions with information such as:


Transaction ID
Transaction Date
Transaction Time
Quantity Sold
Store Location
Product Category
Product Type
Product Detail
Unit Price
Revenue


🛠 Tools & Technologies


Microsoft Excel
MySQL
Power BI
Git & GitHub


📈 Project Workflow

Step 1 – Data Cleaning (Excel)


Removed duplicate records
Checked for missing values
Verified data consistency
Prepared the dataset for SQL analysis


Step 2 – SQL Analysis (MySQL)
Imported the cleaned dataset into MySQL and used it to answer key business questions around revenue, store performance, product performance, and order timing (see Key Findings below).

Step 3 – Power BI Dashboard
Designed an interactive dashboard to visualize key business metrics and sales trends using KPI cards, charts, and slicers.

📊 Dashboard Highlights

The dashboard includes:


Total Revenue
Total Orders
Total Quantity Sold
Average Order Value
Average Unit Price
Monthly Revenue Trend
Revenue by Product Category
Revenue by Store Location
Top 10 Products by Revenue
Revenue by Day of Week
Orders by Hour
Interactive Month Filter


💼 Key Findings


Total revenue: $698.81K across 149K transactions, with 214K units sold
Top-performing store: Hell's Kitchen, generating $236.51K (33.8% of total revenue)
Average Order Value: $4.69 | Average Unit Price: $3.38
Top revenue category: Coffee, followed by Tea — together driving the majority of total revenue
Peak revenue day: Sunday ($101.68K), with weekday revenue relatively even across the rest of the week
Peak order volume: Concentrated in the 8–10 AM window, tapering off sharply after 12 PM
Revenue trend: Grew steadily from February through June, nearly doubling over the period


📁 Project Structure

Coffee-Shop-Sales-Analytics
│
├── Dataset
│   └── coffee_shop_sales.csv
│
├── Excel
│   └── Coffee_Shop_Sales_Cleaning.xlsx
│
├── SQL
│   └── Coffee_Shop_Sales_Queries.sql
│
├── Power BI
│   └── Coffee_Shop_Sales_Dashboard.pbix
│
├── Images
│   └── Dashboard.png
│
└── README.md

🚀 How to Run the Project

Excel
Open the dataset and review the cleaning process.

MySQL


Create a database.
Import the dataset.
Execute the SQL queries.


Power BI


Open the .pbix file.
Refresh the data source if required.
Explore the dashboard using the month slicer.


🎯 Skills Demonstrated


Data Cleaning
SQL (MySQL)
Data Aggregation
Business Analytics
KPI Development
Power BI Dashboard Design
Data Visualization
Data Storytelling


📷 Dashboard Preview

Dashboard screenshot available in the Images folder.

👩‍💻 Author

Uzma Sayyed
SQL • Power BI • Excel • Python • Data Visualization
