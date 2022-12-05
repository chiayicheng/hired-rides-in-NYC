
WITH 
weather_2014 AS 
(
    SELECT date(DATE) as date
    FROM daily_weather
    WHERE date between '2014-01-01' AND '2014-12-31'
    ORDER BY DailyAverageWindSpeed DESC
    LIMIT 10
),
trip AS
(
    SELECT date, COUNT(*) as number_of_trip
    FROM
    (
        SELECT date(tpep_pickup_datetime) AS date
        FROM taxi_trips
        WHERE tpep_pickup_datetime between '2014-01-01' AND '2014-12-31'
        UNION ALL
        SELECT date(pickup_datetime) AS date
        FROM uber_trips
        WHERE pickup_datetime between '2014-01-01' AND '2014-12-31'
    )
    GROUP BY date
)

SELECT weather_2014.date, trip.number_of_trip
FROM weather_2014
LEFT JOIN trip
ON weather_2014.date = trip.date
