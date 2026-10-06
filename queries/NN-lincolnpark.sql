-- Q: What is the average nightly price in Lincoln Park?
SELECT ROUND(AVG(price), 2) AS avg_price
FROM listings
WHERE neighborhood = 'Lincoln Park';
-- verdict: don't trust. Because output from SQL is coming out as 0, rather than expected number ~$220-320 range
