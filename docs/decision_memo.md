# Decision Memo (WIP)

## Why this project
Build an employer-recognizable analytics platform: dims/facts, metric correctness, tests, monitoring, dashboards.

## Key decisions (Milestone 0)
- DuckDB for local warehouse
- dbt + duckdb adapter for modeling/tests/docs
- Streamlit for lightweight dashboard
- In-repo dbt profiles for portability (DBT_PROFILES_DIR=dbt)
