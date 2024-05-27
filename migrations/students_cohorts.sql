-- A cohort will have the following attributes:

-- id: A unique identifier
-- name: The name of the cohort
-- start_date: The cohorts' start date
-- end_date: The cohorts' end date


-- A student will have the following attributes:

-- id: A unique identifier
-- name: The full name of the student
-- email: The students' email address
-- phone: The students' phone number
-- github: The students' github profile url
-- start_date: The students' start date of the Bootcamp
-- end_date: The students' end date of the Bootcamp
-- cohort_id: The id of the cohort that the student is enrolled in

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);



-- https://discord.com/channels/687722968033525851/1244484449580875846