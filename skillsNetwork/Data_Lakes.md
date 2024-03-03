# Data lakes

Goals of this section:

- Define what a data lake is.
- List benefits of using a data lake.
- Compare data lakes to data warehouses.

## What is a data lake?

A data lake is a storage repository that can store large amounts of structured, semi-structured, and unstructured data in their native format, classified and tagged with metadata. While a data warehouse stores data processed for a specific need, a data lake is a pool of data where each data element is given a unique identifier and is tagged with metatags for futher use.

You would opt for a data lake if you generate or have access to, large amounts of data on an on-going basis but don't want to be restricted to specific or pre-defined use cases.

Data lakes are sometimes also used as a staging area for transforming data prior to loading into a data warehouse or a data mart.

Let't break this information down a bit.

- A data lake is a data repository that can store a large amount of structured, semi-structured in it's native formate. 
- You do not need to define the structure and schema of data before loading the data into the data lake. 
- You do not even need to know all the use cases for which you will be analyzing the data. 
- A data lake exists as a repository of raw data, straight from the source, to be transformed based on the use case for which it needs to be analyzed, which does not mean that a data lake is a place where data can be dumped without governance. 
- A data lake is also a reference architecture that is independent of technology.
- Data lakes can be deployed using cloud object storage, such as Amazon S3. Or, large-scale distributed systems such as Apache Hadoop, used for processing Big Data.
- You can deploy data lakes on relational databases management systems, as well as NoSql data repositories that can store very amounts of data.

## Data lakes benefits

Data lakes can store all types of data including: unstructured data, such as documents and e-mails; semi-structured data, such as JSON and XML files; and structured data from relational databases.

Scalability is another data lake benefit, they can make use of scalable storage capacity - from terabytes to petabytes of data.

By retaining data in it's original format, data lakes save organizations time that would have been used to define structures, create schemas, and transform the data.

The ability to access data in it's original format enables fast, flexible reuse of the data for a wide range of current and future use cases.

## Vendors for data lakes

Some of the vendors that provide technologies platforms, and reference architectures for data lakes include: Amazon, Microsoft, IBM, Google, SAS, Teradata, Zaloni, Oracle, Snowflake, Cloudera.

All in all, data lakes were designed in response to the limitations of data warehouses. Depending on the requirements, a typical organization will require both a data warehouse and a data lake as they serve different needs.

## Data lakes versus data warehouses

When it comes to data, in a data lake, data is integrated in it's raw and unstructured form. A data warehouse is different, here all data has already been processed and conformed to standards prior to loading to the warehouse.

Talking about schema, when using data lakes, you do not need to define the structure and schema of the data befora loading into the data lake. A data warehouse on the other hand requires strict conformance to schema and therefore a schema needs to be designed and implemented prior to loading the data.

How does data quality differ when looking at data lakes and data warehouses? In data lakes the data might or might not be curated, and data is agile and does not necessarily comply with governance guidelines. In comparison, the data in data warehouses is curated and adheres to data governance.

Data scientists, data developers, and machine learning engineers are the typical users of data lakes. But data warehouses, are mainly used by business analysts, and data analysts.

## Summary

In this section we've learned:

- A data lake is a storage repository that can store large amounts of structured, semi-structured, and unstructured data in their raw or native format, classified and tagged with metadata.
- You do not need to define the structure and schema of data before loading into the data lake.
- Data lakes offer several benefits, such as storage for all types of data, scalable storage capacity, time savings, and flexible data reuse.
- Finally, you learned that data lakes can be used as a kind of self-serve staging area for a variety of use cases, including machine learning development and advanced analytics.
