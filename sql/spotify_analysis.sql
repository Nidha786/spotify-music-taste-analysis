-- View all records
SELECT * FROM spotify_cleaned;

DELETE FROM spotify_cleaned
WHERE rowid = 1;

-- Average Tempo
SELECT ROUND(AVG(tempo),2) AS Average_Tempo
FROM spotify_cleaned;

-- Average Energy
SELECT ROUND(AVG(energy),2) AS Avg_Energy
FROM spotify_cleaned;

-- Average Danceability
SELECT ROUND(AVG(danceability),2) AS Avg_Danceability
FROM spotify_cleaned;

-- Average Loudness
SELECT ROUND(AVG(loudness),2) AS Avg_Loudness
FROM spotify_cleaned;

-- Average speechiness
SELECT ROUND(AVG(speechiness),2) AS Avg_Speechiness
FROM spotify_cleaned;

-- Average liveness
SELECT ROUND(AVG(liveness),2) AS Avg_Liveness
FROM spotify_cleaned;

-- Average valence
SELECT ROUND(AVG(valence),2) AS Avg_Valence
FROM spotify_cleaned;

-- Audio Features by Liked Status
SELECT
    liked,
    ROUND(AVG(tempo),2) AS Avg_Tempo,
    ROUND(AVG(energy),2) AS Avg_Energy,
    ROUND(AVG(danceability),2) AS Avg_Danceability
FROM spotify_cleaned
GROUP BY liked;

-- Tempo Summary Table
SELECT
    ROUND(AVG(CAST(tempo AS REAL)),2) AS Average,
    MAX(CAST(tempo AS REAL)) AS Maximum,
    MIN(CAST(tempo AS REAL)) AS Minimum
FROM spotify_cleaned;

-- Duration_ms Summary Table
SELECT
    ROUND(AVG(CAST(duration_ms AS REAL)),2) AS Duration,
    MAX(CAST(duration_ms AS REAL)) AS Maximum,
    MIN(CAST(duration_ms AS REAL)) AS Minimum
FROM spotify_cleaned;

-- Energy vs Danceability (Scatter Plot)
SELECT
energy,
danceability
FROM spotify_cleaned;

-- Valence vs Energy (Scatter Plot)
SELECT
energy,
valence
FROM spotify_cleaned;

-- Advanced Features by Liked (Bar Chart)
SELECT
liked,
ROUND(AVG(loudness),2) AS Avg_Loudness,
ROUND(AVG(speechiness),2) AS Avg_Speechiness,
ROUND(AVG(liveness),2) AS Avg_Liveness,
ROUND(AVG(valence),2) AS Avg_Valence
FROM spotify_cleaned
GROUP BY liked;

-- Acousticness vs Instrumentalness (Bar chart)
SELECT
ROUND(AVG(acousticness),2) AS Avg_Acousticness,
ROUND(AVG(instrumentalness),2) AS Avg_Instrumentalness
FROM spotify_cleaned;
