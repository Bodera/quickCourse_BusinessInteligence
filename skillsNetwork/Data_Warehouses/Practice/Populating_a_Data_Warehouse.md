# Populating a Data Warehouse

Goals of this section:

- Describe populating a data warehouse as an ongoing process.
- List the main steps to populate a data warehouse.
- List methods for change detection and incremental loading.
- Manually create and populate tables for a sales star schema.
- Recall the periodic maintenance required to keep your data warehouse running smoothly.

## Loading frequency

Populating the enterprise data warehouse is an ongoing process: you have an initial load followed by periodic incremental loads. For example, you may load new data every day or every week. Rarely, a full refresh may be required in case of major schema changes or catastrophic failures.

Generally, fact tables are dynamic and require frequent updating while dimension tables don't change often. For example, lists of cities or stores are quite static, but sales happen every day.

## Typical ways of loading data

Many tools can help you automate the ongoing loading process of keeping your data warehouse current, it can also be a part of your ETL data pipeline that is automated using tools like Apache Airflow and Apache Kafka. You can also combine your own scripts, combining lower-level tools like Bash, Python, and SQL, to build your data pipeline and schedule it with cron jobs.

## Populating your data warehouse

Before populating your data warehouse, ensure that:

- Your schema has already been modeled.
- Your data has been staged in tables or files.
- You have mechanisms for verifying the data quality.

Now you are ready to set up your data warehouse and implement the initial load.

- You first instantiate the data warehouse and its schema.
- Then create the production tables.
- Next, establish relationships between your fact and dimension tables.
- Finally, load your transformed and cleaned data into them from your staging tables or files.

Now that you've gone through the initial load, it's time to set up ongoing data loads.

- You can automate incremental loads using a script as part of your ETL pipeline.
- Then schedule your incremental loads to occur daily or weekly, depending on your needs.
- Next, you need to include some logic to determine what data is new or updated data in your staging area.

## Change detection

Normally, you detect changes in the source system itself. Many relational database management systems have mechanisms for identifying any new, changed, or deleted records since a given date. You might also have access to timestamps that identify both when data was first written and when it was modified.

Some systems might be less accommodating, and you'll need to load the entire source to your ETL pipeline for subsequent brute-force comparison to the target, which is fine if the source data isn't too large.

## Periodic maintenance

Data warehouses need periodic maintenance, usually monthly or yearly, to archive data that is not likely to be used. You can script both the deletion of older data, and it's archiving to slower, less costly storage.

## Summary

In this section, you learned that:

- Populating an EDW includes creation of production tables and their relations and loading clean data into tables.
- Loading the EDW is an ongoing process beginning with an initial load, followed by periodic incremental loads.
- Fact tables require frequent updating while dimension tables don't change often.
- Incremental loading and periodic maintenance can be scripted and scheduled as part of your ETL pipeline.
