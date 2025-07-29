virtualenv venv
. venv/bin/activate

pip install dbt-snowflake==1.9.0


mkdir ~/.dbt


#initiate dbt project 
dbt init netflix
