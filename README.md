## Overview
This project demonstrates an ELT data transformation pipeline built with dbt Core and DuckDB.

The project uses raw customer, order, and payment data stored in CSV files. The data is loaded into DuckDB, transformed through dbt models, and organized into staging and marts layers.

The goal is to demonstrate data transformation, reusable SQL logic, data quality testing, and analytics-ready data modelling.

## Technologies:
Python — supporting data preparation
dbt Core — data transformation and testing
DuckDB — analytical database
SQL — data modelling and transformations
YAML — dbt configuration, model documentation, and tests
Jinja — reusable SQL macros

## How to Run:
1. Install dependencies: `pip install dbt-core dbt-duckdb`
2. Load raw data (seeds) into DuckDB: `dbt seed`
3. Run transformations: `dbt run`
4. Execute data quality tests: `dbt test`