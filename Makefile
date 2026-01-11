SHELL := /bin/bash

VENV := .venv
DBT_PROFILES_DIR := dbt
DBT_PROJECT_DIR := dbt/ops_analytics

.PHONY: install precommit fmt lint test dbt_debug streamlit

install:
	$(VENV)/bin/pip install -r requirements.txt -r requirements-dev.txt

precommit:
	$(VENV)/bin/pre-commit install
	$(VENV)/bin/pre-commit run --all-files

fmt:
	$(VENV)/bin/ruff format .
	$(VENV)/bin/ruff check . --fix
	$(VENV)/bin/black .

lint:
	$(VENV)/bin/ruff check .
	$(VENV)/bin/sqlfluff lint

test:
	$(VENV)/bin/pytest -q

dbt_debug:
	DBT_PROFILES_DIR=$(DBT_PROFILES_DIR) $(VENV)/bin/dbt debug --project-dir $(DBT_PROJECT_DIR)

streamlit:
	$(VENV)/bin/streamlit run apps/streamlit/app.py
