Source code of http://aperturelab.io/, generated with [PHPoole-library](https://github.com/PHPoole/PHPoole-library).

The website is automatically built and deployed through [Travis CI](https://travis-ci.org/ApertureLab/aperturelab.github.io).

[![Build Status](https://travis-ci.org/ApertureLab/aperturelab.github.io.svg?branch=source)](https://travis-ci.org/ApertureLab/aperturelab.github.io)

## Install, build & deploy
```
$ composer install
$ php build.php -e=prod
$ export GH_TOKEN=your_github_token
$ sh deploy.sh
```

## Test locally
```
$ php build.php -e=dev
```
