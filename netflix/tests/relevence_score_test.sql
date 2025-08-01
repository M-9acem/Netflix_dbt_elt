-- Test for negative or zero relevance scores
-- SELECT
--     movie_id,
--     tag_id,
--     relevance_score
-- FROM {{ ref('fct_genome_scores') }}
-- WHERE relevance_score <= 0
-- Now that we have macros we'll do this instead
{{ no_nulls_in_columns(ref('fct_genome_scores'))}}