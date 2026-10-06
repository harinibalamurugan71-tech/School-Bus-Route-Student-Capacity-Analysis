SELECT *
FROM public."bus 1";
SELECT COUNT(*) AS total_trips
FROM public."bus 1";
SELECT SUM(students_count) AS total_students
FROM public."bus 1";
SELECT ROUND(AVG(delay_minutes), 2) AS average_delay
FROM public."bus 1";
SELECT route,
       SUM(students_count) AS total_students
FROM public."bus 1"
GROUP BY route
ORDER BY total_students DESC;
SELECT route,
       ROUND(AVG(delay_minutes), 2) AS average_delay
FROM public."bus 1"
GROUP BY route
ORDER BY average_delay DESC;
SELECT COUNT(*) AS overcrowded_trips
FROM public."bus 1"
WHERE crowd_status = 'Overcrowded';
SELECT bus_id,
       SUM(students_count) AS total_students
FROM public."bus 1"
GROUP BY bus_id
ORDER BY total_students DESC;
SELECT day,
       ROUND(AVG(delay_minutes), 2) AS average_delay
FROM public."bus 1"
GROUP BY day
ORDER BY average_delay DESC;
SELECT route,
       ROUND(AVG(occupancy), 2) AS average_occupancy
FROM public."bus 1"
GROUP BY route
ORDER BY average_occupancy DESC;
SELECT trip_id,
       route,
       bus_id,
       delay_minutes
FROM public."bus 1"
ORDER BY delay_minutes DESC;
SELECT trip_id,
       route,
       bus_id,
       students_count,
       capacity,
       occupancy
FROM public."bus 1"
WHERE students_count > capacity;
SELECT crowd_status,
       COUNT(*) AS trip_count
FROM public."bus 1"
GROUP BY crowd_status;
SELECT COUNT(*) AS total_rows
FROM public."bus 1";