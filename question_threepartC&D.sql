CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    );

CREATE TABLE series (
    series_id INT PRIMARY KEY,
    series_name VARCHAR(255) NOT NULL,
    genre VARCHAR(100)
);

CREATE TABLE directors (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(255) NOT NULL,
    years_of_experience INT
);

CREATE TABLE Episode (
    episode_id INT PRIMARY KEY,
    series_id INT FOREIGN KEY,
    episode_number INT,
    director_id INT FOREIGN KEY
    
);

CREATE TABLE Transmission (
    transmission_id INT PRIMARY KEY,
    episode_id INT,
    transmission_date DATE,
    transmission_time TIME,
    FOREIGN KEY (episode_id) REFERENCES Episode(episode_id)
);

-- d) Explain the following keys and give examples to illustrate

--  Foreign Key: Is a column in a table that establishes a relationship with the primary key in another table. 
-- For instance there's a relationship between series and episodes that is a serie can have many episodes and there's
-- a relationship between the episode and director whereby an episode can be directed by different directors
-- ILLUSTRATION
CREATE TABLE Episode (
    episode_id INT PRIMARY KEY,
    series_id INT FOREIGN KEY,
    episode_number INT,
    director_id INT FOREIGN KEY
    
);

-- Primary Key: Is a unique identifier of each row or record in the table. It ensures no two rows in a table have 
-- the same primary key value. For this case every actor has a unique id number that identifies them.
-- ILLUSTRATION
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL,
    date_of_birth DATE
    );





