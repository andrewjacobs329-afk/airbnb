-- Q: Which individual host, a person rather than a company, has the most listings?
SELECT 
    host_name, 
    COUNT(*) AS listing_count
FROM listings
WHERE host_name IS NOT NULL
  AND host_name NOT LIKE '%LLC%'
  AND host_name NOT LIKE '%Inc%'
  AND host_name NOT LIKE '%Corp%'
  AND host_name NOT LIKE '%Hospitality%'
  AND host_name NOT LIKE '%Suites%'
  AND host_name NOT LIKE '%Management%'
  AND host_name NOT LIKE '%Group%'
  AND host_name NOT LIKE '%Stays%'
  AND host_name NOT LIKE '%Properties%'
  AND host_name NOT LIKE '%Vacation%'
  AND host_name NOT LIKE '%Rentals%'
  AND host_name NOT LIKE '%&%'
  AND host_name NOT LIKE '% and %'
GROUP BY host_name
ORDER BY listing_count DESC
LIMIT 10;
-- verdict: don't trust. Because top result 'Blueground' is likely a company not an individual