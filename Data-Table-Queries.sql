CREATE TABLE expenses (
    TransactionID INTEGER PRIMARY KEY,
    Date TEXT,
    Category TEXT,
    Description TEXT,
    Amount REAL,
    PaymentMethod TEXT
);

-- Example Query 1: Total amount spent
SELECT SUM(Amount) AS Total_Spent
FROM expenses;

-- Example Query 2: Total spent per category
SELECT Category, SUM(Amount) AS Category_Spend
FROM expenses
GROUP BY Category
ORDER BY Category_Spend DESC;

-- Example Query 3: Total spent per month
SELECT strftime('%Y-%m', Date) AS Month, SUM(Amount) AS Monthly_Spend
FROM expenses
GROUP BY Month
ORDER BY Month;

-- Example Query 4: Average transaction amount
SELECT AVG(Amount) AS Average_Transaction
FROM expenses;

-- Example Query 5: Largest single transaction
SELECT *
FROM expenses
ORDER BY Amount DESC
LIMIT 1;

-- Example Query 6: Spending by payment method
SELECT PaymentMethod, SUM(Amount) AS Total_By_Method
FROM expenses
GROUP BY PaymentMethod;

-- Example Query 7: Count of transactions per category
SELECT Category, COUNT(*) AS Transaction_Count
FROM expenses
GROUP BY Category;

-- Example Query 8: Total spent on Groceries only
SELECT SUM(Amount) AS Groceries_Total
FROM expenses
WHERE Category = 'Groceries';

-- Example Query 9: Daily average spending (total/number of days)
SELECT 
    ROUND(SUM(Amount) / COUNT(DISTINCT Date), 2) AS Avg_Daily_Spending
FROM expenses;

-- Example Query 10: Top 5 most frequent descriptions
SELECT Description, COUNT(*) AS Frequency
FROM expenses
GROUP BY Description
ORDER BY Frequency DESC
LIMIT 5;