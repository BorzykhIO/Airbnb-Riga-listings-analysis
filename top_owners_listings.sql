USE airbnb;
SELECT host_name, host_url, listings_per_host, revenue_30, ROUND((sum_available_30)/listings_per_host, 1) AS avg_occupation_30 FROM (
	SELECT host_name, host_url, SUM(30-availability_30) AS sum_available_30, COUNT(*) AS listings_per_host,
    CAST(REPLACE(price, '$', '') AS UNSIGNED) * (30-availability_30) as revenue_30 FROM listings
	GROUP BY host_name, host_url) x
ORDER BY listings_per_host DESC

