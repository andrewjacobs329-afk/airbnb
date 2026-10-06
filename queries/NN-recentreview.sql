-- Q: What is the most recent review?
SELECT 
    r.id,
    r.listing_id,
    r.date_reviewed,
    r.reviewer_name,
    l.name AS listing_name,
    l.neighborhood
FROM reviews r
JOIN listings l ON r.listing_id = l.id
ORDER BY r.date_reviewed DESC
LIMIT 1;
-- verdict: trust. Because date of review is October 18, 2021, and the dataset goes up to October 2021