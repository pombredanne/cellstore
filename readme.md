# CellStore
[![Build Status](http://img.shields.io/travis/28msec/cellstore/master.svg?style=flat)](https://travis-ci.org/28msec/cellstore) [![Code Climate](http://img.shields.io/codeclimate/github/28msec/cellstore.svg?style=flat)](https://codeclimate.com/github/28msec/cellstore)

US Public Company Financial Information Repository. Built on top of http://28.io.

## Windows Users

We advice you to run any commands in the Git Bash.
Otherwise, the decryption of config.json won't work and you will have to setup the config.json manually.

## Configuration
There are two scenarios for deploying this project on http://28.io. Using the 28msec account or your own account.

### Using the 28msec account
To deploy a branch on the 28msec account, the following environment variable need to be set: `TRAVIS_SECRET_KEY`. The
config.json will then automatically be created.

### Using your own account
In the root of the repository, create a `config.json` file in the root of the repository.
This is the expected structure of the file:
```json
{
    "s3": {
        "key": "AWS S3 Access Key",
        "secret": "AWS S3 Secret Key",
        "region": "us-east-1",
        "website": {
            "ErrorDocument": {
                "Key": "index.html"
            },
            "IndexDocument": {
                "Suffix": "index.html"
            },
            "RoutingRules": [{
                "Redirect": {
                    "ReplaceKeyPrefixWith": "#"
                },
                "Condition": {
                    "HttpErrorCodeReturnedEquals": "403"
                }
            }]
        }
    },
    "28": {
        "email": "28.io account email",
        "password": "password",
        "datasources": [
            {
                "category": "MongoDB",
                "name": "xbrl",
                "credentials": {
                    "conn-string": "<hostname>:<port>",
                    "db": "sec-databasename",
                    "user": "username",
                    "pass": "password"
                }
            }
        ]
    },
    "cellstore": {
        "all": {
            "profile": "sec", // alternatively generic
            "filteredAspects": "2",
            "allowRegistration": "true", // users can register
            "adminUser": "admin@example.io",
            "testUser": "test@example.io"
        }
        "dev" :
            {
                "adminPassword": "<dev admin user password>",
                "testPassword": "<dev support user password>",
                "testToken": "<dev support user token for testing>"
            },
        "prod" :
            {
                "adminPassword": "<prod admin user password>",
                "testPassword": "<prod support user password>",
                "testToken": "<prod support user token for testing>"
            }
    },
    "netdna": {
        "companyAlias": "<alias>",
        "consumerKey": "<Consumer Key>",
        "consumerSecret": "<Consumer Secret>",
        "prod": {
            "zone": "<zone>"
        }
    },
    "sendmail":{
        "host": "smtp.gmail.com:587/tls/novalidate-cert",
        "user": "admin@example.com",
        "password": "<password>",
        "sender": {
            "email": "hello@example.com",
            "name": "SecXBRL.info"
        }
    }
}
```

### Update config.json
If you would like to update the `config.json` file into the repo, you need the following environment variable need to be set: `TRAVIS_SECRET_KEY`.
Simply run:
```bash
$ gulp encrypt
```

## Development

Setup environment:

```bash
$ npm install && bower install
```

### Backend Development

Deploy backend to secxbrl-myfeature.28.io (will delete and create project secxbrl-myfeature) and run against it:

```bash
$ gulp 28:setup --build-id=myfeature
$ gulp server
```

Now, start developing the backend online on http://hq.28.io . Once, you are done with your implementation
you can download the changes made (from secxbrl-myfeature.28.io):

```bash
$ gulp 28:setup --build-id=myfeature
```

### Frontend Development

Run frontend locally against current secxbrl-dev backend:

```bash
$ gulp load-config --build-id=dev #or gulp 28:setup --build-id=myfeature
$ gulp server
```

Run the built version (uglified etc.)
```bash
gulp server:prod
```

### Deployment for UAT

Deploy backend to secxbrl-myfeature.28.io and frontend (running against the deployed backend) to secxbrl-myfeature bucket on S3:

```bash
gulp setup --build-id=myfeature
```

### Build dist and run xqlint/jshint tests

Build project into /dist (for running against backend project secxbrl-myfeature):

```bash
gulp build --build-id=myfeature
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

Once you are done:
```bash
gulp teardown --build-id=mydemo
```

All steps can be done at once by simply running:
```bash
grunt --build-id=mydemo
```
