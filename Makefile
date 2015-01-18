web:
	cocos run -p web

ios:
	cocos run -p ios

watch:
	watchify src/main.pogo -t pogoify --extension .pogo -o main.js

install:
	npm install

.PHONY :watch ios install