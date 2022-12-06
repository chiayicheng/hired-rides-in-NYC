
WITH weather AS
(
SELECT DATE(DATE) as day, HOUR AS time, 
      sum(HourlyPrecipitation) as Precipitation, avg(HourlyWindSpeed) as Wind_Speed
FROM hourly_weather
WHERE DATE between '2012-10-22' AND '2012-11-06'
GROUP BY day, time
),
trip AS
(
SELECT DATE(date) as date, HOUR as time, COUNT(*) as no_of_trips
FROM
(
SELECT DATE(tpep_pickup_datetime) as date, HOUR
FROM taxi_trips
WHERE date between '2012-10-22' AND '2012-11-06'
UNION ALL
SELECT DATE(pickup_datetime) as date, HOUR
FROM uber_trips
WHERE date between '2012-10-22' AND '2012-11-06'
)
GROUP BY date, HOUR
)

SELECT weather.day, weather.time, trip.no_of_trips, weather.Precipitation, weather.Wind_Speed
FROM weather
LEFT JOIN trip ON weather.time = trip.time AND weather.day = trip.date
ORDER BY weather.day
