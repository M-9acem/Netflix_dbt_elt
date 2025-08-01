#!/bin/bash

# Create and activate virtual environment
virtualenv venv
. venv/bin/activate

# Install dbt with Snowflake adapter
pip install dbt-snowflake==1.9.0

# Create dbt config directory if it doesn't exist
mkdir -p ~/.dbt

# Initialize dbt project 
dbt init netflix
