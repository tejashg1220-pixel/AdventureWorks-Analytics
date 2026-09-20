# AdventureWorks Sales & Profitability Analytics

An end-to-end Data Analytics portfolio project using **Python, PostgreSQL, SQL, Power BI, and DAX** to analyze sales performance, profitability, customer behavior, product performance, geography, and returns.

---

## 📌 Project Overview

This project analyzes the AdventureWorks sales dataset to transform raw transactional data into actionable business insights.

The project follows a complete analytics workflow:

**Raw CSV Data → Python Data Cleaning & EDA → PostgreSQL SQL Analysis → Power BI Data Model → DAX Measures → Interactive Dashboard → Business Insights**

The analysis covers:

- Sales and revenue performance
- Gross profit and profitability
- Product and category performance
- Customer purchasing behavior
- Customer segmentation
- Income-based customer analysis
- Geographic performance
- Product returns
- Return rates
- Estimated profit impact from returns

---

## 🎯 Business Objectives

The project aims to answer key business questions such as:

1. How are revenue and gross profit changing over time?
2. Which product categories and subcategories generate the most revenue?
3. Which products are the strongest revenue and profit contributors?
4. How important are repeat customers?
5. How does customer income relate to customer value?
6. Which countries and territories generate the most sales?
7. Which products and categories have higher return rates?
8. What is the estimated gross-profit impact of returned products?
9. What data-quality issues exist in the source data?

---

## 🗂️ Dataset

The project uses the Microsoft AdventureWorks sample dataset.

The original dataset contains 10 CSV files:

### Fact Tables

- `Sales2015.csv`
- `Sales-2016.csv`
- `Sales-2017.csv`
- `Returns.csv`

### Dimension Tables

- `Customers.csv`
- `Products.csv`
- `Product-Subcategories.csv`
- `Product-Categories.csv`
- `Calendar.csv`
- `Territories.csv`

---

## 📊 Dataset Scale

After combining the three sales files:

| Metric | Value |
|---|---:|
| Sales Rows | 56,046 |
| Unique Orders | 25,164 |
| Unique Customers | 17,416 |
| Unique Products Sold | 130 |
| Units Sold | 84,174 |
| Returned Units | 1,828 |
| Return Rate | 2.17% |

The sales data covers:

**January 2015 – June 2017**

> Note: 2017 contains only January–June data, so full-year comparisons between 2017 and previous complete years should be avoided.

---

# 🔄 Project Workflow

```text
Raw CSV Files
      ↓
Python / Pandas
      ↓
Data Cleaning & Validation
      ↓
Cleaned CSV Files
      ↓
PostgreSQL
      ↓
SQL Analysis
      ↓
Power BI
      ↓
Data Modeling
      ↓
DAX Measures
      ↓
Interactive Dashboard
      ↓
Business Insights