# Computation guide

## About
This piece of documentation explains how recent changes to the list of JSON data files,
and the NLP metrics that may result from the definition of new objects, get propagated
into the database.


## Approach
Given that the _data-ingestion_ and NLP metrics computing pipelines may run on a dedicated
cluster isolated from the rest of the project infrastructure (based on GitHub / GCP),
the propagation of changes will happen **asynchronously**.

This _asynchronous propagation_ will occur when the [cron][wiki-linux-cron] specification for
the different pipelines is set, and considering the average amount of time they need to finish.


## Pipelines ⚙️
The current pipelines set up on a cron-job are:

- [Data-static pipeline][dialect-map-job-static] (private). Cron specification: TBA.
- [NLP-metrics pipeline][dialect-map-job-metrics] (private). Cron specification: TBA.


[dialect-map-job-static]: https://github.com/dialect-map/dialect-map-job-static
[dialect-map-job-metrics]: https://github.com/dialect-map/dialect-map-job-metrics
[wiki-linux-cron]: https://en.wikipedia.org/wiki/Cron
