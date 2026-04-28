-- ============================================================
--  Finance Investment Survey — MySQL Tutorial
--  Author  : Sandro Fichaux
--  GitHub  : https://github.com/svndroo
--  Dataset : Finance_data.csv (40 respondents)
--  Levels  : Beginner → Advanced
-- ============================================================


-- ============================================================
--  PART 1 — DATABASE & TABLE SETUP
-- ============================================================

-- Create a dedicated database for this project
CREATE DATABASE IF NOT EXISTS finance_survey;

-- Select the database to run all subsequent queries against it
USE finance_survey;

-- Create the main table mirroring the CSV structure
CREATE TABLE investments (
    id                 INT AUTO_INCREMENT PRIMARY KEY, -- Unique auto-incremented identifier
    gender             VARCHAR(10),                    -- Respondent gender: "Male" or "Female"
    age                INT,                            -- Age in years
    investment_avenues VARCHAR(5),                     -- Actively investing? "Yes" / "No"
    mutual_funds       INT,                            -- Rank given to mutual funds (1 = most preferred)
    equity_market      INT,                            -- Rank given to equities
    debentures         INT,                            -- Rank given to debentures
    government_bonds   INT,                            -- Rank given to government bonds
    fixed_deposits     INT,                            -- Rank given to fixed deposits
    ppf                INT,                            -- Rank given to PPF (Public Provident Fund)
    gold               INT,                            -- Rank given to gold
    stock_market       VARCHAR(5),                     -- Invests in the stock market? "Yes" / "No"
    factor             VARCHAR(50),                    -- Main decision factor: "Returns", "Risk", "Locking Period"
    objective          VARCHAR(50),                    -- Investment objective: "Capital Appreciation", "Growth", "Income"
    purpose            VARCHAR(50),                    -- Purpose: "Wealth Creation", "Savings for Future", "Returns"
    duration           VARCHAR(20),                    -- Time horizon: "Less than 1 year", "1-3 years", etc.
    invest_monitor     VARCHAR(10),                    -- Monitoring frequency: "Daily", "Weekly", "Monthly"
    expect             VARCHAR(20),                    -- Expected return: "10%-20%", "20%-30%", "30%-40%"
    avenue             VARCHAR(50),                    -- Preferred product: "Mutual Fund", "Equity", etc.
    savings_objective  VARCHAR(50),                    -- Savings goal: "Retirement Plan", "Health Care", etc.
    reason_equity      VARCHAR(50),                    -- Reason for investing in equities
    reason_mutual      VARCHAR(50),                    -- Reason for investing in mutual funds
    reason_bonds       VARCHAR(50),                    -- Reason for investing in bonds
    reason_fd          VARCHAR(50),                    -- Reason for investing in fixed deposits
    source             VARCHAR(50)                     -- Source of financial information
);

