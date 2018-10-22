--What is the average trip duration, by end station?--
SELECT 
	zip,
	maxtemperaturef
FROM 
	weather
WHERE maxtemperaturef = 
	(SELECT 
		MAX(maxtemperaturef)
	FROM 
		weather);
		
--How many trips started at each station?--
SELECT
	start_station,
	COUNT(start_station)
FROM 
	trips
GROUP BY start_station;

--What is the average trip duration, by end station?--
SELECT
	end_station,
	AVG(duration) AS Average_Duration
FROM 
	trips
GROUP BY end_station;

--What's the shortest trip that happened?--
SELECT
	*
FROM 
	trips
WHERE duration = 
	(SELECT 
	 	MIN(duration)
	 FROM 
	 	trips);
		
