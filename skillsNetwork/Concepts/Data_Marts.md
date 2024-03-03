# Data marts

Goals of this section:

- Define what a data mart is.
- Give examples of data marts.
- Compare data marts to transactional databases and enterprise data warehouses.
- Describe data pipelines for loading data marts.

## What is a data mart?

A data mart is an isolated part of the larger enterprise data warehouse that is specifically built to serve a particular business function, purpose, or community of users.

For example, the sales and finance departments in a company may have access to dedicated data marts that supply the data required for their quarterly sales reports and projections. Ther marketing team may use data marts to analyze customer behavior data. And the shipping, manufacturing and warranty departments may have their own data marts as well.

## What are data marts used for?

Data marts are designed to provide specific support for making tactical decisions. As such, data marts are focused only on the most relevant data, which saves end users the time and effort that would otherwise be spent searching the data warehouse for insights.

## How a data mart is structured?

The typical structure of a data mart is a relational database with a star, or more often a snowflake schema, which means it contains a central fact table consisting of the business metrics relevant to a business process, which is surrounded by a related hierarchy of dimension tables that provide context for the facts.

### Comparison of data repositories

| Data Marts                                | Databases                                    |
|-------------------------------------------|----------------------------------------------|
| OLAP systems - read intensive             | OLTP systems - write intensive               |
| Use Txn DBs or warehouses as data sources | Use operational applications as data sources |
| Contain clean, validated analytical data  | Contain raw, unprocessed transactional data  |
| Accumulate history for trend analysis     | May not always store history                 |

Both data marts and data warehouses are Online Analytical Processing systems that are optimized for read-intensive queries and operations, whereas transactional databases are online transactional processing systems, that are optimized for write-intensive queries and applications.

Data marts use transactional databases or data warehouses as data sources, while in transactional databases, operational applications, such as point-of-sales systems, serve as the sources of data.

A data mart stores validated, transformed, and cleaned data, while a database will have raw data that has not yet been cleaned.

Data marts accumulate historical data that can be used for trend analysis, while transactional databases may not always store older data.

| Data Marts                               | Data Warehouses                                |
|------------------------------------------|------------------------------------------------|
| Small data warehouse with tactical scope | Large repositories with broad, strategic scope |
| Lean and fast                            | Large and slow                                 |

A data mart is much like a data warehouse, except it has a smaller, tactical scope. Data warehouses broadly support the strategic requirements of the enterprise.

Data marts are lean and fast compared to data warehouses, which can be very large, and hence, can be slower.

## Type of data marts

There are three basic types of data marts - dependent, independent and hybrid. The difference between these three kinds of data marts depends on their relationship with the data warehouse and the sources used for supplying each of them with data.

Dependent data marts draw data from the enterprise data warehouse, while independent data marts bypass the data warehouse and are created directly from sources, which may include internal operational systems or external data from vendors or other sources outside the enterprise.

Hybrid data marts only depend partially on the enterprise data warehouse. They combine inputs from data warehouses with data from operational systems and other systems external to the warehouse.

Dependent data marts offer analytical capabilities within a restricted area of the enterprise data warehouse. Thus, they inherit the security that comes with the enterprise data warehouse, and since dependent data marts pull data directly from the data warehouse, where data has already been cleaned and transformed, they tend to have simpler data pipelines than independent data marts.

Independent data marts differ from dependent data marts because they require custom extract, transform and load data pipelines to carry out the transformation and integration processes on the source data since it is coming directly from operational systems and external sources, and independent data marts may also require separate security measures.

## Data mart purpose

Whatever the type of data mart you may have, it's purpose is:

- To provide end-users with timely, relevant data.
- Accelerate business processes by providing efficient query response times.
- Provide a cost-efficient method for informing data-drive decisions.
- And ensure secure access and control over your data.

## Summary

In this section we've learned:

- A data mart is an isolated part of the larger enterprise data warehouse that is specifically built to serve a particular business function, purpose, or community of users.
- A data mart is designed to provide specific, timely, and rapid support for making tactical decisions.
- A data mart typically has a star or snowflake schema.
- Unlike an OLTP database, an OLAP data mart stores clean and validated data and accumulates historical data.
- We can categorize data marts in terms of their dependence on the enterprise data warehouse, it can be completely dependente on it, it can becompletely indepentend, standalone, mini data warehouse, or it can be a hybrid of the two ones.