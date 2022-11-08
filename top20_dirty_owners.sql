USE airbnb;
SELECT host_id, host_url, host_name, COUNT(*) AS dirty_reviews_num FROM listings l
INNER JOIN reviews r ON l.id = r.listing_id
WHERE comments LIKE "%dirt%" OR comments LIKE "%гряз%" 
GROUP BY host_id, host_url, host_name
ORDER BY dirty_reviews_num DESC
LIMIT 20;
