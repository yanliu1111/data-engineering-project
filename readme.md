### Case study:
1. dbt-project: building e-commerce data models with dbt
2. Databricks's new AI Data Engineering course.
   1. Lakeflow Spark Declarative Pipelines (SDP) — streaming tables, materialized views, and data-quality expectations, hand-coded in Python and SQL.
   2. Genie Code — AI-assisted pipeline authoring with human-in-the-loop verification.
   3. Zerobus Ingest — direct gRPC ingest into Delta tables via the official databricks-zerobus-ingest-sdk.
   4. SDP Real-Time Mode (RTM) — continuous, serverless pipelines with sub-second end-to-end latency.
3. Snowflake workshop: Build Power AI Agents with Continuous Streaming Data Pipelines
Focus: Real-time log analytics using streaming data pipelines to feed AI agents (Type: VHOL (Virtual Hands-On Lab))
   1. Streaming ingestion (e.g., Kafka, Event Hubs, or similar)
   2. Log parsing/transformation pipeline
   3. AI agent integration for real-time insights/alerts
   4. Analytics dashboard or downstream consumption layer
   5. Use Case: Continuous monitoring and AI-driven analysis of log data
4. Airflow ELT: Best practices for writing ETL and ELT pipelines
   1. Modular DAG design
   2. Task dependencies and scheduling
   3. Error handling and retries
   4. Logging and monitoring
   5. Integration with external systems (e.g., databases, APIs)
5. Airflow Data Quality: Stopping bad data before it breaks your Airflow pipelines
   1. Setup and initialization of demo DAGs
   2. Hard reset procedures for database tables
   3. Making checks fail and reverting changes
   4. SQLValueCheckOperator, SQLColumnCheckOperator, and SQLCheckOperator usage
   5. Best practices for maintaining data quality in Airflow pipelines