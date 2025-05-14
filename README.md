# AffinityAnswers-assignment

## Solution of question 1(in sql server)

![question 1](https://github.com/user-attachments/assets/65e0da7e-a752-489c-b436-6372a70c1959)
![question 1 part 2](https://github.com/user-attachments/assets/d0b26fa7-b855-42f7-92ff-4c9b0eeed5ab)

First it retrieves the species name and ncbi_id from the taxonomy table for all entries where the species name starts with "Panthera tigris", then counts the number of unique species in the taxonomy table whose names begin with "Panthera tigris", giving the total number of distinct tiger types.
Lastly, it selects the ncbi_id from the taxonomy table specifically for the entry where the species name is exactly "Panthera tigris sumatrae".


## Solution of question 2

![question 2, part1](https://github.com/user-attachments/assets/57205b9f-64b0-41ce-8102-411f48103089)

![question 2, part 2](https://github.com/user-attachments/assets/9a985500-a66d-4a95-85c0-1c684d341fb7)

This query inspects the database's own metadata (the INFORMATION_SCHEMA). It joins tables that describe foreign key constraints (REFERENTIAL_CONSTRAINTS) and the columns involved in those keys (KEY_COLUMN_USAGE) to list all explicitly defined connections (foreign keys) within the 'Rfam' database, showing which column in one table references a column in another.


## Solution of question 3

![question 3](https://github.com/user-attachments/assets/c4e03169-5bad-44ec-bac2-57c8c3304213)

Joins the rfamseq table (containing sequence lengths) with the taxonomy table (containing species names) using ncbi_id. It then filters for species names starting with "Oryza" (rice), orders them by DNA sequence length in descending order, and picks the LIMIT 1 (top) result, which is the rice type with the longest sequence.


## Solution of question 4

![question 4](https://github.com/user-attachments/assets/180ea4e1-9b22-422b-b037-05be11e71e94)

Joins family, full_region, and rfamseq tables to link families to their DNA sequences and lengths. Then GROUP BY family to calculate the MAX(rs.length) (longest DNA sequence) for each family and HAVING filters these grouped results to include only families where this maximum length is greater than 1,000,000, ORDER BY sorts these families by their maximum DNA sequence length in descending order and lastly, LIMIT 15 OFFSET 120 retrieves 15 rows (one page) after skipping the first 120 rows (8 pages), effectively giving the 9th page of results.
