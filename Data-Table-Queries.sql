Query 1
# Order by Category and amount spent in descending order and display the description on each purchase

SELECT Category, Description, SUM(Amount) FROM expenses_sample
GROUP BY Description
ORDER BY Category, Amount DESC;

Query 2
# Order by most recent date and amount spent, display date, description, amount, and payment method

SELECT Date, Description, Amount, PaymentMethod from expenses_sample
ORDER BY date DESC, Amount;

Query 3
# Order by most recent date for cash transactions

SELECT Date, Description, Amount, PaymentMethod from expenses_sample
WHERE PaymentMethod = 'Cash'
ORDER BY Date DESC;

Query 4
# Total spent per category - new table name created called 'Category_Spend'

SELECT Category, Amount As Category_Spend from expenses_sample
GROUP BY Category
ORDER BY Category_Spend DESC;

