-- Target: Curated fact table for reporting/dashboard
CREATE TABLE IF NOT EXISTS telecom_curated.fct_call_summary (
    call_id             STRING      NOT NULL,
    customer_id         STRING      NOT NULL,
    tower_id            STRING      NOT NULL,
    call_date           DATE        NOT NULL,
    call_type           STRING      NOT NULL,
    network_type        STRING,
    total_calls         INT64,
    dropped_calls       INT64,
    avg_duration_sec    FLOAT64,
    load_timestamp      TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP()
)
PARTITION BY call_date
CLUSTER BY tower_id, customer_id
OPTIONS (
    description = "Curated daily call summary for dashboards"
);