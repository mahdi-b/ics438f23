---
title: "Reading Parquet Files"
published: true
morea_id: experience-reading-parquet-files
morea_type: experience
morea_summary: "Reading Parquet using Python"
morea_sort_order: 1
morea_labels:
---


The NYC.gov website offers a variety of data, including records for yellow and green taxi trips. This data set includes details such as pick-up and drop-off times and locations, trip distances, itemized fares, rate types, payment methods, and the number of passengers as reported by drivers.

Download the Yellow Taxi Trip Records for June 2022.

To read the parquet file, use the pyarrow library and answer the following questions:

* Why are values in each variable stored as sub-lists?
  * Hint: Examine the data type of each variable and refer to the appropriate documentation.
  * How many sub-lists are in each variable?
  * How many elements does each sub-list contain?
* What is the total number of records in the file?
* What are the times of the first and last instances in the data?
* What types of payments are represented in the data?
* Use the following compression schemes to write the table you've just read:
    * snappy, gzip, brotli, lz4, and again gzip
  * Utilize the pq library method: write_table(table, "file path", compression='snappy')
    * Which compression algorithm results in the smallest file size?
    * Which compression algorithm has the quickest compression time?