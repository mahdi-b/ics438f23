---
title: "Amazon Redshift and Aurora"
published: true
morea_id: experience-reading-parquet-files
morea_type: experience
morea_summary: "Understanding Aamzon OLTP and OLAP offerings"
morea_sort_order: 1
morea_labels:
---



The nyc.gov site provides, among other things, the data of  yellow and green taxi trip records. The  data includes fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts.

Donwnload the Yellow Taxi Trip Records for June 2022. 

Use the pyarrow library to read the parquet file. Answer the following: 

* In each variable, you will notice that the data is stored as sub-lists. Why are values in each variable stored in sub-lists?
  * Hint: check the type of each of variable and consult the relevant documentation.
  * How many sub-lists are there?
  * How many elements are in each sublist?
  * How many records does the file contain?
* What the time of the first and the last observations?
* What payment types values are there?
* Use the following compression schemes to write the table you just read:
  * `snappy`, `gzip`, `brotli`, `lz4`, and `gzip`
  * You can use the following `pq` library method: `write_table(table, "file path", compression='snappy')`
    * Which compression algorithm provides the smallest file size?
    * Which compression algorithm provides the best compression time?
   