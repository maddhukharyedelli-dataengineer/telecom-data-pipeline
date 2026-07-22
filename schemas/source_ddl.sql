-- Source: Raw CDR events landed from Pub/Sub into BigQuery staging
CREATE TABLE IF NOT EXISTS telecom_raw.cdr_events (
    call_id             STRING      NOT NULL,
    caller_number       STRING      NOT NULL,
    receiver_number     STRING      NOT NULL,
    call_type           STRING      NOT NULL,   -- Voice/SMS/Data
    call_duration_sec   INT64       ,
    tower_id            STRING      NOT NULL,
    call_timestamp      TIMESTAMP   NOT NULL,
    network_type        STRING      ,           -- 4G/5G
    call_status         STRING      NOT NULL,   -- Completed/Dropped/Failed
    customer_id         STRING      NOT NULL,
    ingestion_timestamp TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP()
)
PARTITION BY DATE(call_timestamp)
CLUSTER BY tower_id, customer_id
OPTIONS (
    description = "Raw CDR events ingested via Pub/Sub"
);