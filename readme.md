secxbrl.info website
--------------------------------

This repository holds the www.secxbrl.info website.


Development setup steps
----------------------------

- install nodejs : http://nodejs.org/download/
- install yeoman: https://github.com/yeoman/yeoman/wiki/Getting-Started
```
npm install -g yo
npm install -g grunt-cli bower
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
