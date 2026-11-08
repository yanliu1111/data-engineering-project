```
                         NORMAL INGESTION
                               │
                               ↓
                    Multiple events / day
                               │
                 ┌─────────────┴─────────────┐
                 ↓                           ↓
              SUCCESS                     FAILURE
                 ↓                           ↓
             S3 / Raw                    DLQ
                 │                           │
                 ↓                           │
        Databricks Ingestion Job             │
                 │                           │
                 ↓                           │
          Bronze / Landing                   │
                 │                           │
                 ↓                           │
       Flatten / Deduplicate                 │
                 │                           │
                 ↓                           │
            Silver / Gold                    │
                                             │
                              failed event_id / S3 object
                                             │
                                             ↓
                              ┌────────────────────────┐
                              │   Airflow Recovery DAG │
                              │      Every Midnight    │
                              └────────────┬───────────┘
                                           ↓
                                      Read DLQ
                                           ↓
                              Identify failed event
                              / S3 object / partition
                                           ↓
                              Trigger Databricks Job
                                           │
                                           ↓
                                      Backfill
                                           │
                                           ↓
                                           S3
                                           │
                                           ↓
                              Databricks Ingestion Job
                                           │
                                           ↓
                                  Bronze / Landing
                                           │
                                           ↓
                              Validate ingestion
                                           │
                                           ↓
                              Flatten / Deduplicate
                                           │
                                           ↓
                                      Silver / Gold
```

```              ┌─────────────────────┐
                 │  Normal Ingestion   │
                 └──────────┬──────────┘
                            ↓
                  Multiple events/day
                            ↓
                 ┌──────────┴──────────┐
                 ↓                     ↓
              SUCCESS                FAILURE
                 ↓                     ↓
              Landing                 DLQ
                                       │
                                       │ failed event_id
                                       ↓
                              ┌─────────────────┐
                              │ Airflow Recovery│
                              │  Every Midnight │
                              └────────┬────────┘
                                       ↓
                                  Read DLQ
                                      ↓
                              Identify failed
                              event / S3 object
                                      ↓
                                  Backfill
                                      ↓
                                      S3
                                      ↓
                              Databricks Ingestion Job
                                      ↓
                              Bronze / Landing
                                      ↓
                              Validate ingestion
                                      ↓
                              Flatten / Deduplicate
                                      ↓
                              Silver / Gold
```