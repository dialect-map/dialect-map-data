# Contribution guide

## About
This piece of documentation explains how to contribute to the list of jargons available
for comparison in the [Dialect map UI][dialect-map-ui].


## Operations
These are all the operations that community contributors can perform.

### Add a new object 🌱
When defining a new _jargon group_, or a new _jargon term_, the new JSON object must have
a unique ID within the file.

- For the _jargon group_ objects: `group-<group-position>`.
- For the _jargon terms_ objects: `group-<group-position>-jargon-<jargon-position>`.

In addition, contributors must set the `archived` field as `false`, for the object to be properly stored.

### Archive existing object 🗄
When removing an existing object, contributors must set its `archived` property as `true`.
This operation is usually referred to as [_soft deletion_][wiki-soft-delete].

Implementing an _archival_ methodology allow the data files to preserved all the _jargon groups_
and _jargon terms_ that were ever defined. This preservation is **very useful** for several reasons:

- It helps contributors know the sequential ID they must specify on new created objects.
- It eases the automatic differentiation of JSON objects inside arrays (very hard otherwise).

### Edit existing object ✏️
Modification of existing objects is **not supported**. If you discover a relevant typo or something
semantically incorrect in the definition of _jargon groups_, you should:
1. Archive the invalid object.
2. Define a new one with the error corrected.


## Change propagation
Once a given change has been approved, and its corresponding _Pull Request_ (PR) merged, the new objects
will be propagated to the database. For more information, check the [computing documentation][docs-compute].


[dialect-map-ui]: https://github.com/dialect-map/dialect-map-ui
[docs-compute]: compute.md
[wiki-soft-delete]: https://en.wiktionary.org/wiki/soft_deletion
