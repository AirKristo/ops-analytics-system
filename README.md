# Ops Analytics System: Metrics Layer + QA Tests + Monitoring + Dashboards (Self-Serve Analytics)

A local analytics stack that mirrors internal analytics infrastructure at ops-heavy orgs:
- DuckDB warehouse
- dbt dimensional model + documentation + tests
- Metric acceptance tests (reconciliation + invariants)
- Monitoring/anomaly detection for core KPIs
- Streamlit dashboard for self-serve analytics

## Repo layout
- /dbt              dbt project + profiles (portable, in-repo)
- /scripts          data acquisition + synthetic event generation
- /src              python modules (monitoring, helpers)
- /apps             streamlit dashboard
- /tests            pytest tests
- /docs             decision memo, metric definitions, screenshots
- /data/raw         large raw data (gitignored)
- /data/sample      small committed samples for quick demos

## Quickstart
```bash
python3.12 -m venv .venv
source .venv/bin/activate
pip install -U pip
make install
make precommit
make test
make dbt_debug
