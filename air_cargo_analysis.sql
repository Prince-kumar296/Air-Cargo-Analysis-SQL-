-- Air Cargo Analysis SQL Queries

-- 1. Top 5 busiest routes by passengers
SELECT route, SUM(passengers) AS total_passengers
FROM air_cargo
GROUP BY route
ORDER BY total_passengers DESC
LIMIT 5;

-- 2. Revenue trend over time (monthly)
SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(revenue) AS total_revenue
FROM air_cargo
GROUP BY month
ORDER BY month;

-- 3. Average revenue per route
SELECT route, AVG(revenue) AS avg_revenue
FROM air_cargo
GROUP BY route
ORDER BY avg_revenue DESC;

-- 4. Customer complaints per route
SELECT route, SUM(complaints) AS total_complaints
FROM air_cargo
GROUP BY route
ORDER BY total_complaints DESC;

-- 5. Complaint rate (complaints per 100 passengers)
SELECT route,
       (SUM(complaints) * 100.0 / SUM(passengers)) AS complaint_rate
FROM air_cargo
GROUP BY route
ORDER BY complaint_rate DESC;
