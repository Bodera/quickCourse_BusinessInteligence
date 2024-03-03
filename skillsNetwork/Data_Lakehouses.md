# Data lakehouses

Goals of this section:

- Describe the origin and purpose of the data lakehouse.
- Explain the challenges of managing and using big data.

## What is a data lakehouse?

To understand what a data lakehouse is you'll need to explore the history of data management and analytics. In the late 1980s businesses wanted to harness data-driven insights for business decisions and innovation, to do this organizations had to move past simple relational databases to systems that could manage and analyze data that was being generated and collected at high volumes and at a faster pace.

Data warehouses were designed to collect and cosolidate this influx of data and provide support for overall business intelligence and analytics. Data in a data warehouse is structured and clean with predefined schemas. However, data warehouses were not designed with semi-structured or unstructured data in mind and became very expensive when trying to store and analyze any data that didn't fit the schema, as companies grew and the world became more digital, data collection drastically increased in volume, velocity and variety, pushing data warehouses out of favor because it took to much time to process data and provide results and there was limited capability to handle data variety and velocity.

In the early 2000s the advent of Big Data drove the development of data lakes, where structured, semi-structured and unstructured data, could live simultaneously, collected in the volumes and speeds necessary. Multiple data types could be stored side-by-side in a data lake, data created from many different sources such as web logs or IoT sensors could be streamed into the data lake quickly and cheaply in low-cost cloud object stores. However, while data lake solved the storage dilemma it introduced additional concerns and lacked necessary features from data warehouses. 

First, data lakes are not suppotive for transactional data and can't enforce data quality so the reliability of the data stored in the data lake is questionable, mostly due to the various formats. Second, with such a large volume of data the performance of analysis is slower and the timeliness of decision impacting results has never manifested. Third, governance over the data in a data lake creates challenges with security and privacy enforcement due to the unstructured nature of the contents of a data lake.

Because data lake didn't fully replace data warehouses for reliable BI insights, businesses implemented complex technology stack environments including data lakes, data warehouses, and additional specialized systems for streaming, time series, graph and image databases, just to name a few, but such environments introduced complexity and delay. As data teams were stuck in silos completing disjointed work, data had to be copied between the systems and in some cases copied back, impacting oversight and data usage governance, not to mention the cost of storing the same information twice. With disjointed systems, successful AI implementation was difficult and actionable outcomes required data from multiple places, the value behind the data was lost.

In a study run by Accenture only 32% of companies reported measurable value from data. Something needed to change because businesses needed a single, flexible, high performance system to support the ever increasing use cases for data exploration, predictive modeling, and predictive analytics, data teams needed systems to support data applications including SQL analytics, real-time analysis, data science and machine learning.

To meet all those needs and address the concerns and challenges a new data management architecture emerged: the __data lakehouse__. The data lakehouse was developed as an open architecture combining the benefits of a data lake with the analytical power and controls of a data warehouse. Built on a data lake, a data lakehouse can store all data of any type together becoming a single reliable source of truth, providing direcy access for AI and BI together.

### Data lakehouse key features

- Transaction support including ACID transactions for concurrent read-write interactions.
- Schema enforcement and governance for data integrity and robust auditing needs.
- Data governance to support privacy regulation data use metrics.
- BI support to reduce the latency between obtaining data and drawing insights.
- Decoupled storage from compute, meaning each operates on their own clusters allowing them to scale independently to support specific needs.
- Open storage formats such as Apache Spark.
- Support for diverse data types.
- Support for diverse workloads such as data science, machine learning and SQL analytics, to use the same data repository.
- End-to-end streaming for real-time reports removes the need for a separate system dedicated to real-time data applications.

The data lakehouse supports the work of data analysts, data engineers, and data scientists, all in one location the lake house essentially is the modernized version of a data warehouse providing all the benefits and features without compromising the flexibility and depth of a data lake.

You may check [this paper](https://www.cidrdb.org/cidr2021/papers/cidr2021_paper17.pdf), and [this one also](https://static1.squarespace.com/static/634818d8d6e57e290ceee8f9/t/638866d30b94ba7347471e9a/1669883604689/The-Data-Lakehouse-Platform-For-Dummies-1.pdf) to comprehend more about the data lakehouse.
