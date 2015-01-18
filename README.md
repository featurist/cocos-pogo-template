# Plop

A template for building [cocos2d-js](https://github.com/cocos2d/cocos2d-js)
games in [pogo](https://github.com/featurist/pogoscript) with
[browserify](https://github.com/substack/browserify).

## Setup

The files in this repository do not make a complete project.

1. [Download](http://www.cocos2d-x.org/download) and install cocos2d-js
2. `cocos new projectName -l js`
3. `rm -rf projectName/src`
4. `cp -r <this-repository> projectName`

## Running the game

Use `make` to run the web app, or `make ios` to run the iOS app.

## Development

Use `make watch` to compile pogoscript when it changes.
