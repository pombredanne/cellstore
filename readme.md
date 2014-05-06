[![Build Status](https://buildstatus.28.io/v1/_queries/public/status.jq?_method=POST&repo=secxbrl.info&branch=master)](http://ppa.28.io:8888)

secxbrl.info website
--------------------------------

This repository holds the www.secxbrl.info website.


Development setup steps
----------------------------

- install nodejs : http://nodejs.org/download/
- install git: http://git-scm.com/downloads/
- add the path to the git.exe (C:\Program Files (x86)\Git\bin\) to the PATH system variable
- install yeoman: https://github.com/yeoman/yeoman/wiki/Getting-Started

```
npm install -g yo
npm install -g grunt grunt-cli bower
```

- clone the repository
- in the repository directory, execute the install commands for serverside components (npm) and clientside components (bower)

```
npm install
bower install
```

- start the development server

```
grunt server
```

This should open a new browser on localhost:9000.
The port can be customized in Gruntfile.js, if that port is not available.
