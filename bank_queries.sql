
-- Conversion rate
SELECT y, COUNT(*) FROM bank_data GROUP BY y;

-- Average balance by subscription outcome
SELECT y, AVG(balance) FROM bank_data GROUP BY y;

-- Job vs subscription rate
SELECT job, 
       COUNT(*) FILTER (WHERE y = 'yes')::float / COUNT(*) AS conversion_rate
FROM bank_data
GROUP BY job
ORDER BY conversion_rate DESC;

-- Balance by marital status
SELECT marital,
       AVG(balance) AS avg_balance,
       COUNT(*) AS count
FROM bank_data_cleaned
GROUP BY marital;

