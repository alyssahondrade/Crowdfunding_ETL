# Crowdfunding_ETL
Project 2 - UWA/edX Data Analytics Bootcamp

Github repository at: [https://github.com/alyssahondrade/Crowdfunding_ETL.git](https://github.com/alyssahondrade/Crowdfunding_ETL.git)

## Table of Contents
1. [Introduction](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#introduction)
    1. [Goal](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#goal)
    2. [Repository Structure](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#repository-structure)
    3. [Dataset](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#dataset)
2. [Approach](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#approach)
    1. [Schema](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#schema)
    2. [ERD](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#erd)
    3. [SQL Query Results](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#sql-query-results)
3. [References](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/README.md#references)


## Introduction

### Goal
The goal of this porject is to collaboratively build an ETL pipeline using Python and Pandas, while utilizing either Python dictionary methods or regular expressions for data extraction and transformation. The project involves the creation of four CSV files from the transformed data, which will be used to generate an Entity-Relationship Diagram (ERD) and a table schema. The final step involves uploading the CSV file data into a Postgres database.

### Repository Structure
- The root directory contains the source code and schema file:
    - [`ETL_Mini_Project_Group_6.ipynb`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/ETL_Mini_Project_Group_6.ipynb)
    - [`ERD_CrowdFunding.drawio`]()
    - [`crowdfunding_db_schema.sql`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/crowdfunding_db_schema.sql)
- The `Resources` directory contains the following:
    - The raw datasets - Extract Phase
        - [`contacts.xlsx`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Resources/contacts.xlsx)
        - [`crowdfunding.xlsx`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Resources/crowdfunding.xlsx)
    - The transformed datasets - Transform Phase
        - [`campaign.csv`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Resources/campaign.csv)
        - [`category.csv`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Resources/category.csv)
        - [`contacts.csv`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Resources/contacts.csv)
        - [`subcategory.csv`](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Resources/subcategory.csv)
- The `Images` directory contains all images created as part of the project.

### Dataset
-- insert source here, refer to Project 2 BCS page --


## Approach
-- describe approach here --

### Schema
Variable | Minimum Requirement | Chosen Limit
:---: | --- | ---
`category_id` | `VARCHAR(4)` since "cat1...cat9" | `VARCHAR(5)` to allow for "cat10...etc."
`subcategory_id` | `VARCHAR(8)` since "subcat1...subcat9" | `VARCHAR(10)` to allow for "cat100...etc."
`category` | `VARCHAR(12)` for "film & video" | Rounded up to `VARCHAR(20)`
`subcategory` | `VARCHAR(17)` for "photography books" | Rounded up to `VARCHAR(20)`
`first_name` | `VARCHAR(12)` since "Michelangelo" | `VARCHAR(30)` to allow for longer names
`last_name` | `VARCHAR(13)` since "Montanariello" | `VARCHAR(30)` to allow for longer names
`email` | `VARCHAR(42)` for longest email | `VARCHAR(60)` to allow for longer emails
`company_name` | `VARCHAR(33)` for longest name | Rounded up to `VARCHAR(50)`
`description` | `VARCHAR(53)` for longest description  | Rounded up to `VARCHAR(75)`
`goal`,`pledged` | Minimum digits required `FLOAT(7)` | Rounded up to `FLOAT(10)`
`outcome` | `VARCHAR(10)` for "successful" | Retained, since not expecting new options
`country` | All abbreviations required `VARCHAR(2)` | Retained, for data consistency & integrity
`currency` | All abbreviations required `VARCHAR(3)` | Retained, for the same reasons as `country`

### ERD
-- insert image of the ERD here, after describing ERD creation process --

### SQL Query Results
The images below were retrieved using: `SELECT *` statement

|![categories_table](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Images/categories_table.png)|![subcategories_table](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Images/subcategories_table.png)|![contacts_table](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Images/contacts_table.png)|
|:---:|:---:|:---:|
|Categories Table|Subcategories Table|Contacts Table|

|![campaign_table](https://github.com/alyssahondrade/Crowdfunding_ETL/blob/main/Images/campaign_table.png)|
|:---:|
|Campaign Table|

## References
- [1] SQL Data Types [http://www.cs.toronto.edu/~nn/csc309/guide/pointbase/docs/html/htmlfiles/dev_datatypesandconversionsFIN.html](http://www.cs.toronto.edu/\~nn/csc309/guide/pointbase/docs/html/htmlfiles/dev_datatypesandconversionsFIN.html)

- [2] How to display table in README.md file in Github? [https://stackoverflow.com/questions/39378020/how-to-display-table-in-readme-md-file-in-github](https://stackoverflow.com/questions/39378020/how-to-display-table-in-readme-md-file-in-github)
