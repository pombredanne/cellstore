#secxbrl.info
[![Build Status](http://img.shields.io/travis/28msec/secxbrl.info/master.svg?style=flat)](https://travis-ci.org/28msec/secxbrl.info) [![Code Climate](http://img.shields.io/codeclimate/github/28msec/secxbrl.info.svg?style=flat)](https://codeclimate.com/github/28msec/secxbrl.info)

US Public Company Financial Information Repository. Built on top of http://28.io.

## Contributing

```
npm install
bower install
grunt ngconstant:server
grunt server
```

### CI
Each PR creates a new frontend (on s3) and test project (on 28.io. If your PR is against master and is number 43, you will have the following frontend and backend deployed:
* http://secxbrl-master-43.s3-website-us-east-1.amazonaws.com
* http://secxbrl-master-43.28.io

`Gruntfile.js` is configured to run setup queries (e.g. to initialize the db) and then test queries in order to validate the build. These are declared at https://github.com/28msec/secxbrl.info/blob/master/Gruntfile.js#L485.
Here's an example of a build passing on Travis: https://travis-ci.org/28msec/secxbrl.info/builds/32395013
