
CREATE TABLE IF NOT EXISTS taxi_trips
(
    id INTEGER PRIMARY KEY,
    DATE TIMESTAMP,
    tpep_pickup_datetime TIMESTAMP,
    tpep_dropoff_datetime TIMESTAMP,
    trip_distance FLOAT,
    tip_amount FLOAT,
    passenger_count INTEGER,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    cal_distance FLOAT,
    YEAR INTEGER, 
    MONTH INTEGER, 
    DAY INTEGER, 
    HOUR INTEGER,
    WEEK INTEGER
);

CREATE TABLE IF NOT EXISTS uber_trips
(
    id INTEGER PRIMARY KEY,
    pickup_datetime TIMESTAMP,
    pickup_longitude FLOAT,
    pickup_latitude  FLOAT,
    dropoff_longitude FLOAT, 
    dropoff_latitude FLOAT,
    passenger_count INTEGER,
    YEAR  INTEGER,
    MONTH  INTEGER, 
    DAY  INTEGER,
    HOUR  INTEGER,
    WEEK  INTEGER,
    cal_distance FLOAT
);

CREATE TABLE IF NOT EXISTS hourly_weather
(
    id INTEGER PRIMARY KEY,
    DATE TIMESTAMP,
    YEAR INTEGER,
    MONTH INTEGER,
    DAY INTEGER,
    WEEK INTEGER,
    HOUR INTEGER,
    HourlyPrecipitation FLOAT,
    HourlyWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS daily_weather
(
    id INTEGER PRIMARY KEY,
    DATE TIMESTAMP, 
    DailyPrecipitation FLOAT,
    DailyAverageWindSpeed FLOAT,
    YEAR INTEGER,
    MONTH INTEGER,
    DAY INTEGER,
    WEEK INTEGER  
);

CREATE TABLE IF NOT EXISTS Sun_weather
(
    id INTEGER PRIMARY KEY,
    DATE TIMESTAMP,
    YEAR INTEGER,
    MONTH INTEGER,
    DAY INTEGER,
    WEEK INTEGER,
    HOUR INTEGER,
    Sunrise FLOAT,
    Sunset FLOAT
);
