
WITH hired_trip_2013_7 AS (
    SELECT cal_distance FROM taxi_trips
    WHERE tpep_pickup_datetime between '2013-07-01' AND '2013-07-31'
    UNION ALL
    SELECT cal_distance FROM uber_trips 
    WHERE pickup_datetime between '2013-07-01' AND '2013-07-31'
)
SELECT cal_distance
FROM hired_trip_2013_7
ORDER BY cal_distance ASC
LIMIT 1
OFFSET (SELECT COUNT(*) FROM hired_trip_2013_7) * 95/100 - 1;
