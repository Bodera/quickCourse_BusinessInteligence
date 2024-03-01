# Data Warehouse Systems

Goals of this section:

- Categorize popular data warehouse systems.
- List some of the more popular data warehouse vendors and their warehousing offerings.

## Categorizing data warehouse systems

Most data warehouse systems are supported via one or more of three platforms. First are **appliances**, which are pre-integrated bundle of hardware and software that provide high performance for workloads and low maintenance overhead.

Other vendors support **cloud deployments** only, offering the benefits of cloud scalability, and pay-per-use economics, and in many cases, deliver their data warehouses as fully managed services.

Some warehouse offerings have traditionally been available as software installed only with **on-premises** environments, but in recent years, most of these vendors now offer cloud-deployed data warehouse systems.

Let's view an unranked list of popular data warehouse systems and learn more about them.

## Vendors 

### Appliance offerings

With **Oracle Exadata** an organization can deploy this data warehouse solution as part of an on-premises installation or via Oracle Public Cloud. It features built-in algorithms and runs all types of workloads, including OLTP, data warehouse analytics, in-memory analytics, and mixed workloads.

**IBM Netezza** is another warehousing appliance. You can deploy it on IBM Cloud, Amazon Web Services, Microsoft Azure, and private clouds using the IBM Cloud Pack for Data System. It's widely recognized for its data science and machine learning enablement.

### Cloud-based data warehouse system providers

**Amazon Redshift** uses Amazon Web Services specific hardware and proprietary software in the cloud for accelerated data compression and encryption, machine learning, and graph-optimization algorithms that automatically organize and store data.

**Snowflake** offers a multi-cloud analytics solution that complies with GDPR and CCPA data privacy regulations. It also advertises to be always-on encryption of data in transit and at rest. Snowflake is FedRAMP Moderate authorized.

**Google BigQuery** describes it's data warehouse system as a "flexible, multi-cloud data warehouse solution". Google reports data warehouse uptime of 99.99% and delivery of sub-second query response times from any business intelligence tool. Their system also specifies petabyte speed and massive concurrency to deliver real-time analytics.

### Providers of both: on-premises and cloud-based data warehouses

**Microsoft Azure Synapse Analytics** offers code-free visual ETL/ELT processes to ingest data from more than 95 native connectors. It supports data lake and data warehouse use cases, besides the use of T-SQL, Python, Scala, Spark SQL, and .NET for both serveless and dedicated resources.

**Teradata Vantage** takes a slightly different approach, by advertising it's multi-cloud data platform for enterprise analytics that unifies data lakes, data warehouses, analytics, and new data sources and types. Combining open-source and commercial technologies to operationalize insights and delivers performance for mixed workloads with high query concurrency using workload management and adaptive optimization. For support, Teradata provides a single-point-of-contact for operational task services including monitoring, change requests, performance tuning, security management, and reporting.

**IBM DB2 Warehouse** is recognized for it's scalability, massively parallel processing (MPP) capabilities, petaflop speeds, security features, and 99.99% service uptime. By providing a containerized scale-out data warehousing solution, you can move workloads where needed, including the public cloud, private cloud, or on-premises with minimal or no changes required.

**Vertica**, another known hybrid-cloud data warehouse system, provides multi-cloud support for Amazon Web Services, Google, Microsoft Azure, and on-premises Linux hardware. Reports fast multi-GB data transfer rates, scalable, elastic compute and storage, and notable system fault tolerance when using _Eon mode_.

**Oracle Autonomous Data Warehouse** runs in Oracle Public Cloud and on-premises with support for multi-model data and multiple workloads. Oracle describes it's system as built to eliminate manual data management and reports that prodive extensive automated security features, including autonomous data encryption both at rest and in motion, protection of regulated data, security patch application and threat detection.

## Summary

In this section we've learned:

- Data warehouse systems can include appliances, exist on-premises, exist int the cloud, or use a combination of both deployment option technologies.
- Popular data warehouse vendors include Oracle, Teradata, Vertica, Google, IBM, Microsoft, Snowflake, Amazon, and others.
