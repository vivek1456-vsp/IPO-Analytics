-- Total IPOs
SELECT COUNT(*) FROM ipo;

-- Average listing gain
SELECT AVG(Calculated_Gain_%) FROM ipo;

-- Top 10 IPO gains
SELECT IPO_Name, Calculated_Gain_%
FROM ipo
ORDER BY Calculated_Gain_% DESC
LIMIT 10;

-- Gain by Year
SELECT Year, AVG(Calculated_Gain_%) AS avg_gain
FROM ipo
GROUP BY Year
ORDER BY Year;

-- Subscription impact
SELECT AVG(QIB) AS avg_qib,
       AVG(Calculated_Gain_%) AS avg_gain
FROM ipo;
