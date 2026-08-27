# E-Commerce Sales Analysis 2023-2024

**Author:** Ewelina Silina  
**Tools:** PostgreSQL · SQL · Looker Studio  
**Dataset:** 5,000 orders | 6 product categories | 10 European markets  

📊 **[View Interactive Dashboard](https://datastudio.google.com/u/0/reporting/2b535f96-a09e-4861-8126-161a15114ad9/page/2ZV4F)**

---

## Project Overview

This project presents a comprehensive sales analysis for a fictional European e-commerce company. The goal was to answer key business questions using SQL queries and visualize the findings in an interactive Looker Studio dashboard.

The analysis covers two full years of transactional data (2023–2024) including orders, revenue, customer segments, product categories, acquisition channels, and geographic markets.

---

## Business Questions Answered

1. Which product categories drive the most revenue and margin?
2. What does the month-over-month sales trend look like in 2023 vs 2024?
3. Which acquisition channels bring the most valuable customers?
4. What is the cancellation rate by product category?
5. Who are our most valuable customers - new vs returning?
6. Which countries generate the most revenue and how does order value differ?

---

## Key Findings

- **Electronics** is the top-performing category with over €959K in revenue (46.4% gross margin)
- **Direct** channel generates the highest average order value despite fewer orders
- **Books** has the lowest cancellation rate, while **Clothing** shows the highest
- **Returning customers** have a slightly lower average order value than new customers
- **Germany** leads in total revenue among all 10 European markets
- **Sweden** has the highest average order value (€337) despite ranking 6th in total revenue

---

## Files in This Repository

| File | Description |
|------|-------------|
| `queries.sql` | 6 SQL queries answering the business questions above |
| `query1_categories.csv` | Revenue and margin by product category |
| `query2_monthly_trend.csv` | Month-over-month revenue trend |
| `query3_channels.csv` | Performance by acquisition channel |
| `query4_cancellation.csv` | Cancellation rate by category |
| `query5_customers.csv` | New vs returning customer analysis |
| `query6_countries.csv` | Revenue and order value by country |

---

## Dashboard

The interactive dashboard was built in **Looker Studio** and consists of two pages:

**Page 1 - Overview**
- Revenue by Category (bar chart)
- Monthly Revenue Trend (line chart)
- Revenue by Acquisition Channel (pie chart)

**Page 2 - Deep Dive**
- Revenue and Order Value by Country (table)
- Cancellation Rate by Category (horizontal bar chart)
- New vs Returning Customers Revenue (bar chart)

👉 [Open Dashboard](https://datastudio.google.com/u/0/reporting/2b535f96-a09e-4861-8126-161a15114ad9/page/2ZV4F)

---

## Technical Details

- **Database:** PostgreSQL 17 (local)
- **Query tool:** pgAdmin 4
- **Visualization:** Looker Studio (Google Data Studio)
- **Dataset size:** 5,000 orders, 60 products, 1,800 unique customers
- **Time period:** January 2023 - December 2024
