SELECT
    f.rfam_acc AS family_accession_id,
    f.description AS family_name,
    MAX(rs.length) AS max_dna_sequence_length
FROM
    family f
JOIN
    full_region fr ON f.rfam_acc = fr.rfam_acc
JOIN
    rfamseq rs ON fr.rfamseq_acc = rs.rfamseq_acc
GROUP BY
    f.rfam_acc, f.description
HAVING
    MAX(rs.length) > 1000000
ORDER BY
    max_dna_sequence_length DESC
LIMIT 15
OFFSET 120;
