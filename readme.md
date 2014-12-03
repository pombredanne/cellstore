# CellStore
[![Build Status](http://img.shields.io/travis/28msec/cellstore/master.svg?style=flat)](https://travis-ci.org/28msec/cellstore) [![Code Climate](http://img.shields.io/codeclimate/github/28msec/cellstore.svg?style=flat)](https://codeclimate.com/github/28msec/cellstore)

Modern Data Warehousing and Entreprise Information Management. Built on top of http://28.io.

## Whitepaper
http://arxiv.org/pdf/1410.0600.pdf

## Installation

*Windows Users*
We advice you to run any commands in the Git Bash.
Otherwise, the decryption of config.json won't work and you will have to setup the config.json manually.

```bash
$ npm install && bower install
```

## Configuration
<Add missing text here>

## Deployment
Create a CellStore deployment called test using the `sec.json` configuration.
```bash
$ gulp 28:setup --build-id=test --config=sec
```

To remove a deployment:
Once you are done:
```bash
$ gulp teardown --build-id=test --config=sec
```

### Frontend Development

Runs the frontend locally using the `sec.json` configuration:

```bash
$ gulp server --config=sec
```

Run the built version (uglified etc.)
```bash
gulp server:prod --config=sec
```

## Testing

Run UI tests only:
```bash
gulp test --build-id=mydemo
```

Run unit test:
```bash
gulp test:unit
```
