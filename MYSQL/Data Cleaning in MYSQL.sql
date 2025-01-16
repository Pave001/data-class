-- Data cleaning


SELECT *
FROM layoffs;

-- 1. Remove Duplicates
-- 2.Standardize  the data
-- 3. NULL values or blank values
-- 4. Remove Any Colums

Create table layoffs_staging
LIKE layoffs;


SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
select *
from layoffs;


select *,
ROW_NUMBER() OVER(
PARTITION BY company, industry, total_laid_off, percentage_laid_off, `date`) AS row_num
FROM layoffs_staging;