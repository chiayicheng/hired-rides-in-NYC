

SELECT date, COUNT(*) as number_of_trips, AVG(trip_distance) as average_distance 
FROM
(
    SELECT date(tpep_pickup_datetime) AS date, trip_distance
    FROM taxi_trips
    UNION ALL
    SELECT date(pickup_datetime) AS date, cal_distance as trip_distance
    FROM uber_trips
)
WHERE date between '2009-01-01' AND '2009-12-31'
GROUP BY date
ORDER BY number_of_trips DESC
LIMIT 10

