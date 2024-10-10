SELECT *
FROM us;
--query to test how to gather all data from only the year 2020
SELECT *
FROM us
WHERE EXTRACT(YEAR FROM date) = 2020;

--Query to determine the total amount of cases from 2020
SELECT cases as total_cases_2020
FROM us
WHERE date = '2020-12-31'

-- query to determine the total amount of deaths from 2020
SELECT deaths as total_deaths_2020
FROM us
WHERE date = '2020-12-31'

--query to test how to gather all data from only the year 2021
SELECT *
FROM us
WHERE EXTRACT(YEAR FROM date) = 2021;

-- query to determine the total amount of cases from 2021
SELECT cases - (
    SELECT cases
    FROM us
    WHERE date = '2020-12-31'
) AS total_cases_2021
FROM us 
WHERE date = '2021-12-31'

-- query to determine the total amount of deaths from 2021
SELECT deaths - (
    SELECT deaths
    FROM us
    WHERE date = '2020-12-31'
) AS total_deaths_2021
FROM us 
WHERE date = '2021-12-31'

-- query to determine the total amount of cases from 2022
SELECT cases - (
    SELECT cases
    FROM us
    WHERE date = '2021-12-31'
) AS total_cases_2022
FROM us 
WHERE date = '2022-12-31'

-- query to determine the total amount of deaths from 2022
SELECT deaths - (
    SELECT deaths
    FROM us
    WHERE date = '2021-12-31'
) AS total_deaths_2022
FROM us 
WHERE date = '2022-12-31'

-- query to determine the total amount of cases from 2023
SELECT cases - (
    SELECT cases
    FROM us
    WHERE date = '2022-12-31'
) AS total_cases_2023
FROM us 
WHERE date = '2023-03-23'

-- query to determine the total amount of deaths from 2023
SELECT deaths - (
    SELECT deaths
    FROM us
    WHERE date = '2022-12-31'
) AS total_deaths_2023
FROM us 
WHERE date = '2023-03-23'

SELECT *
FROM us_counties

