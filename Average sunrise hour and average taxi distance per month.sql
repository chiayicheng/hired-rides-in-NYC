
WITH trip AS (
    SELECT MONTH , AVG(cal_distance) as average_distance
    FROM taxi_trips
    GROUP BY MONTH
)
SELECT trip.MONTH, CAST(AVG(CAST(Sun_weather.Sunrise/100 AS int)) AS int) as Sunrise_Hour, 
       trip.average_distance as Average_Distance_for_taix_trips
FROM Sun_weather
LEFT JOIN trip ON Sun_weather.MONTH=trip.MONTH
GROUP BY trip.MONTH
