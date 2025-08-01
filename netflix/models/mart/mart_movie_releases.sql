{{
    config(
        matterialized='table'
    )
}}

WITH fct_ratings AS (
    SELECT  * FROM {{ ref('fct_ratings')}} 
),

seed_dates AS (
    SELECT * FROM {{ ref('seeds_movie_release_dates')}}
)

SELECT
    r.*,
    CASE
        WHEN d.release_date IS NULL THEN 'Unknown'
        ELSE 'known'
    END AS release_info
FROM fct_ratings r
LEFT JOIN seed_dates d ON r.movie_id = d.movie_id  

 