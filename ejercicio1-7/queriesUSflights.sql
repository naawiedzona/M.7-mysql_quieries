
SELECT COUNT(*) FROM USAirlineFlights.Flights;

SELECT Origin, AVG(ArrDelay), AVG(DepDelay) FROM USAirlineFlights.Flights GROUP BY Origin;

SELECT Origin, colYear, colMonth, AVG(ArrDelay) as prom_arribades FROM USAirlineFlights.Flights 
GROUP BY Origin, colYear, colMonth ORDER BY Origin;


SELECT City, colYear, colMonth, AVG(ArrDelay) as prom_arribades FROM USAirlineFlights.Flights
LEFT JOIN USAirlineFlights.USAirports ON USAirlineFlights.Flights.Origin = USAirlineFlights.USAirports.IATA
GROUP BY colMonth, colYear, City
ORDER BY City, colYear, colMonth;

SELECT UniqueCarrier, colYear, colMonth, sum(Cancelled) as total_cancelled FROM USAirlineFlights.Flights
where Cancelled > 0
group by UniqueCarrier, colYear, colMonth
order by total_cancelled desc;


SELECT USAirlineFlights.Flights.TailNum, SUM(USAirlineFlights.Flights.Distance) FROM USAirlineFlights.Flights
WHERE TailNum!='NA'
GROUP BY TailNum
ORDER BY SUM(USAirlineFlights.Flights.Distance) DESC
LIMIT 10;


SELECT UniqueCarrier, avg(arrDelay)as avgDelay FROM USAirlineFlights.Flights
group by UniqueCarrier
having avgDelay > 10
order by avgDelay desc;