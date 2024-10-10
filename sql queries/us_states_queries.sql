-- query to select all info in states table
SELECT *
FROM us_states

-- query to select total amount of cases and deaths for each state in 2020
SELECT 
    state,
    cases,
    deaths
FROM 
    us_states
WHERE 
    date = '2020-12-31'
ORDER BY
    cases DESC,
    deaths DESC


-- query to select total amount of cases and deaths for each state in 2021

WITH preveious_year_cases AS (
    SELECT
        state,
        cases,
        deaths
    FROM
        us_states
    WHERE
        date = '2020-12-31'
)

SELECT 
    us_states.state,
    us_states.cases - preveious_year_cases.cases as total_cases_2021,
    us_states.deaths - preveious_year_cases.deaths as total_deaths_2021
FROM 
    us_states
LEFT JOIN preveious_year_cases ON preveious_year_cases.state = us_states.state
WHERE 
    us_states.date = '2021-12-31'
ORDER BY
    us_states.cases DESC,
    us_states.deaths DESC

-- query to select total amount of cases and deaths for each state in 2022

WITH preveious_year_cases AS (
    SELECT
        state,
        cases,
        deaths
    FROM
        us_states
    WHERE
        date = '2021-12-31'
)

SELECT 
    us_states.state,
    us_states.cases - preveious_year_cases.cases as total_cases_2022,
    us_states.deaths - preveious_year_cases.deaths as total_deaths_2022
FROM 
    us_states
LEFT JOIN preveious_year_cases ON preveious_year_cases.state = us_states.state
WHERE 
    us_states.date = '2022-12-31' AND us_states.state = preveious_year_cases.state
ORDER BY
    us_states.cases DESC,
    us_states.deaths DESC

-- query to select total amount of cases and deaths for each state in 2023
WITH preveious_year_cases AS (
    SELECT
        state,
        cases,
        deaths
    FROM
        us_states
    WHERE
        date = '2022-12-31'
)

SELECT 
    us_states.state,
    us_states.cases - preveious_year_cases.cases as total_cases_2023,
    us_states.deaths - preveious_year_cases.deaths as total_deaths_2023
FROM 
    us_states
LEFT JOIN preveious_year_cases ON preveious_year_cases.state = us_states.state
WHERE 
    us_states.date = '2023-03-23' AND us_states.state = preveious_year_cases.state
ORDER BY
    us_states.cases DESC,
    us_states.deaths DESC
