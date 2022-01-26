# Dialect map data

## About
This repository contains static data to be used in the rest of the Dialect Map components 💬.

Jargons are grouped in order to improve _one-on-one_ comparison when the meaning of the
jargons are equal, although the term to describe it varies from science to science.
These groups are later on used by a range of data-ingestion pipelines to generate NLP metrics
on the ArXiv papers dataset, so they can be compared within the [Dialect map UI][dialect-map-ui].


## Environment setup
The project uses [AJV-CLI][ajv-cli-repository] to validate the JSON schemas, and the jargon list.
It can be installed by running:
```shell script
npm install --no-optional
```


## Syntax validation
To validate the JSON-Schema syntax:
```shell script
make validate
```


## Available data

### Categories
The full corpus of ArXiv categories is formed by both **currently** and **legacy** used ones.

- Current ones have been copied from the official [ArXiv category taxonomy][arxiv-guide-taxonomy].
- Legacy ones have been inferred from the public [ArXiv metadata dataset][arxiv-public-metadata].

### Jargons

#### Initial
The initial set of jargon groups was collected through a [Google form][google-form-jargons]
set up by Kyle Cranmer on Twitter, having the scientific community responses collected
from December 01 to December 31, 2020.

⚠️ **Disclaimer: no more terms will be collected this way.**

#### New terms
New terms can be added by creating a _Pull Request_ (PR). These PRs will be later on reviewed
by the Dialect map team to ensure that the resulting JSON is well formatted.

- For information about **how to add new terms**, check the [contributing documentation][docs-contrib].
- For information about **how changes are propagated**, check the [computing documentation][docs-compute].


[ajv-cli-repository]: https://github.com/ajv-validator/ajv-cli
[arxiv-guide-taxonomy]: https://arxiv.org/category_taxonomy
[arxiv-public-metadata]: https://www.kaggle.com/Cornell-University/arxiv
[dialect-map-ui]: https://github.com/dialect-map/dialect-map-ui
[docs-contrib]: docs/contribute.md
[docs-compute]: docs/compute.md
[google-form-jargons]: https://docs.google.com/forms/d/e/1FAIpQLScFC2BjIbd_WfY4ghCmZt_1QW5_tC8wZMoIa64vUWSxP9Xc9w/viewform
