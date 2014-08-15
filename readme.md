#secxbrl.info
[![Build Status](http://img.shields.io/travis/28msec/secxbrl.info/master.svg?style=flat)](https://travis-ci.org/28msec/secxbrl.info) [![Code Climate](http://img.shields.io/codeclimate/github/28msec/secxbrl.info.svg?style=flat)](https://codeclimate.com/github/28msec/secxbrl.info)

US Public Company Financial Information Repository. Built on top of http://28.io.

## Contributing

```bash
npm install
bower install
grunt ngconstant:server
grunt server
```

## Deployment
There are two scenarios for deploying this project on http://28.io. Using the 28msec account or your own account.

### Using the 28msec account
To deploy a branch on the 28msec account, the following environment variable need to be set: `TRAVIS_SECRET_KEY`.
You can simply specify a build id like this:

```bash
grunt test:setup --build-id=mydemo
```

And a test as follows:
```bash
grunt test:run --build-id=mydemo
```

Once you are done:
```bash
grunt test:teardown --build-id=mydemo
```

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
    }
}
```

## Update config.json
If you would like to update the `config.json` file into the repo, you need the following environment variable need to be set: `TRAVIS_SECRET_KEY`.
Simply run:
```bash
grunt shell:encrypt
```
