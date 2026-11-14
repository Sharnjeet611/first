CREATE DATABASE STUDENTS;
USE STUDENTS;
SELECT * FROM `CLEANED DATA 2`;
DESCRIBE `Cleaned Data 2`;

SELECT DISTINCT `Verification Status`
            FROM `Cleaned Data 2`;
            
SELECT COUNT(*) AS Total_Verified_Students
             FROM `Cleaned Data 2`
              WHERE `Verification Status` = 'Verified';

            
SELECT
    `Preferred Internship Domain`,
    SUM(CASE WHEN `Internship Interested? (Yes/No)` = 'Yes' THEN 1 ELSE 0 END) AS Interested,
    SUM(CASE WHEN `Internship Interested? (Yes/No)` = 'No' THEN 1 ELSE 0 END) AS Not_Interested
     FROM `Cleaned Data 2`
      GROUP BY `Preferred Internship Domain`;
      
SELECT   State,  City,
    COUNT(*) AS Total_Students
FROM `Cleaned Data 2`
GROUP BY State, City
ORDER BY State, Total_Students DESC;

SELECT State ,
              COUNT(*) AS Total_Students
             FROM `Cleaned Data 2`
              GROUP BY STATE
              order by Total_Students desc;
              
SELECT
    'Education-wise Student Distribution' AS Report_Title;

SELECT
    `Education Qualification`,
    COUNT(*) AS Total_Students
FROM `Cleaned Data 2`
GROUP BY `Education Qualification`
ORDER BY Total_Students DESC;

SELECT
    'Enrolled vs. Non-Enrolled Students' AS Report_Title;

SELECT
    `Currently Enrolled in Any Course? (Yes/No/Unknown)`,
    COUNT(*) AS Total_Students
FROM `Cleaned Data 2`
GROUP BY `Currently Enrolled in Any Course? (Yes/No/Unknown)`
ORDER BY  Total_Students DESC;

SELECT
    'Source-wise Lead Generation' AS Report_Title;

SELECT
    `Lead Source`,
    COUNT(*) AS Total_Leads
FROM `Cleaned Data 2`
GROUP BY `Lead Source`
ORDER BY Total_Leads DESC;

SELECT
    'Verified vs. Pending Records' AS Report_Title;

SELECT
    `Verification Status`,
    COUNT(*) AS Total_Records
FROM `Cleaned Data 2`
GROUP BY `Verification Status`
ORDER BY Total_Records DESC;

SELECT * FROM `Cleaned Data 2`;

SELECT
    'Enquiry Status Distribution' AS Report_Title;

SELECT
    `Follow-up Status`,
    COUNT(*) AS Total_Students
FROM `Cleaned Data 2`
GROUP BY `Follow-up Status`
ORDER BY Total_Students DESC;