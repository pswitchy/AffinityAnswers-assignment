SELECT
    t.species AS rice_species,
    r.length AS dna_sequence_length
FROM
    rfamseq r
JOIN
    taxonomy t ON r.ncbi_id = t.ncbi_id
WHERE
    t.species LIKE 'Oryza%'
ORDER BY
    r.length DESC
LIMIT 1;
