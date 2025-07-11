-- Remove 'unknown' values in education
UPDATE bank_data
SET education = NULL
WHERE education = 'unknown';

-- Fix job names to lowercase
UPDATE bank_data
SET job = LOWER(job);

-- Remove extra whitespace from contact column
UPDATE bank_data
SET contact = TRIM(contact);

-- Encode the target column
CREATE OR REPLACE VIEW bank_data_encoded AS
SELECT *,
    CASE WHEN y = 'yes' THEN 1 ELSE 0 END AS target
FROM bank_data;

-- Remove nulls
CREATE OR REPLACE VIEW bank_data_cleaned AS
SELECT *
FROM bank_data_encoded
WHERE job IS NOT NULL AND education IS NOT NULL;

