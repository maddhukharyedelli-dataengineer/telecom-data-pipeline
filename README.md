# Telecom Data Pipeline

An end-to-end data engineering project simulating a telecom Call Detail Record (CDR) pipeline.

## Architecture
Pub/Sub → Cloud Storage (raw) → Airflow DAGs → BigQuery (staging + curated) → Looker Studio

## Tech Stack
- **Ingestion:** Google Cloud Pub/Sub
- **Storage:** Google Cloud Storage
- **Orchestration:** Apache Airflow
- **Transformation & Warehouse:** BigQuery
- **Visualization:** Looker Studio
- **Version Control:** GitHub

## Folder Structure
- `dags/` — Airflow DAGs
- `sql/staging/` — Staging transformation SQL
- `sql/curated/` — Curated/fact table SQL
- `schemas/` — Source & target DDLs
- `pubsub/` — Data publisher scripts
- `docs/` — Architecture documentation