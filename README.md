# BikeStores Sales Dashboard (MySQL, PowerBI project)

## Overview

Using the BikeStores database to explore graphical data visualization.

Focusing on key metrics: sales/revenue, production and customers.

Built with SQL Server and Power BI.

## Objectives

Visualize sales/revenue trends over time.

Analyze sales by product category.

Identify top 10 performing products.

Highlight top 10 customers.

Implement year/month filtering.

Include customer analysis section.

## Results:
![image][BikeStores_Dashboard](https://github.com/user-attachments/assets/f78f456a-5d9d-4a4e-820e-8bdc1f1827c0)

## BikeStores project workflow (detailed method):

1. Downloaded https://www.sqlservertutorial.net/getting-started/load-sample-database/.
2. Reviewed and modified MS SQL Server files into functional MySQL script files.
   - Used python script: *load data - convert SQL into MySQL*. This adds semicolon to the first ~400 rows of SQL load script, and comments out SET IDENTITY_INSERT.
   - Asserted functionality of, and executed **drop**, **create**, **load** scripts.

There was 2 main options to proceed into PowerBI.
1. Import databases sales and production into PowerBI.
   - Possibly problematic if databases are large. However, this option grants insight of the databases' structure and flexibility in dashboard construction. Uses DAX code, not queries.
2. Import and immediately transform data with MySQL script inside PowerBI.
   - Needs a premeditated idea for the powerBI dashboard.

I proceeded with the first option, importing MySQL databases sales and production into PowerBI. 

As for visuals:
1. A total sales in dollars and quantity as a multilevel card. Align labels centered, increase font size with "Format your visuals" under Visualizations column on the right hand side.
    - The card multilevel should have 3 slicer visuals so that the user can select years, months, bike stores of sales.
    - The months slicer needs to be sorted by a column created as "MonthNumber". This is done in table view. The column is created with "New measurement" and some mathematics in the DAX code language.
2. A top ten products horizontal bar chart, Top N (10) filter by value Total Sales by Product.
3. A top ten customers horizontal bar chart, Top N (10) filter by value Total Sales by Customer.
4. A total sales by category donut chart, showing product weights for revenue with percentages and dollars
5. A total sales over time as an area line chart. To enhance accuracy, collect data associated with completed status: order_status = 4.
6. A total sales by city map, showing concentration of buyers.
