# CellStore
[![Build Status](http://img.shields.io/travis/28msec/cellstore/master.svg?style=flat)](https://travis-ci.org/28msec/cellstore) [![Code Climate](http://img.shields.io/codeclimate/github/28msec/cellstore.svg?style=flat)](https://codeclimate.com/github/28msec/cellstore)

In traditional data warehousing, it takes months for the IT department to build a single hypercube. 
With the CellStore, it takes minutes for the business users to build an infinite number of hypercubes.

Built on top of http://28.io.

## Demo
A CellStore with all SEC filings since 2010 is available at http://secxbrl.info.

## Whitepaper
http://arxiv.org/pdf/1410.0600.pdf

## Installation

*Windows Users*:
We advice you to run any commands in the Git Bash.
Otherwise, the decryption of config.json won't work and you will have to setup the config.json manually.

```bash
$ npm install gulp -g
$ npm install && bower install
```

## Configuration
To create a CellStore deployment `<name>` you need to add a config file `config/<name>.json` with the following [example structure](#configuration-example).

Encrypt your config file and add the encrypted `config/<name>.json.enc` to the repo:
```bash
$ export TRAVIS_SECRET_KEY=<secret>
$ gulp encrypt --build-id=test --config=<name>
$ git add config/<name>.json.enc
```

On github create a branch called `test`. With the matching config file name you have then created a production branch
which automatically deploys to your production s3 bucket and 28.io project as defined in your configuration.

Optionally:
- add reports for your deployment to `data/<name>/`
- add API tests to `queries/public/test/<name>/`
- add e2e tests to `tests/e2e/<name>`

## Environment Variables
You might want to set the following environment variables for convenience:
```bash
$ export TRAVIS_SECRET_KEY=<secret> # to decrypt / encrypt config files
$ export CELLSTORE_BUILD_ID=<mybuild-id> # default build-id if --build-id=xyz is not provided
$ export CELLSTORE_CONFIG=<name> # default config if --config=xyz is not provided
```

## Deployment
Create a CellStore deployment called test using the encrypted configuration in `config/sec.json.enc`.
```bash
$ gulp 28:setup --build-id=test --config=sec
```

To resync changes made on hq.28.io into your local branch:
```bash
$ gulp download --build-id=test --config=sec
```

To remove a deployment:
Once you are done:
```bash
$ gulp teardown --build-id=test --config=sec
```

## Frontend Development

Runs the frontend locally using the `sec.json` configuration:

```bash
$ gulp server --build-id=mydemo --config=sec
```

Run the built version (uglified etc.)
```bash
gulp server:prod --build-id=mydemo --config=sec
```

## Testing

Run UI tests only:
```bash
gulp test --build-id=mydemo --config=sec
```

Run unit test:
```bash
gulp test:unit --build-id=mydemo --config=sec
```

## Configuration Example
```json
{
    "all": {
        "githubToken": "oiifwjro984t834toaihzg9riejloi",

        "s3-region": "us-east-1",
        "s3-bucketPrefix": "csms.example.com",
        "s3-key": "ADUREIGMKODJAEO43SAJ3",
        "s3-secret": "lkhsohqDFhsasdhaAFjaFajajfdWEhDFHAjhud4e4",
        "s3-reportsBucket": "e2eFailureTestReportBucket",

        "28-projectPrefix": "example-project",
        "28-email": "user@example.com",
        "28-password": "<password>",
        "28-datasource-conn": "set-lskjdfaoieurlkajpoidgja/db.example.com:27017,db.example.com:27017",
        "28-datasource-db": "db",
        "28-datasource-user": "dbuser",
        "28-datasource-pass": "<password>",

        "cellstore-profile": "generic",
        "cellstore-filteredAspects": "2",
        "cellstore-allowRegistration": "true",
        "cellstore-adminUser": "admin@example.com",
        "cellstore-testUser": "testuser@example.com",

        "netdna-companyAlias": "mycompanyalias",
        "netdna-consumerKey": "klsjfoaoiqje8ahofdkgjoeqiutjae",
        "netdna-consumerSecret": "lskajforeiwutjgheqoiajejkweasdf",

        "sendmail-host": "smtp.example.com:995/tls/novalidate-cert",
        "sendmail-user": "admin@example.com",
        "sendmail-password": "<password>",
        "sendmail-sender-email": "hello@example.com",
        "sendmail-sender-name": "CellStore Example Setup"
    },
    "dev": {
        "cellstore-adminPassword": "<password>",
        "cellstore-testPassword": "<password>",
        "cellstore-testToken": "secret",

        "netdna-zone": "none"
    },
    "prod": {
        "cellstore-adminPassword": "<password>",
        "cellstore-testPassword": "<password>",
        "cellstore-testToken": "cdjfalsk-slke-4dkd-73jd-kjsdhfakhjde",

        "netdna-zone": "189474"
    }
}
```
