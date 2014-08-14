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

### Deployment
To deploy a branch, the following environment variables need to be set:
* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* USERNAME_28
* PASSWORD_28
* USERNAME_XBRL_DB
* PASSWORD_XBRL_DB
* NAME_XBRL_DB
* CONN_XBRL_DB

```bash
grunt test:setup --build-id=mydemo
```

Once you are done:
```bash
grunt test:teardown --build-id=mydemo
```
