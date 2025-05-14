SELECT species, ncbi_id
FROM taxonomy
WHERE species LIKE 'Panthera tigris%';

SELECT COUNT(DISTINCT species) AS number_of_tiger_types
FROM taxonomy
WHERE species LIKE 'Panthera tigris%';

SELECT ncbi_id
FROM taxonomy
WHERE species LIKE 'Panthera tigris sumatrae%';
