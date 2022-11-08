USE airbnb;
SELECT id, listing_url, name, booked_out_30, price_int, revenue_30 FROM
	(SELECT *, DENSE_RANK() OVER (ORDER BY revenue_30 DESC) AS r FROM(
		SELECT id, listing_url, name, 30-availability_30 AS booked_out_30,
		CAST(REPLACE(price, '$', '') AS UNSIGNED) AS price_int,
		CAST(REPLACE(price, '$', '') AS UNSIGNED) * (30-availability_30) AS revenue_30
		FROM listings) x) x1
WHERE r <= 20