-- Insert all 40 rows from the dataset
INSERT INTO investments (gender, age, investment_avenues, mutual_funds, equity_market, debentures, government_bonds, fixed_deposits, ppf, gold, stock_market, factor, objective, purpose, duration, invest_monitor, expect, avenue, savings_objective, reason_equity, reason_mutual, reason_bonds, reason_fd, source)
VALUES
('Female', 34, 'Yes', 1, 2, 5, 3, 7, 6, 4, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Safe Investment', 'Fixed Returns', 'Newspapers and Magazines'),
('Female', 23, 'Yes', 4, 3, 2, 1, 5, 6, 7, 'No', 'Locking Period', 'Capital Appreciation', 'Wealth Creation', 'More than 5 years', 'Weekly', '20%-30%', 'Mutual Fund', 'Health Care', 'Dividend', 'Better Returns', 'Safe Investment', 'High Interest Rates', 'Financial Consultants'),
('Male', 30, 'Yes', 3, 6, 4, 2, 5, 1, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Daily', '20%-30%', 'Equity', 'Retirement Plan', 'Capital Appreciation', 'Tax Benefits', 'Assured Returns', 'Fixed Returns', 'Television'),
('Male', 22, 'Yes', 2, 1, 3, 7, 6, 4, 5, 'Yes', 'Returns', 'Income', 'Wealth Creation', 'Less than 1 year', 'Daily', '10%-20%', 'Equity', 'Retirement Plan', 'Dividend', 'Fund Diversification', 'Tax Incentives', 'High Interest Rates', 'Internet'),
('Female', 24, 'No', 2, 1, 3, 6, 4, 5, 7, 'No', 'Returns', 'Income', 'Wealth Creation', 'Less than 1 year', 'Daily', '20%-30%', 'Equity', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Safe Investment', 'Risk Free', 'Internet'),
('Female', 24, 'No', 7, 5, 4, 6, 3, 1, 2, 'No', 'Risk', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Daily', '30%-40%', 'Mutual Fund', 'Retirement Plan', 'Liquidity', 'Fund Diversification', 'Safe Investment', 'Risk Free', 'Internet'),
('Female', 27, 'Yes', 3, 6, 4, 2, 5, 1, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Equity', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'High Interest Rates', 'Financial Consultants'),
('Male', 21, 'Yes', 2, 3, 7, 4, 6, 1, 5, 'Yes', 'Risk', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Male', 35, 'Yes', 2, 4, 7, 5, 3, 1, 6, 'Yes', 'Returns', 'Growth', 'Savings for Future', '1-3 years', 'Weekly', '20%-30%', 'Equity', 'Retirement Plan', 'Capital Appreciation', 'Fund Diversification', 'Safe Investment', 'Fixed Returns', 'Television'),
('Male', 31, 'Yes', 1, 3, 7, 4, 5, 2, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '30%-40%', 'Fixed Deposits', 'Retirement Plan', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Fixed Returns', 'Newspapers and Magazines'),
('Female', 35, 'Yes', 2, 4, 7, 5, 3, 1, 6, 'Yes', 'Risk', 'Growth', 'Savings for Future', '3-5 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Financial Consultants'),
('Male', 29, 'Yes', 2, 5, 7, 6, 3, 1, 4, 'Yes', 'Risk', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Fixed Returns', 'Financial Consultants'),
('Female', 21, 'No', 1, 2, 3, 4, 5, 6, 7, 'No', 'Returns', 'Capital Appreciation', 'Savings for Future', '1-3 years', 'Weekly', '20%-30%', 'Mutual Fund', 'Education', 'Dividend', 'Better Returns', 'Safe Investment', 'Risk Free', 'Internet'),
('Female', 28, 'Yes', 2, 3, 7, 4, 5, 1, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Female', 25, 'Yes', 2, 3, 7, 5, 4, 1, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Health Care', 'Dividend', 'Better Returns', 'Assured Returns', 'Risk Free', 'Financial Consultants'),
('Male', 27, 'Yes', 2, 3, 7, 5, 4, 1, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Health Care', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Female', 28, 'Yes', 3, 2, 7, 5, 4, 1, 6, 'Yes', 'Risk', 'Growth', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Health Care', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Risk Free', 'Television'),
('Male', 27, 'Yes', 3, 2, 7, 4, 5, 1, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Financial Consultants'),
('Male', 29, 'Yes', 3, 2, 7, 4, 5, 1, 6, 'Yes', 'Risk', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Male', 26, 'Yes', 3, 4, 6, 5, 1, 2, 7, 'Yes', 'Risk', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Health Care', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Male', 29, 'Yes', 2, 4, 7, 5, 3, 1, 6, 'Yes', 'Returns', 'Growth', 'Wealth Creation', '3-5 years', 'Weekly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Fixed Returns', 'Financial Consultants'),
('Female', 24, 'Yes', 2, 4, 5, 6, 3, 1, 7, 'Yes', 'Risk', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Equity', 'Health Care', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Male', 27, 'Yes', 3, 4, 6, 5, 2, 1, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Financial Consultants'),
('Male', 25, 'Yes', 2, 4, 6, 5, 3, 1, 7, 'Yes', 'Risk', 'Growth', 'Savings for Future', '3-5 years', 'Weekly', '20%-30%', 'Public Provident Fund', 'Health Care', 'Liquidity', 'Better Returns', 'Assured Returns', 'Risk Free', 'Financial Consultants'),
('Female', 26, 'Yes', 2, 3, 7, 5, 4, 1, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '30%-40%', 'Public Provident Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Female', 32, 'Yes', 3, 4, 7, 5, 1, 2, 6, 'Yes', 'Risk', 'Growth', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Fixed Returns', 'Financial Consultants'),
('Male', 26, 'Yes', 3, 4, 6, 5, 1, 2, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Mutual Fund', 'Retirement Plan', 'Dividend', 'Fund Diversification', 'Assured Returns', 'Fixed Returns', 'Financial Consultants'),
('Male', 31, 'Yes', 2, 3, 7, 6, 4, 1, 5, 'Yes', 'Risk', 'Growth', 'Savings for Future', '1-3 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Health Care', 'Capital Appreciation', 'Fund Diversification', 'Safe Investment', 'Fixed Returns', 'Television'),
('Male', 29, 'Yes', 2, 3, 6, 5, 1, 4, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Equity', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Television'),
('Female', 34, 'Yes', 5, 4, 3, 2, 7, 1, 6, 'Yes', 'Returns', 'Income', 'Returns', '3-5 years', 'Monthly', '10%-20%', 'Mutual Fund', 'Retirement Plan', 'Capital Appreciation', 'Tax Benefits', 'Safe Investment', 'Fixed Returns', 'Newspapers and Magazines'),
('Male', 27, 'Yes', 4, 5, 1, 2, 7, 3, 6, 'No', 'Returns', 'Growth', 'Wealth Creation', '1-3 years', 'Monthly', '10%-20%', 'Mutual Fund', 'Education', 'Capital Appreciation', 'Tax Benefits', 'Safe Investment', 'Fixed Returns', 'Television'),
('Female', 31, 'Yes', 2, 4, 7, 6, 3, 1, 5, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Fixed Returns', 'Financial Consultants'),
('Male', 27, 'Yes', 2, 4, 7, 5, 1, 3, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '30%-40%', 'Equity', 'Health Care', 'Capital Appreciation', 'Fund Diversification', 'Assured Returns', 'Fixed Returns', 'Newspapers and Magazines'),
('Male', 26, 'Yes', 2, 3, 6, 4, 1, 5, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Returns', '1-3 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Education', 'Dividend', 'Better Returns', 'Safe Investment', 'Risk Free', 'Newspapers and Magazines'),
('Male', 27, 'Yes', 2, 3, 6, 5, 4, 1, 7, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Weekly', '20%-30%', 'Mutual Fund', 'Health Care', 'Capital Appreciation', 'Better Returns', 'Safe Investment', 'Fixed Returns', 'Financial Consultants'),
('Male', 30, 'Yes', 1, 4, 6, 5, 3, 2, 7, 'Yes', 'Risk', 'Growth', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Health Care', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Fixed Returns', 'Financial Consultants'),
('Male', 30, 'Yes', 2, 4, 7, 5, 1, 3, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '1-3 years', 'Monthly', '20%-30%', 'Equity', 'Retirement Plan', 'Capital Appreciation', 'Better Returns', 'Assured Returns', 'Risk Free', 'Newspapers and Magazines'),
('Male', 25, 'Yes', 5, 4, 7, 6, 1, 2, 3, 'Yes', 'Risk', 'Growth', 'Savings for Future', '3-5 years', 'Monthly', '30%-40%', 'Public Provident Fund', 'Health Care', 'Capital Appreciation', 'Better Returns', 'Safe Investment', 'Fixed Returns', 'Financial Consultants'),
('Male', 31, 'Yes', 2, 4, 7, 5, 3, 1, 6, 'Yes', 'Risk', 'Growth', 'Wealth Creation', '1-3 years', 'Weekly', '20%-30%', 'Equity', 'Health Care', 'Dividend', 'Fund Diversification', 'Assured Returns', 'Fixed Returns', 'Newspapers and Magazines'),
('Male', 29, 'Yes', 4, 3, 5, 7, 2, 1, 6, 'Yes', 'Returns', 'Capital Appreciation', 'Wealth Creation', '3-5 years', 'Monthly', '20%-30%', 'Fixed Deposits', 'Retirement Plan', 'Dividend', 'Better Returns', 'Safe Investment', 'Fixed Returns', 'Financial Consultants');


-- ============================================================
--  PART 2 — BASIC QUERIES 
-- ============================================================

-- Retrieve all data
SELECT * FROM investments;

-- Count total respondents
SELECT COUNT(*) AS total_respondents FROM investments;

-- Select specific columns only
SELECT gender, age, avenue, expect FROM investments;

-- Filter: female respondents only
SELECT * FROM investments WHERE gender = 'Female';

-- Filter with multiple conditions
SELECT * FROM investments
WHERE gender = 'Male' AND age < 28;

-- Filter within a value range (BETWEEN)
SELECT * FROM investments
WHERE age BETWEEN 25 AND 30;

-- Filter with a list of values (IN)
SELECT * FROM investments
WHERE avenue IN ('Mutual Fund', 'Equity');

-- Search with a pattern (LIKE)
SELECT * FROM investments
WHERE source LIKE '%Financial%';

-- Sort by age ascending
SELECT gender, age, avenue FROM investments
ORDER BY age ASC;

-- Limit output to 5 rows
SELECT * FROM investments LIMIT 5;


-- ============================================================
--  PART 3 — AGGREGATION & GROUPING 
-- ============================================================

-- Count respondents by gender
SELECT gender, COUNT(*) AS count
FROM investments
GROUP BY gender;

-- Average, min and max age by gender
SELECT
    gender,
    ROUND(AVG(age), 1) AS avg_age,
    MIN(age)           AS min_age,
    MAX(age)           AS max_age
FROM investments
GROUP BY gender;

-- Preferred investment product by gender
SELECT gender, avenue, COUNT(*) AS count
FROM investments
GROUP BY gender, avenue
ORDER BY gender, count DESC;

-- Distribution of time horizons
SELECT duration, COUNT(*) AS count
FROM investments
GROUP BY duration
ORDER BY count DESC;

-- Most common expected return range
SELECT expect, COUNT(*) AS count
FROM investments
GROUP BY expect
ORDER BY count DESC;

-- Main decision factor distribution
SELECT factor, COUNT(*) AS count
FROM investments
GROUP BY factor
ORDER BY count DESC;

-- HAVING: only show gender/avenue pairs with more than 3 respondents
SELECT gender, avenue, COUNT(*) AS count
FROM investments
GROUP BY gender, avenue
HAVING count > 3
ORDER BY count DESC;

-- CASE WHEN: group savings objectives by age bracket
SELECT
    CASE
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 30 THEN '25-30'
        ELSE 'Over 30'
    END AS age_bracket,
    savings_objective,
    COUNT(*) AS count
FROM investments
GROUP BY age_bracket, savings_objective
ORDER BY age_bracket, count DESC;


-- ============================================================
--  PART 4 — FUNCTIONS & CALCULATIONS 
-- ============================================================

-- Average rank given to each product (lower = more preferred)
SELECT
    ROUND(AVG(mutual_funds), 2)     AS mutual_funds,
    ROUND(AVG(equity_market), 2)    AS equity_market,
    ROUND(AVG(debentures), 2)       AS debentures,
    ROUND(AVG(government_bonds), 2) AS government_bonds,
    ROUND(AVG(fixed_deposits), 2)   AS fixed_deposits,
    ROUND(AVG(ppf), 2)              AS ppf,
    ROUND(AVG(gold), 2)             AS gold
FROM investments;

-- CONCAT: combine gender and age group into a profile label
SELECT
    CONCAT(gender, ' - ', CASE WHEN age < 27 THEN 'Young' ELSE 'Senior' END) AS profile,
    COUNT(*) AS count
FROM investments
GROUP BY profile;

-- Percentage of stock market investors per gender
SELECT
    gender,
    COUNT(*) AS total,
    SUM(CASE WHEN stock_market = 'Yes' THEN 1 ELSE 0 END) AS stock_investors,
    ROUND(SUM(CASE WHEN stock_market = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS pct_stock
FROM investments
GROUP BY gender;


-- ============================================================
--  PART 5 — SUBQUERIES 
-- ============================================================

-- Respondents older than the overall average age
SELECT gender, age, avenue
FROM investments
WHERE age > (SELECT AVG(age) FROM investments)
ORDER BY age DESC;

-- Respondents who chose the most popular investment product
SELECT *
FROM investments
WHERE avenue = (
    SELECT avenue
    FROM investments
    GROUP BY avenue
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- Respondents with a mutual fund rank below average (i.e. prefer it more than most)
SELECT gender, age, mutual_funds
FROM investments
WHERE mutual_funds < (SELECT AVG(mutual_funds) FROM investments)
ORDER BY mutual_funds ASC;


-- ============================================================
--  PART 6 — WINDOW FUNCTIONS 
-- ============================================================

-- Rank respondents by age within each gender group
SELECT
    gender,
    age,
    avenue,
    RANK() OVER (PARTITION BY gender ORDER BY age DESC) AS age_rank
FROM investments;

-- Unique row number within each preferred product group
SELECT
    avenue,
    gender,
    age,
    ROW_NUMBER() OVER (PARTITION BY avenue ORDER BY age) AS row_in_group
FROM investments;

-- 3-row rolling average of mutual fund rank
SELECT
    id,
    gender,
    mutual_funds,
    ROUND(
        AVG(mutual_funds) OVER (
            ORDER BY id
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 2
    ) AS rolling_avg_3
FROM investments;

-- Each respondent's age vs average age within their gender
SELECT
    gender,
    age,
    ROUND(AVG(age) OVER (PARTITION BY gender), 1) AS avg_age_by_gender,
    age - ROUND(AVG(age) OVER (PARTITION BY gender), 1) AS age_gap
FROM investments
ORDER BY gender, age_gap DESC;


-- ============================================================
--  PART 7 — VIEWS & INDEXES 
-- ============================================================

-- Create a view for active investors only
CREATE VIEW active_investors AS
SELECT gender, age, avenue, expect, duration, savings_objective
FROM investments
WHERE investment_avenues = 'Yes' AND stock_market = 'Yes';

-- Query the view like a regular table
SELECT * FROM active_investors WHERE gender = 'Female';

-- Create an index to speed up queries on gender and avenue
CREATE INDEX idx_gender_avenue ON investments(gender, avenue);

-- List all indexes on the table
SHOW INDEX FROM investments;


-- ============================================================
--  PART 8 — CROSS ANALYSIS 
-- ============================================================

-- Pivot table: preferred product × investment time horizon
SELECT
    avenue,
    SUM(CASE WHEN duration = 'Less than 1 year' THEN 1 ELSE 0 END) AS less_1yr,
    SUM(CASE WHEN duration = '1-3 years'         THEN 1 ELSE 0 END) AS yr_1_3,
    SUM(CASE WHEN duration = '3-5 years'         THEN 1 ELSE 0 END) AS yr_3_5,
    SUM(CASE WHEN duration = 'More than 5 years' THEN 1 ELSE 0 END) AS more_5yr,
    COUNT(*) AS total
FROM investments
GROUP BY avenue
ORDER BY total DESC;

-- Typical investor profile by expected return range
SELECT
    expect,
    ROUND(AVG(age), 1)                                                          AS avg_age,
    COUNT(*)                                                                     AS count,
    ROUND(SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS pct_male,
    GROUP_CONCAT(DISTINCT avenue ORDER BY avenue SEPARATOR ' | ')                AS products_chosen
FROM investments
GROUP BY expect
ORDER BY expect;

-- Information source vs main decision factor
SELECT
    source,
    factor,
    COUNT(*) AS count
FROM investments
GROUP BY source, factor
ORDER BY source, count DESC;

-- Top savings objective by gender and monitoring frequency
SELECT
    gender,
    invest_monitor,
    savings_objective,
    COUNT(*) AS count
FROM investments
GROUP BY gender, invest_monitor, savings_objective
HAVING count > 1
ORDER BY gender, invest_monitor, count DESC;