# 📊 Finance Investment Survey — MySQL Tutorial

A fully annotated SQL file progressing from **beginner to advanced**, built on a real financial investment behaviour survey dataset (40 respondents).

---

## 📁 Dataset

`Finance_data.csv` contains survey responses about investment habits and preferences.

| Column | Description |
|---|---|
| `gender` | Respondent gender |
| `age` | Age in years |
| `avenue` | Preferred product (Mutual Fund, Equity, Fixed Deposits...) |
| `factor` | Main decision factor (Returns, Risk, Locking Period) |
| `expect` | Expected return range (10%-20%, 20%-30%, 30%-40%) |
| `duration` | Investment time horizon |
| `savings_objective` | Goal (Retirement Plan, Health Care, Education...) |
| `mutual_funds` ... `gold` | Rank given to each product (1 = most preferred, 7 = least) |

---

## 🗂️ File Structure

### Part 1 — Setup 
- Database and table creation
- Full dataset insertion (40 rows)

### Part 2 — Basic queries 
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `LIKE`, `IN`, `BETWEEN`

### Part 3 — Aggregation & grouping 
- `GROUP BY`, `HAVING`, `COUNT`, `AVG`, `MIN`, `MAX`
- `CASE WHEN` for age brackets

### Part 4 — Functions & calculations 
- Average rank comparison across all investment products
- `CONCAT`, `ROUND`, conditional `SUM` for percentage calculation

### Part 5 — Subqueries 
- Respondents above average age
- Most popular product via subquery
- Preference scoring below average

### Part 6 — Window functions 
- `RANK()`, `ROW_NUMBER()` with `PARTITION BY`
- 3-row rolling average with `ROWS BETWEEN`
- Age gap vs group average

### Part 7 — Views & indexes 
- View `active_investors` for filtered reuse
- Index on `(gender, avenue)` for query optimisation

### Part 8 — Cross analysis 
- Pivot table: product × time horizon using `SUM(CASE WHEN)`
- Investor profile by expected return with `GROUP_CONCAT`
- Source of information vs decision factor

---

## 🚀 Getting started

```bash
# 1. Clone the repo
git clone https://github.com/svndroo/Finance-data-MySQL

# 2. Connect to MySQL
mysql -u root -p

# 3. Run the file
source finance_mysql.sql
```

Or import via **MySQL Workbench**: `File > Run SQL Script`

---

## 🛠️ Requirements

- MySQL 8.0+ (window functions require MySQL 8+)
- Any SQL client (MySQL Workbench, DBeaver, DataGrip...)

---

## 💡 Key insights from the dataset

- **88%** of respondents actively invest
- **Mutual Fund** is the most preferred product
- Most respondents target a **20%-30%** return
- Preferred time horizon: **1-3 years**
- **Returns** is the dominant decision factor over Risk

---

## 👤 Author

**Sandro Fichaux**  
Master of Science in Artificial Intelligence — Ynov Aix-en-Provence  
Quantitative Finance — ESCP Business School & Warwick Business School

[![GitHub](https://img.shields.io/badge/GitHub-svndroo-181717?style=flat&logo=github)](https://github.com/svndroo)

---

## 📂 Other projects

| Project | Description | Stack |
|---|---|---|
| [data-science](https://github.com/svndroo/data-science) | Daily data science projects | Python, Pandas, Seaborn |
| [Finance-Loan-approval](https://github.com/svndroo/Finance-Loan-approval-Prediction-Data) | Loan approval prediction model | Python, Scikit-Learn |
| [cleaning-data-using-pandas](https://github.com/svndroo/cleaning-data-using-pandas) | Data cleaning practice | Python, Pandas |
