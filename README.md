# Dialect map: jargon data

## About
This repository contains static data to be used in the rest of the Dialect Map components 💬.

Jargons are grouped in order to improve _one-on-one_ comparison when the meaning of the
jargons are equal, although the term to describe it varies from science to science.
These groups are later on used by the [computing pipeline][dialect-map-computing]
to generate NLP metrics on the ArXiv papers dataset, so they can be compared within
the [Dialect map UI][dialect-map-ui].


## Environment setup
The project uses [AJV-CLI][ajv-cli-repository] to validate the JSON schemas, and the jargon list.
It can be installed by running:
```shell script
npm install
```


## Syntax validation
To validate the JSON-Schema syntax:
```shell script
make validate
```


## Available data

### Categories
The Arxiv categories have been extracted from the official [ArXiv API User Manual][arxiv-api-guide].
Future updates will need to be propagated manually.

### Jargons

#### Initial
The initial set of jargon groups was collected through a [Google form][google-form-jargons]
set up by Kyle Cranmer on Twitter, having the scientific community responses collected
from December 01 to December 31, 2020.

⚠️ **Disclaimer: no more terms will be collected this way.**

#### New terms
New terms can be added by creating a _Pull Request_ (PR). These PRs will be later on reviewed
by the Dialect map team to assure that there are no duplicates and that the resulting JSON
is well formatted.

Once the data is updated through a merged PR, we will **manually** trigger a NLP metrics pipeline
to compute and store NLP information related to the new jargons over the entire ArXiv dataset.
This process will be automatized in the near future.

Finally, the new terms will be available for comparison on the [Dialect map UI][dialect-map-ui].


[ajv-cli-repository]: https://github.com/ajv-validator/ajv-cli
[arxiv-api-guide]: https://arxiv.org/help/api/user-manual#53-subject-classifications
[dialect-map-computing]: https://github.com/dialect-map/dialect-map-computing
[dialect-map-ui]: https://github.com/dialect-map/dialect-map-ui
[google-form-jargons]: https://docs.google.com/forms/d/e/1FAIpQLScFC2BjIbd_WfY4ghCmZt_1QW5_tC8wZMoIa64vUWSxP9Xc9w/viewform
