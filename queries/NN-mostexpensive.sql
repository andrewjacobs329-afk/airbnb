-- Q: What are the top 10 most expensive listings?
SELECT 
    id, 
    name, 
    neighborhood, 
    property_type, 
    accommodates, 
    price
FROM listings
ORDER BY price DESC
LIMIT 10;
-- verdict: don't trust. It it highly unlikely that there are no listings between $999.99 and $99.99