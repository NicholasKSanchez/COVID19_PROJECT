CREATE TABLE us (
    date DATE,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_states (
    date DATE,
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_counties (
    date DATE,
    county VARCHAR(255),
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_counties_2020 (
    date DATE,
    county VARCHAR(255),
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_counties_2021 (
    date DATE,
    county VARCHAR(255),
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_counties_2022 (
    date DATE,
    county VARCHAR(255),
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_counties_2023 (
    date DATE,
    county VARCHAR(255),
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);

CREATE TABLE us_counties_recent (
    date DATE,
    county VARCHAR(255),
    state VARCHAR(255),
    fips INTEGER,
    cases INTEGER,
    deaths INTEGER
);